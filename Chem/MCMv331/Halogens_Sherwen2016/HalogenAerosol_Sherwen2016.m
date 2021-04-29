% HalogenAerosol_Sherwen2016.m
% Aerosol uptake of Halogens following Sherwen et al. (2016) GEOS-Chem mechanism.
% As implemented in Romer et al. (2018).
% NOTE THAT THIS IS NOT THE COMPLETE SHERWEN MECHANISM!
%
% A few of the reactionss are two-body aqueous reactions.
% As a workaround, they use the "limiting reagent" formulation of Parrella et al. (2012).
%
% NOTES:
% 1. Requires Met input "Saerosol" (generic aerosol surface area).
% 2. Reactive uptake coefficients (gamma) are for a "moderate" case as details in Romer et al. (2018)
% and like do not apply everywhere all the time.
% 3. Rate coefficients do not currently inCLude the diffusion component. This could be added with
%    knowledge of partiCLe radius, etc.
%
% 201812xx PSR
% 20190122 GMW  Renamed from "GEOSChemHalogenUptake_Moderate.m."

%% GAMMA VALUES

% Estimated for a "moderate uptake" scenario (see Romer 2018)
% likely not valid everywhere all the time

gamma_BRNO3 = 0.1;
gamma_INO3 = 0.1;
gamma_CLNO3 = 0.1;
gamma_INO2 = 0.02;
gamma_HOBR_HCL = 0.061;
gamma_HOBR_HBR = 0.1; %Lots of uncertainty. Parrella uses 0.1-0.2
gamma_HOI = 0.01;
gamma_CLNO3_HBR = 0.4; %gamma = 0.3 according to Sander et al(JPL 2011), Table 5-2 Note 102

%% FUNCTION FOR SIMPLE MASS TRANSFER

% note, assumes negligible diffusion limitation
% MW: molar mass, g/mol
% T: temperature, K
% gamma: uptake coefficient
% SA: aerosol surface area, cm^2/cm^3
kmt = @(MW,T,gamma,SA) mean_speed(MW,T).*gamma.*SA/4; 

%% ADD SPECIES

SpeciesToAdd = {'I','IO','HI','HOI','OIO','CH3I','INO','INO2','INO3','I2','I2O4','I2O2','I2O3',...
    'CLO','OCLO','CL','HCL','CLNO3','CLOO','HOCL','CLNO2','CL2','CL2O2',...
    'BRO','BR','HBR','BRNO2','BRNO3','HOBR','BR2',...
    'BRCL','IBR','ICL',...
    'HCOOH','HCL','CO2','C2H6','C2H5O2','C2H5O2','CH3CHO','C2H5OH','CH3CO2H','CH3O2',...
    'CH3COCH3','CH3COCH2O2','C5H8','ISOPBO2','CH3CO3','CH3COCH3','CH3COCH3','C3H8','IC3H7O2','C3H6','HYPROPO2'};
AddSpecies;

%% SINGLE GAS REACTIONS

%R1 - R3 are Iodine uptake that doesn't seem to do anything interesting?

i = i + 1; %R4
Rnames{i} = 'CLNO3 + Aer = HOCL + HNO3';
MW = 97.0;
k(:,i) = kmt(MW,T,gamma_CLNO3,Saerosol);
Gstr{i,1} = 'CLNO3';
fCLNO3(i) = -1; fHOCL(i) = 1; fHNO3(i) = 1;

i = i + 1; %R5
Rnames{i} = 'BRNO3 + Aer = HOBR + HNO3';
MW = 141.91;
k(:,i) = kmt(MW,T,gamma_BRNO3,Saerosol);
Gstr{i,1} = 'BRNO3'; 
fBRNO3(i) = -1; fHOBR(i) = 1; fHNO3(i) = 1;

i = i + 1; %R6
Rnames{i} = 'INO3 + Aer = 0.85*ICL + 0.15*IBR + HNO3';
MW = 188.909;
k(:,i) = kmt(MW,T,gamma_INO3,Saerosol);
Gstr{i,1} = 'INO3';
fINO3(i) = -1; fHNO3(i) = 1; fICL(i) = 0.85; fIBR(i) = 0.15;

i = i + 1; %R7
Rnames{i} = 'INO2 + Aer = 0.85*ICL + 0.15*IBR + HNO3';
MW = 172.91;
k(:,i) = kmt(MW,T,gamma_INO2,Saerosol);
Gstr{i,1} = 'INO2';
fINO2(i) = -1;  fHNO3(i) = 1; fICL(i) = 0.85; fIBR(i) = 0.15; 

i = i + 1; %R10
Rnames{i} = 'HOI + Aer = 0.85*ICL + 0.15*IBR';
MW = 143.89;
k(:,i) = kmt(MW,T,gamma_HOI,Saerosol);
Gstr{i,1} = 'HOI';
fHOI(i) = -1; fICL(i) = 0.85; fIBR(i) = 0.15;


%% MULIT-GAS REACTIONS

i = i + 1; %R8
Rnames{i} = 'HOBR + HCL + Aer = BRCL'; 
MW = 96.91; %for HOBR
k(:,i) = kmt(MW,T,gamma_HOBR_HCL,Saerosol);
Gstr{i,1} = 'HOBR'; Gstr{i,2} = 'HCL'; 
fHOBR(i) = -1; fHCL(i) = -1; fBRCL(i) = 1;
lr_flag(i) = 1;

i = i + 1; %R9
Rnames{i} = 'HOBR + HBR + Aer = BR2'; 
MW = 96.91; %for HOBR. But paul used 88.91?
k(:,i) = kmt(MW,T,gamma_HOBR_HBR,Saerosol);
Gstr{i,1} = 'HOBR'; Gstr{i,2} = 'HBR';
fHOBR(i) = -1; fHBR(i) = -1; fBR2(i) = 1;
lr_flag(i) = 1;

i = i + 1; %R11
Rnames{i} = 'CLNO3 + HBR + Aer = BRCL + HNO3';
MW = 97; %for CLNO3
k(:,i) = kmt(MW,T,gamma_CLNO3_HBR,Saerosol);
Gstr{i,1} = 'CLNO3'; Gstr{i,2} = 'HBR';
fCLNO3(i) = -1; fHBR(i) = -1; fBRCL(i) = 1; fHNO3(i) = 1;
lr_flag(i) = 1;

i =i  + 1; %R12
Rnames{i} = 'O3 + HBR + Aer = HOBR + O2'; 
k(:,i) = 1.2e-19; %This reaction had the most complicated dependence. Estimate as a single reaction rate.
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HBR';
fO3(i) = -1; fHBR(i) = -1; fHOBR(i) = 1; 

% END OF REACTION LIST
