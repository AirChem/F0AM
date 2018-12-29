% ExampleEmissionRxns.m
% Some Test/example reactions to mimic emissions.
% Meant for use with MCMv3.3.1.
% Emission factors are for "needleleaf evergreen boreal tree", PFT 2, of MEGANv2.1
%
% NOTE: Gstr inputs are not needed here as there are no reactants!
%
% 20160718 GMW

i=i+1;
Rnames{i} = 'Emis = C5H8';
EF = 3000; MM = 68;
% EF = 66; %rescale to MEGAN-CLM for Canada
k(:,i) = Emit_IsopreneG95(EF,MM,T,PPFD,LAI)./(BLH*100); %molec/cm^3/s
fC5H8(i)=1; 

i=i+1;
Rnames{i} = 'Emis = APINENE';
EF = 500; beta = 0.1; MM = 136; %emission factor, temp coefficient, molar mass
% EF = 20; %rescale to MEGAN-CLM for Canada
k(:,i) = Emit_expT(EF,beta,MM,T,LAI)./(BLH*100); 
fAPINENE(i)=1; 

i=i+1;
Rnames{i} = 'Emis = BPINENE';
EF = 300; beta = 0.1; MM = 136;
% EF = 20*0.8; %rescale to MEGAN-CLM for Canada
k(:,i) = Emit_expT(EF,beta,MM,T,LAI)./(BLH*100);  
fBPINENE(i)=1; 

i=i+1;
Rnames{i} = 'Emis = 0.5NO + 0.5NO2';
EF = 1; %ng/m^2/s
theta = 0.1; %soil water saturation fraction, random guess
k(:,i) = Emit_soilNO_HD12(EF,T,theta)./(BLH*100);  %technically should be soil temperature, not air temperature
fNO(i)=0.5; fNO2(i)=0.5; %guess, but better than instantly diluting all NO into BL. 


