% ExampleSetup_LagrangianPlume.m
% This example shows a model setup for simulation of an evolving fire plume.
% Model setup is the same as that described in Mu(:)ller et al., ACP (2016).
% Thanks to Markus Mu(:)ller for providing the model setup and data.
% Read comments in each section for a guided tour.
%
% 20160701 GMW

clear

%% DATA
load LagrangianPlumeData.mat
% this structure "DAQ" contains data from an agricultural fire observed from the NASA P3 
% during the DISCOVER-AQ flight on 29 Sept 2013.
% Data are averaged into 1km bins (distance from the source).
% DAQ.TIME is a lagrangian time calculated from observed wind speed and downwind sample distance.

%% METEOROLOGY
%{
Pressure, temperature, and either RH or H2O are required Met inputs.
Dilution is calculated using the change in CO over each model step.
All calculated J-values will be scaled to J4.
%}

%kdil calculation using CO decay and inversion of dilution equation
% dX/dt = -kdil*(X - Xb)
dCOdt        = diff(DAQ.CO)./diff(DAQ.TIME); %loss rate
dCOdt(end+1) = dCOdt(end);
COmid        = (DAQ.CO + [DAQ.CO(2:end);DAQ.CO(end)])/2; %CO in middle of step
kdil         = -dCOdt./(COmid-95);

% similar calculation for tgauss
%dX/dt = (-1/(tgauss + 2t))*(X - Xb)
tgauss = 1./kdil - 2.*DAQ.TIME;
% doesn't work great (gives negative numbers, probably b/c not in center of plume)
% instead just fit it to kdil for best guess
tgauss = fminsearch(@(x) sum((kdil - 1./(x + 2*DAQ.TIME)).^2),300);

% USER: try running with either tgauss or kdil and see how results compare!

Met = {...
    'P'             DAQ.P;... %Pressure, mbar
    'T'             DAQ.T;...    %Temperature, K
    'RH'            DAQ.RH;...    %Relative Humidity, percent    
    'kdil'          kdil;...    %dilution, /s
%     'tgauss'        316; %alternative Gaussian dilution initial timescale
    'SZA'           DAQ.SZA;... %solar zenith angle
    'J4'            DAQ.JNO2;... %NO2 photolysis frequency
%     'jcorr'         'J4';... %correction factor. Muller did not use this.
    };

clear dCOdt COmid kdil tgauss

%% CHEMICAL CONCENTRATIONS
%{
The first observational point is used as initial inputs. 
All concentrations will be calculated "free running," meaning no constraints along the transect.
%}
InitConc = {...
%   names               conc(ppb)               HoldMe    
    'CH4'               DAQ.CH4(1)                    0;...
    'NO'                DAQ.NO(1)                     0;...
    'NO2'               DAQ.NO2(1)                    0;...
    'OH'                3e-4                          0;... %OH = 7.5 e6 cm-3 (guess)
    'O3'                DAQ.O3(1)                     0;...
    'CO'                DAQ.CO(1)                     0;...
    'HCHO'              DAQ.HCHO(1)                   0;... %Formaldehyde
    'HONO'              DAQ.HONO(1)                   0;... %HONO
    'CH3OH'             DAQ.CH3OH(1)                  0;... %Methanol
    'CH3CHO'            DAQ.CH3CHO(1)                 0;... %acetaldehyde
    'C3H6'              DAQ.C3H6(1)                   0;... %propene
    'BENZENE'           DAQ.BENZENE(1)                0;... %benzene
    'FURAN'             DAQ.FURAN(1)                  0;... %furan; only decay!
    'C5H8'              DAQ.C5H8(1)                   0;... %isoprene
    'CH3COCH3'          DAQ.CH3COCH3(1) .*0.5         0;... %acetone
    'C2H5CHO'           DAQ.CH3COCH3(1) .*0.5         0;... %propanal
    'HCOOH'             DAQ.HCOOH(1)                  0;... %formic acid%
    'CH3CO2H'           DAQ.CH3CO2H(1)./0.66          0;... %acetic acid, inlet factor 0.66%
    'BIACET'            DAQ.BIACET(1)                 0;... %2,3 butanedione
    'MVK'               DAQ.MVK(1) .*0.5              0;... %MVK
    'MACR'              DAQ.MVK(1).*0.5               0;... %MACR
    'MGLYOX'            DAQ.MGLYOX(1)                 0;... %methylglyoxal
    'FURFURAL'          DAQ.FURFURAL(1)               0;... %2-furfural; only decay!
    'ACETOL'            DAQ.ACETOL(1)                 0;... %hydroxyacetone
    };

%% CHEMISTRY
%{
The ChemFiles input is a cell array of strings specifying functions and scripts for the chemical mechanism.
THE FIRST CELL is always a function for generic K-values.
THE SECOND CELL is always a function for J-values (photolysis frequencies).
All other inputs are scripts for mechanisms and sub-mechanisms.
Here we give an example using MCMv3.3.1.  Note that this mechanism was extracted from the MCM website for
the specific set of initial species included above.
"FURFURAL_FURAN" is a very simple set of reactions for initial oxidation of these species,
which are not included in MCM. For extra fun, try toggling this on and off to compare results.
%}

ChemFiles = {...
    'MCMv331_K(Met)';
    'MCMv331_J(Met,2)'; %Jmethod flag of 0 specifies "MCM" J-value method.
    'MCMv331_LGPlumeSubset';
    'FURFURAL_FURAN'; %very simple initial oxidation
    };

%% DILUTION CONCENTRATIONS
% Background concentrations are taken from observations just outside the plume.

BkgdConc = {...
%   names               values
    'DEFAULT'           0         ;... %0 for all zeros, 1 to use InitConc
    'CH4'               1897      ;...
    'NO'                0.031     ;...
    'NO2'               0.112     ;...
    'OH'                0         ;... %OH = 2.75 e6 cm-3
    'O3'                35.4      ;...
    'CO'                95        ;...
    'HCHO'              1.345     ;... %Formaldehyde
    'HONO'              0         ;... %HONO
    'CH3OH'             1.937     ;... %Methanol
    'CH3CHO'            0.389     ;... %acetaldehyde
    'C3H6'              0.084     ;... %propene
    'BENZENE'           0.008     ;... %benzene
    'FURAN'             0         ;... %furan; only decay!
    'C5H8'              0.219     ;... %isoprene
    'CH3COCH3'          1.491     ;... %acetone
    'C2H5CHO'           0         ;... %propanal
    'HCOOH'             0         ;... %formic acid
    'CH3CO2H'           0.073     ;... %acetic acid
    'BIACET'            0         ;... %2,3 butanedione
    'MVK'               0.183.*0.5;... %MVK
    'MACR'              0.183.*0.5;... %MACR
    'MGLYOX'            0         ;... %methylglyoxal
    'FURFURAL'          0         ;... %2-furfural; only decay!
    'ACETOL'            0         ;... %hydroxyacetone
    };

%% OPTIONS
%{
"Verbose" can be set from 0-3; this just affects the level of detail printed to the command
  window regarding model progress.
"EndPointsOnly" is set to 0 because we want output to include all concentrations along each model step.
"LinkSteps" is set to 1 because each step is connected.
"IntTime" is the integration time for each step. The average for constraints is 250s.
"SavePath" is just a filename, which will be saved by default in the \Runs\ folder.
%}

ModelOptions.Verbose = 1;         %flag for verbose output
ModelOptions.EndPointsOnly = 0;   %flag for concentration and rate outputs
ModelOptions.LinkSteps = 1;       %flag for using end-points of one run to initialize next run
ModelOptions.IntTime = 250;       %integration time for each step, seconds
ModelOptions.SavePath = 'LGPlumeResults';

%% MODEL RUN
% Now we call the model.
% Output will be saved in the "SavePath" above and will also be written to the structure S.
% Let's also throw away the inputs (don't worry, they are saved in the output structure).

S = F0AM_ModelCore(Met,InitConc,ChemFiles,BkgdConc,ModelOptions);
clear Met InitConc ChemFiles BkgdConc ModelOptions

%% FIGURES AND ANALYSIS

% calculate normalized excess mixing ratios: delta_X_dil = delta_X * delta_CO_source/delta_CO
% this is standard procedure for biomass burning plumes.
% We will also put these into a new structure compatible with F0AM plotting routines.
delta_CO = S.Conc.CO - S.BkgdConc.CO(1);
fCO = delta_CO(1)./delta_CO;
Sd.Met = S.Met; Sd.Cnames = S.Cnames; Sd.Time = S.Time;
for i=1:length(S.Cnames)
    name = S.Cnames{i};
    if isfield(S.BkgdConc,name), b = S.BkgdConc.(name)(1);
    else b = 0;
    end
    Sd.Conc.(name) = (S.Conc.(name) - b).*fCO;
end

% First, check that dilution is working as it should
PlotConc('CO',S);
hold on
plot(DAQ.TIME,DAQ.CO,'k+','markersize',18,'linewidth',4)

% Now let's look at NOy speciation
% first we have to get all NOy, which is a tall order for MCM, but we can try by using 
% SMILES strings to identify functional groups.

PNs = SearchSMILES('peroxyNitrate',S.Cnames,'v331'); %peroxy nitrates
ANs = SearchSMILES('alkylNitrate',S.Cnames,'v331'); %alkyl nitrates
otherNOy = {'NO';'NO2';'NO3';'N2O5';'HONO';'HNO3';'HO2NO2'};
[~,iother] = ismember(otherNOy,S.Cnames);
iNOy = unique([iother; PNs.index; ANs.index]);

NOygroups = {{'NOx','NO','NO2'},['PNs';S.Cnames(PNs.index)],['ANs';S.Cnames(ANs.index)],'HONO','HNO3'};
PlotConcGroup(NOygroups,Sd,5,'sortem',0,'name','NO_y')

% Next, lets look at ozone production.
figure
plot(Sd.Time,Sd.Conc.O3,'b-',...
    DAQ.TIME,(DAQ.O3-35.4).*(DAQ.CO(1)-95)./(DAQ.CO-95),'ro')
xlabel('Reaction Time (s)')
ylabel('\Delta_{dil}O_3 (ppb)')
legend('Model','Obs')
    
% It is easiest to look at production of ozone's precursor, NO2.
% Also, since dilution is so strong, we will look at this in a rate-normalized sense
% because we are just interested in speciation.
PlotRates('NO2',S,5,'sumEq',1,'scale',0)

% it looks like HO2 is the dominant source. Let's keep going.
% Note that FURFURAL, which is not in the MCM base chemistry, is a non-trivial source of HO2.
PlotRates('HO2',S,5,'sumEq',1,'scale',0)

% It looks like speciation doesn't change much over the integration period, so we can continue
% investigation in an average sense.
% CO and HCHO are signficant sources of HO2. Most of the CO is primary emissions, and so is HCHO
% (intitally). What about secondary HCHO?
PlotRatesAvg('HCHO',S,5)
PlotRatesAvg('CH3O2',S,5,'sumEq',1)
PlotRatesAvg('CH3CO3',S,5,'sumEq',1)
% Secondary formaldehyde is mostly from acetaldehyde. Note this will changes as the plume ages more.

