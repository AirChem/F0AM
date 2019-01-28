% Halogens_Sherwen2016.m
% Halogen Reactions - Copied with modification from Sherwen et al 2016
% This file covers tables B2 & B3 in Sherwen et al 2016, except for
% the chemistry of CHxXy, which are not included in this model. 
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
    'ClO','OClO','Cl','HCl','ClNO3','ClOO','HOCl','ClNO2','Cl2','Cl2O2',...
    'BrO','Br','HBr','BrNO2','BrNO3','HOBr','Br2',...
    'BrCl','IBr','ICl',...
    'HCOOH','HCl','CO2','C2H6','C2H5O2','C2H5O2','CH3CHO','C2H5OH','CH3CO2H','CH3O2',...
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


%J15 is Organo-Bromide

i = i + 1; %J16
Rnames{i} = 'Br2 + hv = Br + Br';
k(:,i) = Jn24;
Gstr{i,1} = 'Br2'; 
fBr2(i) = -1;  fBr(i) = 2;


i = i + 1; %J17
Rnames{i} = 'BrO + hv = Br + O';
k(:,i) = Jn25;
Gstr{i,1} = 'BrO'; 
fBrO(i) = -1;  fBr(i) = 1; fO(i) = 1;


i = i + 1; %J18
Rnames{i} = 'HOBr + hv = Br + OH';
k(:,i) = Jn26;
Gstr{i,1} = 'HOBr';
fHOBr(i) = -1;  fBr(i) = 1; fOH(i) = 1;


i = i + 1; %J19
Rnames{i} = 'BrNO2 + hv = Br + NO2';
k(:,i) = Jn27;
Gstr{i,1} = 'BrNO2'; 
fBrNO2(i) = -1; fBr(i) = 1; fNO2(i) = 1;


i = i + 1; %J20
Rnames{i} = 'BrNO3 + hv = Br + NO3';
k(:,i) = Jn28;
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i) = -1; fBr(i) = 1; fNO3(i) = 1;

i = i + 1; %J21
Rnames{i} = 'BrNO3 + hv = BrO + NO2';
k(:,i) = Jn29;
Gstr{i,1} = 'BrNO3';
fBrNO3(i) = -1; fBrO(i) = 1; fNO2(i) = 1;

%J22 is organo-bromides

i = i + 1; %J23
Rnames{i} = 'BrCl + hv = Br + Cl';
k(:,i) = Jn31;
Gstr{i,1} = 'BrCl';
fBrCl(i) = -1; fBr(i) = 1; fCl(i) = 1;

i = i + 1; %J24
Rnames{i} = 'Cl2 + hv = Cl + Cl';
k(:,i) = Jn32;
Gstr{i,1} = 'Cl2';
fCl2(i) = -1; fCl(i) = 2;

i = i + 1; %J25;
Rnames{i} = 'ClO + hv = Cl + O';
k(:,i) = Jn33;
Gstr{i,1} = 'ClO';
fClO(i) = -1; fCl(i) = 1; fO(i) = 1;

i = i + 1; %J26
Rnames{i} = 'OClO + hv = ClO + O';
k(:,i) = Jn37;
Gstr{i,1} = 'OClO';
fOClO(i) = -1; fClO(i) = 1; fO(i) = 1;

i = i + 1; %J27
Rnames{i} = 'Cl2O2 + hv = Cl + ClOO';
k(:,i) = Jn38;
Gstr{i,1} = 'Cl2O2';
fCl2O2(i) = -1; fCl(i) =1; fClOO(i) = 1;

i = i + 1; %J28
Rnames{i} = 'ClNO2 + hv = Cl + NO2';
k(:,i) = Jn23;
Gstr{i,1} = 'ClNO2';
fClNO2(i) = -1; fCl(i) = 1; fNO2(i) = 1;


i = i + 1; %J29
Rnames{i} = 'ClNO3 + hv = Cl + NO3';
k(:,i) = Jn34;
Gstr{i,1} = 'ClNO3';
fClNO3(i) = -1; fCl(i) = 1; fNO3(i) = 1;

i = i + 1; %J30;
Rnames{i} = 'ClNO3 + hv = ClO + NO2';
k(:,i) = Jn35;
Gstr{i,1} = 'ClNO3';
fClNO3(i) = -1; fClO(i) = 1; fNO2(i) = 1;

i = i + 1; %J31
Rnames{i} = 'HOCl + hv = Cl + OH';
k(:,i) = Jn36;
Gstr{i,1} = 'HOCl';
fHOCl(i) = -1; fCl(i) = 1; fOH(i) =1;
 
i = i + 1; %J32
Rnames{i} = 'ClOO + hv = Cl + O2';
k(:,i) = Jn39;
Gstr{i,1} = 'ClOO';
fClOO(i) = -1; fCl(i) = 1; 

 %J33 and J34 are organo-chlorines
 
 i = i + 1; %J_from  Hossaini et al, to have something for ICl to do. 
 Rnames{i} = 'ICl + hv = I + Cl';
 k(:,i) = Jn50;
 Gstr{i,1} = 'ICl';
 fICl(i) = -1; fI(i) = 1; fCl(i) = 1;
 
 i = i + 1; %J_from  Saiz-Lopez et al, 2014 to have something for IBr to do.
 Rnames{i} = 'IBr + hv = I + Br';
 k(:,i) = Jn51;
 Gstr{i,1} = 'IBr';
 fIBr(i) = -1; fI(i) = 1; fBr(i) = 1;

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
Rnames{i} = 'I + BrO = IO + Br';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'I'; Gstr{i,2} = 'BrO';
fI(i) = -1; fBrO(i) = -1; fIO(i) = 1; fBr(i) = 1;

i = i + 1; %M14
Rnames{i} = 'IO + Br = I + BrO';
k(:,i) = 2.70e-11;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'Br';
fIO(i) = -1; fBr(i) = -1; fI(i) = 1; fBrO(i) = 1;

i = i + 1; %M15
Rnames{i} = 'IO + BrO = Br + I + O2';
k(:,i) = 3.00e-12 .* exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BrO'; 
fIO(i) = -1; fBrO(i) = -1; fBr(i) = 1; fI(i) = 1;

i = i + 1; %M16
Rnames{i} = 'IO + BrO = Br + OIO';
k(:,i) = 1.20e-11 .* exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BrO';
fBrO(i) = -1; fIO(i) = -1; fBr(i) = 1; fOIO(i) = 1;


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
%I-Cl Reactions
i = i + 1; %M27
Rnames{i} = 'IO + ClO = I + OClO';
k(:,i) = 2.59e-12 .* exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO';
fIO(i) = -1; fClO(i) = -1; fI(i) = 1; fOClO(i) = 1;

i = i + 1; %M28
Rnames{i} = 'IO + ClO = I + Cl + O2';
k(:,i) = 1.18e-12.*exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO';
fIO(i) = -1; fClO(i) = -1; fI(i) = 1; fCl(i) = 1;

i = i + 1; %M29
Rnames{i} = 'IO + ClO = ICl + O2'; %Fate of ICl? 
k(:,i) = 9.40e-13 .* exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO';
fIO(i) = -1; fClO(i) = -1; fICl(i) = 1; 


%=================
% Chlorine Chemistry
i = i + 1; %M30
Rnames{i} = 'Cl + HCOOH = HCl + CO2 + H2O';
k(:,i) = 2.00e-13;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HCOOH';
fCl(i) = -1; fHCOOH(i) = -1; fHCl(i) = 1; 

i = i + 1; %M31
Rnames{i} = 'Cl + CH3O2 = ClO + HCHO + HO2';
k(:,i) = 1.6e-10;
Gstr{i,1} = 'Cl'; Gst{i,2} = 'CH3O2';
fCl(i) = -1; fCH3O2(i) = -1; fClO(i) = 1; fHCHO(i) = 1; fHO2(i) = 1;

i = i + 1; %M32
Rnames{i} = 'Cl + CH3OOH = HCl + CH3O2';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'CH3OOH';
fCl(i) = -1; fCH3OOH(i) = -1; fHCl(i) = 1; fCH3O2(i) = 1;

i = i + 1; %M33
Rnames{i} = 'Cl + C2H6 = HCl + C2H5O2';
k(:,i) = 7.20e-11 .* exp(-70./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C2H6';
fCl(i) = -1; fC2H6(i) = -1; fHCl(i) = 1; fC2H5O2(i) = 1;

i = i + 1; %M34
Rnames{i} = 'Cl + C2H5O2 = ClO + HO2 + CH3CHO'; %CH3CHO Taken as aldehyde product
k(:,i) = 7.40e-11;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C2H5O2';
fCl(i) = -1; fC2H5O2(i) = -1; fClO(i) = 1; fHO2(i) = 1; fCH3CHO(i) = 1;

i = i + 1; %M35
Rnames{i} = 'Cl + C2H5OH = HCl + CH3CHO'; 
k(:,i) = 9.60e-11;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C2H5OH';
fCl(i) = -1; fC2H5OH(i) = -1; fHCl(i) = 1; fCH3CHO(i) = 1;

i = i + 1; %M36
Rnames{i} = 'Cl + CH3CO2H = HCl + CH3O2 + CO2';
k(:,i) = 2.80e-14;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'CH3CO2H';
fCl(i) = -1; fCH3CO2H(i) = -1; fHCl(i) = 1; fCH3O2(i) = 1;

%M37 & M38 are already in MCM, so not included here

i = i + 1; %M39
Rnames{i} = 'Cl + CH3COCH3 = HCl + CH3COCH2O2'; %Reaction proceeds by abstraction
k(:,i) = 7.70e-11 .* exp(-1000./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'CH3COCH3';
fCl(i) = -1; fCH3COCH3(i) = -1; fHCl(i) = 1; fCH3COCH2O2(i) = 1;

i = i + 1; %M40
Rnames{i} = 'Cl + C5H8 = HCl + ISOPBO2'; %Only one representative RO2 isomer used
k(:,i) = 7.70e-11 .* exp(500./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C5H8';
fCl(i) = -1; fC5H8(i) = -1; fHCl(i) = 1; fISOPBO2(i) = 1;

i = i + 1; %M41
Rnames{i} = 'Cl + CH3OH = HCl + HCHO + HO2';
k(:,i) = 5.50e-11;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'CH3OH';
fCl(i) = -1; fCH3OH(i) = -1; fHCl(i) = 1; fHCHO(i) = 1; fHO2(i) = 1;


%M42-M44 are Organo-bromo compounds

%======================
%Bromine Chemistry

i = i + 1; %M45
Rnames{i} = 'Br + O3 = BrO + O2';
k(:,i) = 1.6e-11.*exp(-780./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'O3';
fBr(i) = -1; fO3(i) = -1; fBrO(i) = 1; 

%======================
%Br + Organic Compounds:
i = i + 1; %M46
Rnames{i} = 'Br + HCHO = HO2 + CO + HBr';
k(:,i) = 1.70e-11 .* exp(-800./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'HCHO';
fBr(i) = -1; fHCHO(i) = -1; fHO2(i) = 1; fCO(i) = 1; fHBr(i) = 1;

i = i + 1; %M47;
Rnames{i} = 'Br + HO2 = HBr + O2';
k(:,i) = 4.80e-12 .* exp(-310./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'HO2';
fBr(i) = -1; fHO2(i) = -1; fHBr(i) = 1;

i = i + 1; %M48
Rnames{i} = 'Br + CH3CHO = CH3CO3 + HBr';
k(:,i) = 1.30e-11 .*exp(-360./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'CH3CHO';
fBr(i) = -1; fCH3CHO(i) = -1; fCH3CO3(i) = 1; fHBr(i) = 1;

i = i + 1; %M49;
Rnames{i} = 'Br + CH3COCH3 = CH3COCH2O2 + HBr';
k(:,i) = 1.66e-10 .* exp(-7000./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'CH3COCH3';
fBr(i) = -1; fCH3COCH3(i) = -1; fCH3COCH2O2(i) = 1; fHBr(i) = 1;

i = i + 1; %M50;
Rnames{i} = 'Br + C2H6 = C2H5O2 + HBr';
k(:,i) = 2.36e-10 .* exp(-6411./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C2H6';
fBr(i) = -1; fC2H6(i) = -1; fC2H5O2(i) = 1; fHBr(i) = 1;

i = i + 1; %M51
Rnames{i} = 'Br + C3H8 = IC3H7O2 + HBr';
k(:,i) = 8.77e-11.*exp(-4330./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C3H8';
fBr(i) = -1; fC3H8(i) = -1; fIC3H7O2(i) = 1; fHBr(i) = 1;



i = i + 1; %M52
Rnames{i} = 'BrNO3 + Br = Br2 + NO3';
k(:,i) = 4.9e-11;
Gstr{i,1} = 'BrNO3'; Gstr{i,2} = 'Br';
fBrNO3(i) = -1; fBr(i) = -1; fBr2(i) = 1; fNO3(i) = 1;

i = i + 1; %M53
Rnames{i} = 'Br + NO3 = BrO + NO2';
k(:,i) = 1.60e-11;
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO3';
fBr(i) = -1; fNO3(i) = -1; fBrO(i) = 1; fNO2(i) = 1;

i = i + 1; %M54
Rnames{i} = 'HBr + OH = H2O + Br';
k(:,i) = 5.5e-12.*exp(200./T);
Gstr{i,1} = 'HBr'; Gstr{i,2} = 'OH';
fHBr(i) = -1; fOH(i) = -1; fBr(i) = 1;


i = i + 1; %M55
Rnames{i} = 'BrO + NO = NO2 + Br';
k(:,i) = 8.8e-12.*exp(260./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO';
fBrO(i) = -1; fNO(i) = -1; fNO2(i) = 1; fBr(i) = 1;


i = i + 1; %M56
Rnames{i} = 'BrO + OH = HO2 + Br';
k(:,i) = 1.7e-11.*exp(250./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'OH';
fBrO(i) = -1; fOH(i) = -1; fHO2(i) = 1; fBr(i) = 1;


i = i + 1; %M57
Rnames{i} = 'BrO + BrO = Br + Br + O2';
k(:,i) = 2.4e-12.*exp(40./T); 
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO';
fBrO(i) = -2; fBr(i) = 2;


i = i + 1; %M58
Rnames{i} = 'BrO + BrO = Br2 + O2';
k(:,i) = 2.8e-14.*exp(860./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO';
fBrO(i) = -2; fBr2(i) = 1;


i = i + 1; %M59
Rnames{i} = 'BrO + HO2 = HOBr + O2';
k(:,i) = 4.5e-12.*exp(460./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'HO2';
fBrO(i) = -1; fHO2(i) = -1; fHOBr(i) = 1; 

i = i + 1; %M60
Rnames{i} = 'Br2 + OH = HOBr + Br';
k(:,i) = 2.1e-11 .*exp(240./T);
Gstr{i,1} = 'Br2'; Gstr{i,2} = 'OH';
fBr2(i) = -1; fOH(i) = -1; fHOBr(i) = 1; fBr(i) = 1;

%=====================
%More Chlorine Chemistry
%M61 in MCM laready

i = i + 1; %M62
Rnames{i} = 'Cl + C3H6 = HCl + HYPROPO2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C3H6';
fCl(i) = -1; fC3H6(i) = - 1; fHCl(i) = 1; fHYPROPO2(i) = 1;

%M63 is organo-chlorides

i = i + 1; %M64;
Rnames{i} = 'Cl + H2O2 = HO2 + HCl';
k(:,i) = 1.10e-11 .* exp(-980./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'H2O2';
fCl(i) = -1; fH2O2(i) = -1; fHO2(i) = 1; fHCl(i) = 1;

i = i + 1; %M65;
Rnames{i} = 'Cl + HO2 = O2 + HCl';
k(:,i) = 1.40e-11 .* exp(270./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HO2';
fCl(i) = -1; fHO2(i) = -1; fHCl(i) = 1;

i = i + 1; %M66
Rnames{i} = 'Cl + HO2 = OH + ClO';
k(:,i) = 3.60e-11 .* exp(-375./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HO2';
fCl(i) = -1; fHO2(i) = -1; fOH(i) = 1; fClO(i) = 1;

i = i + 1; %M67
Rnames{i} = 'Cl + O3 = ClO + O2';
k(:,i) = 2.30e-11 .* exp(-200./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'O3';
fCl(i) = -1; fO3(i) = -1; fClO(i) = 1; 

i = i + 1; %M68
Rnames{i} = 'Cl + ClNO3 = Cl2 + NO3';
k(:,i) = 6.50e-12 .* exp(135./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ClNO3';
fCl(i) = -1; fClNO3(i) = -1; fCl2(i) = 1; fNO3(i) = 1;

i = i + 1; %M69
Rnames{i} = 'ClO + ClO = Cl2 + O2';
k(:,i) = 1.00e-12 .* exp(-1590./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO';
fClO(i) = -2; fCl2(i) = 1; 

i = i + 1; %M70
Rnames{i} = 'ClO + ClO = OClO + Cl';
k(:,i) = 3.50e-13 .* exp(-1370./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO';
fClO(i) = -2; fOClO(i) = 1; fCl(i) = 1;

i = i + 1; %M71
Rnames{i} = 'ClO + ClO = Cl + ClOO';
k(:,i) = 3.00e-11 .* exp(-2450./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO';
fClO(i) = -2; fCl(i) = 1; fClOO(i) = 1;

i = i + 1; %M72
Rnames{i} = 'ClO + HO2 = O2 + HOCl';
k(:,i) = 2.60e-12 .* exp(290./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'HO2';
fClO(i) = -1; fHO2(i) = -1; fHOCl(i) = 1;

i = i + 1; %M73;
Rnames{i} = 'ClO + NO = Cl + NO2';
k(:,i) = 6.40e-12 .* exp(290./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'NO';
fClO(i) = -1; fNO(i) = -1; fCl(i) = 1; fNO2(i) = 1;

i = i + 1; %M74;
Rnames{i} = 'ClOO + Cl = ClO + ClO';
k(:,i) = 1.20e-11;
Gstr{i,1} = 'ClOO'; Gstr{i,2} = 'Cl';
fClOO(i) = -1; fCl(i) = -1; fClO(i) = 2;

i = i + 1; %M75;
Rnames{i} = 'ClOO + Cl = Cl2 + O2';
k(:,i) = 2.30e-10;
Gstr{i,1} = 'ClOO'; Gstr{i,2} = 'Cl';
fClOO(i) = -1; fCl(i) = -1; fCl2(i) = 1; 

i = i + 1; %M76;
Rnames{i} = 'CH3O2 + ClO = ClOO + HO2 + HCHO';
k(:,i) = 3.30e-12 .* exp(-115./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'ClO';
fCH3O2(i) = -1; fClO(i) = -1; fClOO(i) = 1; fHO2(i) = 1; fHCHO(i) = 1;

%M77 is CH3Cl

i = i + 1; %M78;
Rnames{i} = 'OH + Cl2 = HOCl + Cl';
k(:,i) = 2.60e-12 .* exp(-1100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'Cl2';
fOH(i) = -1; fCl2(i) = -1; fHOCl(i) = 1; fCl(i) = 1;

i = i + 1; %M79; 
Rnames{i} = 'OH + Cl2O2 = HOCl + ClOO';
k(:,i) = 6.00e-13 .* exp(670./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'Cl2O2';
fOH(i) = -1; fCl2O2(i) = -1; fHOCl(i) = 1; fClOO(i) = 1;

i = i + 1; %M80
Rnames{i} = 'OH + ClNO2 = HOCl + NO2';
k(:,i) = 2.40e-12 .* exp(-1250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClNO2';
fOH(i) = -1; fClNO2(i) = -1; fHOCl(i) = 1; fNO2(i) = 1;

i = i + 1; %M81
Rnames{i} = 'OH + ClNO3 = HOCl + NO3';
k(:,i) = 1.20e-12 .* exp(-330./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClNO3';
fOH(i) = -1; fClNO3(i) = -1; fHOCl(i) = 1; fNO3(i) = 1;

i = i + 1; %m82
Rnames{i} = 'OH + ClO = HCl + O2';
k(:,i) = 6.00e-13 .* exp(230./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClO';
fOH(i) = -1; fClO(i) = -1; fHCl(i) = 1; 

i = i + 1; %M83
Rnames{i} = 'OH + ClO = HO2 + Cl';
k(:,i) = 7.40e-12 .* exp(270./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClO';
fOH(i) = -1; fClO(i) = -1; fHO2(i) = 1; fCl(i) = 1;

i = i + 1; %M84
Rnames{i} = 'OH + HCl = H2O + Cl';
k(:,i)  = 1.80e-12 .* exp(-250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCl';
fOH(i) = -1; fHCl(i) = -1; fCl(i) = 1;

i = i + 1; %M85;
Rnames{i} = 'OH + HOCl = H2O + ClO';
k(:,i) = 3.00e-12 .* exp (-500./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOCl';
fOH(i) = -1; fHOCl(i) = -1; fClO(i) = 1;

i = i + 1; %M86
Rnames{i} = 'OH + OClO = HOCl + O2';
k(:,i) = 1.50e-12 .* exp(600./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OClO';
fOH(i) = -1; fOClO(i) = -1; fHOCl(i) = 1; 

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
Rnames{i} = 'Br + NO2 = BrNO2';
k(:,i) = ThreeBodyK_LH(4.2e-31.*(T./300).^-2.4, 2.7e-11,M,0.6);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO2';
fBr(i) = -1; fNO2(i) = -1; fBrNO2(i) = 1;

i = i + 1; %T5
Rnames{i} = 'BrO + NO2 = BrNO3';
k(:,i) = ThreeBodyK_LH(5.2e-31.*(T./300).^-3.2,6.9e-12,M,0.6); %Taken from Saunders et al, 2011
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO2';
fBrO(i) = -1; fNO2(i) = -1; fBrNO3(i) = 1;

i = i + 1; %T6
Rnames{i} = 'Cl + C3H6 = HCl + HYPROPO2';
k(:,i) = ThreeBodyK_LH(4.00e-28,2.80e-10,M,0.6); 
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C3H6';
fCl(i) = -1; fC3H6(i) = -1; fHCl(i) = 1; fHYPROPO2(i) = 1;

%Rate constant taken from Sander et al., 2011
i = i + 1; %T7
Rnames{i} = 'Cl + O2 = ClOO'; 
k(:,i) = ThreeBodyK_LH(2.20e-33.*(T./300).^-3.1,1.8e-10,M,0.6) .* (M.*0.21);%M*0.21 = [O2]
Gstr{i,1} = 'Cl'; 
fCl(i) = -1; fClOO(i) = 1;

%Rate constant for the dissociation calculated as kF/Keq, with the
%equilibrium constant (Keq) from Sander et al., 2011
i = i + 1; %T8
Rnames{i} = 'Cl2O2 = ClO + ClO';
k(:,i) = ThreeBodyK_LH(1.60e-21.* (T./300).^-2,3.00e-12 .* (T./300).^-4.5,M,0.6)./( 2.16e-27 .* exp(8537./T) );
Gstr{i,1} = 'Cl2O2';
fCl2O2(i) = -1; fClO(i) = 2;

i = i + 1; %T9
Rnames{i} = 'ClO + ClO = Cl2O2';
k(:,i) = ThreeBodyK_LH(1.60e-21.* (T./300).^-2,3.00e-12 .* (T./300).^-4.5,M,0.6);
Gstr{i,1} = 'ClO'; Gst{i,2} = 'ClO';
fClO(i) = -2; fCl2O2(i) = 1;

i = i + 1; %T10
Rnames{i} = 'ClO + NO2 = ClNO3';
k(:,i) = ThreeBodyK_LH(1.80e-31.*(T./300).^-1.9,1.50e-11.*(T./300).^-3.4,M,0.6);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'NO2';
fClO(i) = -1; fNO2(i) = -1; fClNO3(i) = 1;

%Rate constant for the dissociation calculated as kF/Keq, with the
%equilibrium constant (Keq) from Sander et al., 2011
i = i + 1; %T11;
Rnames{i} = 'ClOO = Cl + O2';
k(:,i) = ThreeBodyK_LH(2.20e-33.*(T./300).^-3.1,1.8e-10,M,0.6) ./ ( 6.6e-25.*exp(2502./T) ); 
Gstr{i,1} = 'ClOO';
fClOO(i) = -1; fCl(i) = 1; 

%Added from Hossaini et al 2016
i = i + 1; 
Rnames{i} = 'Cl + NO2 = ClNO2';
k(:,i) = ThreeBodyK_LH(1.8e-31 .* (T./300).^-2.0,1.0e-10 .* (T./300).^-1.0,M,0.6);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'NO2';
fCl(i) = -1; fNO2(i) = -1; fClNO2(i) = 1;

% END OF REACTION LIST

