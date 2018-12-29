% HO2NO2_hv.m
% Photolysis of pernitric acid.
% NOTE: This will only work with the "hybrid" J value method. This reaction is not contained in the
% base MCM.
%
% 20180212 GMW

SpeciesToAdd = {'HO2NO2','HO2','NO2','OH','NO3'};
AddSpecies

i=i+1;
Rnames{i} = 'HO2NO2 + hv = HO2 + NO2';
k(:,i) = Jn21;
Gstr{i,1} = 'HO2NO2';
fHO2NO2(i)=-1; fHO2(i)=1; fNO2(i)=1;

i=i+1;
Rnames{i} = 'HO2NO2 + hv = OH + NO3';
k(:,i) = Jn22;
Gstr{i,1} = 'HO2NO2';
fHO2NO2(i)=-1; fOH(i)=1; fNO3(i)=1;


