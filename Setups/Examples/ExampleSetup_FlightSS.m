% ExampleSetup_FlightSS.m
% In this example, we examine how to calculate a diel steady state using the "Solar Cycle" feature.
%   The model is initialized with observations from an aircraft, and run to diel steady-state
%   for each set of observations along the flight track. We will then investigate HCHO production.
% This example also demonstrates the use of all available mechanisms.
%   Because some of the mechanisms use different names for species and J-values, there are some
%   switch-case statements that would not be needed if doing this with a single mechanism.
% Read comments in each section for a guided tour.

if length(dbstack)==1 %only execute if top-level (skip if called from ExampleSetup_MechCompare.m)
    clear
    MECHANISM = 'MCMv331'; % choices are MCMv331, MCMv32, CB05, CB6r2, RACM2, GEOSCHEM
    makeplots = 1; %flag 0 or 1 for making plots after run
end

%% OBSERVATIONS
%{
We will use observations taken on the NOAA WP-3D in the Atlanta area during the 2013 SENEX mission.
Data are averaged to 1 minute and have been filtered for NaN/negatives.
The time vector in this structure is "AOCTimewave" and is in UTC seconds of day.
Thanks to M. Marvin for compiling the data and to all the hard-working researchers for collecting them.
%}

load Obs_SENEX_ATL20130612_1min.mat %structure "D"

% thin dataset to speed up run, since it is just an example
i = 25:67; %one interesting part of flight (central Atlanta)
Dnames = fieldnames(D);
for j=1:length(Dnames)
    D.(Dnames{j}) = D.(Dnames{j})(i);
end
clear i j Dnames

%% SOLAR PARAMETERS
%{
SolarParam is structure specifying the time and location for each set of observations.
This will be used to calculate solar zenith angles vs time of day.
"startTime" is a 6-column date vector in UTC.
"nDays" is the number of days to loop through.
    In practice the model should be run until steady state is reached for the species of interest.
%}

o = ones(size(D.AOCTimewave));
SolarParam.lat          = D.GpsLat; %degrees, range -90:90
SolarParam.lon          = D.GpsLon; %degrees, range -180:180
SolarParam.alt          = D.PAlt; %meters
SolarParam.startTime    = [2013*o 6*o 12*o 0*o 0*o D.AOCTimewave]; %year month day hour min sec
SolarParam.nDays        = 1; %integer. Set to 1 for example, but should probably be longer (3 days or more) to reach steady state.
SolarParam.resetConcDaily = 0; %flag for reinitializing to InitConc every 24 hours
clear o

% optional convergence criteria
% to use this mode, set SolarParam.nDays = -1 above.
SolarParam.Converge.Species = {'all'};
SolarParam.Converge.MaxPctChange = 0.1;
SolarParam.Converge.MaxDays = 20;

%% METEOROLOGY
%{
P, T and RH were measured and will be held constant for each step of the simulation.
kdil is a physical loss constant for all species; 1 per day is a typical value.
NO2 and O3 photolysis frequencies will be set to their observed values.
jcorr is a scaling factor for non-observed photolysis frequencies. In this case,
  it will be determined by the average of the observed:calculated ratios for J1 and J4.
  Setting this to "1" instead, and removing the J1 and J4 constraints, would be equivalent to
  assuming clear-sky conditions.
%}

%choose J-value constraint names for specific mechanism
switch MECHANISM
    case {'MCMv331','MCMv32'}
        nJNO2 = 'J4'; nJO3 = 'J1';
    case {'CB05','CB6r2','RACM2','GEOSCHEM'}
        nJNO2 = 'JNO2'; nJO3 = 'JO1D';
    otherwise
        error(['Invalid mechanism "' mechanism '".'])
end

Met = {...
    %   names        values
    'P'          D.StaticPrs                ;...    %Pressure, mbar
    'T'          D.AmbTemp+273.15           ;...    %Temperature, K
    'RH'         D.RelHumidity              ;...    %Relative humidity, %
    'kdil'       1/86400                    ;...    %Dilution constant, /sec
    'jcorr'      {nJO3,nJNO2}               ;...    %correction factor for j-values {nJO3,nJNO2}
    nJNO2        D.j_NO2_down+D.j_NO2_up    ;...    %NO2 photolysis frequency
    nJO3         D.j_O3_down+D.j_O3_up      ;...    %O3 photolysis frequency
    'ALT'        D.PAlt                     ;...    %altitude, m
    'O3col'      325                        ;...    %O3 column, DU
    'albedo'     0.2                        ;...    %surface reflectance
    };

%% CHEMICAL CONCENTRATIONS
%{
Concentrations are initialized using observations or fixed values.
Species with HoldMe = 1 will be held constant throughout each step.
Species with HoldMe = 0 are only initialized at the start of the run.
In this case, we hold NO2 constant and let NO float so that the radical chemistry will respond to
    changing SZA. oVOC are also allowed to float since we want to use these to evaluate model
    performance.

Examples are given here for each of the mechanisms currently available.
%}

InitConc = {...
    %names          conc(ppb)                   HoldMe
    'CH4'           D.CH4_ppb                   1;...
    'H2'            550                         1;...
    'CO'            D.CO_ppbv                   1;...
    'O3'            D.O3_ppbv                   1;...
    
    'NO'            D.NO_ppbv                   0;...
    'NO2'           D.NO2_ppbv                  1;...
    'PAN'           D.PAN_ppbv                  1;...
    
    'CH3OH'         D.methanol_pptv/1000        1;... %long-lived w/ minor secondary sources
    'C5H8'          D.isoprene_pptv/1000        1;...
    'HCHO'          D.HCHO_ppbv                 0;...
    };

%change names if needed
switch MECHANISM
    case {'MCMv331','MCMv32'} %default
    case {'CB05','CB6r2'}
        InitConc(8:10,1) = {'MEOH','ISOP','FORM'};
    case 'RACM2'
        InitConc(8:10,1) = {'MOH','ISO','HCHO'};
    case 'GEOSCHEM'
        InitConc(8:10,1) = {'MOH','ISOP','CH2O'};
    otherwise
        error(['Invalid mechanism "' mechanism '".'])
end

%% CHEMISTRY
%{
ChemFiles is a cell array of strings specifying functions and scripts for the chemical mechanism.
THE FIRST CELL is always a function for generic K-values.
THE SECOND CELL is always a function for J-values (photolysis frequencies).
    The numeric flag of "2" in the J function inputs specifies the use of the "HYBRID" method for
    calculating J-values (see ReadMe).
All other inputs are scripts for mechanisms and sub-mechanisms.
Examples are given here for all of the mechanisms currently available.
%}

switch MECHANISM
    case 'MCMv331'
        ChemFiles = {...
            'MCMv331_K(Met)';...
            'MCMv331_J(Met,2)';...
            'MCMv331_Inorg_Isoprene'};
        
    case 'MCMv32'
        ChemFiles = {...
            'MCMv32_K(Met)';...
            'MCMv32_J(Met,2)';...
            'MCMv32_Inorg_Isoprene'};

    case 'CB05'
        ChemFiles = {...
            'CB05_K(Met)';...
            'CB05_J(Met,2)';...
            'CB05_AllRxns'};
        
    case 'CB6r2'
        ChemFiles = {...
            'CB6r2_K(Met)';...
            'CB6r2_J(Met,2)';...
            'CB6r2_AllRxns'};
        
    case 'RACM2'
         ChemFiles = {...
            'RACM2_K(Met)';...
            'RACM2_J(Met,2)';...
            'RACM2_AllRxns'};
        
    case 'GEOSCHEM'
        ChemFiles = {...
            'GEOSCHEM_K(Met)';...
            'GEOSCHEM_J(Met,2)';...
            'GEOSCHEM_AllRxns'};
        
end

%% DILUTION
%{
Background concentrations, along with the value of kdil in Met, determine the dilution rate for chemical species.
Here we stick with the default value of 0 for all species, which effectively makes dilution a first-order loss.
%}
BkgdConc = {...
%   names           values (ppbv)
    'DEFAULT'       0;...   %0 for all zeros, 1 to use InitConc
    };

%% MODEL OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 1 because we only want the last point of each step.
"LinkSteps" is set to 0 because each step uses an independent set of observations.
"Repeat" is set to 1 to loop through the full set of constraints once.
"TimeStamp" is set to the dataset independent variable.
"SavePath" gives the filename only (in this example); the default save directory is the UWCMv3\Runs folder.
"IntTime" is the integration time for each solar cycle mini-step.
    Because we are using the SolarCycle option, this represents the interval for SZA updates
    and should be set to an integer divisor of 86400 seconds (= 1 day).
"GoParallel" can be used if you have the parallel computing toolbox since steps are independent.
%}

ModelOptions.Verbose        = 2; %flag for verbose command window output
ModelOptions.EndPointsOnly  = 1; %flag for concentration and rate outputs
ModelOptions.LinkSteps      = 0; %flag for using end-points of one run to initialize next run
ModelOptions.Repeat         = 1; %number of times to loop through all constraints
ModelOptions.SavePath       = ['FlightSSoutput_' MECHANISM]; %partial or full path or empty
ModelOptions.TimeStamp      = D.AOCTimewave; %time stamp to overwrite S.Time model output
ModelOptions.IntTime        = 3600;
ModelOptions.GoParallel     = 0;

%% MODEL RUN
% Now we call the model. Note this may take several minutes to run, depending on your system.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam);

clear Met InitConc ChemFiles BkgdConc ModelOptions SolarParam

%% PLOTTING AND ANALYSIS
if makeplots
    
%%%%% GET SPECIES NAMES FOR PLOTTING %%%%%
% this is only necessary because this example includes multiple mechanisms.
switch MECHANISM
    case {'MCMv331','MCMv32'}
        nHCHO='HCHO';
        nCH3O2='CH3O2';
        nISOPO2 = 'ISOPBO2'; %just pick one
        nANs = {'ANs','ISOPANO3','ISOPBNO3','ISOPCNO3','ISOPDNO3','MVKNO3','MACRNB','MACRNO3'}; %isopene subset
        nNOy = {{'NOx','NO','NO2'},'PAN',nANs,'HNO3'};
    case {'CB05'}
        nHCHO='FORM';
        nCH3O2='MEO2';
        nISOPO2 = 'XO2'; %not quite correct b/c of lumping, but whatevs
        nANs = {'ANs','NTR'};
        nNOy = {{'NOx','NO','NO2'},'PAN',nANs,'HNO3'};
    case {'CB6r2'}
        nHCHO='FORM';
        nCH3O2='MEO2';
        nISOPO2 = 'ISO2';
        nANs = {'ANs','INTR'};
        nNOy = {{'NOx','NO','NO2'},'PAN',nANs,'HNO3'};
    case 'RACM2'
        nHCHO='HCHO';
        nCH3O2='MO2';
        nISOPO2='ISOP';
        nANs = {'ANs','ISON','ONIT'};
        nNOy = {{'NOx','NO','NO2'},'PAN',nANs,'HNO3'};
    case 'GEOSCHEM'
        nHCHO='CH2O';
        nCH3O2='MO2';
        nISOPO2 = 'RIO2';
        nANs = {'ANs','ISOPNB','ISOPND','MACRN','MVKN'};
        nNOy = {{'NOx','NO','NO2'},'PAN',nANs,'HNO3'};
end

%%%%% J-VALUE SCALING %%%%% 
figure
plot(S.Time,S.Met.jcorr,'b-',S.Time,D.PAlt/1000,'k--')
xlabel('UTC seconds of day')
ylabel('Value')
legend('jcorr','Alt (km)')
% The scaling factor is around 0.7, highlighting the importance of getting your J-values right.

%%%%% FORMALDEHYDE PRODUCTION/LOSS %%%%% 
% now lets see how we did with formaldehyde concentrations
% some under-prediction is expected, since we only integrated for 1 day.
PlotConc(nHCHO,S)
hold on
plot(D.AOCTimewave,D.HCHO_ppbv,'r-',...
    D.AOCTimewave,D.PAlt/1000,'k--')
legend('Mod','Obs','Alt (km)')

figure
scatter(D.HCHO_ppbv,S.Conc.(nHCHO),36,log10(D.NOx_ppbv),'fill','MarkerEdgeColor','k')
plot11
xlabel('HCHO Obs (ppbv)')
ylabel('HCHO Mod (ppbv)')
c = colorbar('location','south');
title(c,'log(NOx (ppbv))')

% Now let's look at sources and sinks of HCHO.
% Note that radicals increase substantially in the plume.
PlotRates(nHCHO,S,5,'unit','ppb_h');

% Methyl peroxy radical is clearly a major source, so let look at sources and sinks of that.
% To simplify, let's just look at average values for in and out of plume, using CO as a tracer.
plume = D.CO_ppbv>190;
PlotRatesAvg(nCH3O2,S,6,'sumEq',1,'unit','ppb_h','pts2avg',plume)
title('Plume CH3O2 Rates')
xlim([-2 2])

bkgd = D.CO_ppbv<180 & D.CO_ppbv>160;
PlotRatesAvg(nCH3O2,S,6,'sumEq',1,'unit','ppb_h','pts2avg',bkgd)
title('Background CH3O2 Rates')
xlim([-2 2])

%%%%% NOY PARTITIONING %%%%%
% Peroxyacetyl radical seems to be an important precursor for HCHO.
% Let's see how well the model captures PAN, which was measured but not constrained.
PlotConc('PAN',S)
hold on
plot(D.AOCTimewave,D.PAN_ppbv,'k--')
legend('Model','Obs')

% Now let's look at the distribution of NOy, just for fun.
PlotConcGroup(nNOy,S,[],'sortem',0,'name','NOy');
hold on
plot(D.AOCTimewave,D.NOy_ppbv,'k--')
text(0.03,0.97,'Dash: Observations')

%%%%% RO2 FATE %%%%%
% Let's look at the different loss pathways for a few of the more abundant RO2 species
RO2reactants = {'NO','HO2','RO2'};
PlotReactivity(nCH3O2,S,RO2reactants,'ptype','fill','scale',0,'sumEq',1);
PlotReactivity(nISOPO2,S,RO2reactants,'ptype','fill','scale',0,'sumEq',1);

end %end makeplots if

