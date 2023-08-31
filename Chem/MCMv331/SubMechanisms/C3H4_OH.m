% C3H4_OH
% oxidation of Allene, aka propadiene.
% Two possible rate constants:
% Daranlot et al., JPC-A 2012: k(298K) = 5.8e-12
% Atkinson and Arey, Chem Rev (2003): k(298K) = 9.82e-12, k(T) = 7.66e-12*exp(74./T)
% For now, using latter.
% Products are based on a generic mechanism with rate constants borrowed from Propene mechanism.
% 20190626 GMW
% 20210920 GMW included C3H4O2 as RO2 species.

SpeciesToAdd = {'C3H4','C3H4O2','CH2CO','C3H4O2H'};
RO2ToAdd = {'C3H4O2'};
AddSpecies

i=i+1;
Rnames{i} = 'C3H4 + OH = C3H4O2'; %just dump it all into one generic RO2
k(:,i) = 7.66e-12.*exp(74./T);
Gstr{i,1} = 'C3H4'; Gstr{i,2} = 'OH';
fC3H4(i)=-1; fOH(i)=-1; fC3H4O2(i)=1;

i=i+1;
Rnames{i} = 'C3H4O2 + NO = NO2 + HO2 + HCHO + CH2CO'; %CH2CO is a ketene
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3H4O2'; Gstr{i,2} = 'NO';
fC3H4O2(i)=-1; fNO(i)=-1; fNO2(i)=1;  fHO2(i)=1; fHCHO(i)=1; fCH2CO(i)=1;

i=i+1;
Rnames{i} = 'C3H4O2 + NO3 = NO2 + HO2 + HCHO + CH2CO'; %CH2CO is a ketene
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3H4O2'; Gstr{i,2} = 'NO3';
fC3H4O2(i)=-1; fNO3(i)=-1; fNO2(i)=1;  fHO2(i)=1; fHCHO(i)=1; fCH2CO(i)=1;

i=i+1;
Rnames{i} = 'C3H4O2 + RO2 = HO2 + HCHO + CH2CO'; %CH2CO is a ketene
k(:,i) = 8.8e-13*0.2 + 2e-12.*0.8; %average for propene isomers, weighted by Daranlot partitioning
Gstr{i,1} = 'C3H4O2'; Gstr{i,2} = 'RO2';
fC3H4O2(i)=-1; fHO2(i)=1; fHCHO(i)=1; fCH2CO(i)=1;

i=i+1;
Rnames{i} = 'C3H4O2 + HO2 = C3H4O2H';
k(:,i) = KRO2HO2*0.52;
Gstr{i,1} = 'C3H4O2'; Gstr{i,2} = 'HO2';
fC3H4O2(i)=-1; fHO2(i)=-1; fC3H4O2H(i)=1;

i=i+1;
Rnames{i} = 'CH2CO + OH = CO + HCHO + HO2'; %major pathway from Xu
k(:,i) = 2e-11; %see sect. 4.4 in Xu, JCP-A (2019)
Gstr{i,1} = 'CH2CO'; Gstr{i,2} = 'OH';
fCH2CO(i)=-1; fOH(i)=-1; fCO(i)=1; fHCHO(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'C3H4O2H + OH = 2HCHO + 2HO2 + OH + CO'; %so much oxygen. This is a guess.
k(:,i) = 7e-11; %guess based on 1,3 butadiene peroxide
Gstr{i,1} = 'C3H4O2H'; Gstr{i,2} = 'OH';
fC3H4O2H(i)=-1; fOH(i)=-1+1; fHCHO(i)=2; fHO2(i)=2; fCO(i)=1;

% that's all.

