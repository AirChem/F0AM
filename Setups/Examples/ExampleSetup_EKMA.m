% ExampleSetup_EKMA.m
% This example performs an empirical kinetics modeling analysis (EKMA)-esque simulation 
% to investigate ozone production sensitivity.
% The basic idea is perturbing NOx and VOC concentrations and looking at how ozone production responds.
% This example uses a subset of inputs from the FlightSS example.
% Read comments in each section for a guided tour.
%
% Also see comments in EKMAgenerator.m
%
% 20251105 GMW

%% OBSERVATIONS
%{
We will use observations taken on the NOAA WP-3D in the Atlanta area during the 2013 SENEX mission.
Data are averaged to 1 minute and have been filtered for NaN/negatives.
The time vector in this structure is "AOCTimewave" and is in UTC seconds of day.
Thanks to M. Marvin for compiling the data and to all the hard-working researchers for collecting them.
%}

load Obs_SENEX_ATL20130612_1min.mat %structure "D"

% subset data for example
[~,i] = max(D.NO2_ppbv); %index one interesting point
D = structfun(@(x) x(i),D,'UniformOutput',0);

%% SOLAR PARAMETERS
%{
SolarParam is structure specifying the time and location for each set of observations.
This will be used to calculate solar zenith angles vs time of day.
"startTime" is a 6-column date vector in UTC.
"nDays" is the number of days to loop through.
    For true research, the model should be run until steady state is reached for the species of interest.
    For this example, we use 1 day to minimize runtime.
%}

o = ones(size(D.AOCTimewave));
SolarParam.lat          = D.GpsLat; %degrees, range -90:90
SolarParam.lon          = D.GpsLon; %degrees, range -180:180
SolarParam.alt          = D.PAlt; %meters
SolarParam.startTime    = [2013*o 6*o 12*o 0*o 0*o D.AOCTimewave]; %year month day hour min sec
SolarParam.nDays        = 1; % Set to -1 to use convergence or a positive integer for fixed number of days.
SolarParam.resetConcDaily = 0; %flag for reinitializing to InitConc every 24 hours
clear o

% optional convergence criteria
% to use this mode, set SolarParam.nDays = -1 above.
SolarParam.Converge.Species = {'all'};
SolarParam.Converge.MaxPctChange = 1;
SolarParam.Converge.MaxDays = 20;

%% METEOROLOGY
%{
P, T and RH were measured and will be held constant for each step of the simulation.
kdil is a physical loss constant for all species; 1 per day is a typical value.
Unlike ExampleSetup_FlightSS, we assume clear-sky parameterized J-values here.
%}

Met = {...
    %   names        values
    'P'          D.StaticPrs                ;...    %Pressure, mbar
    'T'          D.AmbTemp+273.15           ;...    %Temperature, K
    'RH'         D.RelHumidity              ;...    %Relative humidity, %
    'kdil'       1/86400                    ;...    %Dilution constant, /sec
    'jcorr'      1                          ;...    %correction factor for j-values
    'ALT'        D.PAlt                     ;...    %altitude, m
    'O3col'      325                        ;...    %O3 column, DU
    'albedo'     0.2                        ;...    %surface reflectance
    };

%% CHEMICAL CONCENTRATIONS
%{
Concentrations are initialized using observations or fixed values.
Species with HoldMe = 1 will be held constant throughout each step.
Species with HoldMe = 0 are only initialized at the start of the run.
Below also shows an example of "family conservation," which will hold a chemical family (NOx, in
this case) constant throughout the run. Please see the user manual for more information.

%}

InitConc = {...
    %names          conc(ppb)                   HoldMe
    'CH4'           D.CH4_ppb                   1;... %note, CRACMM1 treats this as fixed
    'H2'            550                         1;... %note, CRACMM1/2 treats this as fixed
    'CO'            D.CO_ppbv                   1;...
    'O3'            D.O3_ppbv                   0;... %holding this causes artificially high P(O3)
    
    'NO'            D.NO_ppbv                   0;...
    'NO2'           D.NO2_ppbv                  0;...
    'PAN'           D.PAN_ppbv                  0;...
    
    'MOH'           D.methanol_pptv/1000        1;... %long-lived w/ minor secondary sources
    'ISO'           D.isoprene_pptv/1000        1;...
    'HCHO'          D.HCHO_ppbv                 0;...
    
    'NOx'           {'NO','NO2'}                [];... % family conservation
    };

%% CHEMISTRY
%{
ChemFiles is a cell array of strings specifying functions and scripts for the chemical mechanism.
THE FIRST CELL is always a function for generic K-values.
THE SECOND CELL is always a function for J-values (photolysis frequencies).
    The numeric flag of "2" in the J function inputs specifies the use of the "HYBRID" method for
    calculating J-values (see ReadMe).
All other inputs are scripts for mechanisms and sub-mechanisms.
%}

ChemFiles = {...
    'CRACMM2_K(Met)';...
    'CRACMM2_J(Met,2)';...
    'CRACMM2_AllRxns'};

%% DILUTION
%{
Background concentrations, along with the value of kdil in Met, determine the dilution rate for chemical species.
Here we stick with the default value of 0 for almost all species, which effectively makes dilution a first-order loss.
Ozone background is set to its measured value.
%}
BkgdConc = {...
%   names           values (ppbv)
    'DEFAULT'       0;...   %0 for all zeros, 1 to use InitConc
    'O3'            D.O3_ppbv;...
    };

%% MODEL OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 1 because we only want the last point of each step.
"LinkSteps" is set to 0 because each step uses an independent set of observations.
"TimeStamp" is set to the dataset independent variable.
"SavePath" gives the filename only (in this example); the default save directory is the UWCMv3\Runs folder.
"IntTime" is the integration time for each solar cycle mini-step.
    Because we are using the SolarCycle option, this represents the interval for SZA updates
    and should be set to an integer divisor of 86400 seconds (= 1 day).
"GoParallel" can be used if you have the parallel computing toolbox since steps are independent.
%}

ModelOptions.Verbose        = 3; %flag for verbose command window output
ModelOptions.EndPointsOnly  = 1; %flag for concentration and rate outputs
ModelOptions.LinkSteps      = 0; %flag for using end-points of one run to initialize next run
ModelOptions.SavePath       = 'EKMA_ExampleOutput'; %partial or full path or empty
% ModelOptions.TimeStamp      = D.AOCTimewave; %time stamp to overwrite S.Time model output
ModelOptions.IntTime        = 3600; %this is coarse for example purposes. 600-900 seconds recommended for real science.
ModelOptions.GoParallel     = 1; %this will be much faster if you can do parallel computing

%% EKMA SETUP
%{
This section modifies the InitConc input for EKMA.
First, specify the names of the species to be scaled.
Second, specify the scaling factors.
Third, extend the InitConc species to include all combinations of the scaling factors.
See comments for EKMAgenerator.m for more information.
%}

VOCnames = {'MOH','ISO'}; %names of VOC to perturb
NOxnames = {'NO','NO2'};  %names of NOx species to perturb

VOCfactors = 0.5:0.1:1.5;         %multipliers for VOC
NOxfactors = logspace(-1,1,20);   %multipliers for NOx

[InitConc, EKMAvars] = EKMAgenerator(InitConc,VOCnames,VOCfactors,NOxnames,NOxfactors);

%% MODEL RUN
%{
Now we call the model. Note this may take several minutes to run, depending on your system.
Output will be saved in the "SavePath" above and will also be written to the structure S.
The last input "EKMAvars" will be saved as "UserData" in the output structure.
%}

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions,SolarParam,EKMAvars);

%% PLOTS

%scaling factors for each step
fVOC = reshape(S.UserData.fVOC,S.UserData.nVOC,S.UserData.nNOx);
fNOx = reshape(S.UserData.fNOx,S.UserData.nVOC,S.UserData.nNOx);

% O3 tendency
PO3 = PlotRates('O3',S,1,'plotme',0); %get O3 production rates
TO3 = sum([PO3.Prod PO3.Loss],2); %net chemical tendency
TO3 = reshape(TO3,S.UserData.nVOC,S.UserData.nNOx);
TO3 = TO3 * 3600; %ppb/h

% contour plot
figure
nlevels = 20;
contourf(fNOx,fVOC,TO3,nlevels);
hold on
plot(1,1,'p','markersize',16,'markeredgecolor','k','markerfacecolor','r') %at measured concentrations
c = colorbar; % Add a color bar to indicate the O3 concentration levels
title(c, 'PO_3 / ppb h^-^1'); 
xlabel('NOx Scaling Factor');
ylabel('VOC Scaling Factor');

% cross section plot
figure
i = fVOC==1;
plot(fNOx(i),TO3(i),'k-')
hold on
i = fVOC==0.5;
plot(fNOx(i),TO3(i),'b-')
i = fVOC==1.5;
plot(fNOx(i),TO3(i),'r-')
ylabel('PO_3 / ppb h^-^1')
xlabel('NOx Scaling Factor')
legend('Base','VOC/2','VOC*2')

% mixing ratios
figure;
subplot(311)
plot(S.Conc.NO + S.Conc.NO2,'b-')
ylabel('NOx/ppb')
subplot(312)
plot(S.Conc.ISO,'b-')
ylabel('Isoprene/ppb')
subplot(313)
plot(S.Conc.O3,'b-')
ylabel('Ozone/ppb')
xlabel('Model Step')


