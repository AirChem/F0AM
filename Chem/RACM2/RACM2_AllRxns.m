% RACM2_AllRxns.m
% generated from RACM2_AllRxns.txt
% # of species = 124
% # of reactions = 363
%
% MODIFICATIONS FROM GOLIFF (2013) DOCUMENTATION
% R170: MPAN production k missing from Goliff. Assume same as ACO3+NO2.
% R188: HCHO yield from ISOP+NO increased from 0.2 to 0.72 to match MVK+MACR.
% R267: ACO3+MO2 rate constant too high by x10. Corrected to IUPAC recommendation.
% R268: RCO3+MO2 rate constant too high by x10. Corrected to IUPAC recommendation.
%
% 20150814 SR,MM
% 20160323 GMW  Removed N2 and O2 and WAT from species list
%               Organized to match documentation.
%               Started to combine split reactions...
% 20160519 SR   Finished combining split reactions

SpeciesToAdd = {...
'ACD'; 'ACE'; 'ACO3'; 'ACT'; 'ACTP'; 'ADCN'; 'ADDC'; 'ALD'; 'API'; 'APIP'; ...
'BALD'; 'BALP'; 'BAL1'; 'BAL2'; 'BEN'; 'BENP'; 'CH4'; 'CHO'; 'CO'; 'CO2'; ...
'CSL'; 'DCB1'; 'DCB2'; 'DCB3'; 'DIEN'; 'EOH'; 'EPX'; 'ETE'; 'ETEG'; 'ETEP'; ...
'ETH'; 'ETHP'; 'GLY'; 'H2'; 'H2O2'; 'HC3'; 'HC3P'; 'HC5'; 'HC5P'; ...
'HC8'; 'HC8P'; 'HCHO'; 'HKET';'HNO3'; 'HONO'; 'HOONO'; 'HO2'; 'HO2NO2'; 'ISHP'; ...
'ISO'; 'ISON'; 'ISOP'; 'KET'; 'KETP'; 'LIM'; 'LIMP'; 'MACP'; 'MACR'; 'MAHP'; ...
'MBO'; 'MBOP'; 'MBORO2'; 'MCP'; 'MCT'; 'MCTO'; 'MCTP'; 'MEK'; 'MEKP'; 'MGLY'; ...
'MO2'; 'MOH'; 'MPAN'; 'MVK'; 'MVKP'; 'N2O5'; 'NALD'; 'NO'; 'NO2'; ...
'NO3'; 'O3'; 'O3P'; 'OH'; 'OLI'; 'OLIP'; 'OLND'; 'OLNN'; 'OLT'; ...
'OLTP'; 'ONIT'; 'OP1'; 'OP2'; 'ORA1'; 'ORA2'; 'ORAP'; 'O1D'; 'PAA'; 'PAN'; ...
'PER1'; 'PER2'; 'PHEN'; 'PHO'; 'PPN'; 'RCO3'; 'ROH'; 'SO2'; 'SULF'; 'TLP1'; ...
'TOL'; 'TOLP'; 'TR2'; 'UALD'; 'UALP'; 'XO2'; 'XY2'; 'XYL1'; 'XYLP'; 'XYM'; ...
'XYO'; 'XYP'; 'XYO2'; 'XYOP'; };

AddSpecies

%% PHOTOLYSIS
i=i+1; %R001
Rnames{i} = 'O3=O3P+O2';
k(:,i) = JO3P;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %R002
Rnames{i} = 'O3=O1D+O2';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1;

i=i+1; %R003
Rnames{i} = 'H2O2=OH+OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %R004
Rnames{i} = 'NO2=O3P+NO';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fO3P(i)=fO3P(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %R005
Rnames{i} = 'NO3=O2+NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;fNO(i)=fNO(i)+1; 

i=i+1; %R006
Rnames{i} = 'NO3=O3P+NO2';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R007
Rnames{i} = 'HONO=OH+NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %R008
Rnames{i} = 'HNO3=OH+NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R009
Rnames{i} = 'HO2NO2 = 0.2OH+0.2NO3+0.8HO2+0.8NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fOH(i)=fOH(i)+0.2; fNO3(i)=fNO3(i)+0.2; fHO2(i)=fHO2(i)+0.8; fNO2(i)=fNO2(i)+0.8; 

i=i+1; %R010
Rnames{i} = 'HCHO=H2+CO';
k(:,i) = JHCHO_H2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R011
Rnames{i} = 'HCHO=HO2+HO2+CO';
k(:,i)    = JHCHO_HO2;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1; %R012
Rnames{i} = 'ACD=HO2+MO2+CO';
k(:,i) = JACD;
Gstr{i,1} = 'ACD'; 
fACD(i)=fACD(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R013
Rnames{i} = 'ALD=HO2+ETHP+CO';
k(:,i) = JALD;
Gstr{i,1} = 'ALD'; 
fALD(i)=fALD(i)-1; fHO2(i)=fHO2(i)+1; fETHP(i)=fETHP(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R014
Rnames{i} = 'ACT=ACO3+MO2';
k(:,i) = JACT;
Gstr{i,1} = 'ACT'; 
fACT(i)=fACT(i)-1; fACO3(i)=fACO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %R015
Rnames{i} = 'UALD=1.22HO2+.784ACO3+1.22CO+0.35HCHO+.434ALD+.216KET';
k(:,i) = JUALD;
Gstr{i,1} = 'UALD'; 
fUALD(i)=fUALD(i)-1; fHO2(i)=fHO2(i)+1.22; fACO3(i)=fACO3(i)+0.784; fCO(i)=fCO(i)+1.22; 
fHCHO(i)=fHCHO(i)+0.35; fALD(i)=fALD(i)+0.434; fKET(i)=fKET(i)+0.216;

i=i+1; %R016
Rnames{i} = 'MEK=ACO3+0.5ETHP+0.5MO2';
k(:,i) = JMEK;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fACO3(i)=fACO3(i)+1; fETHP(i)=fETHP(i)+0.5; fMO2(i)=fMO2(i)+0.5; 

i=i+1; %R017
Rnames{i} = 'KET=ETHP+ACO3 ';
k(:,i) = JKET;
Gstr{i,1} = 'KET'; 
fKET(i)=fKET(i)-1; fETHP(i)=fETHP(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1; %R018
Rnames{i} = 'HKET=HO2+ACO3+HCHO ';
k(:,i) = JHKET;
Gstr{i,1} = 'HKET'; 
fHKET(i)=fHKET(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fHCHO(i)=1; 

i=i+1; %R019
Rnames{i} = 'MACR=0.34OH+0.66HO2+0.67ACO3+0.33MACP+0.34XO2+0.67CO+0.67HCHO';
k(:,i) = JMACR;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fMACP(i)=fMACP(i)+0.33; fOH(i)=fOH(i)+0.34; fXO2(i)=fXO2(i)+0.34; 
fHO2(i)=fHO2(i)+0.66; fCO(i)=fCO(i)+0.67; fHCHO(i)=fHCHO(i)+0.67; fACO3(i)=fACO3(i)+0.67; 

i=i+1; %R020
Rnames{i} = 'MVK=0.7UALD+0.7CO+0.3MO2+0.3MACP';
k(:,i) = JMVK;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fUALD(i)=fUALD(i)+0.7; fCO(i)=fCO(i)+0.7; fMO2(i)=fMO2(i)+0.3; fMACP(i)=fMACP(i)+0.3; 

i=i+1; %R021
Rnames{i} = 'GLY=H2+CO+CO';
k(:,i) = JGLY1;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %R022
Rnames{i} = 'GLY=HCHO+CO+CO'; %mmarvin 20151020
k(:,i) = JGLY2;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+2; 

i=i+1; %R023
Rnames{i} = 'GLY=HO2+HO2+CO+CO';
k(:,i) = JGLY3;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+2; 

i=i+1; %R024
Rnames{i} = 'MGLY=HO2+ACO3+CO';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R025
Rnames{i} = 'DCB1=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB1;
Gstr{i,1} = 'DCB1'; 
fDCB1(i)=fDCB1(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %R026
Rnames{i} = 'DCB2=2XO2+1.5HO2+0.5GLY+0.5MGLY+CO+0.5ACO3';
k(:,i) = JDCB2;
Gstr{i,1} = 'DCB2'; 
fDCB2(i)=fDCB2(i)-1; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+1.5; fGLY(i)=fGLY(i)+0.5; 
fMGLY(i)=fMGLY(i)+0.5; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+0.5;

i=i+1; %R027
Rnames{i} = 'BALD=CHO+HO2+CO';
k(:,i) = JBALD;
Gstr{i,1} = 'BALD'; 
fBALD(i)=fBALD(i)-1; fCHO(i)=fCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R028
Rnames{i} = 'OP1=OH+HO2+HCHO';
k(:,i) = JOP1;
Gstr{i,1} = 'OP1'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R029
Rnames{i} = 'OP2=OH+HO2+ALD';
k(:,i) = JOP2;
Gstr{i,1} = 'OP2'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; 

%mmarvin 20151020
i=i+1; %R030
Rnames{i} = 'PAA=OH+MO2';
k(:,i) = JPAA;
Gstr{i,1} = 'PAA'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1;  

i=i+1; %R031
Rnames{i} = 'ONIT=HO2+0.2ALD+NO2+0.8KET';
k(:,i) = JONIT;
Gstr{i,1} = 'ONIT'; 
fONIT(i)=fONIT(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.2; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+0.8; 

%mmarvin 20151020
i=i+1; %R032
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = JPAN1;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1;

%mmarvin 20151020
i=i+1; %R033
Rnames{i} = 'PAN=MO2+NO3+CO2';
k(:,i) = JPAN2;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMO2(i)=fMO2(i)+1; fNO3(i)=fNO3(i)+1; fCO2(i)=fCO2(i)+1;

%% INORGANIC REACTIONS
i=i+1; %R034
Rnames{i} = 'O3+OH=HO2+O2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %R035
Rnames{i} = 'O3+HO2=OH+O2+O2';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %R036
Rnames{i} = 'O3+NO=NO2 +O2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %R037
Rnames{i} = 'NO2+O3=NO3 +O2';
k(:,i) = 1.40e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %R038
Rnames{i} = 'O3P+O2=O3';
k(:,i) = M.*5.60E-34.*((T./300).^-2.6).*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %R039
Rnames{i} = 'O3P+O3=O2+O2';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

i=i+1; %R040
Rnames{i} = 'O1D+O2=O3P+O2';
k(:,i) = 3.20e-11.*0.21.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %R041
Rnames{i} = 'O1D+N2=O3P+N2';
k(:,i) = 1.80e-11.*exp(107./T).*0.78.*M; %mmarvin 20151020
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %R042
Rnames{i} = 'O1D+H2O=OH+OH';
k(:,i) = 2.20E-10.*H2O; %mmarvin 20151020
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %R043
Rnames{i} = 'OH+H2=HO2+H2O';
k(:,i) = 7.70e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R044
Rnames{i} = 'OH+HO2=H2O+O2';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;

i=i+1; %R045
Rnames{i} = 'HO2+HO2=H2O2+O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*M.*exp(980./T); %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %R046
Rnames{i} = 'HO2+HO2+H2O=H2O2+H2O+O2'; %mmarvin 20151020
k(:,i) = (3.08e-34.*exp(2800./T)+2.59e-54.*M.*exp(3180./T)).*H2O; %mmarvin 20151020
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %R047
Rnames{i} = 'H2O2+OH=HO2+H2O';
k(:,i) = 2.90E-12.*exp(-160./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'OH'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %R048
Rnames{i} = 'NO+O3P=NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3P'; 
fNO(i)=fNO(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R049
Rnames{i} = 'NO+OH=HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1; %R050
Rnames{i} = 'HO2+NO=OH+NO2';
k(:,i) = 3.45E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R051
Rnames{i} = 'HO2+NO=HNO3';
k(:,i) = K_HO2_NO_HNO3;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R052
Rnames{i} = 'NO+NO=NO2+NO2';
k(:,i) = 3.30e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

i=i+1; %R053
Rnames{i} = 'HONO+OH=NO2+H2O';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'OH'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R054
Rnames{i} = 'O3P+NO2=NO+O2';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

i=i+1; %R055
Rnames{i} = 'O3P+NO2=NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %R056
Rnames{i} = 'OH+NO2=HNO3';
k(:,i) = K_OH_NO2_HONO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R057
Rnames{i} = 'OH+HNO3=NO3+H2O';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %R058
Rnames{i} = 'OH+NO3=HO2+NO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R059
Rnames{i} = 'HO2+NO3=0.7OH+0.7NO2+0.3HNO3';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
% fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=0.7; fNO2(i)=0.7; fHNO3(i)=0.3; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.7; fNO2(i)=fNO2(i)+0.7; fHNO3(i)=fHNO3(i)+0.3; %SR 20160406

i=i+1; %R060
Rnames{i} = 'NO+NO3=NO2+NO2';
k(:,i) = 1.80E-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
% fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=2; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; %SR 20160406

i=i+1; %R061
Rnames{i} = 'NO2+NO3=NO+NO2+O2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %R062
Rnames{i} = 'NO3+NO3=NO2+NO2+O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
% fNO3(i)=fNO3(i)-2; fNO2(i)=2;
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2; %SR 20160406

i=i+1; %R063
Rnames{i} = 'NO2+NO3=N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1; %R064
Rnames{i} = 'N2O5= NO2+NO3';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1; %R065
Rnames{i} = 'N2O5+H2O=HNO3+HNO3';
k(:,i) = 2.50E-22.*H2O; %mmarvin 20151020
Gstr{i,1} = 'N2O5'; 
% fN2O5(i)=fN2O5(i)-1; fHNO3(i)=2; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; %SR 20160406

i=i+1; %R066
Rnames{i} = 'HO2+NO2=HO2NO2';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1; %R067
Rnames{i} = 'HO2NO2=HO2+NO2';
k(:,i) = K_HO2NO2;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R068
Rnames{i} = 'OH+HO2NO2=NO2+H2O+O2';
k(:,i) = 1.30e-12.*exp(380./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %R069
Rnames{i} = 'OH+SO2=HO2+SULF';
k(:,i) = K_OH_SO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHO2(i)=fHO2(i)+1; fSULF(i)=fSULF(i)+1; 

i=i+1; %R070
Rnames{i} = 'OH+CO=HO2+CO2'; %mmarvin 20151020
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

%% VOC+OH
i=i+1; %R071
Rnames{i} = 'OH+CH4=MO2+H2O';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1;

i=i+1; %R072
Rnames{i} = 'ETH+OH=ETHP+H2O';
k(:,i) = 6.90E-12.*exp(-1000./T);
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'OH'; 
fETH(i)=fETH(i)-1; fOH(i)=fOH(i)-1; fETHP(i)=fETHP(i)+1; 

i=i+1; %R073
Rnames{i} = 'OH+HC3=HC3P';
k(:,i) = 7.68e-12.*exp(-370./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3'; 
fOH(i)=fOH(i)-1; fHC3(i)=fHC3(i)-1; fHC3P(i)=fHC3P(i)+1; 

i=i+1; %R074
Rnames{i} = 'OH+HC5=HC5P+H2O';
k(:,i) = 1.01e-11.*exp(-245./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC5'; 
fOH(i)=fOH(i)-1; fHC5(i)=fHC5(i)-1; fHC5P(i)=fHC5P(i)+1;

i=i+1; %R075
Rnames{i} = 'OH+HC8=0.049HO2+0.951HC8P+H2O+0.025ALD+0.024HKET';
% k(:,i) = 2.82e-11.*exp(-273./T).*0.951;
k(:,i) = 2.82e-11.*exp(-273./T); %SR 20160405
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC8'; 
% fOH(i)=fOH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=0.951; fHKET(i)=0.024; fALD(i)=0.025; fHO2(i)=0.049; 
fOH(i)=fOH(i)-1; fHC8(i)=fHC8(i)-1; fHC8P(i)=fHC8P(i)+0.951; fHKET(i)=fHKET(i)+0.024; fALD(i)=fALD(i)+0.025; fHO2(i)=fHO2(i)+0.049; %SR 20160406

i=i+1; %R076
Rnames{i} = 'ETE+OH=ETEP';
k(:,i) = K_OH_ETE;
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'OH'; 
fETE(i)=fETE(i)-1; fOH(i)=fOH(i)-1; fETEP(i)=fETEP(i)+1; 

i=i+1; %R077
Rnames{i} = 'OLT+OH=OLTP';
k(:,i) = 5.72E-12.*exp(500./T) ;
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'OH'; 
fOLT(i)=fOLT(i)-1; fOH(i)=fOH(i)-1; fOLTP(i)=fOLTP(i)+1; 

i=i+1; %R078
Rnames{i} = 'OLI+OH=OLIP';
k(:,i) = 1.33E-11.*exp(500./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'OH'; 
fOLI(i)=fOLI(i)-1; fOH(i)=fOH(i)-1; fOLIP(i)=fOLIP(i)+1; 

i=i+1; %R079
Rnames{i} = 'DIEN+OH=OLIP';
k(:,i) = 1.48E-11.*exp(448./T);
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'OH'; 
fDIEN(i)=fDIEN(i)-1; fOH(i)=fOH(i)-1; fOLIP(i)=fOLIP(i)+1; 

i=i+1; %R080
Rnames{i} = 'OH+ACE=0.35ORA1+0.35CO+0.35HO2+0.65GLY+0.65OH';
k(:,i) = K_OH_ACE;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACE'; 
fOH(i)=fOH(i)-1; fACE(i)=fACE(i)-1; fORA1(i)=fORA1(i)+0.35; fCO(i)=fCO(i)+0.35;
fHO2(i)=fHO2(i)+0.35; fGLY(i)=fGLY(i)+0.65; fOH(i)=fOH(i)+0.65;

i=i+1; %R081
Rnames{i} = 'BEN+OH=0.648 HO2+0.352 BENP+0.118 EPX+0.53 PHEN';
k(:,i) = 2.33E-12.*exp(-193./T);
Gstr{i,1} = 'BEN'; Gstr{i,2} = 'OH'; 
fBEN(i)=fBEN(i)-1; fOH(i)=fOH(i)-1; fPHEN(i)=fPHEN(i)+0.53; fHO2(i)=fHO2(i)+0.648; 
fEPX(i)=fEPX(i)+0.118; fBENP(i)=fBENP(i)+0.352; 

i=i+1; %R082
Rnames{i} = 'TOL+OH=0.177 HO2+0.763 TR2+0.06 TLP1+0.177 CSL';
k(:,i) = 1.81E-12.*exp(354./T);
Gstr{i,1} = 'TOL'; Gstr{i,2} = 'OH'; 
fTOL(i)=fTOL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fTR2(i)=fTR2(i)+0.763;
fTLP1(i)=fTLP1(i)+0.06; fCSL(i)=fCSL(i)+0.177; 

i=i+1; %R083
Rnames{i} = 'XYM+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 2.31E-11;
Gstr{i,1} = 'XYM'; Gstr{i,2} = 'OH'; 
fXYM(i)=fXYM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1;%R084
Rnames{i} = 'XYP+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL';
k(:,i) = 1.43E-11;
Gstr{i,1} = 'XYP'; Gstr{i,2} = 'OH'; 
fXYP(i)=fXYP(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1; %R085
Rnames{i} = 'XYO+OH=0.177 HO2+0.763 XY2+0.06 XYL1+0.117 CSL'; %mmarvin 20151020
k(:,i) = 1.36E-11;
Gstr{i,1} = 'XYO'; Gstr{i,2} = 'OH'; 
fXYO(i)=fXYO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.177; fXY2(i)=fXY2(i)+0.763;
fXYL1(i)=fXYL1(i)+0.06; fCSL(i)=fCSL(i)+0.117; 

i=i+1; %R086
Rnames{i} = 'ISO+OH=ISOP';
k(:,i) = 2.54E-11.*exp(410./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'OH'; 
fISO(i)=fISO(i)-1; fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)+1; 

i=i+1; %R087
Rnames{i} = 'API+OH=APIP';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'OH'; 
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPIP(i)=fAPIP(i)+1; 

i=i+1; %R088
Rnames{i} = 'LIM+OH=LIMP';
k(:,i) = 4.20e-11.*exp(401./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'OH'; 
fLIM(i)=fLIM(i)-1; fOH(i)=fOH(i)-1; fLIMP(i)=fLIMP(i)+1; 

%% oVOC+OH
i=i+1; %R089
Rnames{i} = 'OH+HCHO=HO2+CO+H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R090
Rnames{i} = 'OH+ACD=ACO3+H2O';
k(:,i) = 4.38E-12.*exp(366./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACD'; 
fOH(i)=fOH(i)-1; fACD(i)=fACD(i)-1; fACO3(i)=fACO3(i)+1;

i=i+1; %R091
Rnames{i} = 'OH+ALD=RCO3+H2O';
k(:,i) = 5.10E-12.*exp(405./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALD'; 
fOH(i)=fOH(i)-1; fALD(i)=fALD(i)-1; fRCO3(i)=fRCO3(i)+1;

i=i+1; %R092
Rnames{i} = 'ACT+OH=ACTP+H2O';
k(:,i) = 1.39E-13+3.72E-11.*exp(-2044./T);
Gstr{i,1} = 'ACT'; Gstr{i,2} = 'OH'; 
fACT(i)=fACT(i)-1; fOH(i)=fOH(i)-1; fACTP(i)=fACTP(i)+1; 

i=i+1; %R093
Rnames{i} = 'OH+MEK=MEKP+H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MEK'; 
fOH(i)=fOH(i)-1; fMEK(i)=fMEK(i)-1; fMEKP(i)=fMEKP(i)+1; 

i=i+1; %R094
Rnames{i} = 'OH+KET=KETP+H2O';
k(:,i) = 2.80E-12.*exp(10./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'KET'; 
fOH(i)=fOH(i)-1; fKET(i)=fKET(i)-1; fKETP(i)=fKETP(i)+1; 

i=i+1; %R095
Rnames{i} = 'HKET+OH=HO2+MGLY+H2O';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'HKET'; Gstr{i,2} = 'OH'; 
fHKET(i)=fHKET(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1; %R096
Rnames{i} = 'MACR+OH=0.57 MACP+0.43 MCP';
k(:,i) = 8.00E-12.*exp(380./T); %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'OH'; 
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)-1; fMACP(i)=fMACP(i)+0.57; fMCP(i)=fMCP(i)+0.43; 

i=i+1; %R097
Rnames{i} = 'MVK+OH=MVKP';
k(:,i) = 2.60E-12.*exp(610./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'OH';
fMVK(i)=fMVK(i)-1; fOH(i)=fOH(i)-1; fMVKP(i)=fMVKP(i)+1; 

i=i+1; %R098
Rnames{i} = 'UALD+OH=0.313 ACO3+0.687 UALP';
k(:,i) = 5.77E-12.*exp(533./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'OH'; 
fUALD(i)=fUALD(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+0.313; fUALP(i)=fUALP(i)+0.687;  

i=i+1; %R099
Rnames{i} = 'GLY+OH=HO2+CO+CO+H2O';
k(:,i) = 1.10E-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'OH'; 
fGLY(i)=fGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R100
Rnames{i} = 'MGLY+OH=ACO3+CO+H2O';
k(:,i) = 9.26E-13.*exp(830./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R101
Rnames{i} = 'DCB1+OH = HO2+CO+ALD+KET+GLY+MGLY';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'OH'; 
fDCB1(i)=fDCB1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fALD(i)=fALD(i)+0.40; fKET(i)=fKET(i)+0.78; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; 

i=i+1; %R102
Rnames{i} = 'DCB2+OH= HO2+CO+MEK+GLY+MGLY+OP2';
k(:,i) = 2.80E-11.*exp(175./T) ;
Gstr{i,1} = 'DCB2'; Gstr{i,2} = 'OH'; 
fDCB2(i)=fDCB2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fCO(i)=fCO(i)+0.33; 
fMEK(i)=fMEK(i)+0.13; fGLY(i)=fGLY(i)+0.10; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.78; 

i=i+1; %R103
Rnames{i} = 'DCB3+OH= HO2+MACP+CO+GLY +MGLY+OP2';
k(:,i) = 1.00E-13 ;
Gstr{i,1} = 'DCB3'; Gstr{i,2} = 'OH'; 
% fDCB3(i)=fDCB3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.52; fMACP(i)=fMACP(i)+0.21; 
fDCB3(i)=fDCB3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.56; fMACP(i)=fMACP(i)+0.21; %SR 20160406
fCO(i)=fCO(i)+0.11; fGLY(i)=fGLY(i)+0.27; fMGLY(i)=fMGLY(i)+0.01; fOP2(i)=fOP2(i)+0.79; 

i=i+1; %R104
Rnames{i} = 'BALD+OH=BALP+H2O';
k(:,i) = 5.32E-12.*exp(243./T);
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'OH'; 
fBALD(i)=fBALD(i)-1; fOH(i)=fOH(i)-1; fBALP(i)=fBALP(i)+1; 

i=i+1; %R105
Rnames{i} = 'PHEN+OH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 6.75E-12.*exp(405./T);
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'OH'; 
fPHEN(i)=fPHEN(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2;
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73; 

i=i+1; %R106
Rnames{i} = 'CSL+OH=0.73 HO2+0.20 ADDC+0.07 CHO+0.73 MCT';
k(:,i) = 4.65E-11;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'OH'; 
fCSL(i)=fCSL(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.73; fADDC(i)=fADDC(i)+0.2; 
fCHO(i)=fCHO(i)+0.07; fMCT(i)=fMCT(i)+0.73;

i=i+1; %R107
Rnames{i} = 'EPX+OH=XO2+HO2+ALD+CO';
k(:,i) = 2.80E-11.*exp(175./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'OH'; 
fEPX(i)=fEPX(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R108
Rnames{i} = 'MCT+OH=MCTO';
k(:,i) = 2.05E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'OH'; 
fMCT(i)=fMCT(i)-1; fOH(i)=fOH(i)-1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %R109
Rnames{i} = 'OH+MOH=HO2+HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MOH'; 
fOH(i)=fOH(i)-1; fMOH(i)=fMOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R110
Rnames{i} = 'OH+EOH=HO2+ACD';
% k(:,i) = 3.00e-12.*exp(20./T);
k(:,i) = 3.00e-12.*exp(-20./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EOH'; 
fOH(i)=fOH(i)-1; fEOH(i)=fEOH(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; 

i=i+1; %R111
Rnames{i} = 'OH+ROH=HO2+0.719 ALD+0.184 ACD';
% k(:,i) = 2.60E-12.*exp(200./T).*0.719;
k(:,i) = 2.60E-12.*exp(-200./T); %SR 20160406
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ROH'; 
fOH(i)=fOH(i)-1; fROH(i)=fROH(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+0.719; 
fACD(i)=fACD(i)+0.184;

i=i+1; %R112
Rnames{i} = 'ETEG+OH=ALD+HO2';
k(:,i) = 1.47E-11;
Gstr{i,1} = 'ETEG'; Gstr{i,2} = 'OH'; 
fETEG(i)=fETEG(i)-1; fOH(i)=fOH(i)-1; fALD(i)=fALD(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R113
Rnames{i} = 'OP1+OH=0.35 OH+0.65 MO2+0.35 HCHO ';
k(:,i) = 2.90E-12.*exp(190./T);
Gstr{i,1} = 'OP1'; Gstr{i,2} = 'OH'; 
fOP1(i)=fOP1(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fMO2(i)=fMO2(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35;

i=i+1; %R114
Rnames{i} = 'OP2+OH=0.49 HO+0.44 HC3P+0.07 XO2+0.08 ALD+0.41 KET';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'OP2'; Gstr{i,2} = 'OH'; 
fOP2(i)=fOP2(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.49; fHC3P(i)=fHC3P(i)+0.44; 
fXO2(i)=fXO2(i)+0.07; fALD(i)=fALD(i)+0.08; fKET(i)=fKET(i)+0.41;

i=i+1; %R115
Rnames{i} = 'ISHP+OH=MACR+OH';
k(:,i) = 1.00E-10;
Gstr{i,1} = 'ISHP'; Gstr{i,2} = 'OH'; 
fISHP(i)=fISHP(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %R116
Rnames{i} = 'MAHP+OH=MACP';
k(:,i) = 3.00E-11;
Gstr{i,1} = 'MAHP'; Gstr{i,2} = 'OH'; 
fMAHP(i)=fMAHP(i)-1; fOH(i)=fOH(i)-1; fMACP(i)=fMACP(i)+1; 

i=i+1; %R117
Rnames{i} = 'ORA1+OH=HO2+CO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'ORA1'; Gstr{i,2} = 'OH'; 
fORA1(i)=fORA1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %R118
Rnames{i} = 'ORA2+OH=0.64 MO2+0.36 ORAP+0.64 CO2';
k(:,i) = 2.20E-14.*exp(1012./T);
Gstr{i,1} = 'ORA2'; Gstr{i,2} = 'OH'; 
fORA2(i)=fORA2(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+0.64; fORAP(i)=fORAP(i)+0.36;
fCO2(i)=fCO2(i)+0.64; 

i=i+1; %R119
Rnames{i} = 'PAA+OH=0.35 HO+0.65 ACO3+0.35 XO2+0.35 HCHO';
k(:,i) = 2.93E-12.*exp(190./T);
Gstr{i,1} = 'PAA'; Gstr{i,2} = 'OH'; 
fPAA(i)=fPAA(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.35; fACO3(i)=fACO3(i)+0.65; 
fHCHO(i)=fHCHO(i)+0.35; fXO2(i)=fXO2(i)+0.35; 

i=i+1; %R120
Rnames{i} = 'PAN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R121
Rnames{i} = 'PPN+OH=XO2+NO3+HCHO+H2O';
k(:,i) = 4.00E-14;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fNO3(i)=fNO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R122
Rnames{i} = 'MPAN+OH=HKET+NO2';
k(:,i) = 3.20E-11;
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'OH'; 
fMPAN(i)=fMPAN(i)-1; fOH(i)=fOH(i)-1; fHKET(i)=fHKET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R123
Rnames{i} = 'ONIT+OH=HC3P+NO2+H2O';
k(:,i) = 5.31E-12.*exp(-260./T);
Gstr{i,1} = 'ONIT'; Gstr{i,2} = 'OH'; 
fONIT(i)=fONIT(i)-1; fOH(i)=fOH(i)-1; fHC3P(i)=fHC3P(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R124
Rnames{i} = 'NALD+OH=NO2+XO2+HKET';
k(:,i) = 5.60E-12.*exp(270./T);
Gstr{i,1} = 'NALD'; Gstr{i,2} = 'OH'; 
fNALD(i)=fNALD(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fXO2(i)=fXO2(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %R125
Rnames{i} = 'ISON+OH=NALD+0.07 HKET+0.07 HCHO';
k(:,i) = 1.30E-11;
Gstr{i,1} = 'ISON'; Gstr{i,2} = 'OH'; 
fISON(i)=fISON(i)-1; fOH(i)=fOH(i)-1; fNALD(i)=fNALD(i)+1; fHKET(i)=fHKET(i)+0.07;
fHCHO(i)=fHCHO(i)+0.07; 

%% VOC+O3
i=i+1; %R126
Rnames{i} = 'ETE+O3= OH+HO2+CO+HCHO+ORA1+H2';
k(:,i) = 9.14E-15.*exp(-2580./T) ;
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'O3'; 
fETE(i)=fETE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.08; fHO2(i)=fHO2(i)+0.15; fCO(i)=fCO(i)+0.43; 
fHCHO(i)=fHCHO(i)+1.00; fORA1(i)=fORA1(i)+0.37; fH2(i)=fH2(i)+0.13; 

i=i+1; %R127
Rnames{i} = 'OLT+O3=OH+HO2+MO2+ETHP+H2O2+CO+CH4+ETH+HCHO+ALD+MEK+ORA1+ORA2+ACD+HKET+HC3+HC3P+ACT+HC5+HC5P+BALD+BEN';
k(:,i) = 4.33E-15.*exp(-1800./T) ;
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'O3'; 
fOLT(i)=fOLT(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.22; fHO2(i)=fHO2(i)+0.32; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.06; fH2O2(i)=fH2O2(i)+0.068; fCO(i)=fCO(i)+0.43; fCH4(i)=fCH4(i)+0.01; 
fETH(i)=fETH(i)+0.02; fHCHO(i)=fHCHO(i)+0.56; fALD(i)=fALD(i)+0.44; fMEK(i)=fMEK(i)+0.06; 
fORA1(i)=fORA1(i)+0.03; fORA2(i)=fORA2(i)+0.06; fACD(i)=fACD(i)+0.01; fHKET(i)=fHKET(i)+0.01; 
fHC3(i)=fHC3(i)+0.015; fHC3P(i)=fHC3P(i)+0.04; fACT(i)=fACT(i)+0.03; fHC5(i)=fHC5(i)+0.006; 
fHC5P(i)=fHC5P(i)+0.02; fBALD(i)=fBALD(i)+0.02; fBEN(i)=fBEN(i)+0.032; 

i=i+1; %R128
Rnames{i} = 'OLI+O3= OH+HO2+MO2+ETHP+HC3P+ACO3+CO+H2O2+CH4+ETH+HC3+HCHO+ACD+ALD+ACT+KET+HKET+ORA2';
k(:,i) = 4.40E-15.*exp(-845./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'O3'; 
fOLI(i)=fOLI(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.46; fHO2(i)=fHO2(i)+0.07; fMO2(i)=fMO2(i)+0.32; 
fETHP(i)=fETHP(i)+0.07; fH2O2(i)=fH2O2(i)+0.026; fCO(i)=fCO(i)+0.37; fCH4(i)=fCH4(i)+0.04; 
fETH(i)=fETH(i)+0.01; fHCHO(i)=fHCHO(i)+0.09; fALD(i)=fALD(i)+0.73; fKET(i)=fKET(i)+0.017; 
fORA2(i)=fORA2(i)+0.017; fHC3P(i)=fHC3P(i)+0.04; fACO3(i)=fACO3(i)+0.09; fHC3(i)=fHC3(i)+0.01; 
fACD(i)=fACD(i)+0.457; fACT(i)=fACT(i)+0.11; fHKET(i)=fHKET(i)+0.44; %mmarvin 20151020

i=i+1; %R129
Rnames{i} = 'DIEN+O3= O3P+OH+HO2+MO2+ACO3+KETP+XO2+H2O2+CO+OLT+HCHO+MACR+ORA1+H2';
k(:,i) = 1.34E-14.*exp(-2283./T);
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'O3'; 
fDIEN(i)=fDIEN(i)-1; fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+0.09; fOH(i)=fOH(i)+0.28; 
fHO2(i)=fHO2(i)+0.30; fMO2(i)=fMO2(i)+0.03; fACO3(i)=fACO3(i)+0.15; fKETP(i)=fKETP(i)+0.02; 
fXO2(i)=fXO2(i)+0.13; fH2O2(i)=fH2O2(i)+0.001; fCO(i)=fCO(i)+0.36; fOLT(i)=fOLT(i)+0.35; 
fHCHO(i)=fHCHO(i)+0.90; fMACR(i)=fMACR(i)+0.39; fORA1(i)=fORA1(i)+0.15; fH2(i)=fH2(i)+0.05; 

i=i+1; %R130
Rnames{i} = 'ISO+O3= OH+HO2+MO2+ACO3+MACP+H2O2+CO+HCHO+MACR+MVK+ORA1+OLT';
k(:,i) = 7.86E-15.*exp(-1913./T) ;
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'O3'; 
fISO(i)=fISO(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.25; fHO2(i)=fHO2(i)+0.25; fMO2(i)=fMO2(i)+0.08; 
fACO3(i)=fACO3(i)+0.10; fMACP(i)=fMACP(i)+0.10; fH2O2(i)=fH2O2(i)+0.09; fCO(i)=fCO(i)+0.14; 
fHCHO(i)=fHCHO(i)+0.58; fMACR(i)=fMACR(i)+0.461; fMVK(i)=fMVK(i)+0.189; fORA1(i)=fORA1(i)+0.28; 
fOLT(i)=fOLT(i)+0.153; 

i=i+1; %R131
Rnames{i} = 'API+O3= OH+HO2+ETHP+KETP+CO+H2O2+ALD+KET';
k(:,i) = 5.00E-16.*exp(-530./T) ;
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3'; 
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.20; fKETP(i)=fKETP(i)+0.42; fCO(i)=fCO(i)+0.14; fH2O2(i)=fH2O2(i)+0.02; 
fALD(i)=fALD(i)+0.65; fKET(i)=fKET(i)+0.53; 

i=i+1; %R132
Rnames{i} = 'LIM+O3= OH+HO2+ETHP+KETP+H2O2+CO+OLT+HCHO+MACR+ORA1+ORA2';
k(:,i) = 2.95E-15.*exp(-783./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'O3'; 
fLIM(i)=fLIM(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+0.10; 
fETHP(i)=fETHP(i)+0.16; fKETP(i)=fKETP(i)+0.42; fH2O2(i)=fH2O2(i)+0.02; fCO(i)=fCO(i)+0.14; 
fOLT(i)=fOLT(i)+0.46; fHCHO(i)=fHCHO(i)+0.04; fMACR(i)=fMACR(i)+0.79; fORA1(i)=fORA1(i)+0.01; 
fORA2(i)=fORA2(i)+0.07; 

i=i+1; %R133
Rnames{i} = 'MACR+O3= OH+HO2+ACO3+CO+MGLY+ORA1';
k(:,i) = 1.36E-15.*exp(-2112./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'O3'; 
fMACR(i)=fMACR(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.19; fHO2(i)=fHO2(i)+0.14; 
fACO3(i)=fACO3(i)+0.10; fCO(i)=fCO(i)+0.22; fMGLY(i)=fMGLY(i)+0.50; fORA1(i)=fORA1(i)+0.45; 

i=i+1; %R134
Rnames{i} = 'MVK+O3=OH+HO2+ACO3+XO2+CO+HCHO+MGLY+ORA1+ORA2+ALD';
k(:,i) = 7.51E-16.*exp(-1520./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'O3'; 
fMVK(i)=fMVK(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.16; fHO2(i)=fHO2(i)+0.11; 
fACO3(i)=fACO3(i)+0.28; fXO2(i)=fXO2(i)+0.01; fCO(i)=fCO(i)+0.56; fHCHO(i)=fHCHO(i)+0.10; 
fMGLY(i)=fMGLY(i)+0.54; fORA1(i)=fORA1(i)+0.07; fORA2(i)=fORA2(i)+0.07; fALD(i)=fALD(i)+0.1; 

i=i+1; %R135
Rnames{i} = 'UALD+O3= OH+HO2+MO2+ACO3+XO2+CO+HCHO+ACD+KET+GLY+MGLY+ORA1';
k(:,i) = 1.66E-18;
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'O3'; 
fUALD(i)=fUALD(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.1; fHO2(i)=fHO2(i)+0.072; 
fMO2(i)=fMO2(i)+0.008; fACO3(i)=fACO3(i)+0.002; fXO2(i)=fXO2(i)+0.10; fCO(i)=fCO(i)+0.243; 
fHCHO(i)=fHCHO(i)+0.080; fACD(i)=fACD(i)+0.420; fKET(i)=fKET(i)+0.028; fGLY(i)=fGLY(i)+0.491; 
fMGLY(i)=fMGLY(i)+0.003; fORA1(i)=fORA1(i)+0.044; 

i=i+1; %R136
Rnames{i} = 'DCB1+O3= OH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB1'; Gstr{i,2} = 'O3'; 
fDCB1(i)=fDCB1(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fOP2(i)=fOP2(i)+0.65; fCO2(i)=fCO2(i)+0.50; 

i=i+1; %R137
Rnames{i} = 'DCB2+O3= OH+HO2+RCO3+XO2+CO+HCHO+GLY+MGLY+DCB1+OP2+CO2';
k(:,i) = 2.00E-16;
Gstr{i,1} = 'DCB2'; Gstr{i,2} = 'O3'; 
fDCB2(i)=fDCB2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.05; fHO2(i)=fHO2(i)+1.0; 
fRCO3(i)=fRCO3(i)+0.60; fXO2(i)=fXO2(i)+0.60; fCO(i)=fCO(i)+1.50; fHCHO(i)=fHCHO(i)+0.05; 
fGLY(i)=fGLY(i)+0.05; fMGLY(i)=fMGLY(i)+0.08; fDCB1(i)=fDCB1(i)+0.70; fOP2(i)=fOP2(i)+0.65; 
fCO2(i)=fCO2(i)+0.50; 

i=i+1; %R138
Rnames{i} = 'DCB3+O3 = OH+HO2+CO+GLY+DCB1+ORA1+ORA2+PAA+CO2';
k(:,i) = 9.00E-17;
Gstr{i,1} = 'DCB3'; Gstr{i,2} = 'O3'; 
fDCB3(i)=fDCB3(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.05; fHO2(i)=fHO2(i)+1.0; fCO(i)=fCO(i)+1.5; 
fGLY(i)=fGLY(i)+0.48; fDCB1(i)=fDCB1(i)+0.70; fORA1(i)=fORA1(i)+0.25; fORA2(i)=fORA2(i)+0.25; 
fPAA(i)=fPAA(i)+0.11; fCO2(i)=fCO2(i)+0.50; 

i=i+1; %R139
Rnames{i} = 'EPX+O3=OH+H2O+CO+CO2+GLY+BALD';
k(:,i) = 1.00E-16;
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'O3'; 
% fEPX(i)=fEPX(i)-1; fO3(i)=fO3(i)-1; fCO2(i)=0.5; fGLY(i)=1; fBALD(i)=0.85; fCO(i)=1.5; 
% fHO2(i)=1.5; fOH(i)=0.05;
fEPX(i)=fEPX(i)-1; fO3(i)=fO3(i)-1; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fBALD(i)=fBALD(i)+0.85; fCO(i)=fCO(i)+1.5; 
fHO2(i)=fHO2(i)+1.5; fOH(i)=fOH(i)+0.05; %SR 20160406

i=i+1; %R140
Rnames{i} = 'MCTO+O3=MCTP';
k(:,i) = 2.86E-13;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'O3'; 
fMCTO(i)=fMCTO(i)-1; fO3(i)=fO3(i)-1; fMCTP(i)=fMCTP(i)+1; 

%% VOC+NO3
i=i+1; %R141
Rnames{i} = 'ETE+NO3=0.80 OLNN+0.20 OLND';
k(:,i) = 4.88E-18.*T.^2.*exp(-2282./T);
Gstr{i,1} = 'ETE'; Gstr{i,2} = 'NO3'; 
fETE(i)=fETE(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.8; fOLND(i)=fOLND(i)+0.2; 

i=i+1; %R142
Rnames{i} = 'OLT+NO3=0.43 OLNN+0.57 OLND';
k(:,i) = 1.79E-13.*exp(-450./T);
Gstr{i,1} = 'OLT'; Gstr{i,2} = 'NO3'; 
fOLT(i)=fOLT(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.43; fOLND(i)=fOLND(i)+0.57; 

i=i+1; %R143
Rnames{i} = 'OLI+NO3=0.11 OLNN+0.89 OLND';
k(:,i) = 8.64E-13.*exp(450./T);
Gstr{i,1} = 'OLI'; Gstr{i,2} = 'NO3'; 
fOLI(i)=fOLI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.11; fOLND(i)=fOLND(i)+0.89; 

i=i+1; %R144
Rnames{i} = 'DIEN+NO3=0.90 OLNN+0.10 OLND+0.90 MACR';
k(:,i) = 1.0E-13;
Gstr{i,1} = 'DIEN'; Gstr{i,2} = 'NO3'; 
fDIEN(i)=fDIEN(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.9; fOLND(i)=fOLND(i)+0.1; 
fMACR(i)=fMACR(i)+0.9; 

i=i+1; %R145
Rnames{i} = 'ISO+NO3=ISON';
k(:,i) = 3.03E-12.*exp(-446./T);
Gstr{i,1} = 'ISO'; Gstr{i,2} = 'NO3'; 
fISO(i)=fISO(i)-1; fNO3(i)=fNO3(i)-1; fISON(i)=fISON(i)+1; 

i=i+1; %R146
Rnames{i} = 'API+NO3=0.10 OLNN+0.90 OLND';
k(:,i) = 1.19E-12.*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3'; 
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.1;  fOLND(i)=fOLND(i)+0.9; 

i=i+1; %R147
Rnames{i} = 'LIM+NO3=0.71 OLNN+0.29 OLND';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NO3'; 
fLIM(i)=fLIM(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.71; fOLND(i)=fOLND(i)+0.29; 

i=i+1; %R148
Rnames{i} = 'HCHO+NO3=HO2+HNO3+CO';
k(:,i) = 2.00E-12.*exp(-2440./T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R149
Rnames{i} = 'ACD+NO3=ACO3+HNO3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ACD'; Gstr{i,2} = 'NO3'; 
fACD(i)=fACD(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R150
Rnames{i} = 'ALD+NO3=RCO3+HNO3';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD'; Gstr{i,2} = 'NO3'; 
fALD(i)=fALD(i)-1; fNO3(i)=fNO3(i)-1; fRCO3(i)=fRCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R151
Rnames{i} = 'MACR+NO3=0.32 MACP+0.68 XO2+0.32 HNO3+0.68 HCHO+0.68 MGLY+0.68 NO2';
k(:,i) = 3.40E-15; %mmarvin 20151020
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3'; 
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+0.32; fXO2(i)=fXO2(i)+0.68;
fHNO3(i)=fHNO3(i)+0.32; fHCHO(i)=fHCHO(i)+0.68; fMGLY(i)=fMGLY(i)+0.68; fNO2(i)=fNO2(i)+0.68;  

i=i+1; %R152
Rnames{i} = 'UALD+NO3= HO2+XO2+0.668 CO+0.332 HCHO+0.332 ALD+ONIT ';
k(:,i) = 5.02E-13.*exp(-1076./T);
Gstr{i,1} = 'UALD'; Gstr{i,2} = 'NO3'; 
fUALD(i)=fUALD(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+1; 
fCO(i)=fCO(i)+0.668; fHCHO(i)=fHCHO(i)+0.332; fALD(i)=fALD(i)+0.332; 
fONIT(i)=fONIT(i)+1; 

i=i+1; %R153
Rnames{i} = 'GLY+NO3=HNO3+HO2+CO+CO';
k(:,i) = 2.90E-12.*exp(-1900./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3'; 
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R154
Rnames{i} = 'MGLY+NO3=HNO3+ACO3+CO';
k(:,i) = 3.76E-12.*exp(-1900./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fACO3(i)=fACO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R155
Rnames{i} = 'PHEN+NO3=0.4 CHO+0.1 ADDC+0.5 ADCN+0.5 HNO3';
k(:,i) = 3.78E-12;
Gstr{i,1} = 'PHEN'; Gstr{i,2} = 'NO3'; 
fPHEN(i)=fPHEN(i)-1; fNO3(i)=fNO3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCN(i)=fADCN(i)+0.5; fHNO3(i)=fHNO3(i)+0.5; 

i=i+1; %R156
Rnames{i} = 'CSL+NO3=0.4 CHO+0.1 ADDC+0.5 ADCN+0.5 HNO3';
k(:,i) = 1.06E-12;
Gstr{i,1} = 'CSL'; Gstr{i,2} = 'NO3'; 
fCSL(i)=fCSL(i)-1; fNO3(i)=fNO3(i)-1; fCHO(i)=fCHO(i)+0.4; fADDC(i)=fADDC(i)+0.1;
fADCN(i)=fADCN(i)+0.5; fHNO3(i)=fHNO3(i)+0.5;

i=i+1; %R157
Rnames{i} = 'EPX+NO3=0.50 HO+1.50 HO2+1.50 CO+0.50 CO2+GLY+0.50 NO2+0.50 HNO3';
k(:,i) = 2.87E-13.*exp(-1000./T);
Gstr{i,1} = 'EPX'; Gstr{i,2} = 'NO3'; 
fEPX(i)=fEPX(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5;
fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+0.5; 
fHNO3(i)=fHNO3(i)+0.5; 

i=i+1; %R158
Rnames{i} = 'MCT+NO3=MCTO+HNO3';
k(:,i) = 2.01E-10;
Gstr{i,1} = 'MCT'; Gstr{i,2} = 'NO3'; 
fMCT(i)=fMCT(i)-1; fNO3(i)=fNO3(i)-1; fMCTO(i)=fMCTO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R159
Rnames{i} = 'MPAN+NO3=MACP+NO2';
k(:,i) = 2.20E-14.*exp(-500./T);
Gstr{i,1} = 'MPAN'; Gstr{i,2} = 'NO3'; 
fMPAN(i)=fMPAN(i)-1; fNO3(i)=fNO3(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%% AROMATIC INTERMEDIATE DECOMPOSITION
i=i+1; %R160
Rnames{i} = 'TR2= OH+HO2+TOLP+PER1+DCB2+CSL+EPX';
k(:,i) = 1.00E3;
Gstr{i,1} = 'TR2'; 
fTR2(i)=fTR2(i)-1; fOH(i)=fOH(i)+0.280; fHO2(i)=fHO2(i)+0.290; fTOLP(i)=fTOLP(i)+0.280; 
fPER1(i)=fPER1(i)+0.150; fDCB2(i)=fDCB2(i)+0.280; fCSL(i)=fCSL(i)+0.01; fEPX(i)=fEPX(i)+0.280; 

%mmarvin 20151020
i=i+1; %R161
Rnames{i} = 'TOLP= OH+HO2+PER1+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'TOLP'; 
fTOLP(i)=fTOLP(i)-1; fOH(i)=fOH(i)+0.49; fHO2(i)=fHO2(i)+0.01; fPER1(i)=fPER1(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.49; fCSL(i)=fCSL(i)+0.01;

i=i+1; %R162
Rnames{i} = 'XY2= OH+HO2+RCO3+XYLP+PER2+DCB2+CSL+EPX';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XY2'; 
fXY2(i)=fXY2(i)-1; fOH(i)=fOH(i)+0.158; fHO2(i)=fHO2(i)+0.308; fRCO3(i)=fRCO3(i)+0.250; 
fXYLP(i)=fXYLP(i)+0.308; fPER2(i)=fPER2(i)+0.150; fDCB2(i)=fDCB2(i)+0.224; fCSL(i)=fCSL(i)+0.010; 
fEPX(i)=fEPX(i)+0.840; 

i=i+1; %R163
Rnames{i} = 'XYLP= OH+HO2+PER2+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYLP'; 
fXYLP(i)=fXYLP(i)-1; fOH(i)=fOH(i)+0.39; fHO2(i)=fHO2(i)+0.01; fPER2(i)=fPER2(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.490; fCSL(i)=fCSL(i)+0.01; 

i=i+1; %R164
Rnames{i} = 'XYO2= OH+HO2+RCO3+XYLP+PER2+DCB2+CSL+EPX'; %mmarvin 20151020
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYO2'; 
fXYO2(i)=fXYO2(i)-1; fOH(i)=fOH(i)+0.158; fHO2(i)=fHO2(i)+0.308; fRCO3(i)=fRCO3(i)+0.250; 
fXYLP(i)=fXYLP(i)+0.308; fPER2(i)=fPER2(i)+0.150; fDCB2(i)=fDCB2(i)+0.224; fCSL(i)=fCSL(i)+0.010; 
fEPX(i)=fEPX(i)+0.84;

i=i+1; %R165
Rnames{i} = 'XYOP= OH+HO2+PER2+DCB2+CSL';
k(:,i) = 1.00E3;
Gstr{i,1} = 'XYOP'; 
fXYOP(i)=fXYOP(i)-1; fOH(i)=fOH(i)+0.39; fHO2(i)=fHO2(i)+0.01; fPER2(i)=fPER2(i)+0.50; 
fDCB2(i)=fDCB2(i)+0.49; fCSL(i)=fCSL(i)+0.01; 

%% PAN EQUILIBRIA
i=i+1; %R166
Rnames{i} = 'ACO3+NO2=PAN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1; %R167
Rnames{i} = 'PAN=ACO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R168
Rnames{i} = 'RCO3+NO2=PPN';
k(:,i) = K_ACO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1; %R169
Rnames{i} = 'PPN=RCO3+NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R170
Rnames{i} = 'MACP+NO2=MPAN';
k(:,i) = K_ACO3_NO2; %MISSING FROM GOLIFF TABLE S2D
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO2'; 
fMACP(i)=fMACP(i)-1; fNO2(i)=fNO2(i)-1; fMPAN(i)=fMPAN(i)+1; 

i=i+1; %R171
Rnames{i} = 'MPAN=MACP+NO2';
k(:,i) = 1.60E16.*exp(-13486./T);
Gstr{i,1} = 'MPAN'; 
fMPAN(i)=fMPAN(i)-1; fMACP(i)=fMACP(i)+1; fNO2(i)=fNO2(i)+1; 

%% PEROXY RADICALS+NO, NO2
i=i+1; %R172
Rnames{i} = 'MO2+NO=HCHO+HO2+NO2';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R173
Rnames{i} = 'ETHP+NO=HO2+ACD+NO2';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO'; 
fETHP(i)=fETHP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fACD(i)=fACD(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R174
Rnames{i} = 'HC3P+NO=HO2+MO2+ETHP+XO2+NO2+ACD+ALD+ACT+MEK+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO'; 
fHC3P(i)=fHC3P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.66; fMO2(i)=fMO2(i)+0.131; 
fETHP(i)=fETHP(i)+0.048; fXO2(i)=fXO2(i)+0.089; fNO2(i)=fNO2(i)+0.935; fACD(i)=fACD(i)+0.504; 
fALD(i)=fALD(i)+0.132; fACT(i)=fACT(i)+0.165; fMEK(i)=fMEK(i)+0.042; fONIT(i)=fONIT(i)+0.065; %mmarvin 20151020

i=i+1; %R175
Rnames{i} = 'HC5P+NO=HO2+MO2+ETHP+XO2+NO2+HCHO+ACD+ALD+ACT+MEK+KET+HKET+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NO'; 
fHC5P(i)=fHC5P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.20; fMO2(i)=fMO2(i)+0.051; 
fETHP(i)=fETHP(i)+0.231; fXO2(i)=fXO2(i)+0.235; fNO2(i)=fNO2(i)+0.864; fHCHO(i)=fHCHO(i)+0.018; 
fACD(i)=fACD(i)+0.045; fALD(i)=fALD(i)+0.203; fACT(i)=fACT(i)+0.217; fMEK(i)=fMEK(i)+0.033; 
fKET(i)=fKET(i)+0.039; fHKET(i)=fHKET(i)+0.272; fONIT(i)=fONIT(i)+0.136; 

i=i+1; %R176
Rnames{i} = 'HC8P+NO=0.606 HO2+0.133 ETHP+0.416 XO2+0.739 NO2+0 .150 ALD+0.642 KET+0.261 ONIT ';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NO'; 
fHC8P(i)=fHC8P(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.606; fETHP(i)=fETHP(i)+0.133; 
fXO2(i)=fXO2(i)+0.416; fNO2(i)=fNO2(i)+0.739; fALD(i)=fALD(i)+0.150; 
fKET(i)=fKET(i)+0.642; fONIT(i)=fONIT(i)+0.261; 

i=i+1; %R177
Rnames{i} = 'ETEP+NO=HO2+NO2+1.6 HCHO+0.2 ALD';
k(:,i) = 9.00E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NO'; 
fETEP(i)=fETEP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHCHO(i)=fHCHO(i)+1.6; fHCHO(i)=fHCHO(i)+0.2; 

i=i+1; %R178
Rnames{i} = 'OLTP+NO= HO2+NO2+HCHO+ACD+ALD+ACT+MEK+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NO'; 
fOLTP(i)=fOLTP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.78; fNO2(i)=fNO2(i)+0.97; 
fHCHO(i)=fHCHO(i)+0.78; fACD(i)=fACD(i)+0.012; fALD(i)=fALD(i)+0.44; fACT(i)=fACT(i)+0.06; 
fMEK(i)=fMEK(i)+0.13; fONIT(i)=fONIT(i)+0.03; 

i=i+1; %R179
Rnames{i} = 'OLIP+NO = HO2+NO2+ACD+ALD+ACT+KET+HKET+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NO'; 
fOLIP(i)=fOLIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.83; fNO2(i)=fNO2(i)+0.95; 
fACD(i)=fACD(i)+0.81; fALD(i)=fALD(i)+0.68; fACT(i)=fACT(i)+0.20; fKET(i)=fKET(i)+0.09; 
fHKET(i)=fHKET(i)+0.02; fONIT(i)=fONIT(i)+0.05; %mmarvin 20151020

i=i+1; %R180
Rnames{i} = 'BENP+NO=0.918 HO2+0.918 NO2+0.459 DCB2+0.459 DCB3+0.918 GLY+0.082 ONIT';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NO'; 
fBENP(i)=fBENP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.918; fNO2(i)=fNO2(i)+0.918;
fDCB2(i)=fDCB2(i)+0.459; fDCB3(i)=fDCB3(i)+0.459; fGLY(i)=fGLY(i)+0.918; 
fONIT(i)=fONIT(i)+0.082; 

i=i+1; %R181
Rnames{i} = 'TLP1+NO=NO2+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NO'; 
fTLP1(i)=fTLP1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R182
Rnames{i} = 'TOLP+NO=0.95 HO2+0.95 NO2+0.95 DCB2+0.050 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NO'; 
fTOLP(i)=fTOLP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fDCB2(i)=fDCB2(i)+0.95; fONIT(i)=fONIT(i)+0.05; 

i=i+1; %R183
Rnames{i} = 'PER1+NO=0.5 HO2+0.95 NO2+0.5 BALD+0.5 MGLY+0.5 DCB1+0.05 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NO'; 
fPER1(i)=fPER1(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.95;
fBALD(i)=fBALD(i)+0.5; fMGLY(i)=fMGLY(i)+0.5; fDCB1(i)=fDCB1(i)+0.5; 
fONIT(i)=fONIT(i)+0.05; 

i=i+1; %R184
Rnames{i} = 'XYL1+NO=NO2+BALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NO'; 
fXYL1(i)=fXYL1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R185
Rnames{i} = 'XYLP+NO=0.95 HO2+0.95 NO2+0.95 DCB3+0.050 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NO'; 
fXYLP(i)=fXYLP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fDCB3(i)=fDCB3(i)+0.95; fONIT(i)=fONIT(i)+0.05;

i=i+1; %R186
Rnames{i} = 'PER2+NO=0.95 HO2+0.95 NO2+0.95 MGLY+0.95 DCB1+1.05 DCB3+0.05 ONIT ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NO'; 
fPER2(i)=fPER2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95;
fMGLY(i)=fMGLY(i)+0.95; fDCB1(i)=fDCB1(i)+0.95; fDCB3(i)=fDCB3(i)+1.05; 
fONIT(i)=fONIT(i)+0.05;

i=i+1; %R187
Rnames{i} = 'XYOP+NO= HO2+NO2+GLY+MGLY+DCB1+DCB2+DCB3+ONIT';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NO'; 
fXYOP(i)=fXYOP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.95; fNO2(i)=fNO2(i)+0.95; 
fGLY(i)=fGLY(i)+0.350; fMGLY(i)=fMGLY(i)+0.60; fDCB1(i)=fDCB1(i)+0.70; fDCB2(i)=fDCB2(i)+0.073; 
fDCB3(i)=fDCB3(i)+0.117; fONIT(i)=fONIT(i)+0.05; 

i=i+1;%R188
Rnames{i} = 'ISOP+NO=HO2+NO2+HCHO+MACR+MVK+ISON+GLY+HKET+ALD';
k(:,i) = 2.43E-12.*exp(360./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO'; 
fISOP(i)=fISOP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.88; fNO2(i)=fNO2(i)+0.88; 
fHCHO(i)=fHCHO(i)+0.2; fMACR(i)=fMACR(i)+0.28; fMVK(i)=fMVK(i)+0.44; 
fISON(i)=fISON(i)+0.12; fGLY(i)=fGLY(i)+0.021; fHKET(i)=fHKET(i)+0.029; fALD(i)=fALD(i)+0.27;
fHCHO(i)=fHCHO(i)+0.52; %additional yield to match MVK+MACR

i=i+1; %R189
Rnames{i} = 'APIP+NO= HO2+NO2+HCHO+ALD+ACT+KET+ORA1+ONIT';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO'; 
fAPIP(i)=fAPIP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.82; fNO2(i)=fNO2(i)+0.82; 
fHCHO(i)=fHCHO(i)+0.23; fALD(i)=fALD(i)+0.43; fACT(i)=fACT(i)+0.11; fKET(i)=fKET(i)+0.44; 
fORA1(i)=fORA1(i)+0.07; fONIT(i)=fONIT(i)+0.18; 

i=i+1; %R190
Rnames{i} = 'LIMP+NO= HO2+NO2+OLI+HCHO+UALD+ORA1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NO'; 
fLIMP(i)=fLIMP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fOLI(i)=fOLI(i)+0.05; 
fHCHO(i)=fHCHO(i)+0.43; fUALD(i)=fUALD(i)+0.68; fORA1(i)=fORA1(i)+0.07; 

i=i+1; %R191
Rnames{i} = 'ACO3+NO=MO2+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R192
Rnames{i} = 'RCO3+NO=ETHP+NO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R193
Rnames{i} = 'ACTP+NO=ACO3+NO2+HCHO';
k(:,i) = 2.90E-12.*exp(300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO'; 
fACTP(i)=fACTP(i)-1; fNO(i)=fNO(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R194
Rnames{i} = 'MEKP+NO=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO'; 
fMEKP(i)=fMEKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %R195
Rnames{i} = 'KETP+NO= HO2+ACO3+XO2+NO2+MGLY+ALD';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO'; 
fKETP(i)=fKETP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.77; fACO3(i)=fACO3(i)+0.23; 
fXO2(i)=fXO2(i)+0.16; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+0.54; fALD(i)=fALD(i)+0.46; 

i=i+1; %R196
Rnames{i} = 'MACP+NO=0.75 HO2+0.25 ACO3+NO2+0.25 CO+0.75 HCHO+0.50 MGLY+0.25 HKET ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO'; 
fMACP(i)=fMACP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.75; fACO3(i)=fACO3(i)+0.25; 
fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+0.25; fHCHO(i)=fHCHO(i)+0.75; fMGLY(i)=fMGLY(i)+0.5;
fHKET(i)=fHKET(i)+0.25; 

i=i+1; %R197
Rnames{i} = 'MCP+NO=NO2+0.50 HO2+0.50 HCHO+HKET   ';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NO'; 
fMCP(i)=fMCP(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.5; fHKET(i)=fHKET(i)+1; 

i=i+1; %R198
Rnames{i} = 'MVKP+NO=0.3 HO2+0.7 ACO3+0.7 XO2+NO2+0.3 HCHO+0.7 ALD+0.3 MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NO'; 
fMVKP(i)=fMVKP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+0.3; 

i=i+1; %R199
Rnames{i} = 'UALP+NO= HO2+CO+NO2+HCHO+ALD+KET+GLY+MGLY';
k(:,i) = 2.54E-12.*exp(360./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO'; 
fUALP(i)=fUALP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.61; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21; 

i=i+1; %R200
Rnames{i} = 'BALP+NO=BAL1+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NO'; 
fBALP(i)=fBALP(i)-1; fNO(i)=fNO(i)-1; fBAL1(i)=fBAL1(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R201
Rnames{i} = 'BAL1+NO=BAL2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NO'; 
fBAL1(i)=fBAL1(i)-1; fNO(i)=fNO(i)-1; fBAL2(i)=fBAL2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R202
Rnames{i} = 'ADDC+NO=HO2+NO2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NO'; 
fADDC(i)=fADDC(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;  

i=i+1; %R203
Rnames{i} = 'MCTP+NO=MCTO+NO2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NO'; 
fMCTP(i)=fMCTP(i)-1; fNO(i)=fNO(i)-1; fMCTO(i)=fMCTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;  %R204
Rnames{i} = 'ORAP+NO=HO2+NO2+GLY';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO'; 
fORAP(i)=fORAP(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1;  %R205
Rnames{i} = 'OLNN+NO=ONIT+NO2+HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO'; 
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fONIT(i)=fONIT(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;  %R206
Rnames{i} = 'OLND+NO=NO2+HCHO+ALD+KET';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO'; 
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; 

i=i+1;  %R207
Rnames{i} = 'ADCN+NO=GLY+NO2+NO2+OP2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NO'; 
fADCN(i)=fADCN(i)-1; fNO(i)=fNO(i)-1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R208
Rnames{i} = 'XO2+NO=NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO'; 
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;  %R209
Rnames{i} = 'BAL2+NO2=ONIT';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'BAL2'; Gstr{i,2} = 'NO2'; 
fBAL2(i)=fBAL2(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R210
Rnames{i} = 'CHO+NO2=ONIT';
k(:,i) = 2.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'NO2'; 
fCHO(i)=fCHO(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R211
Rnames{i} = 'MCTO+NO2=ONIT';
k(:,i) = 2.08E-12;
Gstr{i,1} = 'MCTO'; Gstr{i,2} = 'NO2'; 
fMCTO(i)=fMCTO(i)-1; fNO2(i)=fNO2(i)-1; fONIT(i)=fONIT(i)+1; 

%% RO2+HO2
i=i+1; %R212
Rnames{i} = 'MO2+HO2=OP1';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2'; 
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fOP1(i)=fOP1(i)+1; 

i=i+1;  %R213
Rnames{i} = 'ETHP+HO2=OP2';
k(:,i) = 7.50E-13.*exp(700./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'HO2'; 
fETHP(i)=fETHP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R214
Rnames{i} = 'HC3P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'HO2'; 
fHC3P(i)=fHC3P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R215
Rnames{i} = 'HC5P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'HO2'; 
fHC5P(i)=fHC5P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R216
Rnames{i} = 'HC8P+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'HO2'; 
fHC8P(i)=fHC8P(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R217
Rnames{i} = 'ETEP+HO2=OP2';
k(:,i) = 1.90E-13.*exp(1300./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'HO2'; 
fETEP(i)=fETEP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1;  %R218
Rnames{i} = ' OLTP+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'HO2'; 
fOLTP(i)=fOLTP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R219
Rnames{i} = 'OLIP+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'HO2'; 
fOLIP(i)=fOLIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R220
Rnames{i} = 'BENP+HO2=OP2';
k(:,i) = 2.91E-13.*exp(1300./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'HO2'; 
fBENP(i)=fBENP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R221
Rnames{i} = 'TLP1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'HO2'; 
fTLP1(i)=fTLP1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R222
Rnames{i} = 'TOLP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'HO2'; 
fTOLP(i)=fTOLP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R223
Rnames{i} = 'PER1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'HO2'; 
fPER1(i)=fPER1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R224
Rnames{i} = 'XYL1+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'HO2'; 
fXYL1(i)=fXYL1(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R225
Rnames{i} = 'XYLP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'HO2'; 
fXYLP(i)=fXYLP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R226
Rnames{i} = 'PER2+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'HO2'; 
fPER2(i)=fPER2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R227
Rnames{i} = 'XYOP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'HO2'; 
fXYOP(i)=fXYOP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R228
Rnames{i} = 'ISOP+HO2=ISHP';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'HO2'; 
fISOP(i)=fISOP(i)-1; fHO2(i)=fHO2(i)-1; fISHP(i)=fISHP(i)+1; 

i=i+1; %R229
Rnames{i} = 'APIP+HO2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'HO2'; 
fAPIP(i)=fAPIP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R230
Rnames{i} = 'LIMP+HO2=OP2';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'HO2'; 
fLIMP(i)=fLIMP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R231
Rnames{i} = 'ACO3+HO2=0.44 HO+0.44 MO2+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %R232
Rnames{i} = 'RCO3+HO2=0.44 HO+0.44 ETHP+0.44 CO2+0.15 ORA2+0.41 PAA ';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1;fOH(i)=fOH(i)+0.44; fETHP(i)=fETHP(i)+0.44;
fCO2(i)=fCO2(i)+0.44; fORA2(i)=fORA2(i)+0.15; fPAA(i)=fPAA(i)+0.41; 

i=i+1; %R233
Rnames{i} = 'ACTP+HO2= 0.15 HO+0.15 ACO3+0.15 HCHO+0.850 OP2 ';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'HO2'; 
fACTP(i)=fACTP(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.15; fACO3(i)=fACO3(i)+0.15; 
fHCHO(i)=fHCHO(i)+0.15; fOP2(i)=fOP2(i)+0.85; 

i=i+1; %R234
Rnames{i} = 'MEKP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'HO2'; 
fMEKP(i)=fMEKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R235
Rnames{i} = 'KETP+HO2=OP2';
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'HO2'; 
fKETP(i)=fKETP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R236
Rnames{i} = 'MACP+HO2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'HO2'; 
fMACP(i)=fMACP(i)-1; fHO2(i)=fHO2(i)-1; fMAHP(i)=fMAHP(i)+1; 

i=i+1; %R237
Rnames{i} = 'MCP+HO2=MAHP';
k(:,i) = 1.82E-13.*exp(1300./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'HO2'; 
fMCP(i)=fMCP(i)-1; fHO2(i)=fHO2(i)-1; fMAHP(i)=fMAHP(i)+1; 

i=i+1; %R238
Rnames{i} = 'MVKP+HO2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'HO2'; 
fMVKP(i)=fMVKP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R239
Rnames{i} = 'UALP+HO2=OP2';
k(:,i) = 7.70E-14.*exp(1298./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'HO2'; 
fUALP(i)=fUALP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R240
Rnames{i} = 'ADDC+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'HO2'; 
fADDC(i)=fADDC(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R241
Rnames{i} = 'CHO+HO2=CSL';
k(:,i) = 1.00E-11;
Gstr{i,1} = 'CHO'; Gstr{i,2} = 'HO2'; 
fCHO(i)=fCHO(i)-1; fHO2(i)=fHO2(i)-1; fCSL(i)=fCSL(i)+1; 

i=i+1; %R242
Rnames{i} = 'MCTP+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'HO2'; 
fMCTP(i)=fMCTP(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R243
Rnames{i} = 'ORAP+HO2=ONIT'; %mmarvin 20151020
k(:,i) = 1.15E-13.*exp(1300./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'HO2'; 
fORAP(i)=fORAP(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R244
Rnames{i} = 'OLNN+HO2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2'; 
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R245
Rnames{i} = 'OLND+HO2=ONIT';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2'; 
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R246
Rnames{i} = 'ADCN+HO2=OP2';
k(:,i) = 3.75E-13.*exp(980./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'HO2'; 
fADCN(i)=fADCN(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

i=i+1; %R247
Rnames{i} = 'XO2+HO2=OP2';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2'; 
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fOP2(i)=fOP2(i)+1; 

%% RO2+MO2
i=i+1; %R248
Rnames{i} = 'MO2+MO2=0.74 HO2+1.37 HCHO+0.63  MOH';
k(:,i) = 9.50E-14.*exp(390./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.74; fHCHO(i)=fHCHO(i)+1.37;
fMOH(i)=fMOH(i)+0.63;

i=i+1; %R249
Rnames{i} = 'ETHP+MO2=HO2+0.75 HCHO+0.75 ACD+0.25 MOH+0.25 EOH';
k(:,i) = 1.18E-13.*exp(158./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'MO2'; 
fETHP(i)=fETHP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fACD(i)=fACD(i)+0.75; fMOH(i)=fMOH(i)+0.25; fEOH(i)=fEOH(i)+0.25;

i=i+1; %R250
Rnames{i} = 'HC3P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+MOH+ROH';
k(:,i) = 9.46E-14.*exp(431./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'MO2'; 
fHC3P(i)=fHC3P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.894; fMO2(i)=fMO2(i)+0.08; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.827; fALD(i)=fALD(i)+0.198; 
fKET(i)=fKET(i)+0.497; fGLY(i)=fGLY(i)+0.050; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1; %R251
Rnames{i} = 'HC5P+MO2= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 1.00E-13.*exp(467./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'MO2'; 
fHC5P(i)=fHC5P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.842; fMO2(i)=fMO2(i)+0.018; 
fETHP(i)=fETHP(i)+0.140; fXO2(i)=fXO2(i)+0.191; fHCHO(i)=fHCHO(i)+0.777; fALD(i)=fALD(i)+0.251; 
fKET(i)=fKET(i)+0.618; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R252
Rnames{i} = 'HC8P+MO2= HO2+ETHP+XO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 4.34E-14.*exp(633./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'MO2'; 
fHC8P(i)=fHC8P(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.91; fETHP(i)=fETHP(i)+0.09; 
fXO2(i)=fXO2(i)+0.281; fHCHO(i)=fHCHO(i)+0.750; fALD(i)=fALD(i)+0.197; fKET(i)=fKET(i)+0.652; 
fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R253
Rnames{i} = 'ETEP+MO2= HO2+HCHO+ALD+MOH+ETEG';
k(:,i) = 1.71E-13.*exp(708./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'MO2'; 
fETEP(i)=fETEP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.95; 
fALD(i)=fALD(i)+0.15; fMOH(i)=fMOH(i)+0.25; fETEG(i)=fETEG(i)+0.25; 

i=i+1; %R254
Rnames{i} = 'OLTP+MO2= HO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 1.46E-13.*exp(708./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'MO2'; 
fOLTP(i)=fOLTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.5; 
fALD(i)=fALD(i)+0.705; fKET(i)=fKET(i)+0.045; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R255
Rnames{i} = 'OLIP+MO2= HO2+HCHO+ALD+KET+MOH+ROH';
k(:,i) = 9.18E-14.*exp(708./T) ;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'MO2'; 
fOLIP(i)=fOLIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75; 
fALD(i)=fALD(i)+1.28; fKET(i)=fKET(i)+0.218; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R256
Rnames{i} = 'BENP+MO2= HO2+DCB3+HCHO+DCB2+GLY';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'MO2'; 
fBENP(i)=fBENP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1.6; fDCB3(i)=fDCB3(i)+0.459; 
fHCHO(i)=fHCHO(i)+1; fDCB2(i)=fDCB2(i)+0.459; fGLY(i)=fGLY(i)+0.60; 

i=i+1; %R257
Rnames{i} = 'TLP1+MO2=HCHO+HO2+BALD';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'MO2'; 
fTLP1(i)=fTLP1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R258
Rnames{i} = 'TOLP+MO2= 2 HO2+HCHO+0.271 GLY+DCB2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'MO2'; 
fTOLP(i)=fTOLP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1;
fGLY(i)=fGLY(i)+0.271; fDCB2(i)=fDCB2(i)+1; 

i=i+1; %R259
Rnames{i} = 'PER1+MO2=HCHO+HO2+HO2+MGLY+DCB1';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'MO2'; 
fPER1(i)=fPER1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 
fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; fDCB1(i)=fDCB1(i)+1; 

i=i+1; %R260
Rnames{i} = 'XYL1+MO2=HCHO+HO2+BALD';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'MO2'; 
fXYL1(i)=fXYL1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R261
Rnames{i} = 'XYLP+MO2=HCHO+HO2+HO2+DCB2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'MO2'; 
fXYLP(i)=fXYLP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 
fHO2(i)=fHO2(i)+1; fDCB2(i)=fDCB2(i)+1; 

i=i+1; %R262
Rnames{i} = 'PER2+MO2=HCHO+HO2+HO2+MGLY+DCB1+DCB3';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'MO2'; 
% fPER2(i)=-1; fMO2(i)=-1; fHCHO(i)=1; fHO2(i)=2; fMGLY(i)=1; fDCB1(i)=1; fDCB3(i)=1.05; 
fPER2(i)=fPER2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+2; 
fMGLY(i)=fMGLY(i)+1; fDCB1(i)=fDCB1(i)+1; fDCB3(i)=fDCB3(i)+1.05; %SR 20160406

i=i+1; %R263
Rnames{i} = 'XYOP+MO2= HO2+HCHO+GLY+MGLY+DCB1+DCB2+DCB3';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'MO2'; 
fXYOP(i)=fXYOP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1; 
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

i=i+1; %R264
Rnames{i} = 'ISOP+MO2=HO2+HCHO+MACR+MVK+MOH+ROH+ALD+GLY+HKET';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'MO2'; 
fISOP(i)=fISOP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1.31; 
fMACR(i)=fMACR(i)+0.159; fMVK(i)=fMVK(i)+0.250; fMOH(i)=fMOH(i)+0.250; 
fROH(i)=fROH(i)+0.250; fALD(i)=fALD(i)+0.230; fGLY(i)=fGLY(i)+0.018; fHKET(i)=fHKET(i)+0.016; 

i=i+1; %R265
Rnames{i} = 'APIP+MO2=HO2+0.75 HCHO+0.75 ALD+0.75 KET+0.25 MOH+0.25 ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'MO2'; 
fAPIP(i)=fAPIP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fALD(i)=fALD(i)+0.75; fKET(i)=fKET(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25;

i=i+1; %R266
Rnames{i} = 'LIMP+MO2= HO2+OLI+HCHO+MACR+MOH+ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'MO2'; 
fLIMP(i)=fLIMP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fOLI(i)=fOLI(i)+0.192; 
fHCHO(i)=fHCHO(i)+1.04; fMACR(i)=fMACR(i)+0.308; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R267
Rnames{i} = 'ACO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1; %SR 20160406

i=i+1; %R268
Rnames{i} = 'RCO3+MO2=0.9HO2+0.9MO2+0.4CO2+HCHO+0.1ORA2';
k(:,i) = 2.00E-12.*exp(500./T); %Goliff (2013) wrong; corrected to IUPAC rec.
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
% fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=0.9; fCO2(i)=0.4; fHCHO(i)=1; fORA2(i)=0.1;
fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)-1+0.9; fHO2(i)=fHO2(i)+0.9; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.1;

i=i+1; %R269
Rnames{i} = 'ACTP+MO2=0.5 HO2+0.5 ACO3+1.5 HCHO+0.25 MOH+0.25 ROH+0.125 ORA2';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'MO2'; 
fACTP(i)=fACTP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.5; fACO3(i)=fACO3(i)+0.5;
fHCHO(i)=fHCHO(i)+1.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.125;

i=i+1; %R270
Rnames{i} = 'MEKP+MO2=0.834 HO2+HCHO+0.334 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'MO2'; 
fMEKP(i)=fMEKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.834; fHCHO(i)=fHCHO(i)+1;
fDCB1(i)=fDCB1(i)+0.334; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R271
Rnames{i} = 'KETP+MO2=HO2+0.75 HCHO+0.50 DCB1+0.25 MOH+0.25 ROH';
k(:,i) = 6.91E-13.*exp(508./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'MO2'; 
fKETP(i)=fKETP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+0.75;
fDCB1(i)=fDCB1(i)+0.5; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1; %R272
Rnames{i} = 'MACP+MO2=HO2+ACO3+CO+HCHO+MOH+ROH+ORA2+MO2';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'MO2'; 
fMACP(i)=fMACP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fACO3(i)=fACO3(i)+0.269; 
fCO(i)=fCO(i)+0.50; fHCHO(i)=fHCHO(i)+1.66; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 
fORA2(i)=fORA2(i)+0.067; fMO2(i)=fMO2(i)+0.25; 

i=i+1; %R273
Rnames{i} = 'MCP+MO2=NO2+HO2+1.5 HCHO+.5 HKET+.25 MOH+.25 ROH';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'MO2'; 
fMCP(i)=fMCP(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;
fHCHO(i)=fHCHO(i)+1.5; fHKET(i)=fHKET(i)+0.5; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25;

i=i+1; %R274
Rnames{i} = 'MVKP+MO2= HO2+ACO3+XO2+HCHO+ALD+MGLY+MOH+ROH+ORA2';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'MO2'; 
fMVKP(i)=fMVKP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+1.16; 
fXO2(i)=fXO2(i)+1.16; fHCHO(i)=fHCHO(i)+1.50; fALD(i)=fALD(i)+1.75; fMGLY(i)=fMGLY(i)+0.50; 
fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fORA2(i)=fORA2(i)+0.292; 

i=i+1; %R275
Rnames{i} = 'UALP+MO2= HO2+CO+HCHO+ALD+KET+MGLY+GLY+MOH+ROH';
k(:,i) = 3.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'MO2'; 
fUALP(i)=fUALP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.305; 
fHCHO(i)=fHCHO(i)+0.773; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.525; fMGLY(i)=fMGLY(i)+0.105; 
fGLY(i)=fGLY(i)+0.135; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; %mmarvin 20151020 

i=i+1; %R276
Rnames{i} = 'BALP+MO2=HCHO+HO2+BAL1';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'MO2'; 
fBALP(i)=fBALP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBAL1(i)=fBAL1(i)+1; 

i=i+1; %R277
Rnames{i} = 'BAL1+MO2=HCHO+HO2+BAL2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'MO2'; 
fBAL1(i)=fBAL1(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fBAL2(i)=fBAL2(i)+1; 

i=i+1; %R278
Rnames{i} = 'ADDC+MO2=2 HO2+HCHO+0.32 HKET+0.68 GLY+0.68 OP2';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'MO2'; 
fADDC(i)=fADDC(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1;  
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

i=i+1; %R279
Rnames{i} = 'MCTP+MO2=HCHO+HO2+MCTO';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'MO2'; 
fMCTP(i)=fMCTP(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %R280
Rnames{i} = 'ORAP+MO2=HO2+HCHO+GLY';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'MO2'; 
fORAP(i)=fORAP(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %R281
Rnames{i} = 'OLNN+MO2=HCHO+HO2+HO2+ONIT';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2'; 
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fONIT(i)=fONIT(i)+1; 

i=i+1; %R282
Rnames{i} = 'OLND+MO2= HO2+NO2+HCHO+ALD+KET+MOH+ROH+ONIT';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.965; fALD(i)=fALD(i)+0.93; fKET(i)=fKET(i)+0.348; fMOH(i)=fMOH(i)+0.25; 
fROH(i)=fROH(i)+0.25; fONIT(i)=fONIT(i)+0.5; 

i=i+1; %R283
Rnames{i} = 'ADCN+MO2=HO2+0.7 NO2+HCHO+0.7 GLY+0.7 OP2+0.3 ONIT';
k(:,i) = 3.56E-14;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'MO2'; 
fADCN(i)=fADCN(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+0.7;
fHCHO(i)=fHCHO(i)+1; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7;  
fONIT(i)=fONIT(i)+0.3; 

i=i+1; %R284
Rnames{i} = 'XO2+MO2=HCHO+HO2';
k(:,i) = 5.99E-15.*exp(1510./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'MO2'; 
fXO2(i)=fXO2(i)-1; fMO2(i)=fMO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

%% RO2+ACO3 (ACETYL PEROXY RADICAL)
i=i+1; %R285
Rnames{i} = 'ETHP+ACO3=0.500 HO2+0.5 MO2+ACD+0.5 ORA2';
k(:,i) = 1.03E-12.*exp(211./T);
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'ACO3'; 
fETHP(i)=fETHP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;  
fACD(i)=fACD(i)+1; fORA2(i)=fORA2(i)+0.5;

i=i+1; %R286
Rnames{i} = 'HC3P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+GLY+ORA2';
k(:,i) = 6.90E-13.*exp(460./T);
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'ACO3'; 
fHC3P(i)=fHC3P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.394; fMO2(i)=fMO2(i)+0.580; 
fETHP(i)=fETHP(i)+0.026; fXO2(i)=fXO2(i)+0.026; fHCHO(i)=fHCHO(i)+0.130; fALD(i)=fALD(i)+0.273; 
fKET(i)=fKET(i)+0.662; fGLY(i)=fGLY(i)+0.067; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %R287
Rnames{i} = 'HC5P+ACO3= HO2+MO2+ETHP+XO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.59E-13.*exp(522./T);
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'ACO3'; 
fHC5P(i)=fHC5P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.342; fMO2(i)=fMO2(i)+0.518; 
fETHP(i)=fETHP(i)+0.140; fXO2(i)=fXO2(i)+0.191; fHCHO(i)=fHCHO(i)+0.042; fALD(i)=fALD(i)+0.381; 
fKET(i)=fKET(i)+0.824; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %R288
Rnames{i} = 'HC8P+ACO3= HO2+MO2+ETHP+XO2+ALD+KET+ORA2';
k(:,i) = 2.47E-13.*exp(683./T);
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'ACO3'; 
fHC8P(i)=fHC8P(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.303; fMO2(i)=fMO2(i)+0.500; 
fETHP(i)=fETHP(i)+0.067; fXO2(i)=fXO2(i)+0.208; fALD(i)=fALD(i)+0.217; fKET(i)=fKET(i)+0.642; fORA2(i)=fORA2(i)+0.495; 

i=i+1; %R289
Rnames{i} = 'ETEP+ACO3=0.5 HO2+0.5 MO2+1.6 HCHO+0.2 ALD+0.5 ORA2';
k(:,i) = 9.48E-13.*exp(765./T);
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'ACO3'; 
fETEP(i)=fETEP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2; fORA2(i)=fORA2(i)+0.5;  

i=i+1; %R290
Rnames{i} = 'OLTP+ACO3=0.50 HO2+0.50 MO2+HCHO+0.94 ALD+0.06 KET+0.50 ORA2 ';
k(:,i) = 8.11E-13.*exp(765./T);
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'ACO3'; 
fOLTP(i)=fOLTP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+1; fALD(i)=fALD(i)+0.94; fKET(i)=fKET(i)+0.06; fORA2(i)=fORA2(i)+0.5;

i=i+1; %R291
Rnames{i} = 'OLIP+ACO3=0.50 HO2+0.50 MO2+1.71 ALD+0.29 KET+0.50 ORA2';
k(:,i) = 5.09E-13.*exp(765./T);
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'ACO3'; 
fOLIP(i)=fOLIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1.71; fKET(i)=fKET(i)+0.29; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %R292
Rnames{i} = 'BENP+ACO3= HO2+MO2+DCB2+DCB3+GLY';
k(:,i) = 7.40E-13.*exp(765./T) ;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'ACO3'; 
fBENP(i)=fBENP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.60; fMO2(i)=fMO2(i)+1; 
fDCB2(i)=fDCB2(i)+0.459; fDCB3(i)=fDCB3(i)+0.458; fGLY(i)=fGLY(i)+0.6; 

i=i+1; %R293
Rnames{i} = 'TLP1+ACO3=MO2+BALD';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'ACO3'; 
fTLP1(i)=fTLP1(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R294
Rnames{i} = 'TOLP+ACO3=DCB2+HO2+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'ACO3'; 
fTOLP(i)=fTOLP(i)-1; fACO3(i)=fACO3(i)-1; fDCB2(i)=fDCB2(i)+1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %R295
Rnames{i} = 'PER1+ACO3=DCB1+MO2+MGLY+HO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'ACO3'; 
fPER1(i)=fPER1(i)-1; fACO3(i)=fACO3(i)-1; fDCB1(i)=fDCB1(i)+1; fMO2(i)=fMO2(i)+1; fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R296
Rnames{i} = 'XYL1+ACO3=MO2+BALD';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'ACO3'; 
fXYL1(i)=fXYL1(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R297
Rnames{i} = 'XYLP+ACO3=DCB2+MO2+HO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'ACO3'; 
fXYLP(i)=fXYLP(i)-1; fACO3(i)=fACO3(i)-1; fDCB2(i)=fDCB2(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R298
Rnames{i} = 'PER2+ACO3=DCB1+MO2+MGLY+HO2+DCB3';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'ACO3'; 
fPER2(i)=fPER2(i)-1; fACO3(i)=fACO3(i)-1; fDCB1(i)=fDCB1(i)+1; fMO2(i)=fMO2(i)+1; 
% fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=1.05; 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05; %SR 20160406

i=i+1; %R299
Rnames{i} = 'XYOP+ACO3= HO2+MO2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'ACO3'; 
fXYOP(i)=fXYOP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737;
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186;

i=i+1; %R300
Rnames{i} = 'ISOP+ACO3=HO2+MO2+HCHO+MACR+MVK+ORA2+ALD+GLY+HKET';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'ACO3'; 
fISOP(i)=fISOP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.50; 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.159; fMVK(i)=fMVK(i)+0.25; fORA2(i)=fORA2(i)+0.5; 
fALD(i)=fALD(i)+0.031; fGLY(i)=fGLY(i)+0.024; fHKET(i)=fHKET(i)+0.033; 

i=i+1; %R301
Rnames{i} = 'APIP+ACO3=0.5 HO2+0.5 MO2+ALD+KET+ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'ACO3'; 
fAPIP(i)=fAPIP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fALD(i)=fALD(i)+1; fKET(i)=fKET(i)+1; fORA2(i)=fORA2(i)+1; 

i=i+1; %R302
Rnames{i} = 'LIMP+ACO3=0.5 HO2+0.5 MO2+0.192 OLI+0.385 HCHO+0.308 MACR+0.5 ORA2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'ACO3'; 
fLIMP(i)=fLIMP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fOLI(i)=fOLI(i)+0.192; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.308; 
fORA2(i)=fORA2(i)+0.5;

i=i+1; %R303
Rnames{i} = 'ACO3+ACO3=MO2+MO2+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'ACO3'; 
fACO3(i)=fACO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %R304
Rnames{i} = 'RCO3+ACO3=MO2+ETHP+CO2+CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'ACO3'; 
fRCO3(i)=fRCO3(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1; %R305
Rnames{i} = 'ACTP+ACO3=0.50 MO2+0.50 ACO3+HCHO+0.75 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'ACO3'; 
fACTP(i)=fACTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.5; fACO3(i)=fACO3(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fORA2(i)=fORA2(i)+0.75;

i=i+1; %R306
Rnames{i} = 'MEKP+ACO3=0.33 HO2+0.50 MO2+0.33 HCHO+0.334 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'ACO3'; 
fMEKP(i)=fMEKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.33; fMO2(i)=fMO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.334; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %R307
Rnames{i} = 'KETP+ACO3=0.50 HO2+0.50 MO2+0.50 DCB1+0.50 ORA2';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'ACO3'; 
fKETP(i)=fKETP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5;
fDCB1(i)=fDCB1(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %R308
Rnames{i} = 'MACP+ACO3= HO2+MO2+ACO3+CO+HCHO+HKET+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T) ;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'ACO3'; 
fMACP(i)=fMACP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; 
fACO3(i)=fACO3(i)+0.167; fCO(i)=fCO(i)+0.167; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.167; 
fMGLY(i)=fMGLY(i)+0.33; fORA2(i)=fORA2(i)+0.583; 

i=i+1; %R309
Rnames{i} = 'MCP+ACO3=NO2+.5 HO2+HCHO .5 HKET+.5 MO2+.5 ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'ACO3'; 
fMCP(i)=fMCP(i)-1; fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+0.5; 
fHCHO(i)=fHCHO(i)+1; fMO2(i)=fMO2(i)+0.5; fHKET(i)=fHKET(i)+0.5; fORA2(i)=fORA2(i)+0.5;

i=i+1; %R310
Rnames{i} = 'MVKP+ACO3= HO2+MO2+ACO3+XO2+HCHO+ALD+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'ACO3'; 
fMVKP(i)=fMVKP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.5; fMO2(i)=fMO2(i)+0.5; 
fACO3(i)=fACO3(i)+1.16; fXO2(i)=fXO2(i)+1.16; fHCHO(i)=fHCHO(i)+1; fALD(i)=fALD(i)+2.3; 
fMGLY(i)=fMGLY(i)+0.50; fORA2(i)=fORA2(i)+1.083; 

i=i+1; %R311
Rnames{i} = 'UALP+ACO3= HO2+MO2+CO+HCHO+ALD+KET+GLY+MGLY+ORA2';
k(:,i) = 8.40E-14.*exp(221./T);
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'ACO3'; 
fUALP(i)=fUALP(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; 
fCO(i)=fCO(i)+0.50; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27; fKET(i)=fKET(i)+0.70; 
fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.105; fORA2(i)=fORA2(i)+0.5; 

i=i+1; %R312
Rnames{i} = 'BALP+ACO3=BAL1+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'ACO3'; 
fBALP(i)=fBALP(i)-1; fACO3(i)=fACO3(i)-1; fBAL1(i)=fBAL1(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %R313
Rnames{i} = 'BAL1+ACO3=BAL2+MO2';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'ACO3'; 
fBAL1(i)=fBAL1(i)-1; fACO3(i)=fACO3(i)-1; fBAL2(i)=fBAL2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1; %R314
Rnames{i} = 'ADDC+ACO3=2 HO2+MO2+0.32 HKET+0.68 GLY+0.68 OP2';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'ACO3'; 
fADDC(i)=fADDC(i)-1; fACO3(i)=fACO3(i)-1; 
fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+2; fMO2(i)=fMO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68; 

i=i+1; %R315
Rnames{i} = 'MCTP+ACO3=MO2+HO2+MCTO';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'ACO3'; 
fMCTP(i)=fMCTP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fMCTO(i)=fMCTO(i)+1; 

i=i+1; %R316
Rnames{i} = 'ORAP+ACO3=MO2+GLY';
k(:,i) = 7.51E-13.*exp(565./T);
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'ACO3'; 
fORAP(i)=fORAP(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %R317
Rnames{i} = 'OLNN+ACO3=ONIT+MO2+HO2';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'ACO3'; 
fOLNN(i)=fOLNN(i)-1; fACO3(i)=fACO3(i)-1; fONIT(i)=fONIT(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R318
Rnames{i} = 'OLND+ACO3= MO2+NO2+HCHO+ALD+KET+ORA2';
k(:,i) = 5.37E-13.*exp(765./T) ;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'ACO3'; 
fOLND(i)=fOLND(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.287; fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464; fORA2(i)=fORA2(i)+0.50; 

i=i+1; %R319
Rnames{i} = 'ADCN+ACO3=HO2+MO2+0.7 NO2+0.7 GLY+0.7 OP2+0.3 ONIT';
k(:,i) = 7.40E-13.*exp(708./T);
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'ACO3'; 
fADCN(i)=fADCN(i)-1; fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; 
fNO2(i)=fNO2(i)+0.7; fGLY(i)=fGLY(i)+0.7; fOP2(i)=fOP2(i)+0.7; fONIT(i)=fONIT(i)+0.3;

i=i+1; %R320
Rnames{i} = 'XO2+ACO3=MO2';
k(:,i) = 3.40E-14.*exp(1560./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'ACO3'; 
fXO2(i)=fXO2(i)-1; fACO3(i)=fACO3(i)-1; fMO2(i)=fMO2(i)+1; 

%% RO2+NO3
i=i+1; %R321
Rnames{i} = 'MO2+NO3=HCHO+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO3'; 
fMO2(i)=fMO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R322
Rnames{i} = 'ETHP+NO3=ACD+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETHP'; Gstr{i,2} = 'NO3'; 
fETHP(i)=fETHP(i)-1; fNO3(i)=fNO3(i)-1; fACD(i)=fACD(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R323
Rnames{i} = 'HC3P+NO3=HO2+MO2+XO2+ETHP+NO2+ACD+ALD+MEK+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'HC3P'; Gstr{i,2} = 'NO3'; 
fHC3P(i)=fHC3P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.254; fMO2(i)=fMO2(i)+0.140; 
fXO2(i)=fXO2(i)+0.092; fETHP(i)=fETHP(i)+0.503; fNO2(i)=fNO2(i)+1; fACD(i)=fACD(i)+0.519; 
fALD(i)=fALD(i)+0.147; fMEK(i)=fMEK(i)+0.075; fACT(i)=fACT(i)+0.095; 

i=i+1; %R324
Rnames{i} = 'HC5P+NO3= HO2+MO2+ETHP+XO2+NO2+HCHO+ALD+KET+MEK+ACT+ACD+HKET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC5P'; Gstr{i,2} = 'NO3'; 
fHC5P(i)=fHC5P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.488; fMO2(i)=fMO2(i)+0.055; 
fETHP(i)=fETHP(i)+0.28; fXO2(i)=fXO2(i)+0.485; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.024; 
fALD(i)=fALD(i)+0.241; fKET(i)=fKET(i)+0.060; fMEK(i)=fMEK(i)+0.063; fACT(i)=fACT(i)+0.247; 
fACD(i)=fACD(i)+0.048; fHKET(i)=fHKET(i)+0.275; 

i=i+1; %R325
Rnames{i} = 'HC8P+NO3= HO2+ETHP+XO2+NO2+ALD+KET';
k(:,i) = 1.20E-12 ;
Gstr{i,1} = 'HC8P'; Gstr{i,2} = 'NO3'; 
fHC8P(i)=fHC8P(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.82; fETHP(i)=fETHP(i)+0.18; 
fXO2(i)=fXO2(i)+0.563; fNO2(i)=fNO2(i)+1; fALD(i)=fALD(i)+0.203; fKET(i)=fKET(i)+0.869; 

i=i+1; %R326
Rnames{i} = 'ETEP+NO3=HO2+NO2+1.6 HCHO+0.2 ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ETEP'; Gstr{i,2} = 'NO3'; 
fETEP(i)=fETEP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+1.6; fALD(i)=fALD(i)+0.2; 

i=i+1; %R327
Rnames{i} = 'OLTP+NO3= ALD+HCHO+HO2+NO2+MEK+ACD+ACT';
k(:,i) = 1.20E-12  ;
Gstr{i,1} = 'OLTP'; Gstr{i,2} = 'NO3'; 
fOLTP(i)=fOLTP(i)-1; fNO3(i)=fNO3(i)-1; fALD(i)=fALD(i)+0.47; fHCHO(i)=fHCHO(i)+0.79; 
fHO2(i)=fHO2(i)+0.79; fNO2(i)=fNO2(i)+1; fMEK(i)=fMEK(i)+0.18; fACD(i)=fACD(i)+0.02; fACT(i)=fACT(i)+0.09; 

i=i+1; %R328
Rnames{i} = 'OLIP+NO3= HO2+ALD+KET+NO2+ACT+ACD+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLIP'; Gstr{i,2} = 'NO3'; 
fOLIP(i)=fOLIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.86; fALD(i)=fALD(i)+0.72; 
fKET(i)=fKET(i)+0.11; fNO2(i)=fNO2(i)+1; fACT(i)=fACT(i)+0.2; fACD(i)=fACD(i)+0.85; fHKET(i)=fHKET(i)+0.04; 

i=i+1; %R329
Rnames{i} = 'BENP+NO3=HO2+GLY+DCB2+NO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BENP'; Gstr{i,2} = 'NO3'; 
fBENP(i)=fBENP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+1; fDCB2(i)=0.5; fNO2(i)=fNO2(i)+1; fDCB3(i)=0.5; 

i=i+1; %R330
Rnames{i} = 'TLP1+NO3=NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TLP1'; Gstr{i,2} = 'NO3'; 
fTLP1(i)=fTLP1(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R331
Rnames{i} = 'TOLP+NO3=DCB2+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'TOLP'; Gstr{i,2} = 'NO3'; 
fTOLP(i)=fTOLP(i)-1; fNO3(i)=fNO3(i)-1; fDCB2(i)=fDCB2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R332
Rnames{i} = 'PER1+NO3=DCB1+NO2+MGLY+HO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER1'; Gstr{i,2} = 'NO3'; 
% fPER1(i)=-1; fNO3(i)=-1; fDCB1(i)=0.5; fNO2(i)=1; fMGLY(i)=0.5; fHO2(i)=0.5; fBALD(i)=0.5;  
fPER1(i)=fPER1(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+0.5; fNO2(i)=fNO2(i)+1; 
fMGLY(i)=fMGLY(i)+0.5; fHO2(i)=fHO2(i)+0.5; fBALD(i)=fBALD(i)+0.5;  %SR 20160406

i=i+1; %R333
Rnames{i} = 'XYL1+NO3=NO2+BALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYL1'; Gstr{i,2} = 'NO3'; 
fXYL1(i)=fXYL1(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBALD(i)=fBALD(i)+1; 

i=i+1; %R334
Rnames{i} = 'XYLP+NO3=DCB3+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYLP'; Gstr{i,2} = 'NO3'; 
fXYLP(i)=fXYLP(i)-1; fNO3(i)=fNO3(i)-1; fDCB3(i)=fDCB3(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R335
Rnames{i} = 'PER2+NO3=DCB1+NO2+MGLY+HO2+DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'PER2'; Gstr{i,2} = 'NO3'; 
% fPER2(i)=-1; fNO3(i)=-1; fDCB1(i)=1; fNO2(i)=1; fMGLY(i)=1; fHO2(i)=1; fDCB3(i)=1.05;  
fPER2(i)=fPER2(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fNO2(i)=fNO2(i)+1; 
fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; fDCB3(i)=fDCB3(i)+1.05;  %SR 20160406

i=i+1; %R336
Rnames{i} = 'XYOP+NO3=HO2+NO2+0.368 GLY+0.632 MGLY+0.737 DCB1+0.077 DCB2+0.186 DCB3';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XYOP'; Gstr{i,2} = 'NO3'; 
fXYOP(i)=fXYOP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fGLY(i)=fGLY(i)+0.368; fMGLY(i)=fMGLY(i)+0.632; fDCB1(i)=fDCB1(i)+0.737; 
fDCB2(i)=fDCB2(i)+0.077; fDCB3(i)=fDCB3(i)+0.186; 

i=i+1; %R337
Rnames{i} = 'ISOP+NO3=HO2+NO2+HCHO+MACR+MVK+GLY+HKET+ALD';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3'; 
fISOP(i)=fISOP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.75; fMACR(i)=fMACR(i)+0.318; fMVK(i)=fMVK(i)+0.5; fGLY(i)=fGLY(i)+0.024; 
fHKET(i)=fHKET(i)+0.033; fALD(i)=fALD(i)+0.031; 

i=i+1; %R338
Rnames{i} = 'APIP+NO3=HO2+ALD+NO2+KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIP'; Gstr{i,2} = 'NO3'; 
fAPIP(i)=fAPIP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fALD(i)=fALD(i)+1; fNO2(i)=fNO2(i)+1; fKET(i)=fKET(i)+1; 

i=i+1; %R339
Rnames{i} = 'LIMP+NO3=HO2+NO2+0.385 OLI+0.385 HCHO+0.615 MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMP'; Gstr{i,2} = 'NO3'; 
fLIMP(i)=fLIMP(i)-1; fNO3(i)=fNO3(i)-1;fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fOLI(i)=fOLI(i)+0.385; fHCHO(i)=fHCHO(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1; %R340
Rnames{i} = 'ACO3+NO3=MO2+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R341
Rnames{i} = 'RCO3+NO3=ETHP+NO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO3'; 
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1; fETHP(i)=fETHP(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R342
Rnames{i} = 'ACTP+NO3=ACO3+NO2+HCHO';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ACTP'; Gstr{i,2} = 'NO3'; 
fACTP(i)=fACTP(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1; %R343
Rnames{i} = 'MEKP+NO3=0.67 HO2+NO2+0.33 HCHO+0.67 DCB1';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MEKP'; Gstr{i,2} = 'NO3'; 
fMEKP(i)=fMEKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.67; fNO2(i)=fNO2(i)+1; 
fHCHO(i)=fHCHO(i)+0.33; fDCB1(i)=fDCB1(i)+0.67;

i=i+1; %R344
Rnames{i} = 'KETP+NO3=DCB1+HO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'KETP'; Gstr{i,2} = 'NO3'; 
fKETP(i)=fKETP(i)-1; fNO3(i)=fNO3(i)-1; fDCB1(i)=fDCB1(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R345
Rnames{i} = 'MACP+NO3=HO2+0.33 ACO3+NO2+0.33 CO+HCHO+0.33 HKET+0.667 MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MACP'; Gstr{i,2} = 'NO3'; 
fMACP(i)=fMACP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fACO3(i)=fACO3(i)+0.33; 
fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+0.33; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+0.33;  
fMGLY(i)=fMGLY(i)+0.667; 

i=i+1; %R346
Rnames{i} = 'MCP+NO3 = NO2+HO2+HCHO+HKET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCP'; Gstr{i,2} = 'NO3'; 
fMCP(i)=fMCP(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHKET(i)=fHKET(i)+1; 

i=i+1; %R347
Rnames{i} = 'MVKP+NO3=0.3 HO2+0.7 ACO3+0.7 XO2+NO2+0.3 HCHO+0.7 ALD+MGLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MVKP'; Gstr{i,2} = 'NO3'; 
fMVKP(i)=fMVKP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+0.3; fACO3(i)=fACO3(i)+0.7;
fXO2(i)=fXO2(i)+0.7; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.3; fALD(i)=fALD(i)+0.7; 
fMGLY(i)=fMGLY(i)+1; 

i=i+1; %R348
Rnames{i} = 'UALP+NO3=HO2+NO2+0.61 CO+0.03 HCHO+0.27 ALD+0.7 KET+0.18 GLY+0.21 MGLY ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'UALP'; Gstr{i,2} = 'NO3'; 
fUALP(i)=fUALP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 
fCO(i)=fCO(i)+0.61; fHCHO(i)=fHCHO(i)+0.03; fALD(i)=fALD(i)+0.27;
fKET(i)=fKET(i)+0.7; fGLY(i)=fGLY(i)+0.18; fMGLY(i)=fMGLY(i)+0.21;

i=i+1; %R349
Rnames{i} = 'BALP+NO3=BAL1+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BALP'; Gstr{i,2} = 'NO3'; 
fBALP(i)=fBALP(i)-1; fNO3(i)=fNO3(i)-1; fBAL1(i)=fBAL1(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R350
Rnames{i} = 'BAL1+NO3=BAL2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'BAL1'; Gstr{i,2} = 'NO3'; 
fBAL1(i)=fBAL1(i)-1; fNO3(i)=fNO3(i)-1; fBAL2(i)=fBAL2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R351
Rnames{i} = 'ADDC+NO3=HO2+NO2+0.32 HKET+0.68 GLY+0.68 OP2 ';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADDC'; Gstr{i,2} = 'NO3'; 
fADDC(i)=fADDC(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;
fHKET(i)=fHKET(i)+0.32; fGLY(i)=fGLY(i)+0.68; fOP2(i)=fOP2(i)+0.68;

i=i+1; %R352
Rnames{i} = 'MCTP+NO3=MCTO+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'MCTP'; Gstr{i,2} = 'NO3'; 
fMCTP(i)=fMCTP(i)-1; fNO3(i)=fNO3(i)-1; fMCTO(i)=fMCTO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R353
Rnames{i} = 'ORAP+NO3=HO2+NO2+GLY';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ORAP'; Gstr{i,2} = 'NO3'; 
fORAP(i)=fORAP(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+1; 

i=i+1; %R354
Rnames{i} = 'OLNN+NO3=ONIT+NO2+HO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3'; 
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; fONIT(i)=fONIT(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R355
Rnames{i} = 'OLND+NO3=2 NO2+0.287 HCHO+1.24 ALD+0.464 KET';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3'; 
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; fHCHO(i)=fHCHO(i)+0.287;
fALD(i)=fALD(i)+1.24; fKET(i)=fKET(i)+0.464;

i=i+1; %R356
Rnames{i} = 'ADCN+NO3=OP2+GLY+NO2+NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'ADCN'; Gstr{i,2} = 'NO3'; 
fADCN(i)=fADCN(i)-1; fNO3(i)=fNO3(i)-1; fOP2(i)=fOP2(i)+1; fGLY(i)=fGLY(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R357
Rnames{i} = 'XO2+NO3=NO2';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO3'; 
fXO2(i)=fXO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 

%% MISCELLANEOUS RO2 CROSS-REACTIONS
i=i+1; %R358
Rnames{i} = 'RCO3+RCO3=2ETHP+2CO2';
k(:,i) = 2.5e-12.*exp(500./T); %Goliff(2013) missing rate k; use k(ACO3+ACO3)
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
% fRCO3(i)=-2; fETHP(i)=2; fCO2(i)=2;
fRCO3(i)=fRCO3(i)-2; fETHP(i)=fETHP(i)+2; fCO2(i)=fCO2(i)+2; %SR 20160406

i=i+1; %R359
Rnames{i} = 'OLNN+OLNN=ONIT+ONIT+HO2';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN'; 
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fONIT(i)=fONIT(i)+1; fONIT(i)=fONIT(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R360
Rnames{i} = 'OLNN+OLND=0.50 HO2+0.50 NO2+0.202 HCHO+0.640 ALD+0.149 KET+1.50 ONIT ';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND'; 
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.5; fNO2(i)=fNO2(i)+0.5;
fHCHO(i)=fHCHO(i)+0.202; fALD(i)=fALD(i)+0.640; fKET(i)=fKET(i)+0.149; 
fONIT(i)=fONIT(i)+1.5; 

i=i+1; %R361
Rnames{i} = 'OLND+OLND=NO2+0.504 HCHO+1.21 ALD+0.285 KET+ONIT ';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND'; 
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+0.504;
fALD(i)=fALD(i)+1.21; fKET(i)=fKET(i)+0.285; fONIT(i)=fONIT(i)+1;

i=i+1; %R362
Rnames{i} = 'XO2+XO2=';
k(:,i) = 7.13E-17.*exp(2950./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2'; 
fXO2(i)=fXO2(i)-1; fXO2(i)=fXO2(i)-1; 

i=i+1; %R363
Rnames{i} = 'XO2+RCO3=ETHP +CO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RCO3'; 
fXO2(i)=fXO2(i)-1; fRCO3(i)=fRCO3(i)-1; fETHP(i)=fETHP(i)+1; fCO2(i)=fCO2(i)+1; 

%% THAT'S ALL FOLKS!


