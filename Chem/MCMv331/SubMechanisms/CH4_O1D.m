% CH4_O1D.m
% Reaction of methane with O(1D). Meant for inclusion in MCM.
% Rate constants taken from IUPAC.
% Note: assume CH2OH --> HCHO + HO2 promptly.
%
% 20131022 GMW

SpeciesToAdd = {'CH4';'O1D';'OH';'CH3O2';'HO2';'HCHO'};
AddSpecies

i=i+1;
Rnames{i} = 'CH4 + O1D = 0.7OH + 0.7CH3O2 + 0.46HO2 + 0.28HCHO';
k(:,i) = 1.5e-10;
Gstr{i,1} = 'CH4'; Gstr{i,2} = 'O1D';
fCH4(i)=-1; fO1D(i)=-1; fOH(i)=0.7; fCH3O2(i)=0.7; fHO2(i)=0.46; fHCHO(i)=0.28;

