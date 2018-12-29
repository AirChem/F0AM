% CL_VOC_Riedel2014.m
% Oxidation of VOC by Cl radicals, as described in
% Riedel et al., ACP (2014), 14, 3789-3800, doi:10.5194/acp-14-3789-2014
% Designed to work with MCMv3.2, and possibly later versions.
% 
% 20160207 GMW  commented out heterogeneous reactions, fixed J-value names where possible.

SpeciesToAdd = {'CLNO2';'CL','CLO','HOCL','CLONO2'};
RO2ToAdd = {};
AddSpecies

i=i+1;
Rnames{i} = 'CL + CH3OH = HCHO + HO2 + HCL';
k(:,i) = 1.4e-10.*exp(-280./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3OH';
fCL(i)=fCL(i)-1; fCH3OH(i)=fCH3OH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHCL(i)=fHCL(i)+1; 

i=i+1;
Rnames{i} = 'CL + C2H5OH = CH3CHO + HO2 + HCL';
k(:,i) = 0.92.*6.0e-11.*exp(155./T); %check this branching w/ T (might vary)
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H5OH';
fCL(i)=fCL(i)-1; fC2H5OH(i)=fC2H5OH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHCL(i)=fHCL(i)+1;   

i=i+1;
Rnames{i} = 'CL + C2H5OH = HOCH2CH2O2 + HCL';
k(:,i) = 0.08.*6.0e-11.*exp(155./T); %check this branching w/ T
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H5OH';
fCL(i)=fCL(i)-1; fC2H5OH(i)=fC2H5OH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHCL(i)=fHCL(i)+1;  

i=i+1;
Rnames{i} = 'CL + IPROPOL = CH3COCH3 + HO2 + HCL';
k(:,i) = 7.4e-11; 
Gstr{i,1} = 'CL'; Gstr{i,2} = 'IPROPOL';
fCL(i)=fCL(i)-1; fIPROPOL(i)=fIPROPOL(i)-1; fCH3COCH3(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fHCL(i)=fHCL(i)+1;   

i=i+1;
Rnames{i} = 'CL + IPROPOL = IPROPOLO2 + HCL';
k(:,i) = 1.3e-11; 
Gstr{i,1} = 'CL'; Gstr{i,2} = 'IPROPOL';
fCL(i)=fCL(i)-1; fIPROPOL(i)=fIPROPOL(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; fHCL(i)=fHCL(i)+1;

%ethene + Cl mechanism
i=i+1;
Rnames{i} = 'CL + C2H4 = CH2CLCH2O2';
k(:,i) = 1.1e-10; %at 298K
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H4';
fCL(i)=fCL(i)-1; fC2H4(i)=fC2H4(i)-1; fCH2CLCH2O2(i)=fCH2CLCH2O2(i)+1;  

%propene + Cl mechanism
i=i+1;
Rnames{i} = 'CL + C3H6 = CH2CLCHOOCH3';
k(:,i) = 0.4.*2.7e-10; %at 298K IUPAC (chances are it's IUPAC if unlabeled)
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H6';
fCL(i)=fCL(i)-1; fC3H6(i)=fC3H6(i)-1; fCH2CLCHOOCH3(i)=fCH2CLCHOOCH3(i)+1;  

i=i+1;
Rnames{i} = 'CH2CLCHOOCH3 + NO = CH2CLCOCH3';
k(:,i) = 2.9e-12.*exp(350./T); %k for NC3H7O2 + NO
Gstr{i,1} = 'CH2CLCHOOCH3'; Gstr{i,2} = 'NO';
fCH2CLCHOOCH3(i)=fCH2CLCHOOCH3(i)-1; fNO(i)=fNO(i)-1; fCH2CLCOCH3(i)=fCH2CLCOCH3(i)+1;  

i=i+1;
Rnames{i} = 'CL + C3H6 = CH3CHCLCH2OO';
k(:,i) = 0.5.*2.7e-10; %at 298K IUPAC 
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H6';
fCL(i)=fCL(i)-1; fC3H6(i)=fC3H6(i)-1; fCH3CHCLCH2OO(i)=fCH3CHCLCH2OO(i)+1;  

i=i+1;
Rnames{i} = 'CH3CHCLCH2OO + NO = CHOCHCLCH3';
k(:,i) = 2.9e-12.*exp(350./T); %k for NC3H7O2 + NO
Gstr{i,1} = 'CH3CHCLCH2OO'; Gstr{i,2} = 'NO';
fCH3CHCLCH2OO(i)=fCH3CHCLCH2OO(i)-1; fNO(i)=fNO(i)-1; fCHOCHCLCH3(i)=fCHOCHCLCH3(i)+1;  

i=i+1;
Rnames{i} = 'CHOCHCLCH3 + NO3 = C2H5CLCO3';
k(:,i) = 3.24e-12.*exp(-1860./T); %k for propanal + NO3
Gstr{i,1} = 'CHOCHCLCH3'; Gstr{i,2} = 'NO3';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CLCO3(i)=fC2H5CLCO3(i)+1;  

i=i+1;
Rnames{i} = 'CHOCHCLCH3 + OH = C2H5CLCO3';
k(:,i) = 4.9e-12.*exp(405./T); %k for propanal + OH
Gstr{i,1} = 'CHOCHCLCH3'; Gstr{i,2} = 'OH';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fOH(i)=fOH(i)-1; fC2H5CLCO3(i)=fC2H5CLCO3(i)+1;  

i=i+1;
Rnames{i} = 'C2H5CLCO3 + HO2 = CH3CHCLO2';
k(:,i) = KAPHO2.*0.44; %k for C2H5CO3 + HO2
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'HO2';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5CLCO3(i)=fC2H5CLCO3(i)+1;  

i=i+1;
Rnames{i} = 'C2H5CLCO3 + HO2 = CH3CHCLCO3H';
k(:,i) = KAPHO2.*0.41; %k for C2H5CO3 + HO2
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'HO2';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHCLCO3H(i)=fCH3CHCLCO3H(i)+1;  

i=i+1;
Rnames{i} = 'CH3CHCLCO3H + OH = C2H5CLCO3';
k(:,i) = 4.42e-12; %k for PERPROACID + OH
Gstr{i,1} = 'CH3CHCLCO3H'; Gstr{i,2} = 'OH';
fCH3CHCLCO3H(i)=fCH3CHCLCO3H(i)-1; fOH(i)=fOH(i)-1; fC2H5CLCO3(i)=fC2H5CLCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHCLCO3H = CH3CHCLO2 + OH';
k(:,i) = J41; %j for PERPROACID
Gstr{i,1} = 'CH3CHCLCO3H';
fCH3CHCLCO3H(i)=fCH3CHCLCO3H(i)-1; fOH(i)=fOH(i)+1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CLCO3 + HO2 = CH3CHCLCOOH + O3';
k(:,i) = KAPHO2.*0.15; %k for C2H5CO3 + HO2
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'HO2';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHCLCOOH(i)=fCH3CHCLCOOH(i)+1;  fO3(i)=fO3(i)+1;

i=i+1;
Rnames{i} = 'CH3CHCLCOOH + OH = CH3CHCLO2';
k(:,i) = 1.2e-12; %k for PROPACID + OH
Gstr{i,1} = 'CH3CHCLCOOH'; Gstr{i,2} = 'OH';
fCH3CHCLCOOH(i)=fCH3CHCLCOOH(i)-1; fOH(i)=fOH(i)-1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1;  

i=i+1;
Rnames{i} = 'C2H5CLCO3 + NO = CH3CHCLO2 + NO2';
k(:,i) = 6.7e-12.*exp(340./T); %k for C2H5CO3 + NO
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'NO';
fC2H5CLCO3(i)=fC2H5CLCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1;  fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i} = 'C2H5CLCO3 + NO2 = 2CLPPN';
k(:,i) = KFPAN; %k for C2H5CO3 + NO2
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'NO2';
fC2H5CLCO3(i)=fC2H5CLCO3(i)-1; fNO2(i)=fNO2(i)-1; f2CLPPN(i)=f2CLPPN(i)+1; 

i=i+1;
Rnames{i} = '2CLPPN + OH = CLETAL + CO + NO2';
k(:,i) = 1.27e-12; %k for PPN + OH
Gstr{i,1} = '2CLPPN'; Gstr{i,2} = 'OH';
f2CLPPN(i)=f2CLPPN(i)-1; fOH(i)=fOH(i)-1; fCLETAL(i)=fCLETAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = '2CLPPN = C2H5CLO3 + NO2';
k(:,i) = 1.7e-3.*exp(-11280./T); %k for PPN decomp
Gstr{i,1} = '2CLPPN';
f2CLPPN(i)=f2CLPPN(i)-1; fC2H5CLO3(i)=fC2H5CLO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CLCO3 + NO3 = CH3CHCLO2';
k(:,i) = KRO2NO3.*1.74; %k for C2H5CO3 + NO3
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'NO3';
fC2H5CLCO3(i)=fC2H5CLCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CLCO3 = CH3CHCLO2';
k(:,i) = 1.00e-11.*0.7; %k for C2H5CO3 (+RO2) = C2H5O2
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'RO2';
fC2H5CLCO3(i)=fC2H5CLCO3(i)-1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CLCO3 = CH3CHCLCOOH';
k(:,i) = 1.00e-11.*0.3; %k for C2H5CO3 (+RO2) = PROPACID
Gstr{i,1} = 'C2H5CLCO3'; Gstr{i,2} = 'RO2';
fC2H5CLCO3(i)=fC2H5CLCO3(i)-1; fCH3CHCLCOOH(i)=fCH3CHCLCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOCHCLCH3 = CH3CHCLO2 + HO2 + CO';
k(:,i) = J14; %j for propanal + hv
Gstr{i,1} = 'CHOCHCLCH3';
fCHOCHCLCH3(i)=fCHOCHCLCH3(i)-1; fCH3CHCLO2(i)=fCH3CHCLO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

i=i+1;
Rnames{i} = 'CL + C3H6 = CH2C2H3O2 + HCL';
k(:,i) = 0.1.*2.7e-10; %at 298K
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C3H6';
fCL(i)=fCL(i)-1; fC3H6(i)=fC3H6(i)-1; fCH2C2H3O2(i)=fCH2C2H3O2(i)+1; fHCL(i)=fHCL(i)+1;

i=i+1;
Rnames{i} = 'CH2C2H3O2 + NO = ACR';
k(:,i) = KRO2NO; %k for ISOPDO2 + NO
Gstr{i,1} = 'CH2C2H3O2'; Gstr{i,2} = 'NO';
fCH2C2H3O2(i)=fCH2C2H3O2(i)-1; fNO(i)=fNO(i)-1; fACR(i)=fACR(i)+1; 

i=i+1;
Rnames{i} = 'CL + HCHO = HO2';
k(:,i) = 8.1e-11.*exp(-34./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HCHO';
fCL(i)=fCL(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH3CHO = CH3CO3';
k(:,i) = 8e-11; %at 298K
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3CHO';
fCL(i)=fCL(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CL + C2H5CHO = C2H5CO3';
k(:,i) = 1.3e-10;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H5CHO';
fCL(i)=fCL(i)-1; fC2H5CHO(i)=fC2H5CHO(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH3COCH3 = CH3COCH2O2';
k(:,i) = 1.5e-11.*exp(-590./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3COCH3';
fCL(i)=fCL(i)-1; fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + BENZENE = products';
k(:,i) = 1.5e-15; %from Shi and Bernhard 1996
Gstr{i,1} = 'CL'; Gstr{i,2} = 'BENZENE';
fCL(i)=fCL(i)-1; fBENZENE(i)=fBENZENE(i)-1; 

i=i+1;
Rnames{i} = 'CL + STYRENE = products';
k(:,i) = 3.6e-10; %from Shi and Bernhard 1996
Gstr{i,1} = 'CL'; Gstr{i,2} = 'STYRENE';
fCL(i)=fCL(i)-1; fSTYRENE(i)=fSTYRENE(i)-1; 

i=i+1;
Rnames{i} = 'CL + OXYL = products';
k(:,i) = 1.5e-10; %from Shi and Bernhard 1996
Gstr{i,1} = 'CL'; Gstr{i,2} = 'OXYL';
fCL(i)=fCL(i)-1; fOXYL(i)=fOXYL(i)-1; 

i=i+1;
Rnames{i} = 'CL + TOLUENE = products';
k(:,i) = 5.9e-11; %from Shi and Bernhard 1996
Gstr{i,1} = 'CL'; Gstr{i,2} = 'TOLUENE';
fCL(i)=fCL(i)-1; fTOLUENE(i)=fTOLUENE(i)-1; 

i=i+1;
Rnames{i}='C5H8 + CL = products';
k(:,i)=4.27e-10;
Gstr{i,1}='C5H8'; Gstr{i,2} = 'CL';
fC5H8(i)=fC5H8(i)-1; fCL(i)=fCL(i)-1;

%Cl cycling rxns
i=i+1;
Rnames{i} = 'OH + HCL = CL';
k(:,i) = 2.6e-12.*exp(-350./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCL';
fOH(i)=fOH(i)-1; fHCL(i)=fHCL(i)-1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CL + O3 = CLO';
k(:,i) = 2.8e-11.*exp(-250./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'O3';
fCL(i)=fCL(i)-1; fO3(i)=fO3(i)-1; fCLO(i)=fCLO(i)+1; 

i=i+1;
Rnames{i} = 'CLO + NO = CL + NO2';
k(:,i) = 6.2e-12.*exp(295./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO';
fCLO(i)=fCLO(i)-1; fNO(i)=fNO(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i} = 'CLO + HO2 = HOCL';
k(:,i) = 2.2e-12.*exp(340./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'HO2';
fCLO(i)=fCLO(i)-1; fHO2(i)=fHO2(i)-1; fHOCL(i)=fHOCL(i)+1;

i=i+1;
Rnames{i} = 'CLO + NO2 = CLONO2';
k(:,i) = 2.3399e-12;
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO2';
fCLO(i)=fCLO(i)-1; fNO2(i)=fNO2(i)-1; fCLONO2(i)=fCLONO2(i)+1;

i=i+1;
Rnames{i}='CLONO2 + hv = CL + NO3';
k(:,i)=Jn34;
Gstr{i,1}='CLONO2';
fCLONO2(i)=fCLONO2(i)-1; fCL(i)=fCL(i)+1; fNO3(i)=fNO3(i)+1;

i=i+1;
Rnames{i}='CLONO2 + hv = CLO + NO2';
k(:,i)=Jn35;
Gstr{i,1}='CLONO2';
fCLONO2(i)=fCLONO2(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i}='HOCL + hv = CL + OH';
k(:,i)=Jn36; %jh2o2.*37
Gstr{i,1}='HOCL';
fHOCL(i)=fHOCL(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i}='CL2 + hv = 2CL';
k(:,i)=Jn32;
Gstr{i,1}='CL2';
fCL2(i)=fCL2(i)-1; fCL(i)=fCL(i)+2;

i=i+1;
Rnames{i}='CLNO2 + hv = CL + NO2';
k(:,i)=Jn23;
Gstr{i,1}='CLNO2';
fCLNO2(i)=-1; fCL(i)=1; fNO2(i)=1;


%% HET CHEM (requires more inputs than currently available)
% i=i+1;
% Rnames{i}='N2O5 = CLNO2 + HNO3';
% k(:,i)=gamma*(omega*SAsub/4);
% Gstr{i,1}='N2O5';
% fN2O5(i)=-1; fCLNO2(i)=phi; fHNO3(i)=1;
%
% i=i+1;
% Rnames{i}='CLONO2 = CL2 + HNO3';
% k(:,i)= k_mass_transfer_A(2e-5,0.1,0.01,mean_speed(97.46,T)).*SAsub;
% Gstr{i,1}='CLONO2';
% fCLONO2(i)=fCLONO2(i)-1; fCL2(i)=fCL2(i)+1; fHNO3(i)=fHNO3(i)+1;
% 
% i=i+1;
% Rnames{i}='HOCL = CL2';
% k(:,i)= k_mass_transfer_A(2e-5,0.1,0.01,mean_speed(52.46,T)).*SAsub;
% Gstr{i,1}='HOCL';
% fHOCL(i)=fHOCL(i)-1; fCL2(i)=fCL2(i)+1; 

% END OF REACTION LIST


