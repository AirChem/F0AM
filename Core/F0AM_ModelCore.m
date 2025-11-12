function S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam,UserData)
% S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam)
% Core execution for the Framework for 0-D Atmospheric Modeling (F0AMv3).
% Descended from the University of Washington Chemical Model (UWCM), first beget 20101211 by GMW/JAT.
% See F0AM_UserManual.pdf for descriptions of inputs and outputs.
%
% 20120210 GMW
% 20120909 GMW    Added a check for valid options before assigning defaults.
% 20130204 GMW    Removed "total run time" and "saved as" display commands from Verbose flag control.
% 20131022 GMW    Work began on v2.2. See Changelog for info.
% 20150601 GMW    Work began on v3.0. See Changelog.
% 20160901 GMW    Work began on v3.2. See Changelog.
% 20190108 GMW    Work began on v4. See Changelog.
% 20241105 GMW    Version 4.4. See Changelog.


%% INITIALIZATION

F0AMversion = 'F0AMv4.4';

StartTime = now;

% suppress stack-trace messages in warnings
warnstate = warning('query','backtrace');
warning('off','backtrace')

% store names for duplicate checking later
Mnames = Met(:,1);
Inames = InitConc(:,1);
Bnames = BkgdConc(:,1);

% convert inputs to structures
holdFlag = logical(cell2mat(InitConc(:,3)));
Met      = breakout(Met(:,2),Met(:,1));
InitConc = breakout(InitConc(:,2),InitConc(:,1));
BkgdConc = breakout(BkgdConc(:,2),BkgdConc(:,1));

if nargin<7
    UserData = [];
end

%% MODELOPTIONS DEFAULTS/CHECKS
FieldInfo = {...
    %Valid              %Required       %Default
    'IntTime'           1               []  ;...
    'Verbose'           0               1   ;...
    'EndPointsOnly'     0               1   ;...
    'LinkSteps'         0               0   ;...
    'SavePath'          0               ''  ;...
    'TimeStamp'         0               []  ;...
    'DeclareVictory'    0               0   ;...
    'GoParallel'        0               0   ;...
    'FixNOx'            0               0   ;...
    };
ModelOptions = CheckStructure(ModelOptions,FieldInfo);

if ModelOptions.Verbose >= 1
    disp(['RUNNING ' F0AMversion '...'])
end

% check for incompatible options
if ModelOptions.GoParallel && ModelOptions.LinkSteps
    error('F0AM_ModelCore:InvalidInput',...
    ['ModelOptions.GoParallel = 1 and ModelOptions.LinkSteps = 1 are incompatible. ' ...
    'Parallel execution only works if steps are independent.'])
elseif ModelOptions.GoParallel && ~exist('parfor','builtin')
    error('F0AM_ModelCore:InvalidInput',...
    'Parallel computing toolbox is required to use ModelOptions.GoParallel.')
elseif ModelOptions.FixNOx
    if any(~ismember({'NO','NO2'},fieldnames(InitConc))) % check that NO and NO2 are in InitConc
        error('F0AM_ModelCore:MissingInput',...
            'Cannot use ModelOptions.FixNOx if NO or NO2 missing from InitConc.')
    elseif any(structfun(@iscell,InitConc))
        error('F0AM_ModelCore:InvalidInput',...
            'ModelOptions.FixNOx is incompatible with Family Conservation.')
    end
end

% initialize parpool if needed
if ModelOptions.GoParallel
    if isempty(gcp('nocreate'))
        pID = parcluster;
        parpool(pID,pID.NumWorkers);
    end
end

%% MET DEFAULTS/CHECKS

 % check for duplicate constraints
rp = repval(Mnames);
if ~isempty(rp)
    error('F0AM_ModelCore:InvalidInput','Duplicate Met variable %s.',rp{1})
end

% special water check
wata = sum(isfield(Met,{'RH','H2O'}));
if ~wata
    error('F0AM_ModelCore:MissingInput',...
        'RH or H2O must be specified in Met.')
elseif wata==2
    warning('F0AM_ModelCore:UnusedInput',...
        'RH and H2O both specified in Met. H2O takes priority.')
end

% special check for dilution options
if all(isfield(Met,{'kdil','tgauss'}))
    warning('F0AM_ModelCore:UnusedInput',...
        'kdil and tgauss both specified in Met. kdil takes priority.')
    Met = rmfield(Met,'tgauss'); %dump it so will initialize with default
end

% check other fields
FieldInfo = InitializeMet;
try
    Met = CheckStructure(Met,FieldInfo,'J'); %ignores anything starting with "J"
catch ME
    msg = ' To add new variables to Met, modify the list in InitializeMet.m.';
    causeException = MException('F0AM:UnspecifiedInput',msg);
    ME = addCause(ME,causeException);
    rethrow(ME)
end 
Met = Check4NanNeg(Met);

% j correction checks
if ischar(Met.jcorr), Met.jcorr = {Met.jcorr}; end %convert to cell array for consistency
if iscellstr(Met.jcorr)
    tf = isfield(Met,Met.jcorr);
    if any(~tf)
        error('F0AM_ModelCore:MissingInput',...
            'Met.jcorr variable "%s" not found in Met.', Met.jcorr{~tf})
    end
end

Mnames = fieldnames(Met);

%% SOLARPARAM DEFAULTS/CHECKS

if nargin>5 & ~isempty(SolarParam)
    SolarFlag = 1;
    
    % throw warning if Convergence options specified but convergence not enabled
    if all(isfield(SolarParam,{'nDays','Converge'})) && SolarParam.nDays ~= -1
        warning('F0AM_ModelCore:UnusedInput',...
            'SolarParam.Converge options specified, but convergence not enabled. Set SolarParam.nDays = -1 to enable.')
    end
    
    % check fields
    FieldInfo = {...
        %Valid           %Required       %Default
        'lat'            1               []  ;...
        'lon'            1               []  ;...
        'alt'            1               []  ;...
        'startTime'      1               []  ;...
        'nDays'          1               []  ;...
        'resetConcDaily' 0               0   ;...
        'Converge'       0               struct  ;...
        };
    SolarParam = CheckStructure(SolarParam,FieldInfo);
    SolarParam = Check4NanNeg(SolarParam,'nan'); %negatives OK (lat/lon)
    
    % convergence criteria
    FieldInfo = {...
        %Valid           %Required       %Default
        'Species'            0          {'all'}  ;...
        'MaxPctChange'       0              0.1  ;...
        'MaxDays'            0               10  ;...
        };
    SolarParam.Converge = CheckStructure(SolarParam.Converge,FieldInfo);
        
    %Get starting SZA for chemistry initialization
    sTime.year = SolarParam.startTime(:,1); sTime.month = SolarParam.startTime(:,2);
    sTime.day  = SolarParam.startTime(:,3); sTime.hour  = SolarParam.startTime(:,4);
    sTime.min  = SolarParam.startTime(:,5); sTime.sec   = SolarParam.startTime(:,6);
    sTime.UTC = 0;
    location.longitude  = SolarParam.lon;
    location.latitude   = SolarParam.lat;
    location.altitude   = SolarParam.alt;
    sun = sun_position(sTime,location); %zenith and azimuth angles of sun
%     sun.zenith(sun.zenith>90) = 90; %20251104 GMW commented out. This creates issues at high
%     latitudes/twilight.
    
    if isfield(Met,'SZA') && ~isempty(Met.SZA)
        warning('F0AM_ModelCore:UnusedInput',...
            'Solar cycle enabled. Input Met.SZA will be overwritten.')
    end
    Met.SZA = sun.zenith;
    
else
    SolarFlag = 0;
    SolarParam.lat              = nan;
    SolarParam.lon              = nan;
    SolarParam.alt              = nan;
    SolarParam.startTime        = nan;
    SolarParam.nDays            = nan;
    SolarParam.resetConcDaily   = 0;
    SolarParam.Converge         = struct;
    SolarParam.Converge.Species = {};
end

Snames = fieldnames(SolarParam);

%% INITCONC, BKGDCONC CHECKS

% Check for duplicate constraints
rp = repval(Inames);
if ~isempty(rp)
    error('F0AM_ModelCore:InvalidInput','Duplicate InitConc variable %s.',rp{1})
end

rp = repval(Bnames);
if ~isempty(rp)
    error('F0AM_ModelCore:InvalidInput','Duplicate BkgdConc variable %s.',rp{1})
end

% remove family info from InitConc if present
% assumes that cell array in second InitConc input column indicates a family
Family = struct;
family_flag = structfun(@iscell,InitConc);
if any(family_flag)
    Inames = fieldnames(InitConc);
    Fnames = Inames(family_flag);
    for i = 1:length(Fnames)
        Family.(Fnames{i}).names = InitConc.(Fnames{i});
    end
    InitConc = rmfield(InitConc,Fnames);
%     holdFlag(family_flag) = [];
end

InitConc = Check4NanNeg(InitConc);
BkgdConc = Check4NanNeg(BkgdConc);

Inames = fieldnames(InitConc);
Bnames = fieldnames(BkgdConc);

%% CHEMFILES CHECKS
for i=1:length(ChemFiles)
    cfile = ChemFiles{i};
    if isempty(cfile), continue; end
            
    p = strfind(cfile,'('); %crude check for function
    switch i
        case {1,2} %first two inputs should be functions or empty
            if isempty(p)
                error('F0AM_ModelCore:InvalidInput',...
                    ['In ChemFiles, first two strings must be functions for K and J (in that order). '...
                    'If referencing a function with no inputs, string should still include empty brackets ().'])
            end
            cfile = cfile(1:p-1); %for search path check below
        otherwise %all remaining inputs are scripts
            if ~isempty(p)
                error('F0AM_ModelCore:InvalidInput',...
                    'In ChemFiles, rows 3:end must be scripts, not functions.')
            end
    end
            
    if ~exist(cfile,'file')
        error('F0AM_ModelCore:InvalidInput',...
            'ChemFiles file "%s" not found on search path.',cfile)
    end
end
Chem.ChemFiles = ChemFiles;

%% EXTEND CONSTRAINTS TO HAVE EQUAL LENGTH

% This section allows the use of input constraints that are both scalars and arrays.
% In such a case, all scalars inputs will be assumed to be the same for all runs, 
% and the number of runs is determined by the length of the array inputs
% (which must all be the same length).
%
% This section also doubles as a check on length consistency between inputs

SolarParam.startTime = datenum(SolarParam.startTime); % convert to date number for replication

%%%%%GET INPUT LENGTHS%%%%%
lMet = structfun(@length,Met);
lMet(structfun(@ischar,Met) | structfun(@iscell,Met)) = 1; %ignore strings/cells for this
lInitConc = structfun(@length,InitConc);
lBkgdConc = structfun(@length,BkgdConc);
lSolar = structfun(@length,SolarParam);

lUnq = unique([lMet; lInitConc; lBkgdConc; lSolar]); %unique lengths
lUnq(lUnq==0)=[]; %ignore empty variables
if length(lUnq)>2 || (length(lUnq)==2 && ~any(lUnq==1))
    error('F0AM_ModelCore:InvalidInput',...
        ['Length of constraints is inconsistent. ' ...
        'Check lengths of inputs within Met, InitConc, BkgdConc and SolarParam.'])
end

%%%%%EXTEND INPUTS%%%%%
if length(lUnq)==2
    lExpand = max(lUnq); %length to expand all constraints to
    
    for i=1:length(lMet)
        if lMet(i)==1 && (~ischar(Met.(Mnames{i})) && ~iscell(Met.(Mnames{i})))
            Met.(Mnames{i}) = repmat(Met.(Mnames{i}),lExpand,1);
        end
    end
        
    for i=1:length(lInitConc)
        if lInitConc(i)==1
            InitConc.(Inames{i}) = repmat(InitConc.(Inames{i}),lExpand,1);
        end
    end
    
    for i=1:length(lBkgdConc)
        if lBkgdConc(i)==1
            BkgdConc.(Bnames{i}) = repmat(BkgdConc.(Bnames{i}),lExpand,1);
        end
    end
    
    Xnames = {'nDays','resetConcDaily','Converge'}; %fields to exclude
    for i=1:length(lSolar)
        if lSolar(i)==1 && ~any(strcmp(Snames{i},Xnames))
            SolarParam.(Snames{i}) = repmat(SolarParam.(Snames{i}),lExpand,1);
        end
    end
    
end
SolarParam.startTime = datevec(SolarParam.startTime); %convert back from date number

%% INITIALIZE METEOROLOGY, CHEMISTRY

Met.M = NumberDensity(Met.P,Met.T);    %number density, molec/cm^3
if isempty(Met.H2O)
    Met.H2O = ConvertHumidity(Met.T,Met.P,Met.RH,'RH','NumberDensity'); %water conc, molec/cm^3
elseif isempty(Met.RH)
    Met.RH = ConvertHumidity(Met.T,Met.P,Met.H2O,'NumberDensity','RH');
end

[Cnames,Chem.Rnames,k,Chem.f,Chem.iG,Chem.iRO2,Met.jcorr,Met.jcorr_all,Chem.iLR] = ...
    InitializeChemistry(Met,Chem.ChemFiles,ModelOptions,1);

% lengths
nRx = length(Chem.Rnames);  %number of reactions
nSp = length(Cnames);       %number of species
nIc = length(Met.T);        %number of input constraints

if ModelOptions.FixNOx
    [~,Chem.iNOx] = ismember({'NO','NO2'},Cnames); %get indices for NO and NO2
end

%% INITIALIZE CONCENTRATIONS

conc_init = zeros(nIc,nSp);
[isSpecies,iC] = ismember(Inames,Cnames); %get index for location of Inames in Cnames
for i=1:length(iC)
    if isSpecies(i)
        conc_init(:,iC(i)) = InitConc.(Inames{i});
    else
        warning('F0AM_ModelCore:UnusedInput',...
        'InitConc species %s not found in ChemFiles species list.',Inames{i})
    end
end
Chem.iHold = iC(holdFlag & isSpecies); %index for fixed concentrations
Chem.iInit = iC(isSpecies); %flag for initialzed concentrations

conc_init = conc_init.*repmat(Met.M,1,nSp)./1e9; %convert from ppb to molec/cc
conc_init(:,1) = 1; %ONE is first species
conc_init(:,2) = sum(conc_init(:,Chem.iRO2),2); %RO2 is second species

% convergence index
if length(SolarParam.Converge.Species)==1 && strcmp(SolarParam.Converge.Species{1},'all')
    SolarParam.Converge.iConv = (1:length(Cnames))';
else
    [tf,SolarParam.Converge.iConv] = ismember(SolarParam.Converge.Species,Cnames);
    if any(~tf)
        missing = SolarParam.Converge.Species{find(~tf,1,'first')};
        error('F0AM_ModelCore:InvalidInput','Converge.Species %s not found in ChemFiles species list.',missing)
    end
end

%% INITIALIZE FAMILIES

Fnames = fieldnames(Family);
Chem.Family = struct;
for i = 1:length(Fnames)
    names = Family.(Fnames{i}).names; %family member names
    
    % parse multipliers if present
    scale = ones(size(names));
    m = contains(names,'*'); % * is used for a multiplier by convention
    if any(m)
        scale(m) = str2double(extractBefore(names(m),'*'));
        names(m) = extractAfter(names(m),'*');
    end
    
    % check against InitConc inputs
    [tf,loc] = ismember(names,Inames);
    if ~any(tf) % check for at least 1 family member in InitConc
        error('F0AM_ModelCore:MissingInput',...
            ['No members of family "%s" found in InitConc. '...
            'At least one family member must be initialized.'],...
            Fnames{i})
    elseif any(holdFlag(loc(tf))) %check for held family members
        error('F0AM_ModelCore:InvalidInput',...
            ['At least one member of family "%s" has HoldMe = 1 in InitConc. '...
            'Family conservation and HoldMe are incompatible.'],...
            Fnames{i})
    end
    
    % check for duplicates 
    if length(names) ~= length(unique(names))
        error('F0AM_ModelCore:DuplicateInput',...
            'Family "%s" contains duplicate members.',Fnames{i})
    end
    
    % check against other families
    % 20190128 GMW  doesn't seem to be problematic, commented out for now
%     if i ~= length(Fnames)
%         for j = (i+1) : length(Fnames)
%             tf = ismember(names,Family.(Fnames{j}).names);
%             if any(tf)
%                 error('F0AM_ModelCore:InvalidInput',...
%                     ['Families %s and %s contain the same member. '...
%                     'A chemical species can only be a member of one family.'],...
%                     Fnames{i},Fnames{j})
%             end
%         end
%     end
    
    % locate members in Cnames list
    [tf,index] = ismember(names,Cnames);
    if any(~tf)
        missing = names{find(~tf,1,'first')};
        error('F0AM_ModelCore:InvalidInput',...
            'Family member %s:%s not found in ChemFiles species list.',...
            Fnames{i},missing)
    end
    
    % build structure
    Chem.Family.(Fnames{i}).names = names;
    Chem.Family.(Fnames{i}).index = index;
    Chem.Family.(Fnames{i}).scale = scale;
end

%% INITIALIZE BACKGROUND CONCENTRATIONS (DILUTION)

%%%% DEFAULT VALUES %%%%%
if isfield(BkgdConc,'DEFAULT') && BkgdConc.DEFAULT(1)==1
    conc_bkgd = conc_init./repmat(Met.M,1,nSp).*1e9; %use starting concs (in ppb)
else
    conc_bkgd = 0*conc_init; %default is 0 for all species
end

%%%%% ASSIGN SPECIFIED VALUES %%%%%
[isSpecies,iC] = ismember(Bnames,Cnames); %get index for location of Bnames in Cnames
for i=1:length(iC)
    if isSpecies(i)
        conc_bkgd(:,iC(i)) = BkgdConc.(Bnames{i});
    elseif ~strcmp('DEFAULT',Bnames{i})
        warning('F0AM_ModelCore:UnusedInput',...
        'BkgdConc species %s not found in ChemFiles reaction list.',Bnames{i})
    end
end

conc_bkgd = conc_bkgd.*repmat(Met.M,1,nSp)./1e9; %convert from ppb to molec/cc
conc_bkgd(:,1) = 1; %ONE is first species

%% INTEGRATION

% initialize inputs for slicing
% doing it this way saves overhead for parallel implementation
[Sbroad,Sslice] = struct2parvar(SolarParam);
[Mbroad,Mslice] = struct2parvar(Met);

% initialize outputs as cell arrays (will parse/concatenate after run)
[Conc,Time,StepIndex,k_solar,SZA_solar,days_solar] = deal(cell(nIc,1));
conc_last = [];
t_start = 0;

% loop through all steps
if ModelOptions.GoParallel
    
    % parallel for-loop
    parfor istep = 1:nIc
        [Conc{istep},Time{istep},StepIndex{istep},...
            k_solar{istep},SZA_solar{istep},days_solar{istep}] = ...
            IntegrateStep(istep,nIc,conc_init(istep,:),conc_last,conc_bkgd(istep,:),ModelOptions,...
            Chem,k(istep,:),Sbroad,Sslice(istep,:),Mbroad,Mslice(istep,:),t_start);
    end
    
else
    
    % serial for-loop
    for istep = 1:nIc
        [Conc{istep},Time{istep},StepIndex{istep},...
            k_solar{istep},SZA_solar{istep},days_solar{istep}] = ...
            IntegrateStep(istep,nIc,conc_init(istep,:),conc_last,conc_bkgd(istep,:),ModelOptions,...
            Chem,k(istep,:),Sbroad,Sslice(istep,:),Mbroad,Mslice(istep,:),t_start);
        
        if ModelOptions.LinkSteps
            conc_last = Conc{istep}(end,:);
            t_start = Time{istep}(end); %needed for Gaussian dilution
        end
    end
    
end  % end for/parfor choice

% transform outputs to matrices
Conc        = cell2mat(Conc(:));
Time        = cell2mat(Time(:));
StepIndex   = cell2mat(StepIndex(:));
k_solar     = cell2mat(k_solar(:));
SZA_solar   = cell2mat(SZA_solar(:));
days_solar  = cell2mat(days_solar(:));

if SolarFlag
    Chem.k = k_solar;
    SolarParam.SZA = SZA_solar;
    SolarParam.Converge.Days2Converge = days_solar;
else
    Chem.k = k;
end

%% POST-RUN CALCULATIONS

Conc(:,2) = sum(Conc(:,Chem.iRO2),2); %RO2

% Deal with negatives in Conc
if any(Conc < -1,'all') %molec/cm^3
    i = any(Conc < -1 , 1);
    warning('F0AM_ModelCore:NegativeOutput',...
        'Negative concentrations exceeding -1 molec/cm^3. Investigation recommended. Species:')
    fprintf('%s\r',Cnames{i})
end
Conc(Conc < 0) = 0;

%Chemical rates
G = Conc(:,Chem.iG(:,1)).*Conc(:,Chem.iG(:,2)).*Conc(:,Chem.iG(:,3));
Glr = min(Conc(:,Chem.iG(Chem.iLR,1)),Conc(:,Chem.iG(Chem.iLR,2))); %limiting reagent replacement
G(:,Chem.iLR) = Glr;
Mbig = Met.M(StepIndex);
if size(Chem.k,1) ~= size(G,1) %not always so if EndPointsOnly=0
    kbig = Chem.k(StepIndex,:); %expand to size of G
else
    kbig = Chem.k;
end
Chem.Rates = kbig.*G./repmat(Mbig,1,nRx).*1e9; %units of ppb/s

%Dilution rates
if ~isinf(Met.tgauss)
    kdil = 1./(Met.tgauss(StepIndex) + 2*Time); %Gaussian dispersion
else
    kdil = Met.kdil(StepIndex); %first-order dilution
end
kdilbig = repmat(kdil,1,nSp);
conc_bkgd_big = conc_bkgd(StepIndex,:);
dilrate = -kdilbig.*(Conc - conc_bkgd_big)./repmat(Mbig,1,nSp).*1e9; %units of ppb/s
dilrate(:,1:2) = 0; %ONES and RO2
Chem.DilRates = breakout(dilrate,Cnames);

Chem = orderfields(Chem);

%Concentrations
Conc = Conc./repmat(Met.M(StepIndex),1,nSp).*1e9; %to ppb
Conc(:,1) = 1;
Conc = breakout(Conc,Cnames); %to structure

% Time
if ~isempty(ModelOptions.TimeStamp)
    if length(ModelOptions.TimeStamp) == length(Time)
        Time = ModelOptions.TimeStamp(:);
    else
        warning('F0AM_ModelCore:UnusedInput',...
            'ModelOptions.TimeStamp and output Time are different lengths. Time not overwritten.')
    end
end

%% OUTPUT AND SAVING

%%%%%PUT VARIABLES INTO STRUCTURE%%%%%
iRO2 = Chem.iRO2; %legacy v3.1. To be removed in the future.
vars ={'Met','InitConc','BkgdConc','ModelOptions','SolarParam',...
    'Cnames','Conc','Time','StepIndex','iRO2','Chem','UserData'};
S = struct();
for i=1:length(vars)
    S(1).(vars{i}) = eval(vars{i});
end
S = orderfields(S);

%%%%%SAVING%%%%%
if strcmpi(ModelOptions.SavePath,'DoNotSave')
    if ModelOptions.Verbose >= 1
        disp('MODEL OUTPUT NOT SAVED.')
    end
else
    SaveName = GenFilePath(ModelOptions.SavePath);
    save(SaveName,'S');
    if ModelOptions.Verbose >= 1
    	disp(['SAVED AS ' SaveName])
    end
end

if ModelOptions.DeclareVictory
    victory
end

warning(warnstate) %go back to user warning settings

RunTime = (now - StartTime);
if ModelOptions.Verbose >= 1
    disp(['TOTAL RUN TIME IS ' datestr(RunTime,'HH:MM:SS')])
end


