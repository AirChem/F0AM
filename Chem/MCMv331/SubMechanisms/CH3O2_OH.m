% CH3O2_OH.m
% Putative reaction of the two title radicals.
% Meant for use with MCM.
% Note that rate constants and branching ratios are still in dispute.
% Rate constant from Assaf et al., JPC-A (2016)
% HO2 yield from Assaf et al., ES&T (2017)
% CH3OH yield makes up difference, based on discussions in Muller et al., Nat. Comm. (2018) and
% Fittschen et al., ACP (2018)
%
% 20180702 GMW
% 20181129 GMW  Updated yields following Caravan et al., Nat. Comm. (2018)

% SpeciesToAdd = {'CH3O2','OH','HO2','CH3O','CH3OH'}; %nothing new
% AddSpecies

i=i+1;
Rnames{i} = 'CH3O2 + OH = 0.93HO2 + 0.93CH3O + 0.07CH3OH';
k(:,i) = 1.6e-10; %Assaf, JPC-A (2015)
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'OH';
fCH3O2(i) = -1; fOH(i) = -1; fHO2(i) = 0.93; fCH3O(i) = 0.93; fCH3OH(i) = 0.07;




