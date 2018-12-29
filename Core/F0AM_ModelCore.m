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


%%   ASSIGN DEFAULTS AND CHECK INPUTS

StartTime = now;
display('INITIALIZING MODEL...')

%convert inputs to structures
holdFlag = logical(cell2mat(InitConc(:,3)));
Met      = breakout(Met(:,2),Met(:,1));
InitConc = breakout(InitConc(:,2),InitConc(:,1));
BkgdConc = breakout(BkgdConc(:,2),BkgdConc(:,1));

%%%%% MODEL OPTIONS %%%%%
FieldInfo = {...
    %Valid              %Required       %Default
    'Verbose'           0               0   ;...
    'EndPointsOnly'     0               1   ;...
    'LinkSteps'         0               0   ;...
    'Repeat'            0               1   ;...
    'SavePath'          0               ''  ;...
    'TimeStamp'         0               []  ;...
    'IntTime'           1               []  ;...
    'FixNOx'            0               0   ;...
    'DeclareVictory'    0               0   ;...
    };
ModelOptions = CheckStructure(ModelOptions,FieldInfo);
clear FieldInfo

%%%%% METEOROLOGY %%%%%
wata = sum(isfield(Met,{'RH','H2O'}));
if ~wata
    error('F0AM_ModelCore: RH or H2O must be specified in Met.')
elseif wata==2
    disp('CAUTION: RH and H2O both specified in Input "Met". H2O takes priority.')
end
clear wata

FieldInfo = {...
    %Valid          %Required       %Default
    'P'             1               [];...
    'T'             1               [];...
    'SZA'           0               0;...
    'RH'            0               50;...
    'H2O'           0               [];...
    'jcorr'         0               1;...
    'kdil'          0               0;...
    'LFlux'         0               [];...
    'ALT'           0               500;...
    'O3col'         0               300;...
    'albedo'        0               0.1;...
    };
Met = CheckStructure(Met,FieldInfo,'J');
if isempty(Met.LFlux), Met = rmfield(Met,'LFlux'); end
clear FieldInfo

% force vertical arrays
Met.P       = Met.P(:);
Met.T       = Met.T(:);
Met.SZA     = Met.SZA(:);
Met.RH      = Met.RH(:);
Met.kdil    = Met.kdil(:);
Met.ALT     = Met.ALT(:);
Met.O3col   = Met.O3col(:);
Met.albedo  = Met.albedo(:);

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
    clear FieldInfo
    
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
    clear sTime location sun
    
    SolarParam.startTime = datenum(SolarParam.startTime); % convert to date number for replication
    
else
    SolarFlag = 0;
    SolarParam.lat          = nan;
    SolarParam.lon          = nan;
    SolarParam.alt          = nan;
    SolarParam.startTime    = nan;
    SolarParam.nDays        = nan;
end

%%%%% CHECK FOR NANS/NEGS AND ENSURE COLUMN VECTORS %%%%%
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
                error(['F0AM_ModelCore: In ChemFiles input, first two strings must be functions for K and J (in that order). '...
                    'If referencing a function with no inputs, string should still include empty brackets ().'])
            end
            cfile = cfile(1:p-1);
        otherwise %all remaining inputs are scripts
            if ~isempty(p)
                error('F0AM_ModelCore: In ChemFiles input, strings 3:end must be scripts, not functions.')
            end
    end
            
    if ~exist(cfile,'file')
        error(['F0AM_ModelCore: ChemFiles input "' cfile '" not found on search path.'])
    end
end
clear i p cfile

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
clear lMet lInitConc lBkgdConc lSolar lUnq lExpand i

%%   INITIALIZE METEOROLOGY, CHEMISTRY

Met.M = NumberDensity(Met.P,Met.T);    %number density, molec/cm^3
Mnames = [Mnames;'M'];
if isempty(Met.H2O)
    Met.H2O = ConvertHumidity(Met.T,Met.P,Met.RH,'RH','NumberDensity'); %water conc, molec/cm^3
end

[Cnames,Rnames,k,f,iG,iRO2,Met.jcorr,Met.jcorr_all] = InitializeChemistry(Met,ChemFiles,ModelOptions,1);

if SolarFlag
   SolarParam.SZAcycle = [];
   k = []; %will replace later
end

nRx = length(Rnames);   %number of reactions
nSp = length(Cnames);   %number of species
nIc = length(Met.T);    %number of input constraints

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
iHold = iC(holdFlag & isSpecies); %flag for fixed concentrations

conc_init = conc_init.*repmat(Met.M,1,nSp)./1e9; %convert from ppb to molec/cc
conc_init(:,1) = 1; %ONE is first species
conc_init(:,2) = sum(conc_init(:,iRO2),2); %RO2 is second species

if ModelOptions.FixNOx
    if any(~ismember({'NO','NO2'},Inames)) % check that NO and NO2 are in InitConc
        error('F0AM_ModelCore: NO or NO2 missing from InitConc. Cannot use FixNOx option.')
    end
    [~,iNOx] = ismember({'NO','NO2'},Cnames); %get indices for NO and NO2
%     NOxinfo = [iNOx;conc_init(1,iNOx)]; %for adjustments in dydt_eval
end
NOxinfo=[]; %ignore for now...I'll beat this yet.

clear Inames holdFlag isSpecies iC

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

clear Bnames isSpecies iC

%%   INTEGRATION

disp('ENTERING MODEL RUN')
Conc=[]; Time=[]; StepIndex=[]; RepIndex=[];
for j = 1:ModelOptions.Repeat
    for i=1:nIc
        
        if ModelOptions.Verbose>=1
            fprintf('Step = %d of %d, Rep = %d of %d\n',i,nIc,j,ModelOptions.Repeat)
            tic
        end
        
        %%%%% INITIAL CONCENTRATIONS %%%%%
        if ModelOptions.LinkSteps && (i>1 || j>1)
            conc_init_step = conc_out(end,:)'; %carry over end concs from previous step if desired
            conc_init_step(iHold) = conc_init(i,iHold); % override for Held species
            if ModelOptions.FixNOx
                modelNOx = conc_out(end,iNOx);
                initNOx = conc_init(i,iNOx);
                conc_init_step(iNOx) = modelNOx.*sum(initNOx)./sum(modelNOx);
%                 NOxinfo = [iNOx;initNOx]; %for adjustment in dydt_eval
            end
        else
            conc_init_step = conc_init(i,:)'; %ODE solver needs 1 row for each species
        end

        %%%%% DO INTEGRATION %%%%%
        if SolarFlag
            % in this special case, the model takes a bunch of mini-steps to allow SZA, and thus
            % photochemistry, to evolve throughout a model step.
            
            %%%%% CALCULATE SZA CYCLE %%%%%
            extendTime = 0:ModelOptions.IntTime:SolarParam.nDays*86400; %times to add to start time
            extendTime = extendTime - 86400*floor(extendTime/86400); %force to repeat same day 
            
            sTime.year = SolarParam.startTime(i,1); sTime.month = SolarParam.startTime(i,2);
            sTime.day  = SolarParam.startTime(i,3); sTime.hour  = SolarParam.startTime(i,4);
            sTime.min  = SolarParam.startTime(i,5); sTime.sec   = SolarParam.startTime(i,6);
            sTime.sec = sTime.sec + extendTime;
            sTime.UTC = 0;
            
            location.longitude  = SolarParam.lon(i);
            location.latitude   = SolarParam.lat(i);
            location.altitude   = SolarParam.alt(i);
            
            sun = sun_position(sTime,location); %zenith and azimuth angles of sun
            sun.zenith(sun.zenith>90) = 90;
            nSolar = length(extendTime);
            
            %%%%% EXTEND MET %%%%%
            Mnames = fieldnames(Met);
            for m=1:length(Mnames)
                solarMet.(Mnames{m}) = repmat(Met.(Mnames{m})(i,:),nSolar,1);
            end
            solarMet.SZA = sun.zenith;
            Met.SZA(i) = solarMet.SZA(end);
            
            %calculate rate constants
            [~,~,k_solar] = InitializeChemistry(solarMet,ChemFiles,ModelOptions,0);
    
            %%%%% EXECUTE MODEL, UPDATING SZA AT EACH MINI-STEP %%%%%
            conc_solar_end = nan(nSolar,nSp);
            time_solar_end = nan(nSolar,1);
            for h = 1:nSolar
                if ModelOptions.Verbose>=2
                    fprintf('Solar Cycle %d of %d\n',h,nSolar);
                end
                
                %%%%% CALL ODE SOLVER %%%%%
                param = {...    %parameters for dydt_eval
                    k_solar(h,:),...
                    f,...
                    iG,...
                    iRO2,...
                    iHold,...
                    Met.kdil(i),...
                    conc_bkgd(i,:),...
                    ModelOptions.IntTime,...
                    ModelOptions.Verbose,...
                    NOxinfo,...
                    };
                
                options = odeset('Jacobian',@(t,conc_out) Jac_eval(t,conc_out,param)); %Jacobian speeds integration
                
                [time_out,conc_out] = ode15s(@(t,conc_out) dydt_eval(t,conc_out,param),...
                    [0 ModelOptions.IntTime],conc_init_step',options);
                
                conc_init_step = conc_out(end,:)'; %use end points to initialize next step
                if ModelOptions.FixNOx
                    modelNOx = conc_out(end,iNOx);
                    initNOx = conc_init(i,iNOx);
                    conc_init_step(iNOx) = modelNOx.*sum(initNOx)./sum(modelNOx);
%                     NOxinfo = [iNOx;initNOx]; %for adjustment in dydt_eval
                end
                
                %store mini-step end points
                conc_solar_end(h,:) = conc_init_step;
                time_solar_end(h) = time_out(end)*h;
            end %end Solar for-loop
            
            if ModelOptions.EndPointsOnly
                k(i,:) = k_solar(end,:);
            else
                k = [k; k_solar];
            end
            SolarParam.SZAcycle = [SolarParam.SZAcycle; solarMet.SZA];
        
        else %no solar flag
            %%%%% CALL ODE SOLVER %%%%%
            param = {...    %parameters for dydt_eval
                k(i,:),...
                f,...
                iG,...
                iRO2,...
                iHold,...
                Met.kdil(i),...
                conc_bkgd(i,:),...
                ModelOptions.IntTime,...
                ModelOptions.Verbose,...
                NOxinfo,...
                };
            
            options = odeset('Jacobian',@(t,conc_out) Jac_eval(t,conc_out,param)); %Jacobian speeds integration
            
            [time_out,conc_out] = ode15s(@(t,conc_out) dydt_eval(t,conc_out,param),...
                [0 ModelOptions.IntTime],conc_init_step',options);
        end %end solar-regular conditional case
        
        if ModelOptions.Verbose>=1
            disp(['MODEL STEP TIME IS ' datestr(toc/86400,'HH:MM:SS')])
        end

        %%%%% CONCATENATE OUTPUTS %%%%%
        if ModelOptions.LinkSteps && ~isempty(Time)
            time_out = time_out + Time(end);
        end

        if ModelOptions.EndPointsOnly
            Conc(end+1,:) = conc_out(end,:);      %concentrations
            Time(end+1,:) = time_out(end);        %model run time
            StepIndex(end+1,:) = i;               %index for each model run
            RepIndex(end+1,:) = j;                %index for each repetition of all runs
        elseif ~SolarFlag
            Conc = [Conc; conc_out];
            Time = [Time; time_out];
            StepIndex = [StepIndex; i*ones(size(time_out))];
            RepIndex = [RepIndex; j*ones(size(time_out))];
        else
            Conc = [Conc; conc_solar_end];
            Time = [Time; time_solar_end + SolarParam.nDays*(i-1)]; %force to not repeat
            StepIndex = [StepIndex; i*ones(nSolar,1)];
            RepIndex = [RepIndex; j*ones(nSolar,1)];
        end
        
    end %end single run-thru
end     %end Repeat loop

RunTime = (now - StartTime);
disp(['TOTAL RUN TIME IS ' datestr(RunTime,'HH:MM:SS')])

clear i j conc_init_step runindex_now Set2Constraint param conc_out time_out
clear options StartTime RunTime
clear conc_solar_end time_solar_end k_solar
clear iNOx modelNOx initNOx NOxinfo

%%   POST-RUN CALCULATIONS

%Chemical rates
Conc(:,2) = sum(Conc(:,iRO2),2);
G = Conc(:,iG(:,1)).*Conc(:,iG(:,2));
Mbig = Met.M(StepIndex);
if size(k,1)~= size(G,1) %not always so if EndPointsOnly=0
    kbig = k(StepIndex,:); %expand to size of G
else
    kbig = k;
end
Chem.Rates = kbig.*G./repmat(Mbig,1,nRx).*1e9; %units of ppb/s
Chem.f = f;
Chem.iG = iG;
Chem.k = k;
Chem.ChemFiles = ChemFiles;
Chem.Rnames = Rnames;
Chem.iHold = iHold;

%Dilution rates
kdilbig = repmat(Met.kdil(StepIndex),1,nSp);
conc_bkgd_big = conc_bkgd(StepIndex,:);
dilrate = -kdilbig.*(Conc - conc_bkgd_big)./repmat(Mbig,1,nSp).*1e9; %units of ppb/s
dilrate(:,1:2) = 0; %ONES and RO2
Chem.DilRates = breakout(dilrate,Cnames);

Chem = orderfields(Chem);

%Concentrations
Conc = Conc./repmat(Met.M(StepIndex),1,nSp).*1e9; %to ppb
Conc(:,1) = 1;
Conc = breakout(Conc,Cnames);

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

clear G kbig Mbig kdilbig conc_bkgd_big kdilbig conc_bkgd_big
clear conc_init conc_bkgd dilrate kdil M Time2Rep dTime
clear nRx nSp nIc nSolar
clear f iG k ChemFiles Rnames iHold Mnames
clear Snames SolarFlag extendTime sTime location solarMet solark sun m h iJ

%%   ACCUMULATE VARIABLES INTO STRUCTURE AND SAVE

%%%%%PUT VARIABLES INTO STRUCTURE%%%%%
vars = who;
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


