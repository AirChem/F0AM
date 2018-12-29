% CH3ONO_hv.m
% Reaction for photolysis of methyl nitrite, a common OH source in chambers.
%
% 20120728 GMW
% 20151101 GMW Changed products from HCHO + NO + HO2 to CH3O + NO

SpeciesToAdd = {'CH3ONO','CH3O','NO'};
AddSpecies

i=i+1;
Rnames{i} = 'CH3ONO + hv = CH3O + NO';
k(:,i) = Jn18; %designation in J_BottomUp.m
Gstr{i,1} = 'CH3ONO';
fCH3ONO(i)=-1; fCH3O(i)=1; fNO(i)=1;