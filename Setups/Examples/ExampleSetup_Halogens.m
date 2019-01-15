% ExampleSetup_DielCycle.m
% This example shows a model setup for simulation of an "average" diurnal cycle at a ground location.
% In particular, we will try to simulate ozone production.
% Read comments in each section for a guided tour.
%
% 20151126 GMW

clear
addpath(genpath('/Users/promer/CohenResearch/Models/F0AM'))

%% OBSERVATIONS
%{
Constraints are taken from observations at the Centerville, AL site of the 2013 SOAS field campaign.
The file loaded below contains these observations averaged to a 24-hour cycle  in 1-hour increments. 
Note that constraints CANNOT contains NaNs or negative numbers (data in this file has already been filtered).
Thanks to J. Kaiser for compiling these observations and to all the hard-working researchers for collecting them.
%}

load Obs_SOAS_CampaignAvg_60min.mat %structure "SOAS"

%% METEOROLOGY
%{
P, T and RH were measured at the site and will be updated every step of the simulation.
SZA was not measured, so we can use a function to calculate it.
kdil is a physical loss constant for all species; 1 per day is a typical value.
%}

%calculate solar zenith angles for day in middle of campaign
o = ones(size(SOAS.T));
time.year           = 2013*o;
time.month          = 6*o;
time.day            = 30*o;
time.hour           = SOAS.Time;
time.min            = 0*o;
time.sec            = 0*o;
time.UTC            = -5;
location.latitude   = 32.903;
location.longitude  = -87.250;
location.altitude   = 126;
sun = sun_position(time,location); %fields zenith and azimuth

Met = {...
%   names       %values
    'P'          SOAS.P; %Pressure, mbar
    'T'          SOAS.T; %Temperature, K
    'RH'         SOAS.RH; %Relative Humidity, %
    'SZA'        sun.zenith; %solar zenith angle, degrees
    'kdil'       1/(24*60*60); %dilution constant, /s
    'jcorr'      1;
    'Saerosol'   100./1e8; %Units of 1/cm;
    };

%% CHEMICAL CONCENTRATIONS
%{
Concentrations are initialized using observations or fixed values.
Species with HoldMe = 1 will be held constant throughout each step.
Species with HoldMe = 0 are only initialized at the start of the run, because
 ModelOptions.LinkSteps=1 (see below). For this particular case, NO2 and O3 are
 unconstrained because we are investigating ozone production.
When many species are used, it helps to organize alphabetically or by functional group.
%}
IY_conc = (10 + sin([1:24]*pi/24)*10)/1000;

InitConc = {...
%   names       values      hold me
    'O3'        50                                  1;...
    'NO'        0.05                                1;...
    'NO2'       0.3                                 1;...
    ...
    'HCHO'      2                                   1;...
    'CH3OH'     4                                   1;... %Can get quite high concentrations of methanol
    'CH3CHO'    3                                   1;...
 
    %Halogens
    'HOBr'              7/1000               1;
    'HOI'               IY_conc              0;
    'HCl'               14/1000              0;
    };

%% CHEMISTRY
%{
ChemFiles is a cell array of strings specifying functions and scripts for the chemical mechanism.
THE FIRST CELL is always a function for generic K-values.
THE SECOND CELL is always a function for J-values (photolysis frequencies).
All other inputs are scripts for mechanisms and sub-mechanisms.
Here we give example using MCMv3.3.1. Note that this mechanism was extracted from the MCM website for
the specific set of initial species included above.
%}
ChemFiles = {...
   'MCMv331_K(Met)';
   'MCMv331_J(Met,2)'; %Jmethod flag of 0 specifies default MCM parameterization
   'MCMv331_Inorg_Isoprene'
   'GEOSChemHalogenReactions';
   'GEOSChemHalogenUptake_Moderate';
   };

%% DILUTION CONCENTRATIONS
%{
Background concentrations, along with the value of kdil in Met, determine the dilution rate for chemical species.
Here we stick with the default value of 0 for all species, which effectively makes dilution a first-order loss.
%}
BkgdConc = {'DEFAULT'       0;
             'Cl'           IY_conc*3;
             'BrCl'        [2,2,2,2,2,2,2,4,5,6,7,8,10,12,12,12,12,12,12,12,12,12,12,19]/1000};

%% OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 1 because we only want the last point of each step.
"LinkSteps" is set to 1 so that non-constrained species are carried over between steps.
"Repeat" is set to 3 to loop through the full set of constraints 3 times.
"IntTime" is the integration time for each step, equal to the spacing of the data (60 minutes).
"TimeStamp" is set to the hour-of-day for observations.
"SavePath" give the filename only (in this example); the default save directory is the UWCMv3\Runs folder.
"FixNOx" forces total NOx to be reset to constrained values at the beginning of every step.
%}

ModelOptions.Verbose        = 1;
ModelOptions.EndPointsOnly  = 1;
ModelOptions.LinkSteps      = 1;
ModelOptions.Repeat         = 1;
ModelOptions.IntTime        = 3600; %3600 seconds/hour
ModelOptions.TimeStamp      = SOAS.Time;
ModelOptions.SavePath       = 'DoNotSave';
ModelOptions.FixNOx         = 1;
ModelOptions.DeclareVictory = 0;


%%
%Fixed classes:
ClassComposition = struct();
ClassComposition.BrY = {...
     % Species Name     Stoichiometry       Adjust Weighting
     'BrO'                  1                       1;
     'Br'                   1                       1;
     'HBr'                  1                       1;
     'BrNO2'                1                       1;
     'BrNO3'                1                       1;
     'HOBr'                 1                       1;
     'Br2'                  2                       1;
     'BrCl'                 1                       0;
     'IBr'                  1                       0;
     };
ClassComposition.IY  = {...
    % Species Name     Stoichiometry       Adjust Weighting
    'I'                     1                       1;
    'IO'                    1                       1;
    'HI'                    1                       1;
    'HOI'                   1                       1;
    'OIO'                   1                       1;
    'CH3I'                  1                       1;
    'INO'                   1                       1;
    'INO2'                  1                       1;
    'INO3'                  1                       1;
    'I2'                    2                       1;
    'I2O4'                  2                       1;
    'I2O3'                  2                       1;
    'IBr'                   1                       0;
    'ICl'                   1                       0;
    };
ClassComposition.ClY = {...
    'ClO'                   1                       1;
    'OClO'                  1                       1;
    'Cl'                    1                       1;
    'HCl'                   1                       1;
    'ClNO3'                 1                       1;
    'ClOO'                  1                       1;
    'HOCl'                  1                       1;
    'ClNO2'                 1                       1;
    'Cl2'                   2                       1;
    'Cl2O2'                 2                       1;
    'BrCl'                  1                       0;
    'ICl'                   1                       0;
    };
ClassComposition.NOx = {...
    'NO'                    1                       1;
    'NO2'                   1                       1;
    };
% fn = fieldnames(ModelOptions.ClassComposition);
ModelOptions.ClassComposition = ClassComposition;
ModelOptions.FixedClasses = {'IY','BrY'};
ModelOptions.DilutionClasses = {'ClY'};


%% MODEL RUN
% Now we call the model. Note this may take several minutes to run, depending on your system.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
clear Met InitConc ChemFiles BkgdConc ModelOptions

%%
fn = fieldnames(S.Conc);
for fnInd = 1:numel(fn)
    curr_fn = fn{fnInd};
    curr_Conc = S.Conc.(curr_fn);
    if min(curr_Conc) < 0
        disp([curr_fn,' Conc < 0: ', num2str(min(curr_Conc))]);
    end
end
%% PLOTTING AND ANALYSIS

close all;
PlotConcGroup({'BrO','Br','HBr','BrNO2','BrNO3','HOBr','Br2', 'Br2', 'BrCl','IBr'},S,9);
title('Br_Y');
PlotConcGroup({'I','IO','HI','HOI','OIO','CH3I','INO','INO2','INO3','I2','I2O4','I2O2','I2O3','I2','I2O4','I2O2','I2O3','IBr','ICl'},S,9);
title('I_Y');
PlotConcGroup({'ClO','OClO','Cl','HCl','ClNO3','ClOO','HOCl','ClNO2','Cl2','Cl2O2','Cl2','Cl2O2', 'BrCl','ICl'},S,10);
title('Cl_Y');
% % 
% PlotConcGroup({'NO','NO2'},S,2);
% title('NO_x');
