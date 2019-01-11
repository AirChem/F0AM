function S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam)
% S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam)
% Core model code for the Framework for 0-D Atmospheric Modeling (F0AMv3).
% Descended from the University of Washington Chemical Model (UWCM), first beget 20101211 by GMW/JAT.
% See ReadMe for descriptions of inputs and outputs.
%
% 20120210 GMW
% 20120909 GMW    Added a check for valid options before assigning defaults.
% 20130204 GMW    Removed "total run time" and "saved as" display commands from Verbose flag control.
% 20131022 GMW    Work began on v2.2. See Changelog for info.
% 20150601 GMW    Work began on v3.0. See Changelog.
% 20160901 GMW    Work began on v3.2. See Changelog.


%%   ASSIGN DEFAULTS AND CHECK INPUTS

StartTime = now;
disp('INITIALIZING MODEL...')

%convert inputs to structures
holdFlag = logical(cell2mat(InitConc(:,3)));
Met      = breakout(Met(:,2),Met(:,1));
InitConc = breakout(InitConc(:,2),InitConc(:,1));
BkgdConc = breakout(BkgdConc(:,2),BkgdConc(:,1));

%%%%% MODEL OPTIONS %%%%%
FieldInfo = {...
    %Valid              %Required       %Default
    'IntTime'           1               []  ;...
    'Verbose'           0               0   ;...
    'EndPointsOnly'     0               1   ;...
    'LinkSteps'         0               0   ;...
    'Repeat'            0               1   ;...
    'SavePath'          0               ''  ;...
    'TimeStamp'         0               []  ;...
    'FixNOx'            0               0   ;...
    'DeclareVictory'    0               0   ;...
    'GoParallel'        0               0   ;...
    'ClassComposition'  0               struct();...%Added 190111 by PSRP
    'FixedClasses'      0               {}  ;...%Added 190111 by PSRP
    'DilutionClasses'   0               {}  ;...%Added 190111 by PSRP
    };
ModelOptions = CheckStructure(ModelOptions,FieldInfo);

% check for incompatible options
if ModelOptions.GoParallel && ModelOptions.LinkSteps
    error('F0AM_ModelCore:InvalidInput',...
    ['ModelOptions.GoParallel = 1 and ModelOptions.LinkSteps = 1 are incompatible. ' ...
    'Parallel execution only works if steps are independent.'])
elseif ModelOptions.GoParallel && ~exist('parfor','builtin')
    error('F0AM_ModelCore:InvalidInput',...
    'Parallel computing toolbox is required to use ModelOptions.GoParallel.')
elseif ModelOptions.Repeat>1 && ~ModelOptions.LinkSteps
    error('F0AM_ModelCore:InvalidInput',...
    ['ModelOptions.Repeat > 1 and ModelOptions.LinkSteps = 0 are incompatible. ' ...
    'Why repeat the same model run twice???'])
elseif ModelOptions.FixNOx
    if any(~ismember({'NO','NO2'},fieldnames(InitConc))) % check that NO and NO2 are in InitConc
        error('F0AM_ModelCore:MissingInput',...
            'Cannot use ModelOptions.FixNOx if NO or NO2 missing from InitConc.')
    end
end

% initialize parpool if needed
if ModelOptions.GoParallel
    if isempty(gcp('nocreate'))
        pID = parcluster;
        parpool(pID,pID.NumWorkers);
    end
end

%Clean up ClassComposition, FixedClasses, DilutionClasses:
fn = fieldnames(ModelOptions.ClassComposition);
combined_class_names = [ModelOptions.FixedClasses, ModelOptions.DilutionClasses]
for i = 1:length(fn)
    curr_classname = fn{i};
end


%%%%% METEOROLOGY %%%%%

% special water check
wata = sum(isfield(Met,{'RH','H2O'}));
if ~wata
    error('F0AM_ModelCore:MissingInput','RH or H2O must be specified in Met.')
elseif wata==2
    disp('CAUTION: RH and H2O both specified in Input "Met". H2O takes priority.')
end

% special check for dilution options
if all(isfield(Met,{'kdil','tgauss'}))
    disp('CAUTION: kdil and tgauss both specified in Input "Met". kdil takes priority.')
end

%check other fields
FieldInfo = InitializeMet;
Met = CheckStructure(Met,FieldInfo,'J');
if isempty(Met.LFlux), Met = rmfield(Met,'LFlux'); end

%%%%% SOLAR CYCLE PARAMETERS %%%%%
if nargin==6
    SolarFlag = 1;
    FieldInfo = {...
        %Valid          %Required       %Default
        'lat'           1               []  ;...
        'lon'           1               []  ;...
        'alt'           1               []  ;...
        'startTime'     1               []  ;...
        'nDays'         1               []  ;...
        };
    SolarParam = CheckStructure(SolarParam,FieldInfo);
    
    %need to get starting SZA
    sTime.year = SolarParam.startTime(:,1); sTime.month = SolarParam.startTime(:,2);
    sTime.day  = SolarParam.startTime(:,3); sTime.hour  = SolarParam.startTime(:,4);
    sTime.min  = SolarParam.startTime(:,5); sTime.sec   = SolarParam.startTime(:,6);
    sTime.UTC = 0;
    location.longitude  = SolarParam.lon;
    location.latitude   = SolarParam.lat;
    location.altitude   = SolarParam.alt;
    sun = sun_position(sTime,location); %zenith and azimuth angles of sun
    sun.zenith(sun.zenith>90) = 90;
    Met.SZA = sun.zenith;
    
    SolarParam.startTime = datenum(SolarParam.startTime); % convert to date number for replication
    
else
    SolarFlag = 0;
    SolarParam.lat          = nan;
    SolarParam.lon          = nan;
    SolarParam.alt          = nan;
    SolarParam.startTime    = nan;
    SolarParam.nDays        = nan;
end

%%%%% CHECK FOR NANS/NEGS AND COLUMNATE %%%%%
Met      = Check4NanNeg(Met);
InitConc = Check4NanNeg(InitConc);
BkgdConc = Check4NanNeg(BkgdConc);
if SolarFlag, SolarParam = Check4NanNeg(SolarParam,'nan'); end

%%%%% CHECK CHEMFILES %%%%%
for i=1:length(ChemFiles)
    cfile = ChemFiles{i};
    if isempty(cfile), continue; end
            
    p = strfind(cfile,'('); %crude check for function
    switch i
        case {1,2} %first two inputs should be functions or empty
            if isempty(p)
                error('F0AM_ModelCore:InvalidInput',['In ChemFiles input, first two strings must be functions for K and J (in that order). '...
                    'If referencing a function with no inputs, string should still include empty brackets ().'])
            end
            cfile = cfile(1:p-1); %for search path check below
        otherwise %all remaining inputs are scripts
            if ~isempty(p)
                error('F0AM_ModelCore:InvalidInput','In ChemFiles input, strings 3:end must be scripts, not functions.')
            end
    end
            
    if ~exist(cfile,'file')
        error('F0AM_ModelCore:InvalidInput','ChemFiles input "%s" not found on search path.',cfile)
    end
end
Chem.ChemFiles = ChemFiles;

%%%%% GET STRUCTURE NAMES %%%%%
Mnames = fieldnames(Met);
Inames = fieldnames(InitConc);
Bnames = fieldnames(BkgdConc);
Snames = fieldnames(SolarParam);

%%   EXTEND CONSTRAINTS TO HAVE EQUAL LENGTH

% This section allows the use of input constraints that are both scalars and arrays.
% In such a case, all scalars inputs will be assumed to be the same for all runs, 
% and the number of runs is determined by the length of the array inputs
% (which must all be the same length).

%%%%%GET INPUT LENGTHS%%%%%
lMet = structfun(@length,Met);
lMet(structfun(@ischar,Met) | structfun(@iscell,Met)) = 1; %ignore strings/cells for this
lInitConc = structfun(@length,InitConc);
lBkgdConc = structfun(@length,BkgdConc);
lSolar = structfun(@length,SolarParam);

lUnq = unique([lMet; lInitConc; lBkgdConc; lSolar]); %unique lengths
lUnq(lUnq==0)=[]; %ignore empty variables
if length(lUnq)>2 || (length(lUnq)==2 && ~any(lUnq==1))
    error(['F0AM_ModelCore: Number of constraints is inconsistent. ' ...
        'Check lengths of variables for Met, InitConc, BkgdConc and SolarParam.'])
end

%%%%%EXTEND INPUTS%%%%%
if length(lUnq)==2
    lExpand = max(lUnq); %length to expand all constraints to
    
    for i=1:length(lMet)
        if lMet(i)==1 && ~ischar(Met.(Mnames{i}))
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
    
    for i=1:length(lSolar)
        if lSolar(i)==1
            SolarParam.(Snames{i}) = repmat(SolarParam.(Snames{i}),lExpand,1);
        end
    end
    SolarParam.nDays = SolarParam.nDays(1);
    
end
SolarParam.startTime = datevec(SolarParam.startTime);

%%   INITIALIZE METEOROLOGY, CHEMISTRY

Met.M = NumberDensity(Met.P,Met.T);    %number density, molec/cm^3
if isempty(Met.H2O)
    Met.H2O = ConvertHumidity(Met.T,Met.P,Met.RH,'RH','NumberDensity'); %water conc, molec/cm^3
elseif isempty(Met.RH)
    Met.RH = ConvertHumidity(Met.T,Met.P,Met.H2O,'NumberDensity','RH');
end

[Cnames,Chem.Rnames,k,Chem.f,Chem.iG,Chem.iRO2,Met.jcorr,Met.jcorr_all,limited_r] = InitializeChemistry(Met,Chem.ChemFiles,ModelOptions,1);

% lengths
nRx = length(Chem.Rnames);  %number of reactions
nSp = length(Cnames);       %number of species
nIc = length(Met.T);        %number of input constraints

%%   INITIALIZE CONCENTRATIONS

conc_init = zeros(nIc,nSp);
[isSpecies,iC] = ismember(Inames,Cnames); %get index for location of Inames in Cnames
for i=1:length(iC)
    if isSpecies(i)
        conc_init(:,iC(i)) = InitConc.(Inames{i});
    else
        disp(['CAUTION: Init Species ' Inames{i} ' not found in reaction list.'])
    end
end
Chem.iHold = iC(holdFlag & isSpecies); %flag for fixed concentrations

conc_init = conc_init.*repmat(Met.M,1,nSp)./1e9; %convert from ppb to molec/cc
conc_init(:,1) = 1; %ONE is first species
conc_init(:,2) = sum(conc_init(:,Chem.iRO2),2); %RO2 is second species

if ModelOptions.FixNOx
    [~,Chem.iNOx] = ismember({'NO','NO2'},Cnames); %get indices for NO and NO2
%     Chem.NOxinfo = [iNOx; conc_init(1,iNOx)]; %for adjustments in dydt_eval
end

% %Expanding FixNOx to FixedClasses
% matrix_fixed_classes = zeros(numel(ModelOptions.FixedClasses),nSp);
% matrix_adjust_as = zeros(numel(ModelOptions.FixedClasses),nSp);
% for ind = 1:numel(ModelOptions.FixedClasses)
%     curr_class_name = ModelOptions.FixedClasses{ind};
%     istring = LocateString(ModelOptions.ClassComposition(:,1),curr_class_name);
%     curr_class = ModelOptions.ClassComposition{istring,2};
%     for spInd = 1:numel(curr_class)
%         [~,iClass] = ismember(curr_class{spInd},Cnames);
%         matrix_fixed_classes(ind,iClass) = matrix_fixed_classes(ind,iClass) + 1;
%     end
%     curr_adj_as = ModelOptions.ClassComposition{istring,3};
%     for spInd = 1:numel(curr_adj_as)
%         [~,iClass] = ismember(curr_adj_as{spInd},Cnames);
%         matrix_adjust_as(ind,iClass) = matrix_adjust_as(ind,iClass) + 1;
%     end
% end
% 
% %Check for non-overlapping adjust-as-es
% q = matrix_adjust_as;
% q(matrix_adjust_as >= 1) = 1;
% if max(sum(q,1)) > 1
%     error('Can''t have overlapping fixed_classes adjustments');
% end
% a = 17;

%%   INITIALIZE BACKGROUND CONCENTRATIONS (DILUTION)

%%%% DEFAULT VALUES %%%%%
if isfield(BkgdConc,'DEFAULT') && BkgdConc.DEFAULT(1)==1
    conc_bkgd = conc_init./repmat(Met.M,1,nSp).*1e9; %use starting concs (in ppb)
else
    conc_bkgd = 0*conc_init; %default is 0 for all species
end

%%%%% ASSIGN SPECIFIED VALUES %%%%%
[isSpecies,iC] = ismember(Bnames,Cnames); %get index for location of Inames in Cnames
for i=1:length(iC)
    if isSpecies(i)
        conc_bkgd(:,iC(i)) = BkgdConc.(Bnames{i});
    elseif ~strcmp('DEFAULT',Bnames{i})
        disp(['CAUTION: Bkgd Species ' Bnames{i} ' not found in reaction list.'])
    end
end

conc_bkgd = conc_bkgd.*repmat(Met.M,1,nSp)./1e9; %convert from ppb to molec/cc
conc_bkgd(:,1) = 1; %ONE is first species

%%   INTEGRATION

% initialize inputs for slicing
% doing it this way saves overhead for parallel implementation
[Sbroad,Sslice] = struct2parvar(SolarParam);
[Mbroad,Mslice] = struct2parvar(Met);

% initialize outputs
[Conc,Time,StepIndex,RepIndex,k_solar,SZA_solar] = deal(cell(nIc,ModelOptions.Repeat));

% loop through constraints
for j = 1:ModelOptions.Repeat
    
    % display
    if ModelOptions.Verbose>=1 && ModelOptions.Repeat>1
        fprintf('Rep %u of %u\n',j,ModelOptions.Repeat)
    end
    
    % get last model output for linking Repeat loops if needed
    if j==1, conc_last = [];
    else,    conc_last = Conc{end,j-1}(end,:);
    end
        
    if ModelOptions.GoParallel

        % parallel for-loop
        parfor i = 1:nIc
            [Conc{i,j},Time{i,j},StepIndex{i,j},RepIndex{i,j},k_solar{i,j},SZA_solar{i,j}] = ...
                IntegrateStep(i,j,nIc,conc_init(i,:),conc_last,conc_bkgd(i,:),ModelOptions,Chem,k(i,:),Sbroad,Sslice(i,:),Mbroad,Mslice(i,:),limited_r);
        end
        
    else
        
        % serial for-loop
        for i = 1:nIc
            [Conc{i,j},Time{i,j},StepIndex{i,j},RepIndex{i,j},k_solar{i,j},SZA_solar{i,j}] = ...
                IntegrateStep(i,j,nIc,conc_init(i,:),conc_last,conc_bkgd(i,:),ModelOptions,Chem,k(i,:),Sbroad,Sslice(i,:),Mbroad,Mslice(i,:),limited_r);
            
            if ModelOptions.LinkSteps, conc_last = Conc{i,j}(end,:); end
        end
        
    end  % end for/parfor choice
end      % end Repeat loop

RunTime = (now - StartTime);
disp(['TOTAL RUN TIME IS ' datestr(RunTime,'HH:MM:SS')])

% transform outputs
Conc        = cell2mat(Conc(:));
Time        = cell2mat(Time(:));
StepIndex   = cell2mat(StepIndex(:));
RepIndex    = cell2mat(RepIndex(:));
k_solar     = cell2mat(k_solar(:));
SZA_solar   = cell2mat(SZA_solar(:));

if SolarFlag
    Chem.k = k_solar;
    SolarParam.SZA = SZA_solar;
else
    Chem.k = k;
end

%%   POST-RUN CALCULATIONS

%Chemical rates
Conc(:,2) = sum(Conc(:,Chem.iRO2),2);
G = Conc(:,Chem.iG(:,1)).*Conc(:,Chem.iG(:,2));
Mbig = Met.M(StepIndex);
if size(Chem.k,1)~= size(G,1) %not always so if EndPointsOnly=0
    kbig = Chem.k(StepIndex,:); %expand to size of G
else
    kbig = Chem.k;
end
Chem.Rates = kbig.*G./repmat(Mbig,1,nRx).*1e9; %units of ppb/s

%Dilution rates
if ~isinf(Met.tgauss)
    kdil = 1./(Met.tgauss(StepIndex) + 2*Time); %Gaussian dispersion
else
    kdil = Met.kdil(StepIndex); %1st-order dilution
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

%Time
if ~isempty(ModelOptions.TimeStamp)
    ModelOptions.TimeStamp = ModelOptions.TimeStamp(:); %ensure column vector
    Time2Rep = repmat(ModelOptions.TimeStamp,ModelOptions.Repeat,1);
    dTime = median(diff(Time2Rep)); %assumes equal spacing
    if length(Time2Rep) == length(RepIndex)
        Time2Rep = Time2Rep + (max(Time2Rep)+dTime)*(RepIndex-1); %force Time to not repeat
        Time = Time2Rep;
    else
        disp('CAUTION: TimeStamp and Time are different lengths. Output "Time" not overwritten.')
    end
end

%%   ACCUMULATE VARIABLES INTO STRUCTURE AND SAVE

%%%%%PUT VARIABLES INTO STRUCTURE%%%%%
iRO2 = Chem.iRO2; %legacy 
vars ={'Met','InitConc','BkgdConc','ModelOptions','SolarParam',...
    'Cnames','Conc','Time','StepIndex','RepIndex','iRO2','Chem'};
S = struct();
for i=1:length(vars)
    S(1).(vars{i}) = eval(vars{i});
end
S = orderfields(S);

%%%%%SAVING%%%%%
if strcmpi(ModelOptions.SavePath,'DoNotSave')
    disp('Model output not saved.')
else
    SaveName = GenFilePath(ModelOptions.SavePath);
    disp(['SAVED AS ' SaveName])
    save(SaveName,'S');
end

if ModelOptions.DeclareVictory
    victory
end


