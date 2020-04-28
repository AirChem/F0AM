function J = J_BottomUp(LFlux,T,P,J2plot)
% function J = J_BottomUp(LFlux,T,P,J2plot)
% Calculates photolysis frequencies by integrating product of cross section,
% quantum yield and light flux over wavelength.
% This is a master function designed to include J-value calculations for all mechanisms included in
% the model.
%
% USE CAUTION: the user is responsible for ensuring that cross sections and quantum yields are
% up-to-date. Sources for the data used here are listed in the file PhotoDataSources.xlsx
%
% INPUTS:
% LFlux: a string specifying a text file with two tab-delimited columns of data.
%       The first column should be wavelength (in nm).
%       The second column should be photon flux (in photons/cm^2/s).
%       Other format options are also available; see IntegrateJ.m for more info.
% T: Temperature, K
% P: Pressure, mbar
% J2plot: optional input specifying J-values for which you wish to plot photolysis data.
%           Can be a cell array of J-value names (listed below) or set this to 'all' to plotem all.
%
% OUTPUTS:
% J: structure of J-values, each with same length as T/P inputs.
% 
% 20120726 WGM  Creation date.
% 20120727 GMW  Modified to work for multiple T and P inputs.
% 20151028 GMW  Modified from earlier version "ChamberPhoto" for better format.
% 20160301 JL	Added values for numerous species not found in the MCM.
% 20160304 GMW  Changed output from name/value pair to structure.
% 20160425 GMW  Added plotting option.
% 20190122 GMW  Added Jn37 - 50 for Sherwen GEOS-Chem mechanism.
%               Changed initialization for better memory allocation.
% 20190501 GMW  Added Jn52 (furfural).
% 20200421 GMW  Added Jn53 - 56 (halogen reactions in SAPRC07B)

% Initialization
nj = 200; %overguess number of rate constants
Jnames = cell(nj,1);
CS = cell(nj,1); %cross sections
QY = cell(nj,1); %quantum yields
i=0;

%% MCM VALUES
i=i+1;
Jnames{i} = 'J1'; % O3 -> O1D
CS{i} = @Cross_Section_O3_JPL;
QY{i} = @Quantum_Yield_O3_O1D_JPL;

i=i+1;
Jnames{i} = 'J2'; % O3 -> O
CS{i} = @Cross_Section_O3_JPL;
QY{i} = @Quantum_Yield_O3_O3P_JPL;

i=i+1;
Jnames{i} = 'J3'; % H2O2 -> 2OH
CS{i} = @Cross_Section_H2O2;
QY{i} = 1;

i=i+1;
Jnames{i} = 'J4'; % NO2 -> NO + O
CS{i} = @Cross_Section_NO2;
QY{i} = @Quantum_Yield_NO2;

i=i+1;
Jnames{i} = 'J5'; % NO3 -> NO + O2
CS{i} = @Cross_Section_NO3;
QY{i} = 'Quantum_Yield_NO3_NO.csv'; % Could rewrite QY as a function of T

i=i+1;
Jnames{i} = 'J6'; % NO3 -> NO2 + O
CS{i} = @Cross_Section_NO3;
QY{i} = 'Quantum_Yield_NO3_NO2.csv'; % Could rewrite QY as a function of T

i=i+1;
Jnames{i} = 'J7'; % HONO -> OH + NO
CS{i} = 'Cross_Section_HONO.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'J8'; % HNO3 -> OH + NO2
CS{i} = @Cross_Section_HNO3;
QY{i} = 1;

i=i+1;
Jnames{i} = 'J11'; % HCHO -> H + HCO
CS{i} = @Cross_Section_HCHO;
QY{i} = @Quantum_Yield_HCHO_HCO;

i=i+1;
Jnames{i} = 'J12'; % HCHO -> H2 + CO
CS{i} = @Cross_Section_HCHO;
QY{i} = @Quantum_Yield_HCHO_H2;

i=i+1;
Jnames{i} = 'J13'; % CH3CHO -> CH3 + HCO
CS{i} = 'Cross_Section_CH3CHO.csv';
QY{i} = @Quantum_Yield_CH3CHO_CH3;

i=i+1;
Jnames{i} = 'J14'; % C2H5CHO -> C2H5 + HCO  
CS{i} = 'Cross_Section_C2H5CHO.csv';
QY{i} = 'Quantum_Yield_C2H5CHO.csv'; % large uncertainties in QY at longer wavelength
% QY{i} = 'Quantum_Yield_C2H5CHO_IUPAC97.csv'; %what TUVv5.2 uses

i=i+1;
Jnames{i} = 'J15'; % C3H7CHO -> n-C3H7 + HCO
CS{i} = 'Cross_Section_C3H7CHO.csv';
QY{i} = @Quantum_Yield_C3H7CHO_C3H7;

i=i+1;
Jnames{i} = 'J16'; % C3H7CHO -> C2H4 + CH3CHO
CS{i} = 'Cross_Section_C3H7CHO.csv';
QY{i} = @Quantum_Yield_C3H7CHO_C2H4;

i=i+1;
Jnames{i} = 'J17'; % IPRCHO -> n-C4H9 + HCO
CS{i} = 'Cross_Section_IPRCHO.csv';
QY{i} = 'Quantum_Yield_IPRCHO.csv';

i=i+1;
Jnames{i} = 'J18'; % MACR -> CH2=CCH3 + HCO
CS{i} = 'Cross_Section_MACR.csv';
% QY{i} = 0.00195; % MCM value
QY{i} = 0.005; % JPL upper limit

i=i+1;
Jnames{i} = 'J19'; % MACR -> CH2=C(CH3)CO + H
CS{i} = 'Cross_Section_MACR.csv';
% QY{i} = 0.00195; % MCM value
QY{i} = 0.005; % JPL upper limit

i=i+1;
Jnames{i} = 'J20'; % HPALD
CS{i} = 'Cross_Section_MACR.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'J21'; % CH3COCH3 -> CH3CO3 + CH3O2
CS{i} = @Cross_Section_CH3COCH3;
QY{i} = @Quantum_Yield_CH3COCH3_CH3CO;

i=i+1;
Jnames{i} = 'J22'; % MEK -> CH3CO + C2H5;
CS{i} = 'Cross_Section_MEK.csv';
% QY{i} = 0.16; %MCM recommended value
QY{i} = 0.34; % from IUPAC prefered value for total

i=i+1;
Jnames{i} = 'J23'; % MVK -> CH3CH=CH2 + CO
CS{i} = 'Cross_Section_MVK.csv';
QY{i} = @Quantum_Yield_MVK;

i=i+1;
Jnames{i} = 'J24'; % MVK -> CH3CO + CH2=CH
CS{i} = 'Cross_Section_MVK.csv';
QY{i} = @Quantum_Yield_MVK;

i=i+1;
Jnames{i} = 'J31'; % GLYOX -> CO + CO + H2
CS{i} = 'Cross_Section_GLYOX.csv';
QY{i} = @Quantum_Yield_GLYOX_H2;

i=i+1; 
Jnames{i} = 'J32'; % GLYOX -> HCHO + CO
CS{i} = 'Cross_Section_GLYOX.csv';
QY{i} = @Quantum_Yield_GLYOX_HCHO;

i=i+1;
Jnames{i} = 'J33'; % GLYOX -> HCO + HCO
CS{i} = 'Cross_Section_GLYOX.csv';
QY{i} = @Quantum_Yield_GLYOX_HCO;

i=i+1;
Jnames{i} = 'J34'; % MGLYOX -> CH3CO + HCO
CS{i} = 'Cross_Section_MGLYOX.csv';
QY{i} = @Quantum_Yield_MGLYOX;

i=i+1;
Jnames{i} = 'J35'; % BIACET -> CH3CO + CH3CO
CS{i} = 'Cross_Section_BIACET.csv';
QY{i} = 0.158;

i=i+1;
Jnames{i} = 'J41'; % CH3OOH -> CH3CO + OH
CS{i} = 'Cross_Section_CH3OOH.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'J51'; % CH3NO3 -> CH3O + NO2
CS{i} = @Cross_Section_CH3NO3;
QY{i} = 1;

i=i+1;
Jnames{i} = 'J52'; % C2H5NO3 -> C2H5O + NO2
CS{i} = @Cross_Section_C2H5NO3;
QY{i} = 1;
% Check IUPAC for limits on T

i=i+1;
Jnames{i} = 'J53'; % NC3H7NO3 -> IC3H7NO3
CS{i} = 'Cross_Section_NC3H7NO3.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'J54'; % IC3H7NO3((CH3)2CHONO2) -> CH3C(O.)CH3 + NO2
CS{i} = @Cross_Section_IC3H7NO3;
QY{i} = 1;

i=i+1;
Jnames{i} = 'J55'; % TC4H9NO3 -> t-C4H9O + NO2
CS{i} = 'Cross_Section_TC4H9NO3.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'J56'; % NOA -> CH3C(O)CH2(O.) + NO2
CS{i} = 'Cross_Section_NOA.csv';
%QY{i} = 'Quantum_Yield_NOA_1.csv';
QY{i} = 0.9;

i=i+1;
Jnames{i} = 'J57';  % NOA -> CH3CO + HCHO + NO2
CS{i} = 'Cross_Section_NOA.csv';
%QY{i} = 'Quantum_Yield_NOA_2.csv';
QY{i} = 0.1;

%% BEGIN NON-MCM J-VALUES
%% ORGANICS
i=i+1;
Jnames{i} = 'Jn1'; %CH3CH=CHCHO->
CS{i} = 'Cross_Section_CH3CHCHCHO.csv';
QY{i} = 0.030; % effective QY from Magneron JPCA 2002 < 0.03

i=i+1;
Jnames{i} = 'Jn2'; %C6H5C(O)H-> C6H5+HC(O)
CS{i} = 'Cross_Section_C6H5COH.csv';
QY{i} = 0.29; % at 208 nm, lower limit of all C6H5C(O)H QY

i=i+1;
Jnames{i} = 'Jn3'; % C2H5COC2H5->products
CS{i} = 'Cross_Section_C2H5COC2H5.csv';  %from Martinez et al. AE, 1992 THE NEAR U.V. ABSORPTION SPECTRA OF SEVERAL ALIPHATIC ALDEHYDES AND KETONES AT 300 K
QY{i} = 1; %assumption, no measurements

i=i+1;
Jnames{i} = 'Jn4'; %CH3C(O)OOH->products
CS{i} = 'Cross_Section_CH3COOOH.csv'; 
QY{i} = 1; % no studies available, assume unity

i=i+1;
Jnames{i} = 'Jn5'; % CH3CHO -> CH4 + CO
CS{i} = 'Cross_Section_CH3CHO.csv';
QY{i} = @Quantum_Yield_CH3CHO_CH4;

i=i+1;
Jnames{i} = 'Jn6'; % CH3CHO->CH3CO+H
CS{i} = 'Cross_Section_CH3CHO.csv';
QY{i} = @Quantum_Yield_CH3CHO_CH3CO;

% i=i+1;
% Jnames{i} = 'Jn7; % reserved
% CS{i} = ;
% QY{i} = ;

i=i+1;
Jnames{i} = 'Jn8'; %CH3COCH3 -> 2CH3O2 + CO
CS{i} = @Cross_Section_CH3COCH3;
QY{i} = @Quantum_Yield_CH3COCH3_CO;

i=i+1;
Jnames{i} = 'Jn9'; % Glycoaldehyde HOCH2CHO->(1)CH3OH+CO (2)HOCH2+HCO (3)HOCH2CO+H
CS{i} = 'Cross_Section_GLYCOALDEHYDE.csv';
%QY{i} = 0.75; % recommendation from IUPAC 0.75+-0.25
QY{i} = 1; % from JPL recommendation


i=i+1;
Jnames{i} = 'Jn10'; % Hydroxyaceton CH3C(O)CH2OH->(1)CH3C(O)+CH2OH (2) CH3+HOCH2CO (3)C3H8OH+CO
CS{i} = 'Cross_Section_Hydroxyaceton.csv';
QY{i} = 0.60;

i=i+1;
Jnames{i} = 'Jn11'; %Acrolein CH2CHCHO ->(1)CH2=CH+HCO(2)C2H4+CO(3)CH2=CHCO+H
CS{i} = 'Cross_Section_Acrolein.csv';
QY{i} = @Quantum_Yield_Acrolein;

%% ORGANIC NITRATES
i=i+1;
Jnames{i} = 'Jn12'; %CH3C6H3(OH)NO2->(1)CH3C6H3(OH)+NO2(2)CH3C6H3C6H4(O)+HONO
CS{i} = 'Cross_Section_3_methyl_2_nitrophenol.csv';
QY{i} = 1.5e-4; % no recommendation for qy, likely underestimate 

i=i+1;
Jnames{i} = 'Jn13'; % CH3C6H3(OH)NO2+hv->(1)CH3C6H3(OH)+NO2(2)CH3C6H3C6H4(O)+HONO
CS{i} = 'Cross_Section_4_methyl_2_nitrophenol.csv';
QY{i} = 1e-4; % no recommendation

i=i+1;
Jnames{i} = 'Jn14'; %PAN->CH3CO3+NO2
CS{i} = @Cross_Section_PAN;
QY{i} = 'Quantum_Yield_PAN_NO2.csv';

i=i+1;
Jnames{i} = 'Jn15'; %PAN->CH3O2+CO2+NO3 or CH3CO2+NO3
CS{i} = @Cross_Section_PAN;
QY{i} = 'Quantum_Yield_PAN_NO3.csv';
 
i=i+1;
Jnames{i} = 'Jn16'; %CH3O2NO2-> CH3O2+NO2
CS{i}= 'Cross_Section_CH3O2NO2.csv';
QY{i} = 0.95; % no data, the value is adjusted to be close to TUV jvalues

i=i+1;
Jnames{i} = 'Jn17'; %CH3O2NO2->CH3O+NO3
CS{i} = 'Cross_Section_CH3O2NO2.csv';
QY{i} = 0.05; % no data to indicate the value

i=i+1;
Jnames{i} = 'Jn18'; % CH3ONO -> CH3O + NO
CS{i} = 'Cross_Section_CH3ONO.csv';
QY{i} = 0.76;

%% INORGANIC NOY
i=i+1;
Jnames{i} = 'Jn19'; % N2O5 -> NO3 + NO2                              
CS{i} = @Cross_Section_N2O5;
QY{i} = 'Quantum_Yield_N2O5_NO3_NO2.csv';

i=i+1;
Jnames{i} = 'Jn20'; % N2O5 -> NO3+NO+O
CS{i} = @Cross_Section_N2O5;
QY{i} = 'Quantum_Yield_N2O5_NO3_NO_O.csv';

i=i+1;
Jnames{i} = 'Jn21';%HO2NO2-> HO2+NO2
CS{i} = 'Cross_Section_HO2NO2.csv';
QY{i} = 0.59;

i=i+1;
Jnames{i} = 'Jn22';%HO2NO2-> HO+NO3
CS{i} = 'Cross_Section_HO2NO2.csv';
QY{i} = 0.41;

i=i+1;
Jnames{i} = 'Jn23'; 
CS{i} = @Cross_Section_ClNO2;
% CS{i} = 'Cross_Section_ClNO2_JPL.csv';
QY{i} = 1; % for wavelength > 300 nm

%% HALOGENS
i=i+1;
Jnames{i} = 'Jn24'; % Br2->Br+Br
%CS{i} = 'Cross_Section_Br2.csv'; IUPAC value
CS{i} = @Cross_Section_Br2;
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn25'; % BrO-> Br + O
CS{i} = 'Cross_Section_BrO.csv';
QY{i} = 1; % No experimental data available

i=i+1;
Jnames{i} = 'Jn26'; % HOBr->OH+Br
CS{i} = 'Cross_Section_HOBr.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn27'; % BrNO2-> Br+NO2
CS{i} = 'Cross_Section_BrNO2.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn28'; %BrONO2->Br+NO3
CS{i} = @Cross_Section_BrONO2;
QY{i} = 0.85; %JPL

i=i+1;
Jnames{i} = 'Jn29'; %BrONO2->BrO+NO2
CS{i} = @Cross_Section_BrONO2;
QY{i} = 0.15; %JPL

i=i+1;
Jnames{i} = 'Jn30'; %CHBr3->CHBr2+Br
CS{i} = @Cross_Section_CHBr3;
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn31'; %BrCl->Br+Cl
CS{i} = 'Cross_Section_BrCl.csv';
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn32'; % Cl2->Cl+Cl
CS{i} = @Cross_Section_Cl2;
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn33'; %ClO->Cl+O
CS{i} = @Cross_Section_ClO_MB1999; %Maric and Burrows (1999) w/T dependence, as used in TUVv5.2
% CS{i} = 'Cross_Section_ClO_JPL.csv';
% QY{i} = @Quantum_Yield_ClO_O1D; %only relevant below 263.4 nm
QY{i} = 1;

i=i+1;
Jnames{i} = 'Jn34'; %ClONO2->Cl+NO3
CS{i} = @Cross_Section_ClONO2;
QY{i} = 'Quantum_Yield_ClONO2_Cl.csv';

i=i+1;
Jnames{i} = 'Jn35'; %ClONO2->ClO+NO2
CS{i} = @Cross_Section_ClONO2;
QY{i} = 'Quantum_Yield_ClONO2_ClO.csv';

i=i+1;
Jnames{i} = 'Jn36'; %HOCL -> OH + CL
CS{i} = 'Cross_Section_HOCl.csv';
QY{i} = 1;

%% MORE HALOGENS FOR SHERWEN GEOSCHEM MECHANISM

i = i + 1;
Jnames{i} = 'Jn37';
CS{i} = 'Cross_Section_OClO_Wahner(1987)_296K_245-475nm(0.22nm).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'Jn38';
CS{i} = 'Cross_Section_ClOOCl_JPL-2010(2011)_190-250K_200-420nm(rec).txt';
QY{i} = 1;


i = i + 1;
Jnames{i} = 'Jn39';
CS{i} = 'Cross_Section_ClOO_JPL-2010(2011)_191K_220-280nm(rec).txt';
QY{i} = 1;

%Iodine Photolysis:
i = i + 1;
Jnames{i} = 'Jn40';
CS{i} = 'Cross_Section_I2_JPL-2010(2011)_295K_185-700nm(rec).txt';
QY{i} = 'QY_I2.txt';

i = i + 1;
Jnames{i} = 'Jn41';
CS{i} = 'Cross_Section_HOI_JPL-2010(2011)_295-298K_280-480nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'Jn42';
CS{i} = 'Cross_Section_IO_JPL-2010(2011)_298K_339-417nm(rec).txt';
QY{i} = 0.91;

i = i + 1;
Jnames{i} = 'Jn43';
CS{i} = 'Cross_Section_OIO_JPL-2010(2011)_295K_516-572nm(rec).txt';
QY{i} = 1;

%Iodine Nitrates
i = i + 1;
Jnames{i} = 'Jn44';
CS{i} = 'Cross_Section_INO_JPL-2010(2011)_298K_223-460nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'Jn45';
CS{i} = 'Cross_Section_INO2_JPL-2010(2011)_298K_210-380nm(rec).txt';
QY{i} = 1;

i = i + 1;
Jnames{i} = 'Jn46';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 1;

%For I2Ox, following Sherwen et al 2016, which uses the CS and QY from INO3
%for all of these
i = i + 1;
Jnames{i} = 'Jn47';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'Jn48';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'Jn49';
CS{i} = 'Cross_Section_IONO2_JPL-2010(2011)_298K_245-415nm(rec).txt';
QY{i} = 0.21;

i = i + 1;
Jnames{i} = 'Jn50';
CS{i} = 'Cross_Section_ICl_JPL-2010(2011)_298K_210-600nm(rec).txt';
QY{i} = 1; %Haven't checked this. 

i = i + 1;
Jnames{i} = 'Jn51';
CS{i} = 'Cross_Section_IBr_JPL-2010(2011)_298K_220-600nm(rec).txt';
QY{i} = 1; %Haven't checked this.

i = i + 1;
Jnames{i} = 'Jn53';
CS{i} = 'Cross_Section_ClNO_IUPAC2006.csv';
QY{i} = 1; %IUPAC 2006 recommendation

i = i + 1;
Jnames{i} = 'Jn54';
CS{i} = 'Cross_Section_ClONO_IUPAC2006.csv';
QY{i} = 1; %IUPAC 2006 recommendation

i = i + 1;
Jnames{i} = 'Jn55';
CS{i} = 'CH2ClCHO_JPL-2010(2011)_298K_240-357nm(rec).txt';
QY{i} = 1; %No recommendation

i = i + 1;
Jnames{i} = 'Jn56';
CS{i} = 'CH3C(O)CH2Cl_JPL-2010(2011)_296K_210-360nm(rec).txt';
QY{i} = 1; %No recommendation


%% BIOMASS BURNING GOODIES
i=i+1;
Jnames{i} = 'Jn52';  % FURFURAL -> Products...
CS{i} = 'Cross_Section_FURFURAL.csv';
QY{i} = 0.5; %based on recommendation from NOAA lab experiments (Coggon, p.comm., 2019)
% note, Hiraoka and Srinivasan (1968) give much lower QY of 0.005: https://doi.org/10.1063/1.1669411

% end of list

%% INTEGRATE

nj = i;
J = struct;
for i=1:nj
    plotem=0;
    if   nargin<4 %skip if no J2plot input
    elseif any(strcmp('all',J2plot) | strcmp(Jnames{i},J2plot))
        plotem=1;
    end
    
    J.(Jnames{i}) = IntegrateJ(CS{i},QY{i},LFlux,T,P,[],plotem);
    
    if plotem, set(gcf,'name',Jnames{i}); end
end


