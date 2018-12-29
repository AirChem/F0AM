% ExampleSetup_DielCycle.m
% This example shows a model setup for simulation of an "average" diurnal cycle at a ground location.
% In particular, we will try to simulate ozone production.
% Read comments in each section for a guided tour.
%
% 20151126 GMW

clear

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

InitConc = {...
    % names           conc(ppb)           HoldMe
    
    %Inorganics
    'H2'                550                  1;
    'O3'                SOAS.O3              1;
    'OH'                SOAS.OH              0;
    'CO'                SOAS.CO              1;
    'H2O2'              SOAS.H2O2            1;
    
    %NOy
    'NO'                SOAS.NO              0; %FixNOx flag set in options
    'NO2'               SOAS.NO2             0;
    'PAN'               SOAS.PAN             1;
    'C2H5NO3'           SOAS.C2H5NO3         1;
    'IC3H7NO3'          SOAS.IC3H7NO3        1;
    
    %Biogenics
    'C5H8'              SOAS.C5H8            1;
    'APINENE'           SOAS.APINENE         1;
    'BPINENE'           SOAS.BPINENE         1;
    'LIMONENE'          SOAS.LIMONENE        1;
    
    %CxHy
    'CH4'               1770                 1;
    'C2H4'              SOAS.C2H4            1;
    'C2H6'              SOAS.C2H6            1;
    'C3H8'              SOAS.C3H8            1;
    'IC4H10'            SOAS.IC4H10          1;
    'IC5H12'            SOAS.IC5H12          1;
    'NC5H12'            SOAS.NC5H12          1;
    'NC6H14'            SOAS.NC6H14          1;
    'NC10H22'           SOAS.NC10H22         1;
    
    %Aromatics
    'BENZENE'           SOAS.BENZENE         1;
    'TOLUENE'           SOAS.TOLUENE         1;
    'EBENZ'             SOAS.EBENZ           1;
    'TM124B'            SOAS.TM124B          1;
    'TM135B'            SOAS.TM135B          1;
    'MXYL'              SOAS.MXYL            1;
    'OXYL'              SOAS.OXYL            1;
    'PXYL'              SOAS.PXYL            1;
    'BENZAL'            SOAS.BENZAL          1;
    
    %Oxygenates
    'CH3CHO'            SOAS.CH3CHO          1;
    'C2H5CHO'           SOAS.C2H5CHO         1;
    'C3H7CHO'           SOAS.C3H7CHO         1;
    'HOCH2CHO'          SOAS.HOCH2CHO        1;
    'GLYOX'             SOAS.GLYOX           1;
    'CH3OH'             SOAS.CH3OH           1;
    'C2H5OH'            SOAS.C2H5OH          1;
    'ACETOL'            SOAS.ACETOL          1;
    'BIACET'            SOAS.BIACET          1;
    'MACR'              SOAS.MACR            1;
    'MVK'               SOAS.MVK             1;
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
   'MCMv331_J(Met,0)'; %Jmethod flag of 0 specifies default MCM parameterization
   'MCMv331_DielExampleChemistry';
%     'MCMv331_Inorg_Isoprene'
   };

%% DILUTION CONCENTRATIONS
%{
Background concentrations, along with the value of kdil in Met, determine the dilution rate for chemical species.
Here we stick with the default value of 0 for all species, which effectively makes dilution a first-order loss.
%}
BkgdConc = {'DEFAULT'       0};

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
ModelOptions.Repeat         = 3;
ModelOptions.IntTime        = 3600; %3600 seconds/hour
ModelOptions.TimeStamp      = SOAS.Time;
ModelOptions.SavePath       = 'DielExampleOutput';
ModelOptions.FixNOx         = 1;

%% MODEL RUN
% Now we call the model. Note this may take several minutes to run, depending on your system.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
clear Met InitConc ChemFiles BkgdConc ModelOptions

%% PLOTTING AND ANALYSIS

% First, let's separate the three days using SplitRun.
% The first day is effectively "spin-up" for secondary and intermediate species.
SplitRun(S,'rep')
S2.Time = S2.Time - 24; %make timestamps the same
S3.Time = S3.Time - 48;

% Now let's see how well we simulated NO and NO2, since only total NOx was "fixed".
S3.Conc.NOx = S3.Conc.NO+S3.Conc.NO2;
PlotConcGroup({'NO','NO2','NOx'},S3,3,'sortem',0,'ptype','line')
hold on
plot(SOAS.Time,SOAS.NO,'b--')
plot(SOAS.Time,SOAS.NO2,'--','color',[0 128/255 0])
plot(SOAS.Time,SOAS.NO+SOAS.NO2,'r--')
text(0.55,0.7,'solid: model')
text(0.55,0.6,'dash: observed')

% Now, let's see how ozone did over the three days.
PlotConc('O3',{S1,S2,S3})
hold on
plot(SOAS.Time,SOAS.O3,'k-')
legend('Day 1','Day 2','Day 3','Obs')

% Next, let's look at ozone production on the last day.
O3rates = PlotRates('O3',S3,5,'unit','ppb_h','sumEq',1);
O3netRate = sum(O3rates.Prod + O3rates.Loss,2);

% The net ozone rate calculated above should be roughly equal to the rate of NO + XO2 = NO2.
% Let's find reactions that destroy NO and a peroxy radical and produce NO2.
XO2names = [S3.Cnames(S3.iRO2);'HO2'];
[~,iNO]  = ismember('NO',S3.Cnames); %index location of species
[~,iNO2] = ismember('NO2',S3.Cnames);
[~,iXO2] = ismember(XO2names,S3.Cnames);
iNOtoNO2 = S3.Chem.f(:,iNO)==-1 & ... %use stoichiometric coefficients to ID reactions
           S3.Chem.f(:,iNO2)==1 & ...
           sum(S3.Chem.f(:,iXO2)==-1,2);
PNO2fromXO2 = sum(S3.Chem.Rates(:,iNOtoNO2),2)*3600; %total NO2 production from XO2+NO, ppb/h

figure
plot(S3.Time,O3netRate,'k-',S3.Time,PNO2fromXO2,'r--')
xlabel('Hour of Day')
ylabel('Ozone Production (ppb h^-^1)')
legend('O_3 Net','XO_2 + NO')
purtyPlot
% They don't quite add up. Why? The assumption that P(O3)net = sum(k[NO][XO2]) does not account for:
% 1) NO2 production from PANs
% 2) O3 losses that do not make NO2, like reaction with VOC or HO2, or dilution

% The O3 rates plot does not give us much info on what RO2 species are driving O3 production.
% Let's look at NO2 production instead, averaged over the day.
iday = S3.Time>=8 & S3.Time<=18; %peak production hours
PlotRatesAvg('NO2',S3,10,'pts2avg',iday,'unit','ppb_h','sumEq',1) %sumEq=1 to take net rates for PAN equilibria

%Or, we could look at OH reactivity to see which VOC are contributing most.
% Let's group measured species together to make the plot easier to interpret.
Inorg = {'Inorganic';'CO';'H2';'O3';'HO2';'H2O2';'NO2'};
Terp  = {'MTerp','APINENE','BPINENE','LIMONENE'};
Alk   = {'Alk','C2H4','C2H6','C3H8','IC4H10','IC5H12','NC5H12','NC6H14','NC10H22'};
Arom  = {'Arom','BENZENE','TOLUENE','EBENZ','TM124B','TM135B','MXYL','OXYL','PXYL','BENZAL'};
oVOC  = {'oVOC','CH3CHO','C2H5CHO','C3H7CHO','HOCH2CHO','GLYOX','CH3OH','C2H5OH','ACETOL','BIACET'};
MVKMACR = {'MVKMACR','MVK','MACR'};
Reactants = {Inorg,Alk,Arom,oVOC,'HCHO',MVKMACR,Terp,'C5H8'};
PlotReactivity('OH',S3,Reactants,'ptype','bar');
hold on
plot(SOAS.Time,SOAS.kOH,'k*-')
text(0.05,0.9,'black line: observed')


