% FURFURAL_FURAN.m
% Simple oxidation scheme for two compounds found in fire plumes.
% Meant for use with MCM.
% Literature:
% - Comenar et al. 2015: UV adsorption cross sections between 290 and 380 nm of a series of
%   furanaldehydes: Estmation of their photolsis lifetimes; Atmos Env. 103 (2015) 1-6
% - Gandini et al. 1976: The photochemistry of 2-furaldehyde vapour. II. Photodecomposition: 
%   direct photolysis at 253.7 and 313 nm and Hg(3P1)-snsitized decomposition; Can. J. Chem. Vol. 54, 1976
% - Bierbach et al.: Rate coefficients for the gas-phase reactions of hydroxyl radicals with 
%   furan, 2-methylfuran, 2-ethylfuran and 2,5-dimethylfuran at 300 ± 2 K,Atmospheric Environment, 1992.
% - AW: 2-furfural makes 25% Maleic Anhydride (MALANHY)
% - Gomez Alvarez et al. Unsaturated dicarbonyl products from the OH-initiated photo-oxidation of 
%   furan, 2-methylfuran and 3-methylfuran, Atmospehric Environment, 2009. => 99% molar butendial (MALDIAL) yield
% Markus Müller 23.06.2015

SpeciesToAdd = {...
 'FURFURAL';'FURAN'; 'FURO3'; 'HCHO'; 'CH3O2'; 'CO'; 'HO2';'OH';'MALANHY';'MALDIAL'};

AddSpecies

%Photolysis:
i=i+1;
Rnames{i} = 'FURFURAL = 0.35FURAN + 0.35HCHO + 0.65HCHO + 0.65CH3O2 + 0.65CO + CO + HO2';
k(:,i) = J18; %sea level 24° SZA
Gstr{i,1} = 'FURFURAL'; 
fFURFURAL(i)=fFURFURAL(i)-1; fFURAN(i)=fFURAN(i)+0.35; fHCHO(i)=fHCHO(i)+0.35; fHCHO(i)=fHCHO(i)+0.65; fCH3O2(i)=fCH3O2(i)+0.65; fCO(i)=fCO(i)+0.65; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1;
Rnames{i} = 'FURFURAL = FURO3 + HO2';
k(:,i) = J19; %sea level 24° SZA
Gstr{i,1} = 'FURFURAL'; 
fFURFURAL(i)=fFURFURAL(i)-1; fFURO3(i)=fFURO3(i)+1; fHO2(i)=fHO2(i)+1; 

%OH REACTIONS
i=i+1;
Rnames{i} = 'OH + FURFURAL = MALANHY+HO2';
k(:,i) = 35.1e-12.*0.75;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'FURFURAL'; 
fOH(i)=fOH(i)-1; fFURFURAL(i)=fFURFURAL(i)-1; fMALANHY(i)=fMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + FURFURAL = HO2';
k(:,i) = 35.1e-12.*0.25;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'FURFURAL'; 
fOH(i)=fOH(i)-1; fFURFURAL(i)=fFURFURAL(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + FURAN = MALDIAL';
k(:,i) = 41.9e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'FURAN'; 
fOH(i)=fOH(i)-1; fFURAN(i)=fFURAN(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; 


