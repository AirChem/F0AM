% Halogens_Sherwen2016.m
% Halogen Reactions - Copied with modification from Sherwen et al 2016
% This file covers tables B2 & B3 in Sherwen et al 2016, except for
% the chemistry of CHxXy, which are not inCLuded in this model. 
% As implemented in Romer et al. (2018).
% NOTE THAT THIS IS NOT THE COMPLETE SHERWEN MECHANISM!
%
% Even though the source mechanism comes from GEOSChem, this F0AM script is designed to work
% with MCMv331.
%
% WARNING REGARDING PHOTOLYSIS REACTIONS
% All photolysis reactions currently lack T-dependence in their cross sections and thus may be
% inaccurate at temperatures other than 298K. This could be rectified through updates to
% J_BottomUp.m.
%
% 201812xx PSR
% 20190122 GMW  Modified J names to match those in J_BottomUp.m.
%               Renamed from GEOSChemHalogenReactions.m

SpeciesToAdd = {'I','IO','HI','HOI','OIO','CH3I','INO','INO2','INO3','I2','I2O4','I2O2','I2O3',...
    'CLO','OCLO','CL','HCL','CLNO3','CLOO','HOCL','CLNO2','CL2','CL2O2',...
    'BRO','BR','HBR','BRNO2','BRNO3','HOBR','BR2',...
    'BRCL','IBR','ICL',...
    'HCOOH','HCL','CO2','C2H6','C2H5O2','C2H5O2','CH3CHO','C2H5OH','CH3CO2H','CH3O2',...
    'CH3COCH3','CH3COCH2O2','C5H8','ISOPBO2','CH3CO3','CH3COCH3','CH3COCH3','C3H8','IC3H7O2','C3H6','HYPROPO2'};
AddSpecies;

%=====================
%Table B1:
%Photolysis Reactions;
%=====================

i = i + 1; %J1
Rnames{i} = 'I2 + hv = I + 1';
k(:,i) = Jn40;
Gstr{i,1} = 'I2'; 
fI2(i) = -1;  fI(i) = 2;

i = i + 1; %J2
Rnames{i} = 'HOI = hv = I + OH';
k(:,i) = Jn41;
Gstr{i,1} = 'HOI';
fHOI(i) = -1; fI(i) = 1;  fOH(i) = 1;

i = i + 1; %J3
Rnames{i} = 'IO + hv = I + O';
k(:,i) = Jn42;
Gstr{i,1} = 'IO';
fIO(i) = -1; fI(i) = 1; fO(i) = 1;

i = i + 1; %J4
Rnames{i} = 'OIO + hv = I + O2';
k(:,i) = Jn43;
Gstr{i,1} = 'OIO';
fOIO(i) = -1; fI(i) = 1;

i = i + 1; %J5
Rnames{i} = 'INO + hv = I + NO';
k(:,i) = Jn44;
Gstr{i,1} = 'INO';
fINO(i) = -1; fI(i) = 1; fNO(i) = 1;

i = i + 1; %J6
Rnames{i} = 'INO2 + hv = I + NO2';
k(:,i) = Jn45;
Gstr{i,1} = 'INO2';
fINO2(i) = -1; fI(i) = 1; fNO2(i) = 1;

i = i + 1; %J7
Rnames{i} = 'INO3 + hv = I + NO3';
k(:,i) = Jn46;
Gstr{i,1} = 'INO3';
fINO3(i) = -1; fI(i) = 1; fNO3(i) = 1;

i = i + 1; %J8
Rnames{i} = 'I2O2 + hv = I + OIO';
k(:,i) = Jn47;
Gstr{i,1} = 'I2O2';
fI2O2(i) = -1; fI(i) = 1; fOIO(i) = 1;

%J9-J12 are organo-halides

i = i + 1; %J13
Rnames{i} = 'I2O4 + hv = OIO + OIO';
k(:,i) = Jn48;
Gstr{i,1} = 'I2O4';
fI2O4(i) = -1; fOIO(i) = 2;

i = i + 1; %J14
Rnames{i} = 'I2O3 + hv = OIO + IO';
k(:,i) = Jn49;
Gstr{i,1} = 'I2O3';
fI2O3(i) = -1; fOIO(i) = 1; fIO(i) = 1;


%J15 is Organo-BRomide

i = i + 1; %J16
Rnames{i} = 'BR2 + hv = BR + BR';
k(:,i) = Jn24;
Gstr{i,1} = 'BR2'; 
fBR2(i) = -1;  fBR(i) = 2;


i = i + 1; %J17
Rnames{i} = 'BRO + hv = BR + O';
k(:,i) = Jn25;
Gstr{i,1} = 'BRO'; 
fBRO(i) = -1;  fBR(i) = 1; fO(i) = 1;


i = i + 1; %J18
Rnames{i} = 'HOBR + hv = BR + OH';
k(:,i) = Jn26;
Gstr{i,1} = 'HOBR';
fHOBR(i) = -1;  fBR(i) = 1; fOH(i) = 1;


i = i + 1; %J19
Rnames{i} = 'BRNO2 + hv = BR + NO2';
k(:,i) = Jn27;
Gstr{i,1} = 'BRNO2'; 
fBRNO2(i) = -1; fBR(i) = 1; fNO2(i) = 1;


i = i + 1; %J20
Rnames{i} = 'BRNO3 + hv = BR + NO3';
k(:,i) = Jn28;
Gstr{i,1} = 'BRNO3'; 
fBRNO3(i) = -1; fBR(i) = 1; fNO3(i) = 1;

i = i + 1; %J21
Rnames{i} = 'BRNO3 + hv = BRO + NO2';
k(:,i) = Jn29;
Gstr{i,1} = 'BRNO3';
fBRNO3(i) = -1; fBRO(i) = 1; fNO2(i) = 1;

%J22 is organo-BRomides

i = i + 1; %J23
Rnames{i} = 'BRCL + hv = BR + CL';
k(:,i) = Jn31;
Gstr{i,1} = 'BRCL';
fBRCL(i) = -1; fBR(i) = 1; fCL(i) = 1;

i = i + 1; %J24
Rnames{i} = 'CL2 + hv = CL + CL';
k(:,i) = Jn32;
Gstr{i,1} = 'CL2';
fCL2(i) = -1; fCL(i) = 2;

i = i + 1; %J25;
Rnames{i} = 'CLO + hv = CL + O';
k(:,i) = Jn33;
Gstr{i,1} = 'CLO';
fCLO(i) = -1; fCL(i) = 1; fO(i) = 1;

i = i + 1; %J26
Rnames{i} = 'OCLO + hv = CLO + O';
k(:,i) = Jn37;
Gstr{i,1} = 'OCLO';
fOCLO(i) = -1; fCLO(i) = 1; fO(i) = 1;

i = i + 1; %J27
Rnames{i} = 'CL2O2 + hv = CL + CLOO';
k(:,i) = Jn38;
Gstr{i,1} = 'CL2O2';
fCL2O2(i) = -1; fCL(i) =1; fCLOO(i) = 1;

i = i + 1; %J28
Rnames{i} = 'CLNO2 + hv = CL + NO2';
k(:,i) = Jn23;
Gstr{i,1} = 'CLNO2';
fCLNO2(i) = -1; fCL(i) = 1; fNO2(i) = 1;


i = i + 1; %J29
Rnames{i} = 'CLNO3 + hv = CL + NO3';
k(:,i) = Jn34;
Gstr{i,1} = 'CLNO3';
fCLNO3(i) = -1; fCL(i) = 1; fNO3(i) = 1;

i = i + 1; %J30;
Rnames{i} = 'CLNO3 + hv = CLO + NO2';
k(:,i) = Jn35;
Gstr{i,1} = 'CLNO3';
fCLNO3(i) = -1; fCLO(i) = 1; fNO2(i) = 1;

i = i + 1; %J31
Rnames{i} = 'HOCL + hv = CL + OH';
k(:,i) = Jn36;
Gstr{i,1} = 'HOCL';
fHOCL(i) = -1; fCL(i) = 1; fOH(i) =1;
 
i = i + 1; %J32
Rnames{i} = 'CLOO + hv = CL + O2';
k(:,i) = Jn39;
Gstr{i,1} = 'CLOO';
fCLOO(i) = -1; fCL(i) = 1; 

 %J33 and J34 are organo-chlorines
 
 i = i + 1; %J_from  Hossaini et al, to have something for ICL to do. 
 Rnames{i} = 'ICL + hv = I + CL';
 k(:,i) = Jn50;
 Gstr{i,1} = 'ICL';
 fICL(i) = -1; fI(i) = 1; fCL(i) = 1;
 
 i = i + 1; %J_from  Saiz-Lopez et al, 2014 to have something for IBR to do.
 Rnames{i} = 'IBR + hv = I + BR';
 k(:,i) = Jn51;
 Gstr{i,1} = 'IBR';
 fIBR(i) = -1; fI(i) = 1; fBR(i) = 1;

%==============================
%Table B2:
%Bimolecular Reactions
%==============================

%==================
%Iodine Reactions


i = i + 1; %M1
Rnames{i} = 'I + O3 = IO + O2';
k(:,i) = 2.1e-11.*exp(-830./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'O3';
fI(i) = -1; fO3(i) = -1; fIO(i) = 1;

i = i + 1; %M2
Rnames{i} = 'I + HO2 = HI + O2'; 
k(:,i) = 1.5e-11.*exp(-1090./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'HO2';
fI(i) = -1; fHO2(i) = -1; fHI(i) = 1;

i = i +1; %M3
Rnames{i} = 'I2 + OH = HOI + I';
k(:,i) = 2.1e-10;
Gstr{i,1} = 'I2'; Gstr{i,2} = 'OH';
fI2(i) = -1; fOH(i) = -1; fHOI(i) = 1; fI(i) = 1;

i = i + 1; %M4
Rnames{i} = 'HI + OH = I + H2O';
k(:,i) = 1.6e-11.*exp(440./T); 
Gstr{i,1} = 'HI'; Gstr{i,2} = 'OH'; 
fHI(i) = -1; fOH(i) = -1; fI(i) = 1; %Assuming negligble effect on H2O


i = i + 1; %M5
Rnames{i} = 'HOI + OH = IO + H2O';
k(:,i) = 5.00e-12;
Gstr{i,1} = 'HOI'; Gstr{i,2} = 'OH';
fHOI(i) = -1; fOH(i) = -1; fIO(i) = 1;


i = i + 1; %M6
Rnames{i} = 'IO + HO2 = HOI + O2';
k(:,i) = 1.4e-11.*exp(540./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'HO2';
fIO(i) = -1; fHO2(i) = -1; fHOI(i) = 1;  %Assuming negligble effect on O2


i = i + 1; %M7
Rnames{i} = 'IO + NO = I + NO2';
k(:,i) = 7.15e-12.*exp(300./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO';
fIO(i) = -1; fNO(i) = -1; fI(i) = 1; fNO2(i) = 1;

i = i + 1; %M8
Rnames{i} = 'OH + CH3I = H2O + I'; 
k(:,i) = 4.30e-12.*exp(-1120./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3I';
fOH(i) = -1; fCH3I(i) = -1; fI(i) = 1;

i = i + 1; %M9
Rnames{i} = 'INO + INO = I2 + NO + NO';
k(:,i) = 8.40e-11.*exp(-2620./T);
Gstr{i,1} = 'INO'; Gstr{i,2} = 'INO';
fINO(i) = -2; fI2(i) = 1; fNO(i) = 2;

i = i + 1; %M10
Rnames{i} = 'INO2 + INO2 = I2 + NO2 + NO2';
k(:,i) = 4.70e-12.*exp(-1670./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'INO2';
fINO2(i) = -2; fI2(i) = 1; fNO2(i) = 2;

i = i + 1; %M11
Rnames{i} = 'I2 + NO3 = I + INO3';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'I2'; Gstr{i,2} = 'NO3';
fI2(i) = -1; fNO3(i) = -1; fI(i) = 1; fINO3(i) = 1;

i = i + 1; %M12
Rnames{i} = 'INO3 + I = I2 + NO3';
k(:,i) = 9.1e-11 .* exp(-146./T);
Gstr{i,1} = 'INO3'; Gstr{i,2} = 'I';
fINO3(i) = -1; fI(i) = -1; fI2(i) = 1; fNO3(i) = -1;


i = i + 1; %M13
Rnames{i} = 'I + BRO = IO + BR';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'I'; Gstr{i,2} = 'BRO';
fI(i) = -1; fBRO(i) = -1; fIO(i) = 1; fBR(i) = 1;

i = i + 1; %M14
Rnames{i} = 'IO + BR = I + BRO';
k(:,i) = 2.70e-11;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BR';
fIO(i) = -1; fBR(i) = -1; fI(i) = 1; fBRO(i) = 1;

i = i + 1; %M15
Rnames{i} = 'IO + BRO = BR + I + O2';
k(:,i) = 3.00e-12 .* exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BRO'; 
fIO(i) = -1; fBRO(i) = -1; fBR(i) = 1; fI(i) = 1;

i = i + 1; %M16
Rnames{i} = 'IO + BRO = BR + OIO';
k(:,i) = 1.20e-11 .* exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BRO';
fBRO(i) = -1; fIO(i) = -1; fBR(i) = 1; fOIO(i) = 1;


i = i + 1; %M17
Rnames{i} = 'OIO + OIO = I2O4';
k(:,i) = 1.5e-10;
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'OIO';
fOIO(i) = -2; fI2O4(i) = 1;


i = i + 1; %M18
Rnames{i} = 'OIO + NO = NO2 + IO';
k(:,i) = 1.1e-12.*exp(542./T);
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'NO';
fOIO(i) = -1; fNO(i) = -1; fNO2(i) = 1; fIO(i) = 1;

i = i + 1; %M19
Rnames{i} = 'IO + IO = I + OIO';
k(:,i) = 2.16e-11.*exp(180./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'IO';
fIO(i) = -2; fI(i) = 1; fOIO(i) = 1;


i = i + 1; %M20
Rnames{i} = 'IO + IO = I2O2';
k(:,i) = 3.24e-11.*exp(180./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'IO';
fIO(i) = -2; fI2O2(i) = 1;

i = i + 1; %M21
Rnames{i} = 'IO + OIO = I2O3';
k(:,i) = 1.5e-10;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'OIO';
fIO(i) = -1; fOIO(i) = -1; fI2O3(i) = 1;

i = i + 1; %M22
Rnames{i} = 'I2O2 = IO + IO';
k(:,i) = 1.00e12 .* exp(-9770./T); %Yes, that's postivive 10^12
Gstr{i,1} = 'I2O2';
fI2O2(i) = -1; fIO(i) = 2;


i = i + 1; %M23
Rnames{i} = 'I2O2 = OIO + I';
k(:,i) = 2.50e14 .* exp(-9770./T);
Gstr{i,1} = 'I2O2';
fI2O2(i) = -1; fOIO(i) = 1; fI(i) = 1;

i = i + 1; %M24
Rnames{i} = 'I2O4 = OIO + OIO';
k(:,i) = 3.80e-2;
Gstr{i,1} = 'I2O4';
fI2O4(i) = -1; fOIO(i) = 2;

i = i + 1; %M25
Rnames{i} = 'INO2 = I + NO2';
k(:,i) = 9.94e17.*exp(-11859./T); %Very rapid dissociation
Gstr{i,1} = 'INO2';
fINO2(i) = -1; fI(i) = 1; fNO2(i) = 1;


i = i + 1; %M26
Rnames{i} = 'INO3 = IO + NO2';
k(:,i) = 2.10e15 .* exp(-13670./T);
Gstr{i,1} = 'INO3';
fINO3(i) = -1; fIO(i) = 1; fNO2(i) = -1;

%==================
%I-CL Reactions
i = i + 1; %M27
Rnames{i} = 'IO + CLO = I + OCLO';
k(:,i) = 2.59e-12 .* exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'CLO';
fIO(i) = -1; fCLO(i) = -1; fI(i) = 1; fOCLO(i) = 1;

i = i + 1; %M28
Rnames{i} = 'IO + CLO = I + CL + O2';
k(:,i) = 1.18e-12.*exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'CLO';
fIO(i) = -1; fCLO(i) = -1; fI(i) = 1; fCL(i) = 1;

i = i + 1; %M29
Rnames{i} = 'IO + CLO = ICL + O2'; %Fate of ICL? 
k(:,i) = 9.40e-13 .* exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'CLO';
fIO(i) = -1; fCLO(i) = -1; fICL(i) = 1; 


%=================
% Chlorine Chemistry
i = i + 1; %M30
Rnames{i} = 'CL + HCOOH = HCL + CO2 + H2O';
k(:,i) = 2.00e-13;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HCOOH';
fCL(i) = -1; fHCOOH(i) = -1; fHCL(i) = 1; 

i = i + 1; %M31
Rnames{i} = 'CL + CH3O2 = CLO + HCHO + HO2';
k(:,i) = 1.6e-10;
Gstr{i,1} = 'CL'; Gst{i,2} = 'CH3O2';
fCL(i) = -1; fCH3O2(i) = -1; fCLO(i) = 1; fHCHO(i) = 1; fHO2(i) = 1;

i = i + 1; %M32
Rnames{i} = 'CL + CH3OOH = HCL + CH3O2';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3OOH';
fCL(i) = -1; fCH3OOH(i) = -1; fHCL(i) = 1; fCH3O2(i) = 1;

i = i + 1; %M33
Rnames{i} = 'CL + C2H6 = HCL + C2H5O2';
k(:,i) = 7.20e-11 .* exp(-70./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H6';
fCL(i) = -1; fC2H6(i) = -1; fHCL(i) = 1; fC2H5O2(i) = 1;

i = i + 1; %M34
Rnames{i} = 'CL + C2H5O2 = CLO + HO2 + CH3CHO'; %CH3CHO Taken as aldehyde product
k(:,i) = 7.40e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H5O2';
fCL(i) = -1; fC2H5O2(i) = -1; fCLO(i) = 1; fHO2(i) = 1; fCH3CHO(i) = 1;

i = i + 1; %M35
Rnames{i} = 'CL + C2H5OH = HCL + CH3CHO'; 
k(:,i) = 9.60e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H5OH';
fCL(i) = -1; fC2H5OH(i) = -1; fHCL(i) = 1; fCH3CHO(i) = 1;

i = i + 1; %M36
Rnames{i} = 'CL + CH3CO2H = HCL + CH3O2 + CO2';
k(:,i) = 2.80e-14;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3CO2H';
fCL(i) = -1; fCH3CO2H(i) = -1; fHCL(i) = 1; fCH3O2(i) = 1;

%M37 & M38 are already in MCM, so not inCLuded here

i = i + 1; %M39
Rnames{i} = 'CL + CH3COCH3 = HCL + CH3COCH2O2'; %Reaction proceeds by abstraction
k(:,i) = 7.70e-11 .* exp(-1000./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3COCH3';
fCL(i) = -1; fCH3COCH3(i) = -1; fHCL(i) = 1; fCH3COCH2O2(i) = 1;

i = i + 1; %M40
Rnames{i} = 'CL + C5H8 = HCL + ISOPBO2'; %Only one representative RO2 isomer used
k(:,i) = 7.70e-11 .* exp(500./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C5H8';
fCL(i) = -1; fC5H8(i) = -1; fHCL(i) = 1; fISOPBO2(i) = 1;

i = i + 1; %M41
Rnames{i} = 'CL + CH3OH = HCL + HCHO + HO2';
k(:,i) = 5.50e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3OH';
fCL(i) = -1; fCH3OH(i) = -1; fHCL(i) = 1; fHCHO(i) = 1; fHO2(i) = 1;


%M42-M44 are Organo-BRomo compounds

%======================
%BRomine Chemistry

i = i + 1; %M45
Rnames{i} = 'BR + O3 = BRO + O2';
k(:,i) = 1.6e-11.*exp(-780./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'O3';
fBR(i) = -1; fO3(i) = -1; fBRO(i) = 1; 

%======================
%BR + Organic Compounds:
i = i + 1; %M46
Rnames{i} = 'BR + HCHO = HO2 + CO + HBR';
k(:,i) = 1.70e-11 .* exp(-800./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'HCHO';
fBR(i) = -1; fHCHO(i) = -1; fHO2(i) = 1; fCO(i) = 1; fHBR(i) = 1;

i = i + 1; %M47;
Rnames{i} = 'BR + HO2 = HBR + O2';
k(:,i) = 4.80e-12 .* exp(-310./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'HO2';
fBR(i) = -1; fHO2(i) = -1; fHBR(i) = 1;

i = i + 1; %M48
Rnames{i} = 'BR + CH3CHO = CH3CO3 + HBR';
k(:,i) = 1.30e-11 .*exp(-360./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'CH3CHO';
fBR(i) = -1; fCH3CHO(i) = -1; fCH3CO3(i) = 1; fHBR(i) = 1;

i = i + 1; %M49;
Rnames{i} = 'BR + CH3COCH3 = CH3COCH2O2 + HBR';
k(:,i) = 1.66e-10 .* exp(-7000./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'CH3COCH3';
fBR(i) = -1; fCH3COCH3(i) = -1; fCH3COCH2O2(i) = 1; fHBR(i) = 1;

i = i + 1; %M50;
Rnames{i} = 'BR + C2H6 = C2H5O2 + HBR';
k(:,i) = 2.36e-10 .* exp(-6411./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'C2H6';
fBR(i) = -1; fC2H6(i) = -1; fC2H5O2(i) = 1; fHBR(i) = 1;

i = i + 1; %M51
Rnames{i} = 'BR + C3H8 = IC3H7O2 + HBR';
k(:,i) = 8.77e-11.*exp(-4330./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'C3H8';
fBR(i) = -1; fC3H8(i) = -1; fIC3H7O2(i) = 1; fHBR(i) = 1;



i = i + 1; %M52
Rnames{i} = 'BRNO3 + BR = BR2 + NO3';
k(:,i) = 4.9e-11;
Gstr{i,1} = 'BRNO3'; Gstr{i,2} = 'BR';
fBRNO3(i) = -1; fBR(i) = -1; fBR2(i) = 1; fNO3(i) = 1;

i = i + 1; %M53
Rnames{i} = 'BR + NO3 = BRO + NO2';
k(:,i) = 1.60e-11;
Gstr{i,1} = 'BR'; Gstr{i,2} = 'NO3';
fBR(i) = -1; fNO3(i) = -1; fBRO(i) = 1; fNO2(i) = 1;

i = i + 1; %M54
Rnames{i} = 'HBR + OH = H2O + BR';
k(:,i) = 5.5e-12.*exp(200./T);
Gstr{i,1} = 'HBR'; Gstr{i,2} = 'OH';
fHBR(i) = -1; fOH(i) = -1; fBR(i) = 1;


i = i + 1; %M55
Rnames{i} = 'BRO + NO = NO2 + BR';
k(:,i) = 8.8e-12.*exp(260./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'NO';
fBRO(i) = -1; fNO(i) = -1; fNO2(i) = 1; fBR(i) = 1;


i = i + 1; %M56
Rnames{i} = 'BRO + OH = HO2 + BR';
k(:,i) = 1.7e-11.*exp(250./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'OH';
fBRO(i) = -1; fOH(i) = -1; fHO2(i) = 1; fBR(i) = 1;


i = i + 1; %M57
Rnames{i} = 'BRO + BRO = BR + BR + O2';
k(:,i) = 2.4e-12.*exp(40./T); 
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'BRO';
fBRO(i) = -2; fBR(i) = 2;


i = i + 1; %M58
Rnames{i} = 'BRO + BRO = BR2 + O2';
k(:,i) = 2.8e-14.*exp(860./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'BRO';
fBRO(i) = -2; fBR2(i) = 1;


i = i + 1; %M59
Rnames{i} = 'BRO + HO2 = HOBR + O2';
k(:,i) = 4.5e-12.*exp(460./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'HO2';
fBRO(i) = -1; fHO2(i) = -1; fHOBR(i) = 1; 

i = i + 1; %M60
Rnames{i} = 'BR2 + OH = HOBR + BR';
k(:,i) = 2.1e-11 .*exp(240./T);
Gstr{i,1} = 'BR2'; Gstr{i,2} = 'OH';
fBR2(i) = -1; fOH(i) = -1; fHOBR(i) = 1; fBR(i) = 1;

%=====================
%More Chlorine Chemistry
%M61 in MCM laready

i = i + 1; %M62
Rnames{i} = 'CL + C3H6 = HCL + HYPROPO2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H6';
fCL(i) = -1; fC3H6(i) = - 1; fHCL(i) = 1; fHYPROPO2(i) = 1;

%M63 is organo-chlorides

i = i + 1; %M64;
Rnames{i} = 'CL + H2O2 = HO2 + HCL';
k(:,i) = 1.10e-11 .* exp(-980./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'H2O2';
fCL(i) = -1; fH2O2(i) = -1; fHO2(i) = 1; fHCL(i) = 1;

i = i + 1; %M65;
Rnames{i} = 'CL + HO2 = O2 + HCL';
k(:,i) = 1.40e-11 .* exp(270./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2';
fCL(i) = -1; fHO2(i) = -1; fHCL(i) = 1;

i = i + 1; %M66
Rnames{i} = 'CL + HO2 = OH + CLO';
k(:,i) = 3.60e-11 .* exp(-375./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2';
fCL(i) = -1; fHO2(i) = -1; fOH(i) = 1; fCLO(i) = 1;

i = i + 1; %M67
Rnames{i} = 'CL + O3 = CLO + O2';
k(:,i) = 2.30e-11 .* exp(-200./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'O3';
fCL(i) = -1; fO3(i) = -1; fCLO(i) = 1; 

i = i + 1; %M68
Rnames{i} = 'CL + CLNO3 = CL2 + NO3';
k(:,i) = 6.50e-12 .* exp(135./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CLNO3';
fCL(i) = -1; fCLNO3(i) = -1; fCL2(i) = 1; fNO3(i) = 1;

i = i + 1; %M69
Rnames{i} = 'CLO + CLO = CL2 + O2';
k(:,i) = 1.00e-12 .* exp(-1590./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO';
fCLO(i) = -2; fCL2(i) = 1; 

i = i + 1; %M70
Rnames{i} = 'CLO + CLO = OCLO + CL';
k(:,i) = 3.50e-13 .* exp(-1370./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO';
fCLO(i) = -2; fOCLO(i) = 1; fCL(i) = 1;

i = i + 1; %M71
Rnames{i} = 'CLO + CLO = CL + CLOO';
k(:,i) = 3.00e-11 .* exp(-2450./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO';
fCLO(i) = -2; fCL(i) = 1; fCLOO(i) = 1;

i = i + 1; %M72
Rnames{i} = 'CLO + HO2 = O2 + HOCL';
k(:,i) = 2.60e-12 .* exp(290./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'HO2';
fCLO(i) = -1; fHO2(i) = -1; fHOCL(i) = 1;

i = i + 1; %M73;
Rnames{i} = 'CLO + NO = CL + NO2';
k(:,i) = 6.40e-12 .* exp(290./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO';
fCLO(i) = -1; fNO(i) = -1; fCL(i) = 1; fNO2(i) = 1;

i = i + 1; %M74;
Rnames{i} = 'CLOO + CL = CLO + CLO';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'CLOO'; Gstr{i,2} = 'CL';
fCLOO(i) = -1; fCL(i) = -1; fCLO(i) = 2;

i = i + 1; %M75;
Rnames{i} = 'CLOO + CL = CL2 + O2';
k(:,i) = 2.30e-10;
Gstr{i,1} = 'CLOO'; Gstr{i,2} = 'CL';
fCLOO(i) = -1; fCL(i) = -1; fCL2(i) = 1; 

i = i + 1; %M76;
Rnames{i} = 'CH3O2 + CLO = CLOO + HO2 + HCHO';
k(:,i) = 3.30e-12 .* exp(-115./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'CLO';
fCH3O2(i) = -1; fCLO(i) = -1; fCLOO(i) = 1; fHO2(i) = 1; fHCHO(i) = 1;

%M77 is CH3CL

i = i + 1; %M78;
Rnames{i} = 'OH + CL2 = HOCL + CL';
k(:,i) = 2.60e-12 .* exp(-1100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CL2';
fOH(i) = -1; fCL2(i) = -1; fHOCL(i) = 1; fCL(i) = 1;

i = i + 1; %M79; 
Rnames{i} = 'OH + CL2O2 = HOCL + CLOO';
k(:,i) = 6.00e-13 .* exp(670./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CL2O2';
fOH(i) = -1; fCL2O2(i) = -1; fHOCL(i) = 1; fCLOO(i) = 1;

i = i + 1; %M80
Rnames{i} = 'OH + CLNO2 = HOCL + NO2';
k(:,i) = 2.40e-12 .* exp(-1250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CLNO2';
fOH(i) = -1; fCLNO2(i) = -1; fHOCL(i) = 1; fNO2(i) = 1;

i = i + 1; %M81
Rnames{i} = 'OH + CLNO3 = HOCL + NO3';
k(:,i) = 1.20e-12 .* exp(-330./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CLNO3';
fOH(i) = -1; fCLNO3(i) = -1; fHOCL(i) = 1; fNO3(i) = 1;

i = i + 1; %m82
Rnames{i} = 'OH + CLO = HCL + O2';
k(:,i) = 6.00e-13 .* exp(230./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CLO';
fOH(i) = -1; fCLO(i) = -1; fHCL(i) = 1; 

i = i + 1; %M83
Rnames{i} = 'OH + CLO = HO2 + CL';
k(:,i) = 7.40e-12 .* exp(270./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CLO';
fOH(i) = -1; fCLO(i) = -1; fHO2(i) = 1; fCL(i) = 1;

i = i + 1; %M84
Rnames{i} = 'OH + HCL = H2O + CL';
k(:,i)  = 1.80e-12 .* exp(-250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCL';
fOH(i) = -1; fHCL(i) = -1; fCL(i) = 1;

i = i + 1; %M85;
Rnames{i} = 'OH + HOCL = H2O + CLO';
k(:,i) = 3.00e-12 .* exp (-500./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOCL';
fOH(i) = -1; fHOCL(i) = -1; fCLO(i) = 1;

i = i + 1; %M86
Rnames{i} = 'OH + OCLO = HOCL + O2';
k(:,i) = 1.50e-12 .* exp(600./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OCLO';
fOH(i) = -1; fOCLO(i) = -1; fHOCL(i) = 1; 

%===========================
%Table B3:
%Three Body Reactions
%===========================

i = i + 1; %T1
Rnames{i} = 'I + NO = INO';
k(:,i) = ThreeBodyK_LH(1.8e-32.*exp(T./300).^-1.0,1.7e-11,M,0.6);
Gstr{i,1} = 'I'; Gstr{i,2} = 'NO';
fI(i) = -1; fNO(i) = -1; fINO(i) = 1;


i = i + 1; %T2
Rnames{i} = 'I + NO2 = INO2';
k(:,i) = ThreeBodyK_LH(3.0e-31.*(T./300).^-1.0, 6.6e-11,M,0.6,1);
Gstr{i,1} = 'I'; Gstr{i,2} = 'NO2';
fI(i) = -1; fNO2(i) = -1; fINO2(i) = 1;


i = i + 1; %T3
Rnames{i} = 'IO + NO2 = INO3';
k(:,i) = ThreeBodyK_LH(7.7e-31.*(T./300).^-5,1.6e-11,M,0.4);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO2';
fIO(i) = -1; fNO2(i) = -1; fINO3(i) = 1;

i = i + 1; %T4
Rnames{i} = 'BR + NO2 = BRNO2';
k(:,i) = ThreeBodyK_LH(4.2e-31.*(T./300).^-2.4, 2.7e-11,M,0.6);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'NO2';
fBR(i) = -1; fNO2(i) = -1; fBRNO2(i) = 1;

i = i + 1; %T5
Rnames{i} = 'BRO + NO2 = BRNO3';
k(:,i) = ThreeBodyK_LH(5.2e-31.*(T./300).^-3.2,6.9e-12,M,0.6); %Taken from Saunders et al, 2011
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'NO2';
fBRO(i) = -1; fNO2(i) = -1; fBRNO3(i) = 1;

i = i + 1; %T6
Rnames{i} = 'CL + C3H6 = HCL + HYPROPO2';
k(:,i) = ThreeBodyK_LH(4.00e-28,2.80e-10,M,0.6); 
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H6';
fCL(i) = -1; fC3H6(i) = -1; fHCL(i) = 1; fHYPROPO2(i) = 1;

%Rate constant taken from Sander et al., 2011
i = i + 1; %T7
Rnames{i} = 'CL + O2 = CLOO'; 
k(:,i) = ThreeBodyK_LH(2.20e-33.*(T./300).^-3.1,1.8e-10,M,0.6) .* (M.*0.21);%M*0.21 = [O2]
Gstr{i,1} = 'CL'; 
fCL(i) = -1; fCLOO(i) = 1;

%Rate constant for the dissociation calculated as kF/Keq, with the
%equiliBRium constant (Keq) from Sander et al., 2011
i = i + 1; %T8
Rnames{i} = 'CL2O2 = CLO + CLO';
k(:,i) = ThreeBodyK_LH(1.60e-21.* (T./300).^-2,3.00e-12 .* (T./300).^-4.5,M,0.6)./( 2.16e-27 .* exp(8537./T) );
Gstr{i,1} = 'CL2O2';
fCL2O2(i) = -1; fCLO(i) = 2;

i = i + 1; %T9
Rnames{i} = 'CLO + CLO = CL2O2';
k(:,i) = ThreeBodyK_LH(1.60e-21.* (T./300).^-2,3.00e-12 .* (T./300).^-4.5,M,0.6);
Gstr{i,1} = 'CLO'; Gst{i,2} = 'CLO';
fCLO(i) = -2; fCL2O2(i) = 1;

i = i + 1; %T10
Rnames{i} = 'CLO + NO2 = CLNO3';
k(:,i) = ThreeBodyK_LH(1.80e-31.*(T./300).^-1.9,1.50e-11.*(T./300).^-3.4,M,0.6);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO2';
fCLO(i) = -1; fNO2(i) = -1; fCLNO3(i) = 1;

%Rate constant for the dissociation calculated as kF/Keq, with the
%equiliBRium constant (Keq) from Sander et al., 2011
i = i + 1; %T11;
Rnames{i} = 'CLOO = CL + O2';
k(:,i) = ThreeBodyK_LH(2.20e-33.*(T./300).^-3.1,1.8e-10,M,0.6) ./ ( 6.6e-25.*exp(2502./T) ); 
Gstr{i,1} = 'CLOO';
fCLOO(i) = -1; fCL(i) = 1; 

%Added from Hossaini et al 2016
i = i + 1; 
Rnames{i} = 'CL + NO2 = CLNO2';
k(:,i) = ThreeBodyK_LH(1.8e-31 .* (T./300).^-2.0,1.0e-10 .* (T./300).^-1.0,M,0.6);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NO2';
fCL(i) = -1; fNO2(i) = -1; fCLNO2(i) = 1;

% END OF REACTION LIST

