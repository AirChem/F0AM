% HMHP_OH
% Oxidation of hydroxymethyl hydrogen peroxide (HOCH2OOH) by OH.
% See Allen et al, JPCA (2018).
% 20190626 GMW

SpeciesToAdd = {'HMHP'};
AddSpecies

i=i+1;
Rnames{i} = 'HMHP + OH = 0.55HCHO + 0.55HO2 + 0.45HCOOH + 0.45OH';
k(:,i) = 7.1e-12; %295K
Gstr{i,1} = 'HMHP'; Gstr{i,2} = 'OH';
fHMHP(i) = -1; fOH(i) = -1+0.45; fHO2(i) = 0.55; fHCHO(i) = 0.55; fHCOOH(i) = 0.45;