% ExampleSetup_Chamber.m
% This example shows a model setup for simulation of
% a series of photochemical chamber experiments.
% Read comments in each section for a guided tour.
%
% 20151022 GMW

clear

%% METEOROLOGY
%{
Pressure, temperature, and either RH or H2O are required Met inputs.
We will assume them constant throughout the simulation,
  thus we need only specify a single (scalar) value for each.
We have also specified a text file containing a spectral actinic flux (wavelength and photons/cm^2/s),
  which will be used to calculate J-values. This particular spectrum was measured on a real
  chamber (thanks to John Crounse).
%}

Met = {...
%   names       values          
    'P'         1013                       ; %Pressure, mbar
    'T'         298                        ; %Temperature, K
    'RH'        10                         ; %Relative Humidity, percent
    'LFlux'     'ExampleLightFlux.txt'     ; %Text file for radiation spectrum
    'jcorr'     1                          ; %light attenuation factor
    };

%% CHEMICAL CONCENTRATIONS
%{
Imagine that we are simulating a series of three isoprene oxidation experiments, each with
  different NOx conditions. We fill the bag with isoprene, H2O2 (our HOx source), and NO2,
  then turn the lights on and let it run.
Let's assume that initial isoprene and H2O2 are the same for all three runs,
  so we can input them as scalars.
All HoldMe values are set to 0 so that concentrations will evolve.
If you'd rather use CH3ONO as your OH source, add it in below and comment out H2O2.
  Note that this will make more NOx.
%}

InitConc = {...
%   names       conc(ppb)           HoldMe
    'C5H8'      10                    0;
    'NO2'       [.1; 1; 10]           0;
    'H2O2'      200                   0; %OH source option #1
%     'CH3ONO'    0.8                     0;... %OH source option #2
    };

%% CHEMISTRY
%{
The ChemFiles input is a cell array of strings
 specifying functions and scripts for the chemical mechanism.
THE FIRST CELL is always a function for generic K-values.
THE SECOND CELL is always a function for J-values (photolysis frequencies).
All other inputs are scripts for mechanisms and sub-mechanisms.
Here we give an example using MCMv3.3.1.  Note that this mechanism was extracted from the MCM website for
the specific set of initial species included above (isoprene and inorganics).
%}

ChemFiles = {...
    'MCMv331_K(Met)';
    'MCMv331_J(Met,1)'; %Jmethod flag of 1 specifies using "BottomUp" J-value method.
    'MCMv331_Inorg_Isoprene';
    'CH3ONO_hv'; %not included in MCM (doesn't exist in the atmosphere)
    };

%% DILUTION CONCENTRATIONS
% We are not diluting the chamber air, so this input is irrelevant (but still necessary).

BkgdConc = {...
%   names           values
    'DEFAULT'       0;   %0 for all zeros, 1 to use InitConc
    };

%% OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 0 because we want output to include all concentrations along each model step.
"LinkSteps" is set to 0 because each step is fully independent.
"IntTime" is the integration time for each step. Let's pretend each experiment lasts 3 hours.
"SavePath" will store the output in the default "Runs" folder under the base F0AM directory
"GoParallel" can be utilized since each step is independent (assuming you have the parallel computing toolbox)
%}

ModelOptions.Verbose       = 1;
ModelOptions.EndPointsOnly = 0;
ModelOptions.LinkSteps     = 0;
ModelOptions.IntTime       = 3*3600;
ModelOptions.SavePath      = 'ChamberExampleOutput.mat';
ModelOptions.GoParallel    = 0;

%% MODEL RUN
% Now we call the model.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
% clear Met InitConc ChemFiles BkgdConc ModelOptions

%% PLOTTING
% Now, a few examples of how to look at the model output.

% First, let's separate each of the steps since they each represent a different experiment.
% "SplitRun" will make three new structures, S1, S2 and S3, corresponding to each of the
% three steps with different initial NO2 (0.1, 1 and 10 ppbv).

SplitRun(S,'step')

% Next, let's look at some time series for our fav molecules.
% Note that you can also do this yourself with the model output structures,
%   e.g. plot(S1.Time,S1.Conc.C5H8)
% The UWCM-provided functions are just more convenient for comparing multiple simulations.
% Look at the documentation for each function to get an idea of available options.

Splot = {S1,S2,S3};
lnames = {'low','mid','hi'};
PlotConc('C5H8',Splot,'lnames',lnames)
PlotConc('OH',Splot,'unit','percc','scale',1e-6,'lnames',lnames)
PlotConc('NO+NO2',Splot,'unit','pptv','lnames',lnames)

PlotConcGroup(S3.Cnames(S3.iRO2),S3,5,'ptype','fill','unit','ppb','name','RO_2')

% Now, let's dig in and look at the chemistry.

PlotRates('PAN',S1,4,'ptype','fill','unit','ppt_h','sumEq',1);

pts2avg = S1.Time>1800 & S1.Time<3600; %average 2nd 30 minutes
PlotRatesAvg('HCHO',S1,5,'ptype','hbar','unit','ppb_h','pts2avg',pts2avg)

Inorg = {'Inorganic';'CO';'H2';'O3';'HO2';'H2O2'};
Reactants = {Inorg; 'NO2'; 'C5H8'; 'HCHO'; 'MVK'; 'MACR'};
PlotReactivity('OH',S3,Reactants,'ptype','line');

%finally, let's look at the total yield of HPALDs in the low-NOx case
yieldWindow = [500 1000]; %time window, seconds
PlotYield(S1,'C5H8',{'C5HPALD1','C5HPALD2'},yieldWindow);

%% EVENTS
% Finally, let's say you continue the second experiment for longer, but with more lights.

[InitConc,Met] = Run2Init(S2,length(S2.Time)); %get initialization values

%increase jcorr x10
loc = ismember(Met(:,1),'jcorr');
Met{loc,2} = 10;

ModelOptions.IntTime = 3600;
ModelOptions.SavePath  = 'ChamberExampleHighLightsOutput.mat';

S2b = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);

S2b.Time = S2b.Time+S2.Time(end);
figure
PlotConc('C5H8',{S2,S2b})


