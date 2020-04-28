% SAPRC07B_AllRxns.m
% generated from SAPRC07B.MEC
% 20200422
% # of species = 134
% # of reactions = 698

SpeciesToAdd = {...
'NO2'; 'NO'; 'O3P'; 'O2'; 'M'; 'O3'; 'NO3'; 'N2O5'; 'H2O'; 'HNO3'; ...
'O1D'; 'OH'; 'HONO'; 'HO2'; 'CO'; 'CO2'; 'HNO4'; 'HO2H'; 'SO2'; 'SULF'; ...
'H2'; 'MEO2'; 'HCHO'; 'COOH'; 'MEOH'; 'RO2C'; 'RO2XC'; 'XN'; 'MECO3'; 'PAN'; ...
'AACD'; 'RCO3'; 'PAN2'; 'xHO2'; 'yROOH'; 'xCCHO'; 'PACD'; 'BZCO3'; 'PBZN'; 'BZO'; ...
'XC'; 'MACO3'; 'MAPAN'; 'TBUO'; 'RNO3'; 'ACET'; 'NPHE'; 'CRES'; 'CCHO'; 'RCHO'; ...
'xCO'; 'xMECO3'; 'xHCHO'; 'MEK'; 'zRNO3'; 'xRCO3'; 'xRCHO'; 'FACD'; 'xMGLY'; 'xBACL'; ...
'ROOH'; 'xOH'; 'xPROD2'; 'R6OOH'; 'PRD2'; 'yR6OOH'; 'RAOOH'; 'MGLY'; 'IPRD'; 'xGLY'; ...
'xMEK'; 'xAFG1'; 'xAFG2'; 'GLY'; 'AFG1'; 'AFG2'; 'BACL'; 'BALD'; 'AFG3'; 'xIPRD'; ...
'MACR'; 'MVK'; 'xRNO3'; 'xNO2'; 'xACET'; 'CH4'; 'ETHE'; 'ISOP'; 'xMACR'; 'xMVK'; ...
'xMACO3'; 'ACYE'; 'BENZ'; 'yRAOOH'; 'ALK1'; 'ALK2'; 'ALK3'; 'xTBUO'; 'ALK4'; 'xMEO2'; ...
'ALK5'; 'OLE1'; 'OLE2'; 'ARO1'; 'xBALD'; 'ARO2'; 'xAFG3'; 'TERP'; 'CL2'; 'CL'; ...
'CLNO'; 'CLONO'; 'CLNO2'; 'HCL'; 'CLO'; 'CLONO2'; 'HOCL'; 'xCLCCHO'; 'xCLACET'; 'CLCCHO'; ...
'xCL'; 'CLACET'; 'CLCHO'; 'NONO3'; 'NO3MECO3'; 'MECO3RCO3'; 'RCO3BZCO3'; 'BZCO3MACO3'; 'MACO3MEO2'; 'MEO2RO2C'; ...
'RO2CRO2XC'; 'RO2XCHO2'; 'HO2MEO2'; 'RO2XCNO'; };

AddSpecies

i=i+1;
Rnames{i} = ' NO2 + hv = NO + O3P ';
k(:,i) =  1.0.*JNO2_06;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = ' O3P + O2 + M = O3 ';
k(:,i) =  5.68e-34.*(T./300).^-2.60.*M.*0.21.*M;
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = ' O3P + O3 =  ';
k(:,i) =  8.00e-12.*exp(-2060./ T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = ' O3P + NO = NO2 ';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO'; 
fO3P(i)=fO3P(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' O3P + NO2 = NO ';
k(:,i) =  5.50e-12.*exp(188./ T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = ' O3P + NO2 = NO3 ';
k(:,i) = K_O3P_NO2_NO3;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' O3 + NO = NO2 ';
k(:,i) =  3.00e-12.*exp(-1500./ T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' O3 + NO2 = NO3 ';
k(:,i) =  1.40e-13.*exp(-2470./ T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO2'; 
fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' NO + NO3 = 2*NO2 ';
k(:,i) =  1.80e-11.*exp(110./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; 

i=i+1;
Rnames{i} = ' NO + NO + O2 = 2*NO2 ';
k(:,i) =  3.30e-39.*exp(530./ T).*0.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2; 

i=i+1;
Rnames{i} = ' NO2 + NO3 = N2O5 ';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = ' N2O5 = NO2 + NO3 ';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' N2O5 + H2O = 2*HNO3 ';
k(:,i) =  2.50e-22.*H2O;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; 

i=i+1;
Rnames{i} = ' N2O5 + H2O + H2O = 2*HNO3 ';
k(:,i) =  1.80e-39.*H2O.*H2O;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; 

i=i+1;
Rnames{i} = ' NO2 + NO3 = NO + NO2 ';
k(:,i) =  4.50e-14.*exp(-1260./ T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' NO3 + hv = NO ';
k(:,i) =  1.0.*JNO3NO_06;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = ' NO3 + hv = NO2 + O3P ';
k(:,i) =  1.0.*JNO3NO2_6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = ' O3 + hv = O1D ';
k(:,i) =  1.0.*JO3O1D_06;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = ' O3 + hv = O3P ';
k(:,i) =  1.0.*JO3O3P_06;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = ' O1D + H2O = 2*OH ';
k(:,i) =  1.63e-10.*exp(60./ T).*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2; 

i=i+1;
Rnames{i} = ' O1D + M = O3P ';
k(:,i) =  2.38e-11.*exp(96./ T).*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1;
Rnames{i} = ' OH + NO = HONO ';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = ' HONO + hv = OH + NO ';
k(:,i) =  1.0.*JHONO_06;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = ' OH + HONO = NO2 ';
k(:,i) =  2.50e-12.*exp(260./ T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + NO2 = HNO3 ';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = ' OH + NO3 = HO2 + NO2 ';
k(:,i) =  2.00e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + HNO3 = NO3 ';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' HNO3 + hv = OH + NO2 ';
k(:,i) =  1.0.*JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + CO = HO2 + CO2 ';
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + O3 = HO2 ';
k(:,i) =  1.70e-12.*exp(-940./ T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3'; 
fOH(i)=fOH(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + NO = OH + NO2 ';
k(:,i) =  3.60e-12.*exp(270./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + NO2 = HNO4 ';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHNO4(i)=fHNO4(i)+1; 

i=i+1;
Rnames{i} = ' HNO4 = HO2 + NO2 ';
k(:,i) = K_HNO4;
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' HNO4 + hv = 0.61*HO2 + 0.61*NO2 + 0.39*OH + 0.39*NO3 ';
k(:,i) =  1.0.*JHNO4_06;
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1; fHO2(i)=fHO2(i)+0.61; fNO2(i)=fNO2(i)+0.61; fOH(i)=fOH(i)+0.39; fNO3(i)=fNO3(i)+0.39; 

i=i+1;
Rnames{i} = ' HNO4 + OH = NO2 ';
k(:,i) =  1.30e-12.*exp(380./ T);
Gstr{i,1} = 'HNO4'; Gstr{i,2} = 'OH'; 
fHNO4(i)=fHNO4(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + O3 = OH ';
k(:,i) =  2.03e-16.*(T./300).^4.57.*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + HO2 = HO2H ';
k(:,i) = K_HO2_HO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fHO2H(i)=fHO2H(i)+1; 

i=i+1;
Rnames{i} = ' HO2 + HO2 + H2O = HO2H ';
k(:,i) = K_HO2_HO2_H2O.*H2O;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fHO2H(i)=fHO2H(i)+1; 

i=i+1;
Rnames{i} = ' NO3 + HO2 = 0.8*OH + 0.8*NO2 + 0.2*HNO3 ';
k(:,i) =  4.00e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2'; 
fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.8; fNO2(i)=fNO2(i)+0.8; fHNO3(i)=fHNO3(i)+0.2; 

i=i+1;
Rnames{i} = ' NO3 + NO3 = 2*NO2 ';
k(:,i) =  8.50e-13.*exp(-2450./ T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2; 

i=i+1;
Rnames{i} = ' HO2H + hv = 2*OH ';
k(:,i) =  1.0.*JH2O2;
Gstr{i,1} = 'HO2H'; 
fHO2H(i)=fHO2H(i)-1; fOH(i)=fOH(i)+2; 

i=i+1;
Rnames{i} = ' HO2H + OH = HO2 ';
k(:,i) =  1.80e-12;
Gstr{i,1} = 'HO2H'; Gstr{i,2} = 'OH'; 
fHO2H(i)=fHO2H(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' OH + HO2 =  ';
k(:,i) =  4.80e-11.*exp(250./ T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = ' OH + SO2 = HO2 + SULF ';
k(:,i) = K_OH_SO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHO2(i)=fHO2(i)+1; fSULF(i)=fSULF(i)+1; 

i=i+1;
Rnames{i} = ' OH + H2 = HO2 ';
k(:,i) =  7.70e-12.*exp(-2100./ T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + NO = NO2 + HCHO + HO2 ';
k(:,i) =  2.30e-12.*exp(360./ T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO'; 
fMEO2(i)=fMEO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + HO2 = COOH ';
k(:,i) =  3.46e-13.*(T./300).^0.36.*exp(780./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2'; 
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fCOOH(i)=fCOOH(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + HO2 = HCHO ';
k(:,i) =  3.34e-14.*(T./300).^-3.53.*exp(780./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2'; 
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + NO3 = HCHO + HO2 + NO2 ';
k(:,i) =  1.30e-12;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO3'; 
fMEO2(i)=fMEO2(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + MEO2 = MEOH + HCHO ';
k(:,i) =  6.39e-14.*(T./300).^-1.80.*exp(365./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'MEO2'; 
fMEO2(i)=fMEO2(i)-1; fMEO2(i)=fMEO2(i)-1; fMEOH(i)=fMEOH(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = ' MEO2 + MEO2 = 2*HCHO + 2*HO2 ';
k(:,i) =  7.40e-13.*exp(-520./ T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'MEO2'; 
fMEO2(i)=fMEO2(i)-1; fMEO2(i)=fMEO2(i)-1; fHCHO(i)=fHCHO(i)+2; fHO2(i)=fHO2(i)+2; 

i=i+1;
Rnames{i} = ' RO2C + NO = NO2 ';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'NO'; 
fRO2C(i)=fRO2C(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' RO2C + HO2 =  ';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'HO2'; 
fRO2C(i)=fRO2C(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = ' RO2C + NO3 = NO2 ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'NO3'; 
fRO2C(i)=fRO2C(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' RO2C + MEO2 = 0.5*HO2 + 0.75*HCHO + 0.25*MEOH ';
k(:,i) =  2.00e-13;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'MEO2'; 
fRO2C(i)=fRO2C(i)-1; fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)+0.5; fHCHO(i)=fHCHO(i)+0.75; fMEOH(i)=fMEOH(i)+0.25; 

i=i+1;
Rnames{i} = ' RO2C + RO2C =  ';
k(:,i) =  3.50e-14;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'RO2C'; 
fRO2C(i)=fRO2C(i)-1; fRO2C(i)=fRO2C(i)-1; 

i=i+1;
Rnames{i} = ' RO2XC + NO = XN ';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'NO'; 
fRO2XC(i)=fRO2XC(i)-1; fNO(i)=fNO(i)-1; fXN(i)=fXN(i)+1; 

i=i+1;
Rnames{i} = ' RO2XC + HO2 =  ';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'HO2'; 
fRO2XC(i)=fRO2XC(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = ' RO2XC + NO3 = NO2 ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'NO3'; 
fRO2XC(i)=fRO2XC(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' RO2XC + MEO2 = 0.5*HO2 + 0.75*HCHO + 0.25*MEOH ';
k(:,i) =  2.00e-13;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'MEO2'; 
fRO2XC(i)=fRO2XC(i)-1; fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)+0.5; fHCHO(i)=fHCHO(i)+0.75; fMEOH(i)=fMEOH(i)+0.25; 

i=i+1;
Rnames{i} = ' RO2XC + RO2C =  ';
k(:,i) =  3.50e-14;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'RO2C'; 
fRO2XC(i)=fRO2XC(i)-1; fRO2C(i)=fRO2C(i)-1; 

i=i+1;
Rnames{i} = ' RO2XC + RO2XC =  ';
k(:,i) =  3.50e-14;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'RO2XC'; 
fRO2XC(i)=fRO2XC(i)-1; fRO2XC(i)=fRO2XC(i)-1; 

i=i+1;
Rnames{i} = ' MECO3 + NO2 = PAN ';
k(:,i) = K_MECO3_NO2;
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'NO2'; 
fMECO3(i)=fMECO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = ' PAN = MECO3 + NO2 ';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMECO3(i)=fMECO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' PAN + hv = 0.6*MECO3 + 0.6*NO2 + 0.4*MEO2 + 0.4*CO2 + 0.4*NO3 ';
k(:,i) =  1.0.*JPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMECO3(i)=fMECO3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fMEO2(i)=fMEO2(i)+0.4; fCO2(i)=fCO2(i)+0.4; fNO3(i)=fNO3(i)+0.4; 

i=i+1;
Rnames{i} = ' MECO3 + NO = MEO2 + CO2 + NO2 ';
k(:,i) =  7.50e-12.*exp(290./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'NO'; 
fMECO3(i)=fMECO3(i)-1; fNO(i)=fNO(i)-1; fMEO2(i)=fMEO2(i)+1; fCO2(i)=fCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' MECO3 + HO2 = AACD + 0.3*O3 ';
k(:,i) =  5.20e-13.*exp(980./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'HO2'; 
fMECO3(i)=fMECO3(i)-1; fHO2(i)=fHO2(i)-1; fAACD(i)=fAACD(i)+1; fO3(i)=fO3(i)+0.3; 

i=i+1;
Rnames{i} = ' MECO3 + NO3 = MEO2 + CO2 + NO2 ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'NO3'; 
fMECO3(i)=fMECO3(i)-1; fNO3(i)=fNO3(i)-1; fMEO2(i)=fMEO2(i)+1; fCO2(i)=fCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' MECO3 + MEO2 = 0.1*AACD + 0.1*HCHO + 0.9*HCHO + 0.9*HO2 + 0.9*MEO2 +  0.9*CO2 ';
k(:,i) =  2.00e-12.*exp(500./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'MEO2'; 
fMECO3(i)=fMECO3(i)-1; fMEO2(i)=fMEO2(i)-1; fAACD(i)=fAACD(i)+0.1; fHCHO(i)=fHCHO(i)+0.1; fHCHO(i)=fHCHO(i)+0.9; fHO2(i)=fHO2(i)+0.9; fMEO2(i)=fMEO2(i)+0.9; fCO2(i)=fCO2(i)+0.9; 

i=i+1;
Rnames{i} = ' MECO3 + RO2C = MEO2 + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'RO2C'; 
fMECO3(i)=fMECO3(i)-1; fRO2C(i)=fRO2C(i)-1; fMEO2(i)=fMEO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' MECO3 + RO2XC = MEO2 + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'RO2XC'; 
fMECO3(i)=fMECO3(i)-1; fRO2XC(i)=fRO2XC(i)-1; fMEO2(i)=fMEO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' MECO3 + MECO3 = 2*MEO2 + 2*CO2 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'MECO3'; 
fMECO3(i)=fMECO3(i)-1; fMECO3(i)=fMECO3(i)-1; fMEO2(i)=fMEO2(i)+2; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' RCO3 + NO2 = PAN2 ';
k(:,i) =  1.21e-11.*(T./300).^-1.07.*exp(0./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN2(i)=fPAN2(i)+1; 

i=i+1;
Rnames{i} = ' PAN2 = RCO3 + NO2 ';
k(:,i) =  8.30e+16.*exp(-13940./ T);
Gstr{i,1} = 'PAN2'; 
fPAN2(i)=fPAN2(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' PAN2 + hv = 0.6*RCO3 + 0.6*NO2 + 0.4*RO2C + 0.4*xHO2 + 0.4*yROOH + 0.4*xCCHO +  0.4*CO2 + 0.4*NO3 ';
k(:,i) =  1.0.*JPAN;
Gstr{i,1} = 'PAN2'; 
fPAN2(i)=fPAN2(i)-1; fRCO3(i)=fRCO3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fRO2C(i)=fRO2C(i)+0.4; fxHO2(i)=fxHO2(i)+0.4; fyROOH(i)=fyROOH(i)+0.4; fxCCHO(i)=fxCCHO(i)+0.4; fCO2(i)=fCO2(i)+0.4; fNO3(i)=fNO3(i)+0.4; 

i=i+1;
Rnames{i} = ' RCO3 + NO = NO2 + RO2C + xHO2 + yROOH + xCCHO + CO2 ';
k(:,i) =  6.70e-12.*exp(340./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + HO2 = PACD + 0.25*O3 ';
k(:,i) =  5.20e-13.*exp(980./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+1; fO3(i)=fO3(i)+0.25; 

i=i+1;
Rnames{i} = ' RCO3 + NO3 = NO2 + RO2C + xHO2 + yROOH + xCCHO + CO2 ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO3'; 
fRCO3(i)=fRCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + MEO2 = HCHO + HO2 + RO2C + xHO2 + xCCHO + yROOH + CO2';
k(:,i) =  2.00e-12.*exp(500./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MEO2'; 
fRCO3(i)=fRCO3(i)-1; fMEO2(i)=fMEO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + RO2C = RO2C + xHO2 + xCCHO + yROOH + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RO2C'; 
fRCO3(i)=fRCO3(i)-1; fRO2C(i)=fRO2C(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + RO2XC = RO2C + xHO2 + xCCHO + yROOH + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RO2XC'; 
fRCO3(i)=fRCO3(i)-1; fRO2XC(i)=fRO2XC(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + MECO3 = 2*CO2 + MEO2 + RO2C + xHO2 + yROOH + xCCHO ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MECO3'; 
fRCO3(i)=fRCO3(i)-1; fMECO3(i)=fMECO3(i)-1; fCO2(i)=fCO2(i)+2; fMEO2(i)=fMEO2(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; 

i=i+1;
Rnames{i} = ' RCO3 + RCO3 = 2*RO2C + 2*xHO2 + 2*xCCHO + 2*yROOH + 2*CO2 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'RCO3'; 
fRCO3(i)=fRCO3(i)-1; fRCO3(i)=fRCO3(i)-1; fRO2C(i)=fRO2C(i)+2; fxHO2(i)=fxHO2(i)+2; fxCCHO(i)=fxCCHO(i)+2; fyROOH(i)=fyROOH(i)+2; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' BZCO3 + NO2 = PBZN ';
k(:,i) =  1.37e-11;
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'NO2'; 
fBZCO3(i)=fBZCO3(i)-1; fNO2(i)=fNO2(i)-1; fPBZN(i)=fPBZN(i)+1; 

i=i+1;
Rnames{i} = ' PBZN = BZCO3 + NO2 ';
k(:,i) =  7.90e+16.*exp(-14000./ T);
Gstr{i,1} = 'PBZN'; 
fPBZN(i)=fPBZN(i)-1; fBZCO3(i)=fBZCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' PBZN + hv = 0.6*BZCO3 + 0.6*NO2 + 0.4*CO2 + 0.4*BZO + 0.4*RO2C + 0.4*NO3';
k(:,i) =  1.0.*JPAN;
Gstr{i,1} = 'PBZN'; 
fPBZN(i)=fPBZN(i)-1; fBZCO3(i)=fBZCO3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fCO2(i)=fCO2(i)+0.4; fBZO(i)=fBZO(i)+0.4; fRO2C(i)=fRO2C(i)+0.4; fNO3(i)=fNO3(i)+0.4; 

i=i+1;
Rnames{i} = ' BZCO3 + NO = NO2 + CO2 + BZO + RO2C ';
k(:,i) =  6.70e-12.*exp(340./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'NO'; 
fBZCO3(i)=fBZCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCO2(i)=fCO2(i)+1; fBZO(i)=fBZO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + HO2 = PACD + 0.25*O3 + 4*XC ';
k(:,i) =  5.20e-13.*exp(980./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'HO2'; 
fBZCO3(i)=fBZCO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+1; fO3(i)=fO3(i)+0.25; fXC(i)=fXC(i)+4; 

i=i+1;
Rnames{i} = ' BZCO3 + NO3 = NO2 + CO2 + BZO + RO2C ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'NO3'; 
fBZCO3(i)=fBZCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCO2(i)=fCO2(i)+1; fBZO(i)=fBZO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + MEO2 = HCHO + HO2 + RO2C + BZO + CO2 ';
k(:,i) =  2.00e-12.*exp(500./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'MEO2'; 
fBZCO3(i)=fBZCO3(i)-1; fMEO2(i)=fMEO2(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fRO2C(i)=fRO2C(i)+1; fBZO(i)=fBZO(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + RO2C = RO2C + BZO + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'RO2C'; 
fBZCO3(i)=fBZCO3(i)-1; fRO2C(i)=fRO2C(i)-1; fRO2C(i)=fRO2C(i)+1; fBZO(i)=fBZO(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + RO2XC = RO2C + BZO + CO2 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'RO2XC'; 
fBZCO3(i)=fBZCO3(i)-1; fRO2XC(i)=fRO2XC(i)-1; fRO2C(i)=fRO2C(i)+1; fBZO(i)=fBZO(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + MECO3 = 2*CO2 + MEO2 + BZO + RO2C ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'MECO3'; 
fBZCO3(i)=fBZCO3(i)-1; fMECO3(i)=fMECO3(i)-1; fCO2(i)=fCO2(i)+2; fMEO2(i)=fMEO2(i)+1; fBZO(i)=fBZO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + RCO3 = 2*CO2 + RO2C + xHO2 + yROOH + xCCHO + BZO + RO2C';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'RCO3'; 
fBZCO3(i)=fBZCO3(i)-1; fRCO3(i)=fRCO3(i)-1; fCO2(i)=fCO2(i)+2; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; fBZO(i)=fBZO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = ' BZCO3 + BZCO3 = 2*BZO + 2*RO2C + 2*CO2 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'BZCO3'; 
fBZCO3(i)=fBZCO3(i)-1; fBZCO3(i)=fBZCO3(i)-1; fBZO(i)=fBZO(i)+2; fRO2C(i)=fRO2C(i)+2; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' MACO3 + NO2 = MAPAN ';
k(:,i) =  1.21e-11.*(T./300).^-1.07.*exp(0./T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO2'; 
fMACO3(i)=fMACO3(i)-1; fNO2(i)=fNO2(i)-1; fMAPAN(i)=fMAPAN(i)+1; 

i=i+1;
Rnames{i} = ' MAPAN = MACO3 + NO2 ';
k(:,i) =  1.60e+16.*exp(-13486./ T);
Gstr{i,1} = 'MAPAN'; 
fMAPAN(i)=fMAPAN(i)-1; fMACO3(i)=fMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' MAPAN + hv = 0.6*MACO3 + 0.6*NO2 + 0.4*CO2 + 0.4*HCHO + 0.4*MECO3 + 0.4*NO3';
k(:,i) =  1.0.*JPAN;
Gstr{i,1} = 'MAPAN'; 
fMAPAN(i)=fMAPAN(i)-1; fMACO3(i)=fMACO3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fCO2(i)=fCO2(i)+0.4; fHCHO(i)=fHCHO(i)+0.4; fMECO3(i)=fMECO3(i)+0.4; fNO3(i)=fNO3(i)+0.4; 

i=i+1;
Rnames{i} = ' MACO3 + NO = NO2 + CO2 + HCHO + MECO3 ';
k(:,i) =  6.70e-12.*exp(340./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO'; 
fMACO3(i)=fMACO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCO2(i)=fCO2(i)+1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + HO2 = PACD + 0.25*O3 + XC ';
k(:,i) =  5.20e-13.*exp(980./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+1; fO3(i)=fO3(i)+0.25; fXC(i)=fXC(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + NO3 = NO2 + CO2 + HCHO + MECO3 ';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO3'; 
fMACO3(i)=fMACO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCO2(i)=fCO2(i)+1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + MEO2 = 2*HCHO + HO2 + CO2 + MECO3 ';
k(:,i) =  2.00e-12.*exp(500./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'MEO2'; 
fMACO3(i)=fMACO3(i)-1; fMEO2(i)=fMEO2(i)-1; fHCHO(i)=fHCHO(i)+2; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + RO2C = CO2 + HCHO + MECO3 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2C'; 
fMACO3(i)=fMACO3(i)-1; fRO2C(i)=fRO2C(i)-1; fCO2(i)=fCO2(i)+1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + RO2XC = CO2 + HCHO + MECO3 ';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2XC'; 
fMACO3(i)=fMACO3(i)-1; fRO2XC(i)=fRO2XC(i)-1; fCO2(i)=fCO2(i)+1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + MECO3 = 2*CO2 + MEO2 + HCHO + MECO3 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'MECO3'; 
fMACO3(i)=fMACO3(i)-1; fMECO3(i)=fMECO3(i)-1; fCO2(i)=fCO2(i)+2; fMEO2(i)=fMEO2(i)+1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MACO3 + RCO3 = HCHO + MECO3 + RO2C + xHO2 + yROOH + xCCHO + 2*CO2';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RCO3'; 
fMACO3(i)=fMACO3(i)-1; fRCO3(i)=fRCO3(i)-1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' MACO3 + BZCO3 = HCHO + MECO3 + BZO + RO2C + 2*CO2 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'BZCO3'; 
fMACO3(i)=fMACO3(i)-1; fBZCO3(i)=fBZCO3(i)-1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; fBZO(i)=fBZO(i)+1; fRO2C(i)=fRO2C(i)+1; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' MACO3 + MACO3 = 2*HCHO + 2*MECO3 + 2*CO2 ';
k(:,i) =  2.90e-12.*exp(500./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'MACO3'; 
fMACO3(i)=fMACO3(i)-1; fMACO3(i)=fMACO3(i)-1; fHCHO(i)=fHCHO(i)+2; fMECO3(i)=fMECO3(i)+2; fCO2(i)=fCO2(i)+2; 

i=i+1;
Rnames{i} = ' TBUO + NO2 = RNO3 + -2*XC ';
k(:,i) =  2.40e-11;
Gstr{i,1} = 'TBUO'; Gstr{i,2} = 'NO2'; 
fTBUO(i)=fTBUO(i)-1; fNO2(i)=fNO2(i)-1; fRNO3(i)=fRNO3(i)+1; fXC(i)=fXC(i)+-2; 

i=i+1;
Rnames{i} = ' TBUO = ACET + MEO2 ';
k(:,i) =  7.50e+14.*exp(-8152./ T);
Gstr{i,1} = 'TBUO'; 
fTBUO(i)=fTBUO(i)-1; fACET(i)=fACET(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = ' BZO + NO2 = NPHE ';
k(:,i) =  2.30e-11.*exp(150./ T);
Gstr{i,1} = 'BZO'; Gstr{i,2} = 'NO2'; 
fBZO(i)=fBZO(i)-1; fNO2(i)=fNO2(i)-1; fNPHE(i)=fNPHE(i)+1; 

i=i+1;
Rnames{i} = ' BZO + HO2 = CRES + -1*XC ';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'BZO'; Gstr{i,2} = 'HO2'; 
fBZO(i)=fBZO(i)-1; fHO2(i)=fHO2(i)-1; fCRES(i)=fCRES(i)+1; fXC(i)=fXC(i)+-1; 

i=i+1;
Rnames{i} = ' BZO = CRES + RO2C + xHO2 + -1*XC ';
k(:,i) =  1.00e-03;
Gstr{i,1} = 'BZO'; 
fBZO(i)=fBZO(i)-1; fCRES(i)=fCRES(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fXC(i)=fXC(i)+-1; 

i=i+1;
Rnames{i} = ' HCHO + hv = 2*HO2 + CO ';
k(:,i) =  1.0.*JHCHOR_06;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' HCHO + hv = CO ';
k(:,i) =  1.0.*JHCHOM_06;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' HCHO + OH = HO2 + CO ';
k(:,i) =  5.40e-12.*exp(135./ T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'OH'; 
fHCHO(i)=fHCHO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' HCHO + NO3 = HNO3 + HO2 + CO ';
k(:,i) =  2.00e-12.*exp(-2431./ T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'NO3'; 
fHCHO(i)=fHCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' CCHO + OH = MECO3 ';
k(:,i) =  4.40e-12.*exp(365./ T);
Gstr{i,1} = 'CCHO'; Gstr{i,2} = 'OH'; 
fCCHO(i)=fCCHO(i)-1; fOH(i)=fOH(i)-1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' CCHO + hv = CO + HO2 + MEO2 ';
k(:,i) =  1.0.*JCCHO_R;
Gstr{i,1} = 'CCHO'; 
fCCHO(i)=fCCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = ' CCHO + NO3 = HNO3 + MECO3 ';
k(:,i) =  1.40e-12.*exp(-1860./ T);
Gstr{i,1} = 'CCHO'; Gstr{i,2} = 'NO3'; 
fCCHO(i)=fCCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' RCHO + OH = 0.965*RCO3 + 0.035*RO2C + 0.035*xHO2 + 0.035*xCO +  0.035*xCCHO + 0.035*yROOH ';
k(:,i) =  5.10e-12.*exp(405./ T);
Gstr{i,1} = 'RCHO'; Gstr{i,2} = 'OH'; 
fRCHO(i)=fRCHO(i)-1; fOH(i)=fOH(i)-1; fRCO3(i)=fRCO3(i)+0.965; fRO2C(i)=fRO2C(i)+0.035; fxHO2(i)=fxHO2(i)+0.035; fxCO(i)=fxCO(i)+0.035; fxCCHO(i)=fxCCHO(i)+0.035; fyROOH(i)=fyROOH(i)+0.035; 

i=i+1;
Rnames{i} = ' RCHO + hv = RO2C + xHO2 + yROOH + xCCHO + CO + HO2 ';
k(:,i) =  1.0.*JC2CHO;
Gstr{i,1} = 'RCHO'; 
fRCHO(i)=fRCHO(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fyROOH(i)=fyROOH(i)+1; fxCCHO(i)=fxCCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' RCHO + NO3 = HNO3 + RCO3 ';
k(:,i) =  1.40e-12.*exp(-1601./ T);
Gstr{i,1} = 'RCHO'; Gstr{i,2} = 'NO3'; 
fRCHO(i)=fRCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = ' ACET + OH = RO2C + xMECO3 + xHCHO + yROOH ';
k(:,i) =  4.56e-14.*(T./300).^3.65.*exp(429./T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH'; 
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+1; fxMECO3(i)=fxMECO3(i)+1; fxHCHO(i)=fxHCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' ACET + hv = 0.62*MECO3 + 1.38*MEO2 + 0.38*CO ';
k(:,i) =  5.00e-1.*JACET_06;
Gstr{i,1} = 'ACET'; 
fACET(i)=fACET(i)-1; fMECO3(i)=fMECO3(i)+0.62; fMEO2(i)=fMEO2(i)+1.38; fCO(i)=fCO(i)+0.38; 

i=i+1;
Rnames{i} = ' MEK + OH = 0.967*RO2C + 0.039*RO2XC + 0.039*zRNO3 + 0.376*xHO2 + 0.51*xMECO3 + 0.074*xRCO3 + 0.088*xHCHO + 0.504*xCCHO + 0.376*xRCHO +  yROOH + 0.3*XC ';
k(:,i) =  1.30e-12.*(T./300).^2.00.*exp(-25./T);
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+0.967; fRO2XC(i)=fRO2XC(i)+0.039; fzRNO3(i)=fzRNO3(i)+0.039; fxHO2(i)=fxHO2(i)+0.376; fxMECO3(i)=fxMECO3(i)+0.51; fxRCO3(i)=fxRCO3(i)+0.074; fxHCHO(i)=fxHCHO(i)+0.088; fxCCHO(i)=fxCCHO(i)+0.504; fxRCHO(i)=fxRCHO(i)+0.376; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+0.3; 

i=i+1;
Rnames{i} = ' MEK + hv = MECO3 + RO2C + xHO2 + xCCHO + yROOH ';
k(:,i) =  1.75e-1.*JMEK_06;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fMECO3(i)=fMECO3(i)+1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' MEOH + OH = HCHO + HO2 ';
k(:,i) =  2.85e-12.*exp(-345./ T);
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'OH'; 
fMEOH(i)=fMEOH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' FACD + OH = HO2 + CO2 ';
k(:,i) =  4.50e-13;
Gstr{i,1} = 'FACD'; Gstr{i,2} = 'OH'; 
fFACD(i)=fFACD(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = ' AACD + OH = 0.509*MEO2 + 0.491*RO2C + 0.509*CO2 + 0.491*xHO2 +  0.491*xMGLY + 0.491*yROOH + -0.491*XC ';
k(:,i) =  4.20e-14.*exp(855./ T);
Gstr{i,1} = 'AACD'; Gstr{i,2} = 'OH'; 
fAACD(i)=fAACD(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+0.509; fRO2C(i)=fRO2C(i)+0.491; fCO2(i)=fCO2(i)+0.509; fxHO2(i)=fxHO2(i)+0.491; fxMGLY(i)=fxMGLY(i)+0.491; fyROOH(i)=fyROOH(i)+0.491; fXC(i)=fXC(i)+-0.491; 

i=i+1;
Rnames{i} = ' PACD + OH = RO2C + xHO2 + 0.143*CO2 + 0.142*xCCHO + 0.4*xRCHO +  0.457*xBACL + yROOH + -0.455*XC ';
k(:,i) =  1.20e-12;
Gstr{i,1} = 'PACD'; Gstr{i,2} = 'OH'; 
fPACD(i)=fPACD(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fCO2(i)=fCO2(i)+0.143; fxCCHO(i)=fxCCHO(i)+0.142; fxRCHO(i)=fxRCHO(i)+0.4; fxBACL(i)=fxBACL(i)+0.457; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+-0.455; 

i=i+1;
Rnames{i} = ' COOH + OH = 0.3*HCHO + 0.3*OH + 0.7*MEO2 ';
k(:,i) =  3.80e-12.*exp(200./ T);
Gstr{i,1} = 'COOH'; Gstr{i,2} = 'OH'; 
fCOOH(i)=fCOOH(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+0.3; fOH(i)=fOH(i)+0.3; fMEO2(i)=fMEO2(i)+0.7; 

i=i+1;
Rnames{i} = ' COOH + hv = HCHO + HO2 + OH ';
k(:,i) =  1.0.*JCOOH;
Gstr{i,1} = 'COOH'; 
fCOOH(i)=fCOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' ROOH + OH = 0.744*OH + 0.251*RO2C + 0.004*RO2XC + 0.004*zRNO3 + 0.744*RCHO + 0.239*xHO2 + 0.012*xOH + 0.012*xHCHO + 0.012*xCCHO +  0.205*xRCHO + 0.034*xPROD2 + 0.256*yROOH + -0.115*XC ';
k(:,i) =  2.50e-11;
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.744; fRO2C(i)=fRO2C(i)+0.251; fRO2XC(i)=fRO2XC(i)+0.004; fzRNO3(i)=fzRNO3(i)+0.004; fRCHO(i)=fRCHO(i)+0.744; fxHO2(i)=fxHO2(i)+0.239; fxOH(i)=fxOH(i)+0.012; fxHCHO(i)=fxHCHO(i)+0.012; fxCCHO(i)=fxCCHO(i)+0.012; fxRCHO(i)=fxRCHO(i)+0.205; fxPROD2(i)=fxPROD2(i)+0.034; fyROOH(i)=fyROOH(i)+0.256; fXC(i)=fXC(i)+-0.115; 

i=i+1;
Rnames{i} = ' ROOH + hv = RCHO + HO2 + OH ';
k(:,i) =  1.0.*JCOOH;
Gstr{i,1} = 'ROOH'; 
fROOH(i)=fROOH(i)-1; fRCHO(i)=fRCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' R6OOH + OH = 0.84*OH + 0.222*RO2C + 0.029*RO2XC + 0.029*zRNO3 + 0.84*PRD2 + 0.09*xHO2 + 0.041*xOH + 0.02*xCCHO + 0.075*xRCHO +  0.084*xPROD2 + 0.16*yROOH + 0.02*XC ';
k(:,i) =  5.60e-11;
Gstr{i,1} = 'R6OOH'; Gstr{i,2} = 'OH'; 
fR6OOH(i)=fR6OOH(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.84; fRO2C(i)=fRO2C(i)+0.222; fRO2XC(i)=fRO2XC(i)+0.029; fzRNO3(i)=fzRNO3(i)+0.029; fPRD2(i)=fPRD2(i)+0.84; fxHO2(i)=fxHO2(i)+0.09; fxOH(i)=fxOH(i)+0.041; fxCCHO(i)=fxCCHO(i)+0.02; fxRCHO(i)=fxRCHO(i)+0.075; fxPROD2(i)=fxPROD2(i)+0.084; fyROOH(i)=fyROOH(i)+0.16; fXC(i)=fXC(i)+0.02; 

i=i+1;
Rnames{i} = ' R6OOH + hv = OH + 0.142*HO2 + 0.782*RO2C + 0.077*RO2XC + 0.077*zRNO3 + 0.085*RCHO + 0.142*PRD2 + 0.782*xHO2 + 0.026*xCCHO + 0.058*xRCHO +  0.698*xPROD2 + 0.858*yR6OOH + 0.017*XC ';
k(:,i) =  1.0.*JCOOH;
Gstr{i,1} = 'R6OOH'; 
fR6OOH(i)=fR6OOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+0.142; fRO2C(i)=fRO2C(i)+0.782; fRO2XC(i)=fRO2XC(i)+0.077; fzRNO3(i)=fzRNO3(i)+0.077; fRCHO(i)=fRCHO(i)+0.085; fPRD2(i)=fPRD2(i)+0.142; fxHO2(i)=fxHO2(i)+0.782; fxCCHO(i)=fxCCHO(i)+0.026; fxRCHO(i)=fxRCHO(i)+0.058; fxPROD2(i)=fxPROD2(i)+0.698; fyR6OOH(i)=fyR6OOH(i)+0.858; fXC(i)=fXC(i)+0.017; 

i=i+1;
Rnames{i} = ' RAOOH + OH = 0.139*OH + 0.148*HO2 + 0.589*RO2C + 0.124*RO2XC + 0.124*zRNO3 + 0.074*PRD2 + 0.147*MGLY + 0.139*IPRD + 0.565*xHO2 + 0.024*xOH + 0.448*xRCHO + 0.026*xGLY + 0.03*xMEK + 0.252*xMGLY +  0.073*xAFG1 + 0.073*xAFG2 + 0.713*yR6OOH + 2.674*XC ';
k(:,i) =  1.41e-10;
Gstr{i,1} = 'RAOOH'; Gstr{i,2} = 'OH'; 
fRAOOH(i)=fRAOOH(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.139; fHO2(i)=fHO2(i)+0.148; fRO2C(i)=fRO2C(i)+0.589; fRO2XC(i)=fRO2XC(i)+0.124; fzRNO3(i)=fzRNO3(i)+0.124; fPRD2(i)=fPRD2(i)+0.074; fMGLY(i)=fMGLY(i)+0.147; fIPRD(i)=fIPRD(i)+0.139; fxHO2(i)=fxHO2(i)+0.565; fxOH(i)=fxOH(i)+0.024; fxRCHO(i)=fxRCHO(i)+0.448; fxGLY(i)=fxGLY(i)+0.026; fxMEK(i)=fxMEK(i)+0.03; fxMGLY(i)=fxMGLY(i)+0.252; fxAFG1(i)=fxAFG1(i)+0.073; fxAFG2(i)=fxAFG2(i)+0.073; fyR6OOH(i)=fyR6OOH(i)+0.713; fXC(i)=fXC(i)+2.674; 

i=i+1;
Rnames{i} = ' RAOOH + hv = OH + HO2 + 0.5*GLY + 0.5*MGLY + 0.5*AFG1 + 0.5*AFG2 + 0.5*XC';
k(:,i) =  1.0.*JCOOH;
Gstr{i,1} = 'RAOOH'; 
fRAOOH(i)=fRAOOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fGLY(i)=fGLY(i)+0.5; fMGLY(i)=fMGLY(i)+0.5; fAFG1(i)=fAFG1(i)+0.5; fAFG2(i)=fAFG2(i)+0.5; fXC(i)=fXC(i)+0.5; 

i=i+1;
Rnames{i} = ' GLY + hv = 2*CO + 2*HO2 ';
k(:,i) =  1.0.*JGLY_07R;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fCO(i)=fCO(i)+2; fHO2(i)=fHO2(i)+2; 

i=i+1;
Rnames{i} = ' GLY + hv = HCHO + CO ';
k(:,i) =  1.0.*JGLY_07M;
Gstr{i,1} = 'GLY'; 
fGLY(i)=fGLY(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' GLY + OH = 0.63*HO2 + 1.26*CO + 0.37*RCO3 + -0.37*XC ';
k(:,i) =  1.10e-11;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'OH'; 
fGLY(i)=fGLY(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.63; fCO(i)=fCO(i)+1.26; fRCO3(i)=fRCO3(i)+0.37; fXC(i)=fXC(i)+-0.37; 

i=i+1;
Rnames{i} = ' GLY + NO3 = HNO3 + 0.63*HO2 + 1.26*CO + 0.37*RCO3 + -0.37*XC';
k(:,i) =  2.80e-12.*exp(-2376./ T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3'; 
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+0.63; fCO(i)=fCO(i)+1.26; fRCO3(i)=fRCO3(i)+0.37; fXC(i)=fXC(i)+-0.37; 

i=i+1;
Rnames{i} = ' MGLY + hv = HO2 + CO + MECO3 ';
k(:,i) =  1.0.*JMGLY_06;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MGLY + OH = CO + MECO3 ';
k(:,i) =  1.50e-11;
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MGLY + NO3 = HNO3 + CO + MECO3 ';
k(:,i) =  1.40e-12.*exp(-1895./ T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' BACL + hv = 2*MECO3 ';
k(:,i) =  1.0.*JBACL_07;
Gstr{i,1} = 'BACL'; 
fBACL(i)=fBACL(i)-1; fMECO3(i)=fMECO3(i)+2; 

i=i+1;
Rnames{i} = ' CRES + OH = 0.2*BZO + 0.8*RO2C + 0.8*xHO2 + 0.8*yR6OOH + 0.25*xMGLY +  5.05*XC ';
k(:,i) =  1.70e-12.*exp(950./ T);
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'OH'; 
fCRES(i)=fCRES(i)-1; fOH(i)=fOH(i)-1; fBZO(i)=fBZO(i)+0.2; fRO2C(i)=fRO2C(i)+0.8; fxHO2(i)=fxHO2(i)+0.8; fyR6OOH(i)=fyR6OOH(i)+0.8; fxMGLY(i)=fxMGLY(i)+0.25; fXC(i)=fXC(i)+5.05; 

i=i+1;
Rnames{i} = ' CRES + NO3 = HNO3 + BZO + XC ';
k(:,i) =  1.40e-11;
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'NO3'; 
fCRES(i)=fCRES(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fBZO(i)=fBZO(i)+1; fXC(i)=fXC(i)+1; 

i=i+1;
Rnames{i} = ' NPHE + OH = BZO + XN ';
k(:,i) =  3.50e-12;
Gstr{i,1} = 'NPHE'; Gstr{i,2} = 'OH'; 
fNPHE(i)=fNPHE(i)-1; fOH(i)=fOH(i)-1; fBZO(i)=fBZO(i)+1; fXN(i)=fXN(i)+1; 

i=i+1;
Rnames{i} = ' NPHE + hv = HONO + 6*XC ';
k(:,i) =  1.50e-3.*JNO2_06;
Gstr{i,1} = 'NPHE'; 
fNPHE(i)=fNPHE(i)-1; fHONO(i)=fHONO(i)+1; fXC(i)=fXC(i)+6; 

i=i+1;
Rnames{i} = ' NPHE + hv = 6*XC + XN ';
k(:,i) =  1.50e-2.*JNO2_06;
Gstr{i,1} = 'NPHE'; 
fNPHE(i)=fNPHE(i)-1; fXC(i)=fXC(i)+6; fXN(i)=fXN(i)+1; 

i=i+1;
Rnames{i} = ' BALD + OH = BZCO3 ';
k(:,i) =  1.20e-11;
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'OH'; 
fBALD(i)=fBALD(i)-1; fOH(i)=fOH(i)-1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = ' BALD + hv = 7*XC ';
k(:,i) =  6.00e-2.*JBALD_06;
Gstr{i,1} = 'BALD'; 
fBALD(i)=fBALD(i)-1; fXC(i)=fXC(i)+7; 

i=i+1;
Rnames{i} = ' BALD + NO3 = HNO3 + BZCO3 ';
k(:,i) =  1.34e-12.*exp(-1860./ T);
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'NO3'; 
fBALD(i)=fBALD(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = ' AFG1 + OH = 0.217*MACO3 + 0.723*RO2C + 0.06*RO2XC + 0.06*zRNO3 + 0.521*xHO2 + 0.201*xMECO3 + 0.334*xCO + 0.407*xRCHO + 0.129*xMEK +  0.107*xGLY + 0.267*xMGLY + 0.783*yR6OOH + 0.284*XC ';
k(:,i) =  7.40e-11;
Gstr{i,1} = 'AFG1'; Gstr{i,2} = 'OH'; 
fAFG1(i)=fAFG1(i)-1; fOH(i)=fOH(i)-1; fMACO3(i)=fMACO3(i)+0.217; fRO2C(i)=fRO2C(i)+0.723; fRO2XC(i)=fRO2XC(i)+0.06; fzRNO3(i)=fzRNO3(i)+0.06; fxHO2(i)=fxHO2(i)+0.521; fxMECO3(i)=fxMECO3(i)+0.201; fxCO(i)=fxCO(i)+0.334; fxRCHO(i)=fxRCHO(i)+0.407; fxMEK(i)=fxMEK(i)+0.129; fxGLY(i)=fxGLY(i)+0.107; fxMGLY(i)=fxMGLY(i)+0.267; fyR6OOH(i)=fyR6OOH(i)+0.783; fXC(i)=fXC(i)+0.284; 

i=i+1;
Rnames{i} = ' AFG1 + O3 = 0.826*OH + 0.522*HO2 + 0.652*RO2C + 0.522*CO + 0.174*CO2 + 0.432*GLY + 0.568*MGLY + 0.652*xRCO3 + 0.652*xHCHO + 0.652*yR6OOH +  -0.872*XC ';
k(:,i) =  9.66e-18;
Gstr{i,1} = 'AFG1'; Gstr{i,2} = 'O3'; 
fAFG1(i)=fAFG1(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.826; fHO2(i)=fHO2(i)+0.522; fRO2C(i)=fRO2C(i)+0.652; fCO(i)=fCO(i)+0.522; fCO2(i)=fCO2(i)+0.174; fGLY(i)=fGLY(i)+0.432; fMGLY(i)=fMGLY(i)+0.568; fxRCO3(i)=fxRCO3(i)+0.652; fxHCHO(i)=fxHCHO(i)+0.652; fyR6OOH(i)=fyR6OOH(i)+0.652; fXC(i)=fXC(i)+-0.872; 

i=i+1;
Rnames{i} = ' AFG1 + hv = 1.023*HO2 + 0.173*MEO2 + 0.305*MECO3 + 0.5*MACO3 + 0.695*CO +  0.195*GLY + 0.305*MGLY + 0.217*XC ';
k(:,i) =  1.0.*JAFG1;
Gstr{i,1} = 'AFG1'; 
fAFG1(i)=fAFG1(i)-1; fHO2(i)=fHO2(i)+1.023; fMEO2(i)=fMEO2(i)+0.173; fMECO3(i)=fMECO3(i)+0.305; fMACO3(i)=fMACO3(i)+0.5; fCO(i)=fCO(i)+0.695; fGLY(i)=fGLY(i)+0.195; fMGLY(i)=fMGLY(i)+0.305; fXC(i)=fXC(i)+0.217; 

i=i+1;
Rnames{i} = ' AFG2 + OH = 0.217*MACO3 + 0.723*RO2C + 0.06*RO2XC + 0.06*zRNO3 + 0.521*xHO2 + 0.201*xMECO3 + 0.334*xCO + 0.407*xRCHO + 0.129*xMEK +  0.107*xGLY + 0.267*xMGLY + 0.783*yR6OOH + 0.284*XC ';
k(:,i) =  7.40e-11;
Gstr{i,1} = 'AFG2'; Gstr{i,2} = 'OH'; 
fAFG2(i)=fAFG2(i)-1; fOH(i)=fOH(i)-1; fMACO3(i)=fMACO3(i)+0.217; fRO2C(i)=fRO2C(i)+0.723; fRO2XC(i)=fRO2XC(i)+0.06; fzRNO3(i)=fzRNO3(i)+0.06; fxHO2(i)=fxHO2(i)+0.521; fxMECO3(i)=fxMECO3(i)+0.201; fxCO(i)=fxCO(i)+0.334; fxRCHO(i)=fxRCHO(i)+0.407; fxMEK(i)=fxMEK(i)+0.129; fxGLY(i)=fxGLY(i)+0.107; fxMGLY(i)=fxMGLY(i)+0.267; fyR6OOH(i)=fyR6OOH(i)+0.783; fXC(i)=fXC(i)+0.284; 

i=i+1;
Rnames{i} = ' AFG2 + O3 = 0.826*OH + 0.522*HO2 + 0.652*RO2C + 0.522*CO + 0.174*CO2 + 0.432*GLY + 0.568*MGLY + 0.652*xRCO3 + 0.652*xHCHO + 0.652*yR6OOH +  -0.872*XC ';
k(:,i) =  9.66e-18;
Gstr{i,1} = 'AFG2'; Gstr{i,2} = 'O3'; 
fAFG2(i)=fAFG2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.826; fHO2(i)=fHO2(i)+0.522; fRO2C(i)=fRO2C(i)+0.652; fCO(i)=fCO(i)+0.522; fCO2(i)=fCO2(i)+0.174; fGLY(i)=fGLY(i)+0.432; fMGLY(i)=fMGLY(i)+0.568; fxRCO3(i)=fxRCO3(i)+0.652; fxHCHO(i)=fxHCHO(i)+0.652; fyR6OOH(i)=fyR6OOH(i)+0.652; fXC(i)=fXC(i)+-0.872; 

i=i+1;
Rnames{i} = ' AFG2 + hv = PRD2 + -1*XC ';
k(:,i) =  1.0.*JAFG1;
Gstr{i,1} = 'AFG2'; 
fAFG2(i)=fAFG2(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-1; 

i=i+1;
Rnames{i} = ' AFG3 + OH = 0.206*MACO3 + 0.733*RO2C + 0.117*RO2XC + 0.117*zRNO3 + 0.561*xHO2 + 0.117*xMECO3 + 0.114*xCO + 0.274*xGLY + 0.153*xMGLY + 0.019*xBACL + 0.195*xAFG1 + 0.195*xAFG2 + 0.231*xIPRD + 0.794*yR6OOH +  0.938*XC ';
k(:,i) =  9.35e-11;
Gstr{i,1} = 'AFG3'; Gstr{i,2} = 'OH'; 
fAFG3(i)=fAFG3(i)-1; fOH(i)=fOH(i)-1; fMACO3(i)=fMACO3(i)+0.206; fRO2C(i)=fRO2C(i)+0.733; fRO2XC(i)=fRO2XC(i)+0.117; fzRNO3(i)=fzRNO3(i)+0.117; fxHO2(i)=fxHO2(i)+0.561; fxMECO3(i)=fxMECO3(i)+0.117; fxCO(i)=fxCO(i)+0.114; fxGLY(i)=fxGLY(i)+0.274; fxMGLY(i)=fxMGLY(i)+0.153; fxBACL(i)=fxBACL(i)+0.019; fxAFG1(i)=fxAFG1(i)+0.195; fxAFG2(i)=fxAFG2(i)+0.195; fxIPRD(i)=fxIPRD(i)+0.231; fyR6OOH(i)=fyR6OOH(i)+0.794; fXC(i)=fXC(i)+0.938; 

i=i+1;
Rnames{i} = ' AFG3 + O3 = 0.471*OH + 0.554*HO2 + 0.013*MECO3 + 0.258*RO2C + 0.007*RO2XC + 0.007*zRNO3 + 0.58*CO + 0.19*CO2 + 0.366*GLY + 0.184*MGLY + 0.35*AFG1 + 0.35*AFG2 + 0.139*AFG3 + 0.003*MACR + 0.004*MVK + 0.003*IPRD + 0.095*xHO2 + 0.163*xRCO3 + 0.163*xHCHO +  0.095*xMGLY + 0.264*yR6OOH + -0.575*XC ';
k(:,i) =  1.43e-17;
Gstr{i,1} = 'AFG3'; Gstr{i,2} = 'O3'; 
fAFG3(i)=fAFG3(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.471; fHO2(i)=fHO2(i)+0.554; fMECO3(i)=fMECO3(i)+0.013; fRO2C(i)=fRO2C(i)+0.258; fRO2XC(i)=fRO2XC(i)+0.007; fzRNO3(i)=fzRNO3(i)+0.007; fCO(i)=fCO(i)+0.58; fCO2(i)=fCO2(i)+0.19; fGLY(i)=fGLY(i)+0.366; fMGLY(i)=fMGLY(i)+0.184; fAFG1(i)=fAFG1(i)+0.35; fAFG2(i)=fAFG2(i)+0.35; fAFG3(i)=fAFG3(i)+0.139; fMACR(i)=fMACR(i)+0.003; fMVK(i)=fMVK(i)+0.004; fIPRD(i)=fIPRD(i)+0.003; fxHO2(i)=fxHO2(i)+0.095; fxRCO3(i)=fxRCO3(i)+0.163; fxHCHO(i)=fxHCHO(i)+0.163; fxMGLY(i)=fxMGLY(i)+0.095; fyR6OOH(i)=fyR6OOH(i)+0.264; fXC(i)=fXC(i)+-0.575; 

i=i+1;
Rnames{i} = ' MACR + OH = 0.5*MACO3 + 0.5*RO2C + 0.5*xHO2 + 0.416*xCO + 0.084*xHCHO +  0.416*xMEK + 0.084*xMGLY + 0.5*yROOH + -0.416*XC ';
k(:,i) =  8.00e-12.*exp(380./ T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'OH'; 
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)-1; fMACO3(i)=fMACO3(i)+0.5; fRO2C(i)=fRO2C(i)+0.5; fxHO2(i)=fxHO2(i)+0.5; fxCO(i)=fxCO(i)+0.416; fxHCHO(i)=fxHCHO(i)+0.084; fxMEK(i)=fxMEK(i)+0.416; fxMGLY(i)=fxMGLY(i)+0.084; fyROOH(i)=fyROOH(i)+0.5; fXC(i)=fXC(i)+-0.416; 

i=i+1;
Rnames{i} = ' MACR + O3 = 0.208*OH + 0.108*HO2 + 0.1*RO2C + 0.45*CO + 0.117*CO2 + 0.1*HCHO + 0.9*MGLY + 0.333*FACD + 0.1*xRCO3 + 0.1*xHCHO + 0.1*yROOH +  -0.1*XC ';
k(:,i) =  1.40e-15.*exp(-2100./ T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'O3'; 
fMACR(i)=fMACR(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.208; fHO2(i)=fHO2(i)+0.108; fRO2C(i)=fRO2C(i)+0.1; fCO(i)=fCO(i)+0.45; fCO2(i)=fCO2(i)+0.117; fHCHO(i)=fHCHO(i)+0.1; fMGLY(i)=fMGLY(i)+0.9; fFACD(i)=fFACD(i)+0.333; fxRCO3(i)=fxRCO3(i)+0.1; fxHCHO(i)=fxHCHO(i)+0.1; fyROOH(i)=fyROOH(i)+0.1; fXC(i)=fXC(i)+-0.1; 

i=i+1;
Rnames{i} = ' MACR + NO3 = 0.5*MACO3 + 0.5*RO2C + 0.5*HNO3 + 0.5*xHO2 + 0.5*xCO +  0.5*yROOH + 1.5*XC + 0.5*XN ';
k(:,i) =  1.50e-12.*exp(-1815./ T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3'; 
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMACO3(i)=fMACO3(i)+0.5; fRO2C(i)=fRO2C(i)+0.5; fHNO3(i)=fHNO3(i)+0.5; fxHO2(i)=fxHO2(i)+0.5; fxCO(i)=fxCO(i)+0.5; fyROOH(i)=fyROOH(i)+0.5; fXC(i)=fXC(i)+1.5; fXN(i)=fXN(i)+0.5; 

i=i+1;
Rnames{i} = ' MACR + O3P = RCHO + XC ';
k(:,i) =  6.34e-12;
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'O3P'; 
fMACR(i)=fMACR(i)-1; fO3P(i)=fO3P(i)-1; fRCHO(i)=fRCHO(i)+1; fXC(i)=fXC(i)+1; 

i=i+1;
Rnames{i} = ' MACR + hv = 0.33*OH + 0.67*HO2 + 0.34*MECO3 + 0.33*MACO3 + 0.33*RO2C + 0.67*CO + 0.34*HCHO + 0.33*xMECO3 + 0.33*xHCHO + 0.33*yROOH';
k(:,i) =  1.0.*JMACR_06;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)+0.33; fHO2(i)=fHO2(i)+0.67; fMECO3(i)=fMECO3(i)+0.34; fMACO3(i)=fMACO3(i)+0.33; fRO2C(i)=fRO2C(i)+0.33; fCO(i)=fCO(i)+0.67; fHCHO(i)=fHCHO(i)+0.34; fxMECO3(i)=fxMECO3(i)+0.33; fxHCHO(i)=fxHCHO(i)+0.33; fyROOH(i)=fyROOH(i)+0.33; 

i=i+1;
Rnames{i} = ' MVK + OH = 0.975*RO2C + 0.025*RO2XC + 0.025*zRNO3 + 0.3*xHO2 + 0.675*xMECO3 + 0.3*xHCHO + 0.675*xRCHO + 0.3*xMGLY + yROOH + -0.725*XC';
k(:,i) =  2.60e-12.*exp(610./ T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'OH'; 
fMVK(i)=fMVK(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+0.975; fRO2XC(i)=fRO2XC(i)+0.025; fzRNO3(i)=fzRNO3(i)+0.025; fxHO2(i)=fxHO2(i)+0.3; fxMECO3(i)=fxMECO3(i)+0.675; fxHCHO(i)=fxHCHO(i)+0.3; fxRCHO(i)=fxRCHO(i)+0.675; fxMGLY(i)=fxMGLY(i)+0.3; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+-0.725; 

i=i+1;
Rnames{i} = ' MVK + O3 = 0.164*OH + 0.064*HO2 + 0.05*RO2C + 0.05*xHO2 + 0.475*CO + 0.124*CO2 + 0.05*HCHO + 0.95*MGLY + 0.351*FACD + 0.05*xRCO3 +  0.05*xHCHO + 0.05*yROOH + -0.05*XC ';
k(:,i) =  8.50e-16.*exp(-1520./ T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'O3'; 
fMVK(i)=fMVK(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.164; fHO2(i)=fHO2(i)+0.064; fRO2C(i)=fRO2C(i)+0.05; fxHO2(i)=fxHO2(i)+0.05; fCO(i)=fCO(i)+0.475; fCO2(i)=fCO2(i)+0.124; fHCHO(i)=fHCHO(i)+0.05; fMGLY(i)=fMGLY(i)+0.95; fFACD(i)=fFACD(i)+0.351; fxRCO3(i)=fxRCO3(i)+0.05; fxHCHO(i)=fxHCHO(i)+0.05; fyROOH(i)=fyROOH(i)+0.05; fXC(i)=fXC(i)+-0.05; 

i=i+1;
Rnames{i} = ' MVK + O3P = 0.45*RCHO + 0.55*MEK + 0.45*XC ';
k(:,i) =  4.32e-12;
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'O3P'; 
fMVK(i)=fMVK(i)-1; fO3P(i)=fO3P(i)-1; fRCHO(i)=fRCHO(i)+0.45; fMEK(i)=fMEK(i)+0.55; fXC(i)=fXC(i)+0.45; 

i=i+1;
Rnames{i} = ' MVK + hv = 0.4*MEO2 + 0.6*CO + 0.6*PRD2 + 0.4*MACO3 + -2.2*XC ';
k(:,i) =  1.0.*JMVK_06;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fMEO2(i)=fMEO2(i)+0.4; fCO(i)=fCO(i)+0.6; fPRD2(i)=fPRD2(i)+0.6; fMACO3(i)=fMACO3(i)+0.4; fXC(i)=fXC(i)+-2.2; 

i=i+1;
Rnames{i} = ' IPRD + OH = 0.289*MACO3 + 0.67*RO2C + 0.67*xHO2 + 0.041*RO2XC + 0.041*zRNO3 + 0.336*xCO + 0.055*xHCHO + 0.129*xCCHO + 0.013*xRCHO + 0.15*xMEK + 0.332*xPROD2 + 0.15*xGLY + 0.174*xMGLY + -0.504*XC +  0.711*yR6OOH ';
k(:,i) =  6.19e-11;
Gstr{i,1} = 'IPRD'; Gstr{i,2} = 'OH'; 
fIPRD(i)=fIPRD(i)-1; fOH(i)=fOH(i)-1; fMACO3(i)=fMACO3(i)+0.289; fRO2C(i)=fRO2C(i)+0.67; fxHO2(i)=fxHO2(i)+0.67; fRO2XC(i)=fRO2XC(i)+0.041; fzRNO3(i)=fzRNO3(i)+0.041; fxCO(i)=fxCO(i)+0.336; fxHCHO(i)=fxHCHO(i)+0.055; fxCCHO(i)=fxCCHO(i)+0.129; fxRCHO(i)=fxRCHO(i)+0.013; fxMEK(i)=fxMEK(i)+0.15; fxPROD2(i)=fxPROD2(i)+0.332; fxGLY(i)=fxGLY(i)+0.15; fxMGLY(i)=fxMGLY(i)+0.174; fXC(i)=fXC(i)+-0.504; fyR6OOH(i)=fyR6OOH(i)+0.711; 

i=i+1;
Rnames{i} = ' IPRD + O3 = 0.285*OH + 0.4*HO2 + 0.048*RO2C + 0.048*xRCO3 + 0.498*CO + 0.14*CO2 + 0.124*HCHO + 0.21*MEK + 0.023*GLY + 0.742*MGLY + 0.1*FACD + 0.372*PACD + 0.047*xCCHO + 0.001*xHCHO + 0.048*yR6OOH + -0.329*XC';
k(:,i) =  4.18e-18;
Gstr{i,1} = 'IPRD'; Gstr{i,2} = 'O3'; 
fIPRD(i)=fIPRD(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.285; fHO2(i)=fHO2(i)+0.4; fRO2C(i)=fRO2C(i)+0.048; fxRCO3(i)=fxRCO3(i)+0.048; fCO(i)=fCO(i)+0.498; fCO2(i)=fCO2(i)+0.14; fHCHO(i)=fHCHO(i)+0.124; fMEK(i)=fMEK(i)+0.21; fGLY(i)=fGLY(i)+0.023; fMGLY(i)=fMGLY(i)+0.742; fFACD(i)=fFACD(i)+0.1; fPACD(i)=fPACD(i)+0.372; fxCCHO(i)=fxCCHO(i)+0.047; fxHCHO(i)=fxHCHO(i)+0.001; fyR6OOH(i)=fyR6OOH(i)+0.048; fXC(i)=fXC(i)+-0.329; 

i=i+1;
Rnames{i} = ' IPRD + NO3 = 0.15*MACO3 + 0.15*HNO3 + 0.799*RO2C + 0.799*xHO2 + 0.051*RO2XC + 0.051*zRNO3 + 0.572*xCO + 0.227*xHCHO + 0.218*xRCHO + 0.008*xMGLY + 0.572*xRNO3 + 0.85*yR6OOH + 0.278*XN + -0.815*XC';
k(:,i) =  1.00e-13;
Gstr{i,1} = 'IPRD'; Gstr{i,2} = 'NO3'; 
fIPRD(i)=fIPRD(i)-1; fNO3(i)=fNO3(i)-1; fMACO3(i)=fMACO3(i)+0.15; fHNO3(i)=fHNO3(i)+0.15; fRO2C(i)=fRO2C(i)+0.799; fxHO2(i)=fxHO2(i)+0.799; fRO2XC(i)=fRO2XC(i)+0.051; fzRNO3(i)=fzRNO3(i)+0.051; fxCO(i)=fxCO(i)+0.572; fxHCHO(i)=fxHCHO(i)+0.227; fxRCHO(i)=fxRCHO(i)+0.218; fxMGLY(i)=fxMGLY(i)+0.008; fxRNO3(i)=fxRNO3(i)+0.572; fyR6OOH(i)=fyR6OOH(i)+0.85; fXN(i)=fXN(i)+0.278; fXC(i)=fXC(i)+-0.815; 

i=i+1;
Rnames{i} = ' IPRD + hv = 1.233*HO2 + 0.467*MECO3 + 0.3*RCO3 + 1.233*CO + 0.3*HCHO +  0.467*CCHO + 0.233*MEK + -0.233*XC ';
k(:,i) =  1.0.*JMACR_06;
Gstr{i,1} = 'IPRD'; 
fIPRD(i)=fIPRD(i)-1; fHO2(i)=fHO2(i)+1.233; fMECO3(i)=fMECO3(i)+0.467; fRCO3(i)=fRCO3(i)+0.3; fCO(i)=fCO(i)+1.233; fHCHO(i)=fHCHO(i)+0.3; fCCHO(i)=fCCHO(i)+0.467; fMEK(i)=fMEK(i)+0.233; fXC(i)=fXC(i)+-0.233; 

i=i+1;
Rnames{i} = ' PRD2 + OH = 0.472*HO2 + 0.379*xHO2 + 0.029*xMECO3 + 0.049*xRCO3 + 0.473*RO2C + 0.071*RO2XC + 0.071*zRNO3 + 0.002*HCHO + 0.211*xHCHO + 0.001*CCHO + 0.083*xCCHO + 0.143*RCHO + 0.402*xRCHO + 0.115*xMEK +  0.329*PRD2 + 0.007*xPROD2 + 0.528*yR6OOH + 0.877*XC ';
k(:,i) =  1.55e-11;
Gstr{i,1} = 'PRD2'; Gstr{i,2} = 'OH'; 
fPRD2(i)=fPRD2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.472; fxHO2(i)=fxHO2(i)+0.379; fxMECO3(i)=fxMECO3(i)+0.029; fxRCO3(i)=fxRCO3(i)+0.049; fRO2C(i)=fRO2C(i)+0.473; fRO2XC(i)=fRO2XC(i)+0.071; fzRNO3(i)=fzRNO3(i)+0.071; fHCHO(i)=fHCHO(i)+0.002; fxHCHO(i)=fxHCHO(i)+0.211; fCCHO(i)=fCCHO(i)+0.001; fxCCHO(i)=fxCCHO(i)+0.083; fRCHO(i)=fRCHO(i)+0.143; fxRCHO(i)=fxRCHO(i)+0.402; fxMEK(i)=fxMEK(i)+0.115; fPRD2(i)=fPRD2(i)+0.329; fxPROD2(i)=fxPROD2(i)+0.007; fyR6OOH(i)=fyR6OOH(i)+0.528; fXC(i)=fXC(i)+0.877; 

i=i+1;
Rnames{i} = ' PRD2 + hv = 0.913*xHO2 + 0.4*MECO3 + 0.6*RCO3 + 1.59*RO2C + 0.087*RO2XC + 0.087*zRNO3 + 0.303*xHCHO + 0.163*xCCHO + 0.78*xRCHO + yR6OOH +  -0.091*XC ';
k(:,i) =  4.86e-3.*JMEK_06;
Gstr{i,1} = 'PRD2'; 
fPRD2(i)=fPRD2(i)-1; fxHO2(i)=fxHO2(i)+0.913; fMECO3(i)=fMECO3(i)+0.4; fRCO3(i)=fRCO3(i)+0.6; fRO2C(i)=fRO2C(i)+1.59; fRO2XC(i)=fRO2XC(i)+0.087; fzRNO3(i)=fzRNO3(i)+0.087; fxHCHO(i)=fxHCHO(i)+0.303; fxCCHO(i)=fxCCHO(i)+0.163; fxRCHO(i)=fxRCHO(i)+0.78; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+-0.091; 

i=i+1;
Rnames{i} = ' RNO3 + OH = 0.189*HO2 + 0.305*xHO2 + 0.019*NO2 + 0.313*xNO2 + 0.976*RO2C + 0.175*RO2XC + 0.175*zRNO3 + 0.011*xHCHO + 0.429*xCCHO + 0.001*RCHO + 0.036*xRCHO + 0.004*xACET + 0.01*MEK + 0.17*xMEK + 0.008*PRD2 + 0.031*xPROD2 + 0.189*RNO3 + 0.305*xRNO3 + 0.157*yROOH +  0.636*yR6OOH + 0.174*XN + 0.04*XC ';
k(:,i) =  7.20e-12;
Gstr{i,1} = 'RNO3'; Gstr{i,2} = 'OH'; 
fRNO3(i)=fRNO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.189; fxHO2(i)=fxHO2(i)+0.305; fNO2(i)=fNO2(i)+0.019; fxNO2(i)=fxNO2(i)+0.313; fRO2C(i)=fRO2C(i)+0.976; fRO2XC(i)=fRO2XC(i)+0.175; fzRNO3(i)=fzRNO3(i)+0.175; fxHCHO(i)=fxHCHO(i)+0.011; fxCCHO(i)=fxCCHO(i)+0.429; fRCHO(i)=fRCHO(i)+0.001; fxRCHO(i)=fxRCHO(i)+0.036; fxACET(i)=fxACET(i)+0.004; fMEK(i)=fMEK(i)+0.01; fxMEK(i)=fxMEK(i)+0.17; fPRD2(i)=fPRD2(i)+0.008; fxPROD2(i)=fxPROD2(i)+0.031; fRNO3(i)=fRNO3(i)+0.189; fxRNO3(i)=fxRNO3(i)+0.305; fyROOH(i)=fyROOH(i)+0.157; fyR6OOH(i)=fyR6OOH(i)+0.636; fXN(i)=fXN(i)+0.174; fXC(i)=fXC(i)+0.04; 

i=i+1;
Rnames{i} = ' RNO3 + hv = 0.344*HO2 + 0.554*xHO2 + NO2 + 0.721*RO2C + 0.102*RO2XC + 0.102*zRNO3 + 0.074*HCHO + 0.061*xHCHO + 0.214*CCHO + 0.23*xCCHO + 0.074*RCHO + 0.063*xRCHO + 0.008*xACET + 0.124*MEK + 0.083*xMEK + 0.19*PRD2 + 0.261*xPROD2 + 0.066*yROOH + 0.591*yR6OOH + 0.396*XC';
k(:,i) =  1.0.*JIC3ONO2;
Gstr{i,1} = 'RNO3'; 
fRNO3(i)=fRNO3(i)-1; fHO2(i)=fHO2(i)+0.344; fxHO2(i)=fxHO2(i)+0.554; fNO2(i)=fNO2(i)+1; fRO2C(i)=fRO2C(i)+0.721; fRO2XC(i)=fRO2XC(i)+0.102; fzRNO3(i)=fzRNO3(i)+0.102; fHCHO(i)=fHCHO(i)+0.074; fxHCHO(i)=fxHCHO(i)+0.061; fCCHO(i)=fCCHO(i)+0.214; fxCCHO(i)=fxCCHO(i)+0.23; fRCHO(i)=fRCHO(i)+0.074; fxRCHO(i)=fxRCHO(i)+0.063; fxACET(i)=fxACET(i)+0.008; fMEK(i)=fMEK(i)+0.124; fxMEK(i)=fxMEK(i)+0.083; fPRD2(i)=fPRD2(i)+0.19; fxPROD2(i)=fxPROD2(i)+0.261; fyROOH(i)=fyROOH(i)+0.066; fyR6OOH(i)=fyR6OOH(i)+0.591; fXC(i)=fXC(i)+0.396; 

i=i+1;
Rnames{i} = ' CH4 + OH = MEO2 ';
k(:,i) =  1.85e-12.*exp(-1690./ T);
Gstr{i,1} = 'CH4'; Gstr{i,2} = 'OH'; 
fCH4(i)=fCH4(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = ' ETHE + OH = RO2C + xHO2 + 1.61*xHCHO + 0.195*xCCHO + yROOH';
k(:,i) = K_ETHE_OH;
Gstr{i,1} = 'ETHE'; Gstr{i,2} = 'OH'; 
fETHE(i)=fETHE(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxHCHO(i)=fxHCHO(i)+1.61; fxCCHO(i)=fxCCHO(i)+0.195; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' ETHE + O3 = 0.16*OH + 0.16*HO2 + 0.51*CO + 0.12*CO2 + HCHO + 0.37*FACD';
k(:,i) =  9.14e-15.*exp(-2580./ T);
Gstr{i,1} = 'ETHE'; Gstr{i,2} = 'O3'; 
fETHE(i)=fETHE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.16; fHO2(i)=fHO2(i)+0.16; fCO(i)=fCO(i)+0.51; fCO2(i)=fCO2(i)+0.12; fHCHO(i)=fHCHO(i)+1; fFACD(i)=fFACD(i)+0.37; 

i=i+1;
Rnames{i} = ' ETHE + NO3 = RO2C + xHO2 + xRCHO + yROOH + -1*XC + XN';
k(:,i) =  3.30e-12.*(T./300).^2.00.*exp(-2880./T);
Gstr{i,1} = 'ETHE'; Gstr{i,2} = 'NO3'; 
fETHE(i)=fETHE(i)-1; fNO3(i)=fNO3(i)-1; fRO2C(i)=fRO2C(i)+1; fxHO2(i)=fxHO2(i)+1; fxRCHO(i)=fxRCHO(i)+1; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+-1; fXN(i)=fXN(i)+1; 

i=i+1;
Rnames{i} = ' ETHE + O3P = 0.8*HO2 + 0.51*MEO2 + 0.29*RO2C + 0.51*CO + 0.1*CCHO + 0.29*xHO2 + 0.278*xCO + 0.278*xHCHO + 0.012*xGLY + 0.29*yROOH + 0.2*XC';
k(:,i) =  1.07e-11.*exp(-800./ T);
Gstr{i,1} = 'ETHE'; Gstr{i,2} = 'O3P'; 
fETHE(i)=fETHE(i)-1; fO3P(i)=fO3P(i)-1; fHO2(i)=fHO2(i)+0.8; fMEO2(i)=fMEO2(i)+0.51; fRO2C(i)=fRO2C(i)+0.29; fCO(i)=fCO(i)+0.51; fCCHO(i)=fCCHO(i)+0.1; fxHO2(i)=fxHO2(i)+0.29; fxCO(i)=fxCO(i)+0.278; fxHCHO(i)=fxHCHO(i)+0.278; fxGLY(i)=fxGLY(i)+0.012; fyROOH(i)=fyROOH(i)+0.29; fXC(i)=fXC(i)+0.2; 

i=i+1;
Rnames{i} = ' ISOP + OH = 0.986*RO2C + 0.093*RO2XC + 0.093*zRNO3 + 0.907*xHO2 + 0.624*xHCHO + 0.23*xMACR + 0.32*xMVK + 0.357*xIPRD + yR6OOH +  -0.167*XC ';
k(:,i) =  2.54e-11.*exp(410./ T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'OH'; 
fISOP(i)=fISOP(i)-1; fOH(i)=fOH(i)-1; fRO2C(i)=fRO2C(i)+0.986; fRO2XC(i)=fRO2XC(i)+0.093; fzRNO3(i)=fzRNO3(i)+0.093; fxHO2(i)=fxHO2(i)+0.907; fxHCHO(i)=fxHCHO(i)+0.624; fxMACR(i)=fxMACR(i)+0.23; fxMVK(i)=fxMVK(i)+0.32; fxIPRD(i)=fxIPRD(i)+0.357; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+-0.167; 

i=i+1;
Rnames{i} = ' ISOP + O3 = 0.266*OH + 0.066*HO2 + 0.192*RO2C + 0.008*RO2XC + 0.008*zRNO3 + 0.275*CO + 0.122*CO2 + 0.4*HCHO + 0.1*PRD2 + 0.39*MACR + 0.16*MVK + 0.15*IPRD + 0.204*FACD + 0.192*xMACO3 + 0.192*xHCHO +  0.2*yR6OOH + -0.559*XC ';
k(:,i) =  7.86e-15.*exp(-1912./ T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'O3'; 
fISOP(i)=fISOP(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.266; fHO2(i)=fHO2(i)+0.066; fRO2C(i)=fRO2C(i)+0.192; fRO2XC(i)=fRO2XC(i)+0.008; fzRNO3(i)=fzRNO3(i)+0.008; fCO(i)=fCO(i)+0.275; fCO2(i)=fCO2(i)+0.122; fHCHO(i)=fHCHO(i)+0.4; fPRD2(i)=fPRD2(i)+0.1; fMACR(i)=fMACR(i)+0.39; fMVK(i)=fMVK(i)+0.16; fIPRD(i)=fIPRD(i)+0.15; fFACD(i)=fFACD(i)+0.204; fxMACO3(i)=fxMACO3(i)+0.192; fxHCHO(i)=fxHCHO(i)+0.192; fyR6OOH(i)=fyR6OOH(i)+0.2; fXC(i)=fXC(i)+-0.559; 

i=i+1;
Rnames{i} = ' ISOP + NO3 = 0.936*RO2C + 0.064*RO2XC + 0.064*zRNO3 + 0.749*xHO2 + 0.187*xNO2 + 0.936*xIPRD + yR6OOH + -0.064*XC + 0.813*XN';
k(:,i) =  3.03e-12.*exp(-448./ T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3'; 
fISOP(i)=fISOP(i)-1; fNO3(i)=fNO3(i)-1; fRO2C(i)=fRO2C(i)+0.936; fRO2XC(i)=fRO2XC(i)+0.064; fzRNO3(i)=fzRNO3(i)+0.064; fxHO2(i)=fxHO2(i)+0.749; fxNO2(i)=fxNO2(i)+0.187; fxIPRD(i)=fxIPRD(i)+0.936; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+-0.064; fXN(i)=fXN(i)+0.813; 

i=i+1;
Rnames{i} = ' ISOP + O3P = 0.25*MEO2 + 0.24*RO2C + 0.01*RO2XC + 0.01*zRNO3 + 0.75*PRD2 + 0.24*xMACO3 + 0.24*xHCHO + 0.25*yR6OOH + -1.01*XC';
k(:,i) =  3.50e-11;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'O3P'; 
fISOP(i)=fISOP(i)-1; fO3P(i)=fO3P(i)-1; fMEO2(i)=fMEO2(i)+0.25; fRO2C(i)=fRO2C(i)+0.24; fRO2XC(i)=fRO2XC(i)+0.01; fzRNO3(i)=fzRNO3(i)+0.01; fPRD2(i)=fPRD2(i)+0.75; fxMACO3(i)=fxMACO3(i)+0.24; fxHCHO(i)=fxHCHO(i)+0.24; fyR6OOH(i)=fyR6OOH(i)+0.25; fXC(i)=fXC(i)+-1.01; 

i=i+1;
Rnames{i} = ' ACYE + OH = 0.7*OH + 0.3*HO2 + 0.3*CO + 0.7*GLY + 0.3*FACD';
k(:,i) = K_ACYE_OH;
Gstr{i,1} = 'ACYE'; Gstr{i,2} = 'OH'; 
fACYE(i)=fACYE(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.7; fHO2(i)=fHO2(i)+0.3; fCO(i)=fCO(i)+0.3; fGLY(i)=fGLY(i)+0.7; fFACD(i)=fFACD(i)+0.3; 

i=i+1;
Rnames{i} = ' ACYE + O3 = 0.5*OH + 1.5*HO2 + 1.5*CO + 0.5*CO2 ';
k(:,i) =  1.00e-14.*exp(-4100./ T);
Gstr{i,1} = 'ACYE'; Gstr{i,2} = 'O3'; 
fACYE(i)=fACYE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.5; fHO2(i)=fHO2(i)+1.5; fCO(i)=fCO(i)+1.5; fCO2(i)=fCO2(i)+0.5; 

i=i+1;
Rnames{i} = ' BENZ + OH = 0.116*OH + 0.29*RO2C + 0.29*xHO2 + 0.024*RO2XC + 0.024*zRNO3 + 0.57*HO2 + 0.57*CRES + 0.116*AFG3 + 0.29*xGLY +  0.029*xAFG1 + 0.261*xAFG2 + 0.314*yRAOOH + -0.976*XC ';
k(:,i) =  2.33e-12.*exp(-193./ T);
Gstr{i,1} = 'BENZ'; Gstr{i,2} = 'OH'; 
fBENZ(i)=fBENZ(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.116; fRO2C(i)=fRO2C(i)+0.29; fxHO2(i)=fxHO2(i)+0.29; fRO2XC(i)=fRO2XC(i)+0.024; fzRNO3(i)=fzRNO3(i)+0.024; fHO2(i)=fHO2(i)+0.57; fCRES(i)=fCRES(i)+0.57; fAFG3(i)=fAFG3(i)+0.116; fxGLY(i)=fxGLY(i)+0.29; fxAFG1(i)=fxAFG1(i)+0.029; fxAFG2(i)=fxAFG2(i)+0.261; fyRAOOH(i)=fyRAOOH(i)+0.314; fXC(i)=fXC(i)+-0.976; 

i=i+1;
Rnames{i} = ' ALK1 + OH = xHO2 + RO2C + xCCHO + yROOH ';
k(:,i) =  1.34e-12.*(T./300).^2.00.*exp(-499./T);
Gstr{i,1} = 'ALK1'; Gstr{i,2} = 'OH'; 
fALK1(i)=fALK1(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+1; fRO2C(i)=fRO2C(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' ALK2 + OH = 0.965*xHO2 + 0.965*RO2C + 0.035*RO2XC + 0.035*zRNO3 +  0.261*xRCHO + 0.704*xACET + yROOH + -0.105*XC ';
k(:,i) =  1.49e-12.*(T./300).^2.00.*exp(-87./T);
Gstr{i,1} = 'ALK2'; Gstr{i,2} = 'OH'; 
fALK2(i)=fALK2(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.965; fRO2C(i)=fRO2C(i)+0.965; fRO2XC(i)=fRO2XC(i)+0.035; fzRNO3(i)=fzRNO3(i)+0.035; fxRCHO(i)=fxRCHO(i)+0.261; fxACET(i)=fxACET(i)+0.704; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+-0.105; 

i=i+1;
Rnames{i} = ' ALK3 + OH = 0.695*xHO2 + 0.236*xTBUO + 1.253*RO2C + 0.07*RO2XC + 0.07*zRNO3 + 0.026*xHCHO + 0.445*xCCHO + 0.122*xRCHO + 0.024*xACET +  0.332*xMEK + 0.983*yROOH + 0.017*yR6OOH + -0.046*XC ';
k(:,i) =  1.51e-12.*exp(126./ T);
Gstr{i,1} = 'ALK3'; Gstr{i,2} = 'OH'; 
fALK3(i)=fALK3(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.695; fxTBUO(i)=fxTBUO(i)+0.236; fRO2C(i)=fRO2C(i)+1.253; fRO2XC(i)=fRO2XC(i)+0.07; fzRNO3(i)=fzRNO3(i)+0.07; fxHCHO(i)=fxHCHO(i)+0.026; fxCCHO(i)=fxCCHO(i)+0.445; fxRCHO(i)=fxRCHO(i)+0.122; fxACET(i)=fxACET(i)+0.024; fxMEK(i)=fxMEK(i)+0.332; fyROOH(i)=fyROOH(i)+0.983; fyR6OOH(i)=fyR6OOH(i)+0.017; fXC(i)=fXC(i)+-0.046; 

i=i+1;
Rnames{i} = ' ALK4 + OH = 0.83*xHO2 + 0.01*xMEO2 + 0.011*xMECO3 + 1.763*RO2C + 0.149*RO2XC + 0.149*zRNO3 + 0.002*xCO + 0.029*xHCHO + 0.438*xCCHO + 0.236*xRCHO + 0.426*xACET + 0.106*xMEK + 0.146*xPROD2 + yR6OOH +  -0.119*XC ';
k(:,i) =  3.75e-12.*exp(44./ T);
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'OH'; 
fALK4(i)=fALK4(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.83; fxMEO2(i)=fxMEO2(i)+0.01; fxMECO3(i)=fxMECO3(i)+0.011; fRO2C(i)=fRO2C(i)+1.763; fRO2XC(i)=fRO2XC(i)+0.149; fzRNO3(i)=fzRNO3(i)+0.149; fxCO(i)=fxCO(i)+0.002; fxHCHO(i)=fxHCHO(i)+0.029; fxCCHO(i)=fxCCHO(i)+0.438; fxRCHO(i)=fxRCHO(i)+0.236; fxACET(i)=fxACET(i)+0.426; fxMEK(i)=fxMEK(i)+0.106; fxPROD2(i)=fxPROD2(i)+0.146; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+-0.119; 

i=i+1;
Rnames{i} = ' ALK5 + OH = 0.647*xHO2 + 1.605*RO2C + 0.353*RO2XC + 0.353*zRNO3 + 0.04*xHCHO + 0.106*xCCHO + 0.209*xRCHO + 0.071*xACET + 0.086*xMEK +  0.407*xPROD2 + yR6OOH + 2.004*XC ';
k(:,i) =  2.70e-12.*exp(374./ T);
Gstr{i,1} = 'ALK5'; Gstr{i,2} = 'OH'; 
fALK5(i)=fALK5(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.647; fRO2C(i)=fRO2C(i)+1.605; fRO2XC(i)=fRO2XC(i)+0.353; fzRNO3(i)=fzRNO3(i)+0.353; fxHCHO(i)=fxHCHO(i)+0.04; fxCCHO(i)=fxCCHO(i)+0.106; fxRCHO(i)=fxRCHO(i)+0.209; fxACET(i)=fxACET(i)+0.071; fxMEK(i)=fxMEK(i)+0.086; fxPROD2(i)=fxPROD2(i)+0.407; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+2.004; 

i=i+1;
Rnames{i} = ' OLE1 + OH = 0.904*xHO2 + 0.001*xMEO2 + 1.138*RO2C + 0.095*RO2XC + 0.095*zRNO3 + 0.7*xHCHO + 0.301*xCCHO + 0.47*xRCHO + 0.005*xACET + 0.026*xMACR + 0.008*xMVK + 0.006*xIPRD + 0.119*xPROD2 + 0.413*yROOH +  0.587*yR6OOH + 0.822*XC ';
k(:,i) =  6.18e-12.*exp(501./ T);
Gstr{i,1} = 'OLE1'; Gstr{i,2} = 'OH'; 
fOLE1(i)=fOLE1(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.904; fxMEO2(i)=fxMEO2(i)+0.001; fRO2C(i)=fRO2C(i)+1.138; fRO2XC(i)=fRO2XC(i)+0.095; fzRNO3(i)=fzRNO3(i)+0.095; fxHCHO(i)=fxHCHO(i)+0.7; fxCCHO(i)=fxCCHO(i)+0.301; fxRCHO(i)=fxRCHO(i)+0.47; fxACET(i)=fxACET(i)+0.005; fxMACR(i)=fxMACR(i)+0.026; fxMVK(i)=fxMVK(i)+0.008; fxIPRD(i)=fxIPRD(i)+0.006; fxPROD2(i)=fxPROD2(i)+0.119; fyROOH(i)=fyROOH(i)+0.413; fyR6OOH(i)=fyR6OOH(i)+0.587; fXC(i)=fXC(i)+0.822; 

i=i+1;
Rnames{i} = ' OLE1 + O3 = 0.116*HO2 + 0.04*xHO2 + 0.193*OH + 0.104*MEO2 + 0.063*RO2C + 0.004*RO2XC + 0.004*zRNO3 + 0.368*CO + 0.125*CO2 + 0.5*HCHO + 0.147*CCHO + 0.007*xCCHO + 0.353*RCHO + 0.031*xRCHO + 0.002*xACET + 0.006*MEK + 0.185*FACD + 0.022*AACD + 0.112*PACD + 0.189*PRD2 +  0.007*yROOH + 0.037*yR6OOH + 0.69*XC ';
k(:,i) =  3.15e-15.*exp(-1701./ T);
Gstr{i,1} = 'OLE1'; Gstr{i,2} = 'O3'; 
fOLE1(i)=fOLE1(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+0.116; fxHO2(i)=fxHO2(i)+0.04; fOH(i)=fOH(i)+0.193; fMEO2(i)=fMEO2(i)+0.104; fRO2C(i)=fRO2C(i)+0.063; fRO2XC(i)=fRO2XC(i)+0.004; fzRNO3(i)=fzRNO3(i)+0.004; fCO(i)=fCO(i)+0.368; fCO2(i)=fCO2(i)+0.125; fHCHO(i)=fHCHO(i)+0.5; fCCHO(i)=fCCHO(i)+0.147; fxCCHO(i)=fxCCHO(i)+0.007; fRCHO(i)=fRCHO(i)+0.353; fxRCHO(i)=fxRCHO(i)+0.031; fxACET(i)=fxACET(i)+0.002; fMEK(i)=fMEK(i)+0.006; fFACD(i)=fFACD(i)+0.185; fAACD(i)=fAACD(i)+0.022; fPACD(i)=fPACD(i)+0.112; fPRD2(i)=fPRD2(i)+0.189; fyROOH(i)=fyROOH(i)+0.007; fyR6OOH(i)=fyR6OOH(i)+0.037; fXC(i)=fXC(i)+0.69; 

i=i+1;
Rnames{i} = ' OLE1 + NO3 = 0.824*xHO2 + 1.312*RO2C + 0.176*RO2XC + 0.176*zRNO3 + 0.009*xCCHO + 0.002*xRCHO + 0.024*xACET + 0.546*xRNO3 + 0.413*yROOH +  0.587*yR6OOH + 0.454*XN + 0.572*XC ';
k(:,i) =  4.73e-13.*exp(-1047./ T);
Gstr{i,1} = 'OLE1'; Gstr{i,2} = 'NO3'; 
fOLE1(i)=fOLE1(i)-1; fNO3(i)=fNO3(i)-1; fxHO2(i)=fxHO2(i)+0.824; fRO2C(i)=fRO2C(i)+1.312; fRO2XC(i)=fRO2XC(i)+0.176; fzRNO3(i)=fzRNO3(i)+0.176; fxCCHO(i)=fxCCHO(i)+0.009; fxRCHO(i)=fxRCHO(i)+0.002; fxACET(i)=fxACET(i)+0.024; fxRNO3(i)=fxRNO3(i)+0.546; fyROOH(i)=fyROOH(i)+0.413; fyR6OOH(i)=fyR6OOH(i)+0.587; fXN(i)=fXN(i)+0.454; fXC(i)=fXC(i)+0.572; 

i=i+1;
Rnames{i} = ' OLE1 + O3P = 0.45*RCHO + 0.437*MEK + 0.113*PRD2 + 1.224*XC';
k(:,i) =  1.49e-11.*exp(-326./ T);
Gstr{i,1} = 'OLE1'; Gstr{i,2} = 'O3P'; 
fOLE1(i)=fOLE1(i)-1; fO3P(i)=fO3P(i)-1; fRCHO(i)=fRCHO(i)+0.45; fMEK(i)=fMEK(i)+0.437; fPRD2(i)=fPRD2(i)+0.113; fXC(i)=fXC(i)+1.224; 

i=i+1;
Rnames{i} = ' OLE2 + OH = 0.914*xHO2 + 0.966*RO2C + 0.086*RO2XC + 0.086*zRNO3 + 0.209*xHCHO + 0.788*xCCHO + 0.481*xRCHO + 0.136*xACET + 0.076*xMEK + 0.027*xMACR + 0.002*xMVK + 0.037*xIPRD + 0.022*xPROD2 + 0.357*yROOH +  0.643*yR6OOH + 0.111*XC ';
k(:,i) =  1.26e-11.*exp(488./ T);
Gstr{i,1} = 'OLE2'; Gstr{i,2} = 'OH'; 
fOLE2(i)=fOLE2(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.914; fRO2C(i)=fRO2C(i)+0.966; fRO2XC(i)=fRO2XC(i)+0.086; fzRNO3(i)=fzRNO3(i)+0.086; fxHCHO(i)=fxHCHO(i)+0.209; fxCCHO(i)=fxCCHO(i)+0.788; fxRCHO(i)=fxRCHO(i)+0.481; fxACET(i)=fxACET(i)+0.136; fxMEK(i)=fxMEK(i)+0.076; fxMACR(i)=fxMACR(i)+0.027; fxMVK(i)=fxMVK(i)+0.002; fxIPRD(i)=fxIPRD(i)+0.037; fxPROD2(i)=fxPROD2(i)+0.022; fyROOH(i)=fyROOH(i)+0.357; fyR6OOH(i)=fyR6OOH(i)+0.643; fXC(i)=fXC(i)+0.111; 

i=i+1;
Rnames{i} = ' OLE2 + O3 = 0.093*HO2 + 0.039*xHO2 + 0.423*OH + 0.29*MEO2 + 0.147*xMECO3 + 0.008*xRCO3 + 0.2*RO2C + 0.003*RO2XC + 0.003*zRNO3 + 0.297*CO + 0.162*CO2 + 0.152*HCHO + 0.108*xHCHO + 0.428*CCHO + 0.067*xCCHO + 0.315*RCHO + 0.018*xRCHO + 0.048*ACET + 0.031*MEK + 0.001*xMEK + 0.033*FACD + 0.061*AACD + 0.222*PACD + 0.028*MACR + 0.021*MVK + 0.042*PRD2 + 0.069*yROOH + 0.128*yR6OOH + 0.125*XC';
k(:,i) =  8.14e-15.*exp(-1255./ T);
Gstr{i,1} = 'OLE2'; Gstr{i,2} = 'O3'; 
fOLE2(i)=fOLE2(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+0.093; fxHO2(i)=fxHO2(i)+0.039; fOH(i)=fOH(i)+0.423; fMEO2(i)=fMEO2(i)+0.29; fxMECO3(i)=fxMECO3(i)+0.147; fxRCO3(i)=fxRCO3(i)+0.008; fRO2C(i)=fRO2C(i)+0.2; fRO2XC(i)=fRO2XC(i)+0.003; fzRNO3(i)=fzRNO3(i)+0.003; fCO(i)=fCO(i)+0.297; fCO2(i)=fCO2(i)+0.162; fHCHO(i)=fHCHO(i)+0.152; fxHCHO(i)=fxHCHO(i)+0.108; fCCHO(i)=fCCHO(i)+0.428; fxCCHO(i)=fxCCHO(i)+0.067; fRCHO(i)=fRCHO(i)+0.315; fxRCHO(i)=fxRCHO(i)+0.018; fACET(i)=fACET(i)+0.048; fMEK(i)=fMEK(i)+0.031; fxMEK(i)=fxMEK(i)+0.001; fFACD(i)=fFACD(i)+0.033; fAACD(i)=fAACD(i)+0.061; fPACD(i)=fPACD(i)+0.222; fMACR(i)=fMACR(i)+0.028; fMVK(i)=fMVK(i)+0.021; fPRD2(i)=fPRD2(i)+0.042; fyROOH(i)=fyROOH(i)+0.069; fyR6OOH(i)=fyR6OOH(i)+0.128; fXC(i)=fXC(i)+0.125; 

i=i+1;
Rnames{i} = ' OLE2 + NO3 = 0.423*xHO2 + 0.409*xNO2 + 0.033*xMEO2 + 1.185*RO2C + 0.136*RO2XC + 0.136*zRNO3 + 0.074*xHCHO + 0.546*xCCHO + 0.154*xRCHO + 0.11*xACET + 0.002*xMEK + 0.026*xMVK + 0.007*xIPRD + 0.322*xRNO3 +  0.357*yROOH + 0.643*yR6OOH + 0.269*XN + 0.114*XC ';
k(:,i) =  2.20e-13.*exp(382./ T);
Gstr{i,1} = 'OLE2'; Gstr{i,2} = 'NO3'; 
fOLE2(i)=fOLE2(i)-1; fNO3(i)=fNO3(i)-1; fxHO2(i)=fxHO2(i)+0.423; fxNO2(i)=fxNO2(i)+0.409; fxMEO2(i)=fxMEO2(i)+0.033; fRO2C(i)=fRO2C(i)+1.185; fRO2XC(i)=fRO2XC(i)+0.136; fzRNO3(i)=fzRNO3(i)+0.136; fxHCHO(i)=fxHCHO(i)+0.074; fxCCHO(i)=fxCCHO(i)+0.546; fxRCHO(i)=fxRCHO(i)+0.154; fxACET(i)=fxACET(i)+0.11; fxMEK(i)=fxMEK(i)+0.002; fxMVK(i)=fxMVK(i)+0.026; fxIPRD(i)=fxIPRD(i)+0.007; fxRNO3(i)=fxRNO3(i)+0.322; fyROOH(i)=fyROOH(i)+0.357; fyR6OOH(i)=fyR6OOH(i)+0.643; fXN(i)=fXN(i)+0.269; fXC(i)=fXC(i)+0.114; 

i=i+1;
Rnames{i} = ' OLE2 + O3P = 0.014*HO2 + 0.007*xHO2 + 0.007*xMACO3 + 0.013*RO2C + 0.001*RO2XC + 0.001*zRNO3 + 0.006*xCO + 0.074*RCHO + 0.709*MEK +  0.006*xMACR + 0.202*PRD2 + 0.014*yROOH + 0.666*XC ';
k(:,i) =  1.43e-11.*exp(111./ T);
Gstr{i,1} = 'OLE2'; Gstr{i,2} = 'O3P'; 
fOLE2(i)=fOLE2(i)-1; fO3P(i)=fO3P(i)-1; fHO2(i)=fHO2(i)+0.014; fxHO2(i)=fxHO2(i)+0.007; fxMACO3(i)=fxMACO3(i)+0.007; fRO2C(i)=fRO2C(i)+0.013; fRO2XC(i)=fRO2XC(i)+0.001; fzRNO3(i)=fzRNO3(i)+0.001; fxCO(i)=fxCO(i)+0.006; fRCHO(i)=fRCHO(i)+0.074; fMEK(i)=fMEK(i)+0.709; fxMACR(i)=fxMACR(i)+0.006; fPRD2(i)=fPRD2(i)+0.202; fyROOH(i)=fyROOH(i)+0.014; fXC(i)=fXC(i)+0.666; 

i=i+1;
Rnames{i} = ' ARO1 + OH = 0.166*HO2 + 0.482*xHO2 + 0.284*OH + 0.482*RO2C + 0.068*RO2XC + 0.068*zRNO3 + 0.218*xGLY + 0.138*xMGLY + 0.166*CRES + 0.049*xBALD + 0.164*xAFG1 + 0.193*xAFG2 + 0.284*AFG3 + 0.077*xPROD2 +  0.403*yRAOOH + 0.147*yR6OOH + 0.002*XC ';
k(:,i) =  6.15e-12;
Gstr{i,1} = 'ARO1'; Gstr{i,2} = 'OH'; 
fARO1(i)=fARO1(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.166; fxHO2(i)=fxHO2(i)+0.482; fOH(i)=fOH(i)+0.284; fRO2C(i)=fRO2C(i)+0.482; fRO2XC(i)=fRO2XC(i)+0.068; fzRNO3(i)=fzRNO3(i)+0.068; fxGLY(i)=fxGLY(i)+0.218; fxMGLY(i)=fxMGLY(i)+0.138; fCRES(i)=fCRES(i)+0.166; fxBALD(i)=fxBALD(i)+0.049; fxAFG1(i)=fxAFG1(i)+0.164; fxAFG2(i)=fxAFG2(i)+0.193; fAFG3(i)=fAFG3(i)+0.284; fxPROD2(i)=fxPROD2(i)+0.077; fyRAOOH(i)=fyRAOOH(i)+0.403; fyR6OOH(i)=fyR6OOH(i)+0.147; fXC(i)=fXC(i)+0.002; 

i=i+1;
Rnames{i} = ' ARO2 + OH = 0.108*HO2 + 0.58*xHO2 + 0.202*OH + 0.58*RO2C + 0.11*RO2XC + 0.11*zRNO3 + 0.116*xGLY + 0.286*xMGLY + 0.104*xBACL + 0.108*CRES + 0.039*xBALD + 0.217*xAFG1 + 0.21*xAFG2 + 0.202*AFG3 + 0.08*xAFG3 +  0.035*xPROD2 + 0.089*yR6OOH + 0.601*yRAOOH + 1.486*XC ';
k(:,i) =  2.57e-11;
Gstr{i,1} = 'ARO2'; Gstr{i,2} = 'OH'; 
fARO2(i)=fARO2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+0.108; fxHO2(i)=fxHO2(i)+0.58; fOH(i)=fOH(i)+0.202; fRO2C(i)=fRO2C(i)+0.58; fRO2XC(i)=fRO2XC(i)+0.11; fzRNO3(i)=fzRNO3(i)+0.11; fxGLY(i)=fxGLY(i)+0.116; fxMGLY(i)=fxMGLY(i)+0.286; fxBACL(i)=fxBACL(i)+0.104; fCRES(i)=fCRES(i)+0.108; fxBALD(i)=fxBALD(i)+0.039; fxAFG1(i)=fxAFG1(i)+0.217; fxAFG2(i)=fxAFG2(i)+0.21; fAFG3(i)=fAFG3(i)+0.202; fxAFG3(i)=fxAFG3(i)+0.08; fxPROD2(i)=fxPROD2(i)+0.035; fyR6OOH(i)=fyR6OOH(i)+0.089; fyRAOOH(i)=fyRAOOH(i)+0.601; fXC(i)=fXC(i)+1.486; 

i=i+1;
Rnames{i} = ' TERP + OH = 0.759*xHO2 + 0.042*xRCO3 + 1.147*RO2C + 0.2*RO2XC + 0.2*zRNO3 + 0.001*xCO + 0.264*xHCHO + 0.533*xRCHO + 0.036*xACET + 0.005*xMEK + 0.009*xMGLY + 0.014*xBACL + 0.002*xMVK + 0.001*xIPRD +  0.255*xPROD2 + yR6OOH + 5.056*XC ';
k(:,i) =  1.87e-11.*exp(435./ T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fxHO2(i)=fxHO2(i)+0.759; fxRCO3(i)=fxRCO3(i)+0.042; fRO2C(i)=fRO2C(i)+1.147; fRO2XC(i)=fRO2XC(i)+0.2; fzRNO3(i)=fzRNO3(i)+0.2; fxCO(i)=fxCO(i)+0.001; fxHCHO(i)=fxHCHO(i)+0.264; fxRCHO(i)=fxRCHO(i)+0.533; fxACET(i)=fxACET(i)+0.036; fxMEK(i)=fxMEK(i)+0.005; fxMGLY(i)=fxMGLY(i)+0.009; fxBACL(i)=fxBACL(i)+0.014; fxMVK(i)=fxMVK(i)+0.002; fxIPRD(i)=fxIPRD(i)+0.001; fxPROD2(i)=fxPROD2(i)+0.255; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+5.056; 

i=i+1;
Rnames{i} = ' TERP + O3 = 0.052*HO2 + 0.067*xHO2 + 0.585*OH + 0.126*xMECO3 + 0.149*xRCO3 + 0.875*RO2C + 0.203*RO2XC + 0.203*zRNO3 + 0.166*CO + 0.019*xCO + 0.045*CO2 + 0.079*HCHO + 0.15*xHCHO + 0.22*xRCHO + 0.165*xACET + 0.004*MEK + 0.107*FACD + 0.043*PACD + 0.001*xGLY + 0.002*xMGLY + 0.055*xBACL + 0.001*xMACR + 0.001*xIPRD + 0.409*PRD2 +  0.545*yR6OOH + 3.526*XC ';
k(:,i) =  9.57e-16.*exp(-785./ T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+0.052; fxHO2(i)=fxHO2(i)+0.067; fOH(i)=fOH(i)+0.585; fxMECO3(i)=fxMECO3(i)+0.126; fxRCO3(i)=fxRCO3(i)+0.149; fRO2C(i)=fRO2C(i)+0.875; fRO2XC(i)=fRO2XC(i)+0.203; fzRNO3(i)=fzRNO3(i)+0.203; fCO(i)=fCO(i)+0.166; fxCO(i)=fxCO(i)+0.019; fCO2(i)=fCO2(i)+0.045; fHCHO(i)=fHCHO(i)+0.079; fxHCHO(i)=fxHCHO(i)+0.15; fxRCHO(i)=fxRCHO(i)+0.22; fxACET(i)=fxACET(i)+0.165; fMEK(i)=fMEK(i)+0.004; fFACD(i)=fFACD(i)+0.107; fPACD(i)=fPACD(i)+0.043; fxGLY(i)=fxGLY(i)+0.001; fxMGLY(i)=fxMGLY(i)+0.002; fxBACL(i)=fxBACL(i)+0.055; fxMACR(i)=fxMACR(i)+0.001; fxIPRD(i)=fxIPRD(i)+0.001; fPRD2(i)=fPRD2(i)+0.409; fyR6OOH(i)=fyR6OOH(i)+0.545; fXC(i)=fXC(i)+3.526; 

i=i+1;
Rnames{i} = ' TERP + NO3 = 0.162*xHO2 + 0.421*xNO2 + 0.019*xRCO3 + 1.509*RO2C + 0.397*RO2XC + 0.397*zRNO3 + 0.01*xCO + 0.017*xHCHO + 0.001*xCCHO + 0.509*xRCHO + 0.175*xACET + 0.001*xMGLY + 0.003*xMACR + 0.001*xMVK + 0.002*xIPRD + 0.163*xRNO3 + yR6OOH + 0.416*XN + 4.473*XC';
k(:,i) =  1.28e-12.*exp(490./ T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fxHO2(i)=fxHO2(i)+0.162; fxNO2(i)=fxNO2(i)+0.421; fxRCO3(i)=fxRCO3(i)+0.019; fRO2C(i)=fRO2C(i)+1.509; fRO2XC(i)=fRO2XC(i)+0.397; fzRNO3(i)=fzRNO3(i)+0.397; fxCO(i)=fxCO(i)+0.01; fxHCHO(i)=fxHCHO(i)+0.017; fxCCHO(i)=fxCCHO(i)+0.001; fxRCHO(i)=fxRCHO(i)+0.509; fxACET(i)=fxACET(i)+0.175; fxMGLY(i)=fxMGLY(i)+0.001; fxMACR(i)=fxMACR(i)+0.003; fxMVK(i)=fxMVK(i)+0.001; fxIPRD(i)=fxIPRD(i)+0.002; fxRNO3(i)=fxRNO3(i)+0.163; fyR6OOH(i)=fyR6OOH(i)+1; fXN(i)=fXN(i)+0.416; fXC(i)=fXC(i)+4.473; 

i=i+1;
Rnames{i} = ' TERP + O3P = 0.147*RCHO + 0.853*PRD2 + 4.441*XC ';
k(:,i) =  3.71e-11;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P'; 
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fRCHO(i)=fRCHO(i)+0.147; fPRD2(i)=fPRD2(i)+0.853; fXC(i)=fXC(i)+4.441; 

i=i+1;
Rnames{i} = ' CL2 + hv = 2*CL ';
k(:,i) =  1.0.*JCL2;
Gstr{i,1} = 'CL2'; 
fCL2(i)=fCL2(i)-1; fCL(i)=fCL(i)+2; 

i=i+1;
Rnames{i} = ' CL + NO + M = CLNO ';
k(:,i) =  7.60e-32.*(T./300).^-1.80.*M;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NO'; 
fCL(i)=fCL(i)-1; fNO(i)=fNO(i)-1; fCLNO(i)=fCLNO(i)+1; 

i=i+1;
Rnames{i} = ' CLNO + hv = CL + NO ';
k(:,i) =  1.0.*JCLNO_06;
Gstr{i,1} = 'CLNO'; 
fCLNO(i)=fCLNO(i)-1; fCL(i)=fCL(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = ' CL + NO2 = CLONO ';
k(:,i) = K_CL_NO2_CLONO;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NO2'; 
fCL(i)=fCL(i)-1; fNO2(i)=fNO2(i)-1; fCLONO(i)=fCLONO(i)+1; 

i=i+1;
Rnames{i} = ' CL + NO2 = CLNO2 ';
k(:,i) = K_CL_NO2_CLNO2;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NO2'; 
fCL(i)=fCL(i)-1; fNO2(i)=fNO2(i)-1; fCLNO2(i)=fCLNO2(i)+1; 

i=i+1;
Rnames{i} = ' CLONO + hv = CL + NO2 ';
k(:,i) =  1.0.*JCLONO;
Gstr{i,1} = 'CLONO'; 
fCLONO(i)=fCLONO(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CLNO2 + hv = CL + NO2 ';
k(:,i) =  1.0.*JCLNO2;
Gstr{i,1} = 'CLNO2'; 
fCLNO2(i)=fCLNO2(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CL + HO2 = HCL ';
k(:,i) =  3.44e-11.*(T./300).^-0.56;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2'; 
fCL(i)=fCL(i)-1; fHO2(i)=fHO2(i)-1; fHCL(i)=fHCL(i)+1; 

i=i+1;
Rnames{i} = ' CL + HO2 = CLO + OH ';
k(:,i) =  9.41e-12.*(T./300).^2.10;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2'; 
fCL(i)=fCL(i)-1; fHO2(i)=fHO2(i)-1; fCLO(i)=fCLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = ' CL + O3 = CLO ';
k(:,i) =  2.80e-11.*exp(-250./ T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'O3'; 
fCL(i)=fCL(i)-1; fO3(i)=fO3(i)-1; fCLO(i)=fCLO(i)+1; 

i=i+1;
Rnames{i} = ' CL + NO3 = CLO + NO2 ';
k(:,i) =  2.40e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'NO3'; 
fCL(i)=fCL(i)-1; fNO3(i)=fNO3(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CLO + NO = CL + NO2 ';
k(:,i) =  6.20e-12.*exp(295./ T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO'; 
fCLO(i)=fCLO(i)-1; fNO(i)=fNO(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CLO + NO2 = CLONO2 ';
k(:,i) = K_CLO_NO2;
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO2'; 
fCLO(i)=fCLO(i)-1; fNO2(i)=fNO2(i)-1; fCLONO2(i)=fCLONO2(i)+1; 

i=i+1;
Rnames{i} = ' CLONO2 + hv = CLO + NO2 ';
k(:,i) =  1.0.*JCLONO2_1;
Gstr{i,1} = 'CLONO2'; 
fCLONO2(i)=fCLONO2(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CLONO2 + hv = CL + NO3 ';
k(:,i) =  1.0.*JCLONO2_2;
Gstr{i,1} = 'CLONO2'; 
fCLONO2(i)=fCLONO2(i)-1; fCL(i)=fCL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' CLONO2 = CLO + NO2 ';
k(:,i) = K_CLONO2;
Gstr{i,1} = 'CLONO2'; 
fCLONO2(i)=fCLONO2(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = ' CL + CLONO2 = CL2 + NO3 ';
k(:,i) =  6.20e-12.*exp(145./ T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CLONO2'; 
fCL(i)=fCL(i)-1; fCLONO2(i)=fCLONO2(i)-1; fCL2(i)=fCL2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = ' CLO + HO2 = HOCL ';
k(:,i) =  2.20e-12.*exp(340./ T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'HO2'; 
fCLO(i)=fCLO(i)-1; fHO2(i)=fHO2(i)-1; fHOCL(i)=fHOCL(i)+1; 

i=i+1;
Rnames{i} = ' HOCL + hv = OH + CL ';
k(:,i) =  1.0.*JHOCL_06;
Gstr{i,1} = 'HOCL'; 
fHOCL(i)=fHOCL(i)-1; fOH(i)=fOH(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = ' CLO + CLO = 0.29*CL2 + 1.42*CL ';
k(:,i) =  1.25e-11.*exp(-1960./ T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO'; 
fCLO(i)=fCLO(i)-1; fCLO(i)=fCLO(i)-1; fCL2(i)=fCL2(i)+0.29; fCL(i)=fCL(i)+1.42; 

i=i+1;
Rnames{i} = ' OH + HCL = CL ';
k(:,i) =  1.70e-12.*exp(-230./ T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCL'; 
fOH(i)=fOH(i)-1; fHCL(i)=fHCL(i)-1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = ' CL + H2 = HCL + HO2 ';
k(:,i) =  3.90e-11.*exp(-2310./ T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'H2'; 
fCL(i)=fCL(i)-1; fH2(i)=fH2(i)-1; fHCL(i)=fHCL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' HCHO + CL = HCL + HO2 + CO ';
k(:,i) =  8.10e-11.*exp(-30./ T);
Gstr{i,1} = 'HCHO'; Gstr{i,2} = 'CL'; 
fHCHO(i)=fHCHO(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = ' CCHO + CL = HCL + MECO3 ';
k(:,i) =  8.00e-11;
Gstr{i,1} = 'CCHO'; Gstr{i,2} = 'CL'; 
fCCHO(i)=fCCHO(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' MEOH + CL = HCL + HCHO + HO2 ';
k(:,i) =  5.50e-11;
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'CL'; 
fMEOH(i)=fMEOH(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = ' RCHO + CL = HCL + 0.9*RCO3 + 0.1*RO2C + 0.1*xCCHO + 0.1*xCO + 0.1*xHO2 +  0.1*yROOH ';
k(:,i) =  1.23e-10;
Gstr{i,1} = 'RCHO'; Gstr{i,2} = 'CL'; 
fRCHO(i)=fRCHO(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fRCO3(i)=fRCO3(i)+0.9; fRO2C(i)=fRO2C(i)+0.1; fxCCHO(i)=fxCCHO(i)+0.1; fxCO(i)=fxCO(i)+0.1; fxHO2(i)=fxHO2(i)+0.1; fyROOH(i)=fyROOH(i)+0.1; 

i=i+1;
Rnames{i} = ' ACET + CL = HCL + RO2C + xHCHO + xMECO3 + yROOH ';
k(:,i) =  7.70e-11.*exp(-1000./ T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'CL'; 
fACET(i)=fACET(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fRO2C(i)=fRO2C(i)+1; fxHCHO(i)=fxHCHO(i)+1; fxMECO3(i)=fxMECO3(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' MEK + CL = HCL + 0.975*RO2C + 0.039*RO2XC + 0.039*zRNO3 + 0.84*xHO2 + 0.085*xMECO3 + 0.036*xRCO3 + 0.065*xHCHO + 0.07*xCCHO + 0.84*xRCHO +  yROOH + 0.763*XC ';
k(:,i) =  3.60e-11;
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'CL'; 
fMEK(i)=fMEK(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fRO2C(i)=fRO2C(i)+0.975; fRO2XC(i)=fRO2XC(i)+0.039; fzRNO3(i)=fzRNO3(i)+0.039; fxHO2(i)=fxHO2(i)+0.84; fxMECO3(i)=fxMECO3(i)+0.085; fxRCO3(i)=fxRCO3(i)+0.036; fxHCHO(i)=fxHCHO(i)+0.065; fxCCHO(i)=fxCCHO(i)+0.07; fxRCHO(i)=fxRCHO(i)+0.84; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+0.763; 

i=i+1;
Rnames{i} = ' RNO3 + CL = HCL + 0.038*NO2 + 0.055*HO2 + 1.282*RO2C + 0.202*RO2XC + 0.202*zRNO3 + 0.009*RCHO + 0.018*MEK + 0.012*PRD2 + 0.055*RNO3 + 0.159*xNO2 + 0.547*xHO2 + 0.045*xHCHO + 0.3*xCCHO + 0.02*xRCHO + 0.003*xACET + 0.041*xMEK + 0.046*xPROD2 + 0.547*xRNO3 + 0.908*yR6OOH +  0.201*XN + -0.149*XC ';
k(:,i) =  1.92e-10;
Gstr{i,1} = 'RNO3'; Gstr{i,2} = 'CL'; 
fRNO3(i)=fRNO3(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fNO2(i)=fNO2(i)+0.038; fHO2(i)=fHO2(i)+0.055; fRO2C(i)=fRO2C(i)+1.282; fRO2XC(i)=fRO2XC(i)+0.202; fzRNO3(i)=fzRNO3(i)+0.202; fRCHO(i)=fRCHO(i)+0.009; fMEK(i)=fMEK(i)+0.018; fPRD2(i)=fPRD2(i)+0.012; fRNO3(i)=fRNO3(i)+0.055; fxNO2(i)=fxNO2(i)+0.159; fxHO2(i)=fxHO2(i)+0.547; fxHCHO(i)=fxHCHO(i)+0.045; fxCCHO(i)=fxCCHO(i)+0.3; fxRCHO(i)=fxRCHO(i)+0.02; fxACET(i)=fxACET(i)+0.003; fxMEK(i)=fxMEK(i)+0.041; fxPROD2(i)=fxPROD2(i)+0.046; fxRNO3(i)=fxRNO3(i)+0.547; fyR6OOH(i)=fyR6OOH(i)+0.908; fXN(i)=fXN(i)+0.201; fXC(i)=fXC(i)+-0.149; 

i=i+1;
Rnames{i} = ' PRD2 + CL = HCL + 0.314*HO2 + 0.68*RO2C + 0.116*RO2XC + 0.116*zRNO3 + 0.198*RCHO + 0.116*PRD2 + 0.541*xHO2 + 0.007*xMECO3 + 0.022*xRCO3 + 0.237*xHCHO + 0.109*xCCHO + 0.591*xRCHO + 0.051*xMEK + 0.04*xPROD2 +  0.686*yR6OOH + 1.262*XC ';
k(:,i) =  2.00e-10;
Gstr{i,1} = 'PRD2'; Gstr{i,2} = 'CL'; 
fPRD2(i)=fPRD2(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fHO2(i)=fHO2(i)+0.314; fRO2C(i)=fRO2C(i)+0.68; fRO2XC(i)=fRO2XC(i)+0.116; fzRNO3(i)=fzRNO3(i)+0.116; fRCHO(i)=fRCHO(i)+0.198; fPRD2(i)=fPRD2(i)+0.116; fxHO2(i)=fxHO2(i)+0.541; fxMECO3(i)=fxMECO3(i)+0.007; fxRCO3(i)=fxRCO3(i)+0.022; fxHCHO(i)=fxHCHO(i)+0.237; fxCCHO(i)=fxCCHO(i)+0.109; fxRCHO(i)=fxRCHO(i)+0.591; fxMEK(i)=fxMEK(i)+0.051; fxPROD2(i)=fxPROD2(i)+0.04; fyR6OOH(i)=fyR6OOH(i)+0.686; fXC(i)=fXC(i)+1.262; 

i=i+1;
Rnames{i} = ' GLY + CL = HCL + 0.63*HO2 + 1.26*CO + 0.37*RCO3 + -0.37*XC';
k(:,i) =  8.10e-11.*exp(-30./ T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'CL'; 
fGLY(i)=fGLY(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fHO2(i)=fHO2(i)+0.63; fCO(i)=fCO(i)+1.26; fRCO3(i)=fRCO3(i)+0.37; fXC(i)=fXC(i)+-0.37; 

i=i+1;
Rnames{i} = ' MGLY + CL = HCL + CO + MECO3 ';
k(:,i) =  8.00e-11;
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'CL'; 
fMGLY(i)=fMGLY(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fCO(i)=fCO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = ' CRES + CL = HCL + xHO2 + xBALD + yR6OOH ';
k(:,i) =  6.20e-11;
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'CL'; 
fCRES(i)=fCRES(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fxHO2(i)=fxHO2(i)+1; fxBALD(i)=fxBALD(i)+1; fyR6OOH(i)=fyR6OOH(i)+1; 

i=i+1;
Rnames{i} = ' BALD + CL = HCL + BZCO3 ';
k(:,i) =  8.00e-11;
Gstr{i,1} = 'BALD'; Gstr{i,2} = 'CL'; 
fBALD(i)=fBALD(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = ' ROOH + CL = HCL + 0.414*OH + 0.588*RO2C + 0.414*RCHO + 0.104*xOH + 0.482*xHO2 + 0.106*xHCHO + 0.104*xCCHO + 0.197*xRCHO + 0.285*xMEK +  0.586*yROOH + -0.287*XC ';
k(:,i) =  1.66e-10;
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'CL'; 
fROOH(i)=fROOH(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fOH(i)=fOH(i)+0.414; fRO2C(i)=fRO2C(i)+0.588; fRCHO(i)=fRCHO(i)+0.414; fxOH(i)=fxOH(i)+0.104; fxHO2(i)=fxHO2(i)+0.482; fxHCHO(i)=fxHCHO(i)+0.106; fxCCHO(i)=fxCCHO(i)+0.104; fxRCHO(i)=fxRCHO(i)+0.197; fxMEK(i)=fxMEK(i)+0.285; fyROOH(i)=fyROOH(i)+0.586; fXC(i)=fXC(i)+-0.287; 

i=i+1;
Rnames{i} = ' R6OOH + CL = HCL + 0.145*OH + 1.078*RO2C + 0.117*RO2XC + 0.117*zRNO3 + 0.145*PRD2 + 0.502*xOH + 0.237*xHO2 + 0.186*xCCHO + 0.676*xRCHO +  0.28*xPROD2 + 0.855*yR6OOH + 0.348*XC ';
k(:,i) =  3.00e-10;
Gstr{i,1} = 'R6OOH'; Gstr{i,2} = 'CL'; 
fR6OOH(i)=fR6OOH(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fOH(i)=fOH(i)+0.145; fRO2C(i)=fRO2C(i)+1.078; fRO2XC(i)=fRO2XC(i)+0.117; fzRNO3(i)=fzRNO3(i)+0.117; fPRD2(i)=fPRD2(i)+0.145; fxOH(i)=fxOH(i)+0.502; fxHO2(i)=fxHO2(i)+0.237; fxCCHO(i)=fxCCHO(i)+0.186; fxRCHO(i)=fxRCHO(i)+0.676; fxPROD2(i)=fxPROD2(i)+0.28; fyR6OOH(i)=fyR6OOH(i)+0.855; fXC(i)=fXC(i)+0.348; 

i=i+1;
Rnames{i} = ' RAOOH + CL = 0.404*HCL + 0.139*OH + 0.148*HO2 + 0.589*RO2C + 0.124*RO2XC + 0.124*zRNO3 + 0.074*PRD2 + 0.147*MGLY + 0.139*IPRD + 0.565*xHO2 + 0.024*xOH + 0.448*xRCHO + 0.026*xGLY + 0.03*xMEK + 0.252*xMGLY + 0.073*xAFG1 + 0.073*xAFG2 + 0.713*yR6OOH + 2.674*XC';
k(:,i) =  4.29e-10;
Gstr{i,1} = 'RAOOH'; Gstr{i,2} = 'CL'; 
fRAOOH(i)=fRAOOH(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+0.404; fOH(i)=fOH(i)+0.139; fHO2(i)=fHO2(i)+0.148; fRO2C(i)=fRO2C(i)+0.589; fRO2XC(i)=fRO2XC(i)+0.124; fzRNO3(i)=fzRNO3(i)+0.124; fPRD2(i)=fPRD2(i)+0.074; fMGLY(i)=fMGLY(i)+0.147; fIPRD(i)=fIPRD(i)+0.139; fxHO2(i)=fxHO2(i)+0.565; fxOH(i)=fxOH(i)+0.024; fxRCHO(i)=fxRCHO(i)+0.448; fxGLY(i)=fxGLY(i)+0.026; fxMEK(i)=fxMEK(i)+0.03; fxMGLY(i)=fxMGLY(i)+0.252; fxAFG1(i)=fxAFG1(i)+0.073; fxAFG2(i)=fxAFG2(i)+0.073; fyR6OOH(i)=fyR6OOH(i)+0.713; fXC(i)=fXC(i)+2.674; 

i=i+1;
Rnames{i} = ' MACR + CL = 0.25*HCL + 0.165*MACO3 + 0.802*RO2C + 0.033*RO2XC + 0.033*zRNO3 + 0.802*xHO2 + 0.541*xCO + 0.082*xIPRD + 0.18*xCLCCHO +  0.541*xCLACET + 0.835*yROOH + 0.208*XC ';
k(:,i) =  3.85e-10;
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'CL'; 
fMACR(i)=fMACR(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+0.25; fMACO3(i)=fMACO3(i)+0.165; fRO2C(i)=fRO2C(i)+0.802; fRO2XC(i)=fRO2XC(i)+0.033; fzRNO3(i)=fzRNO3(i)+0.033; fxHO2(i)=fxHO2(i)+0.802; fxCO(i)=fxCO(i)+0.541; fxIPRD(i)=fxIPRD(i)+0.082; fxCLCCHO(i)=fxCLCCHO(i)+0.18; fxCLACET(i)=fxCLACET(i)+0.541; fyROOH(i)=fyROOH(i)+0.835; fXC(i)=fXC(i)+0.208; 

i=i+1;
Rnames{i} = ' MVK + CL = 1.283*RO2C + 0.053*RO2XC + 0.053*zRNO3 + 0.322*xHO2 +  0.625*xMECO3 + 0.947*xCLCCHO + yROOH + 0.538*XC ';
k(:,i) =  2.32e-10;
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'CL'; 
fMVK(i)=fMVK(i)-1; fCL(i)=fCL(i)-1; fRO2C(i)=fRO2C(i)+1.283; fRO2XC(i)=fRO2XC(i)+0.053; fzRNO3(i)=fzRNO3(i)+0.053; fxHO2(i)=fxHO2(i)+0.322; fxMECO3(i)=fxMECO3(i)+0.625; fxCLCCHO(i)=fxCLCCHO(i)+0.947; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+0.538; 

i=i+1;
Rnames{i} = ' IPRD + CL = 0.401*HCL + 0.084*HO2 + 0.154*MACO3 + 0.73*RO2C + 0.051*RO2XC + 0.051*zRNO3 + 0.042*AFG1 + 0.042*AFG2 + 0.712*xHO2 + 0.498*xCO + 0.195*xHCHO + 0.017*xMGLY + 0.009*xAFG1 + 0.009*xAFG2 + 0.115*xIPRD + 0.14*xCLCCHO + 0.42*xCLACET + 0.762*yR6OOH + 0.709*XC';
k(:,i) =  4.12e-10;
Gstr{i,1} = 'IPRD'; Gstr{i,2} = 'CL'; 
fIPRD(i)=fIPRD(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+0.401; fHO2(i)=fHO2(i)+0.084; fMACO3(i)=fMACO3(i)+0.154; fRO2C(i)=fRO2C(i)+0.73; fRO2XC(i)=fRO2XC(i)+0.051; fzRNO3(i)=fzRNO3(i)+0.051; fAFG1(i)=fAFG1(i)+0.042; fAFG2(i)=fAFG2(i)+0.042; fxHO2(i)=fxHO2(i)+0.712; fxCO(i)=fxCO(i)+0.498; fxHCHO(i)=fxHCHO(i)+0.195; fxMGLY(i)=fxMGLY(i)+0.017; fxAFG1(i)=fxAFG1(i)+0.009; fxAFG2(i)=fxAFG2(i)+0.009; fxIPRD(i)=fxIPRD(i)+0.115; fxCLCCHO(i)=fxCLCCHO(i)+0.14; fxCLACET(i)=fxCLACET(i)+0.42; fyR6OOH(i)=fyR6OOH(i)+0.762; fXC(i)=fXC(i)+0.709; 

i=i+1;
Rnames{i} = ' CLCCHO + hv = HO2 + CO + RO2C + xCL + xHCHO + yROOH ';
k(:,i) =  1.0.*JCLCCHO;
Gstr{i,1} = 'CLCCHO'; 
fCLCCHO(i)=fCLCCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fRO2C(i)=fRO2C(i)+1; fxCL(i)=fxCL(i)+1; fxHCHO(i)=fxHCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' CLCCHO + OH = RCO3 + -1*XC ';
k(:,i) =  3.10e-12;
Gstr{i,1} = 'CLCCHO'; Gstr{i,2} = 'OH'; 
fCLCCHO(i)=fCLCCHO(i)-1; fOH(i)=fOH(i)-1; fRCO3(i)=fRCO3(i)+1; fXC(i)=fXC(i)+-1; 

i=i+1;
Rnames{i} = ' CLCCHO + CL = HCL + RCO3 + -1*XC ';
k(:,i) =  1.29e-11;
Gstr{i,1} = 'CLCCHO'; Gstr{i,2} = 'CL'; 
fCLCCHO(i)=fCLCCHO(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fRCO3(i)=fRCO3(i)+1; fXC(i)=fXC(i)+-1; 

i=i+1;
Rnames{i} = ' CLACET + hv = MECO3 + RO2C + xCL + xHCHO + yROOH ';
k(:,i) =  5.00e-1.*JCLACET;
Gstr{i,1} = 'CLACET'; 
fCLACET(i)=fCLACET(i)-1; fMECO3(i)=fMECO3(i)+1; fRO2C(i)=fRO2C(i)+1; fxCL(i)=fxCL(i)+1; fxHCHO(i)=fxHCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' CH4 + CL = HCL + MEO2 ';
k(:,i) =  7.30e-12.*exp(-1280./ T);
Gstr{i,1} = 'CH4'; Gstr{i,2} = 'CL'; 
fCH4(i)=fCH4(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = ' ETHE + CL = 2*RO2C + xHO2 + xHCHO + CLCHO';
k(:,i) = K_ETHE_CL;
Gstr{i,1} = 'ETHE'; Gstr{i,2} = 'CL'; 
fETHE(i)=fETHE(i)-1; fCL(i)=fCL(i)-1; fRO2C(i)=fRO2C(i)+2; fxHO2(i)=fxHO2(i)+1; fxHCHO(i)=fxHCHO(i)+1; fCLCHO(i)=fCLCHO(i)+1; 

i=i+1;
Rnames{i} = ' ISOP + CL = 0.15*HCL + 1.168*RO2C + 0.085*RO2XC + 0.085*zRNO3 + 0.738*xHO2 + 0.177*xCL + 0.275*xHCHO + 0.177*xMVK + 0.671*xIPRD +  0.067*xCLCCHO + yR6OOH + 0.018*XC ';
k(:,i) =  4.80e-10;
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'CL'; 
fISOP(i)=fISOP(i)-1; fCL(i)=fCL(i)-1; fHCL(i)=fHCL(i)+0.15; fRO2C(i)=fRO2C(i)+1.168; fRO2XC(i)=fRO2XC(i)+0.085; fzRNO3(i)=fzRNO3(i)+0.085; fxHO2(i)=fxHO2(i)+0.738; fxCL(i)=fxCL(i)+0.177; fxHCHO(i)=fxHCHO(i)+0.275; fxMVK(i)=fxMVK(i)+0.177; fxIPRD(i)=fxIPRD(i)+0.671; fxCLCCHO(i)=fxCLCCHO(i)+0.067; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+0.018; 

i=i+1;
Rnames{i} = ' ACYE + CL = HO2 + CO + XC ';
k(:,i) = K_ACYE_CL;
Gstr{i,1} = 'ACYE'; Gstr{i,2} = 'CL'; 
fACYE(i)=fACYE(i)-1; fCL(i)=fCL(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fXC(i)=fXC(i)+1; 

i=i+1;
Rnames{i} = ' ALK1 + CL = xHO2 + RO2C + HCL + xCCHO + yROOH ';
k(:,i) =  8.30e-11.*exp(-100./ T);
Gstr{i,1} = 'ALK1'; Gstr{i,2} = 'CL'; 
fALK1(i)=fALK1(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+1; fRO2C(i)=fRO2C(i)+1; fHCL(i)=fHCL(i)+1; fxCCHO(i)=fxCCHO(i)+1; fyROOH(i)=fyROOH(i)+1; 

i=i+1;
Rnames{i} = ' ALK2 + CL = 0.97*xHO2 + 0.97*RO2C + 0.03*RO2XC + 0.03*zRNO3 + HCL +  0.482*xRCHO + 0.488*xACET + yROOH + -0.09*XC ';
k(:,i) =  1.20e-10.*exp(40./ T);
Gstr{i,1} = 'ALK2'; Gstr{i,2} = 'CL'; 
fALK2(i)=fALK2(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.97; fRO2C(i)=fRO2C(i)+0.97; fRO2XC(i)=fRO2XC(i)+0.03; fzRNO3(i)=fzRNO3(i)+0.03; fHCL(i)=fHCL(i)+1; fxRCHO(i)=fxRCHO(i)+0.482; fxACET(i)=fxACET(i)+0.488; fyROOH(i)=fyROOH(i)+1; fXC(i)=fXC(i)+-0.09; 

i=i+1;
Rnames{i} = ' ALK3 + CL = 0.835*xHO2 + 0.094*xTBUO + 1.361*RO2C + 0.07*RO2XC + 0.07*zRNO3 + HCL + 0.078*xHCHO + 0.34*xCCHO + 0.343*xRCHO + 0.075*xACET + 0.253*xMEK + 0.983*yROOH + 0.017*yR6OOH + 0.18*XC';
k(:,i) =  1.86e-10;
Gstr{i,1} = 'ALK3'; Gstr{i,2} = 'CL'; 
fALK3(i)=fALK3(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.835; fxTBUO(i)=fxTBUO(i)+0.094; fRO2C(i)=fRO2C(i)+1.361; fRO2XC(i)=fRO2XC(i)+0.07; fzRNO3(i)=fzRNO3(i)+0.07; fHCL(i)=fHCL(i)+1; fxHCHO(i)=fxHCHO(i)+0.078; fxCCHO(i)=fxCCHO(i)+0.34; fxRCHO(i)=fxRCHO(i)+0.343; fxACET(i)=fxACET(i)+0.075; fxMEK(i)=fxMEK(i)+0.253; fyROOH(i)=fyROOH(i)+0.983; fyR6OOH(i)=fyR6OOH(i)+0.017; fXC(i)=fXC(i)+0.18; 

i=i+1;
Rnames{i} = ' ALK4 + CL = 0.827*xHO2 + 0.003*xMEO2 + 0.004*xMECO3 + 1.737*RO2C + 0.165*RO2XC + 0.165*zRNO3 + HCL + 0.003*xCO + 0.034*xHCHO + 0.287*xCCHO + 0.412*xRCHO + 0.247*xACET + 0.076*xMEK + 0.13*xPROD2 +  yR6OOH + 0.327*XC ';
k(:,i) =  2.63e-10;
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'CL'; 
fALK4(i)=fALK4(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.827; fxMEO2(i)=fxMEO2(i)+0.003; fxMECO3(i)=fxMECO3(i)+0.004; fRO2C(i)=fRO2C(i)+1.737; fRO2XC(i)=fRO2XC(i)+0.165; fzRNO3(i)=fzRNO3(i)+0.165; fHCL(i)=fHCL(i)+1; fxCO(i)=fxCO(i)+0.003; fxHCHO(i)=fxHCHO(i)+0.034; fxCCHO(i)=fxCCHO(i)+0.287; fxRCHO(i)=fxRCHO(i)+0.412; fxACET(i)=fxACET(i)+0.247; fxMEK(i)=fxMEK(i)+0.076; fxPROD2(i)=fxPROD2(i)+0.13; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+0.327; 

i=i+1;
Rnames{i} = ' ALK5 + CL = 0.647*xHO2 + 1.541*RO2C + 0.352*RO2XC + 0.352*zRNO3 + HCL + 0.022*xHCHO + 0.08*xCCHO + 0.258*xRCHO + 0.044*xACET + 0.041*xMEK +  0.378*xPROD2 + yR6OOH + 2.368*XC ';
k(:,i) =  4.21e-10;
Gstr{i,1} = 'ALK5'; Gstr{i,2} = 'CL'; 
fALK5(i)=fALK5(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.647; fRO2C(i)=fRO2C(i)+1.541; fRO2XC(i)=fRO2XC(i)+0.352; fzRNO3(i)=fzRNO3(i)+0.352; fHCL(i)=fHCL(i)+1; fxHCHO(i)=fxHCHO(i)+0.022; fxCCHO(i)=fxCCHO(i)+0.08; fxRCHO(i)=fxRCHO(i)+0.258; fxACET(i)=fxACET(i)+0.044; fxMEK(i)=fxMEK(i)+0.041; fxPROD2(i)=fxPROD2(i)+0.378; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+2.368; 

i=i+1;
Rnames{i} = ' OLE1 + CL = 0.902*xHO2 + 1.42*RO2C + 0.098*RO2XC + 0.098*zRNO3 + 0.308*HCL + 0.025*xHCHO + 0.146*xCCHO + 0.051*xRCHO + 0.188*xMACR + 0.014*xMVK + 0.027*xIPRD + 0.225*xCLCCHO + 0.396*xCLACET +  0.413*yROOH + 0.587*yR6OOH + 1.361*XC ';
k(:,i) =  3.55e-10;
Gstr{i,1} = 'OLE1'; Gstr{i,2} = 'CL'; 
fOLE1(i)=fOLE1(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.902; fRO2C(i)=fRO2C(i)+1.42; fRO2XC(i)=fRO2XC(i)+0.098; fzRNO3(i)=fzRNO3(i)+0.098; fHCL(i)=fHCL(i)+0.308; fxHCHO(i)=fxHCHO(i)+0.025; fxCCHO(i)=fxCCHO(i)+0.146; fxRCHO(i)=fxRCHO(i)+0.051; fxMACR(i)=fxMACR(i)+0.188; fxMVK(i)=fxMVK(i)+0.014; fxIPRD(i)=fxIPRD(i)+0.027; fxCLCCHO(i)=fxCLCCHO(i)+0.225; fxCLACET(i)=fxCLACET(i)+0.396; fyROOH(i)=fyROOH(i)+0.413; fyR6OOH(i)=fyR6OOH(i)+0.587; fXC(i)=fXC(i)+1.361; 

i=i+1;
Rnames{i} = ' OLE2 + CL = 0.447*xHO2 + 0.448*xCL + 0.001*xMEO2 + 1.514*RO2C + 0.104*RO2XC + 0.104*zRNO3 + 0.263*HCL + 0.228*xHCHO + 0.361*xCCHO + 0.3*xRCHO + 0.081*xACET + 0.04*xMEK + 0.049*xMACR + 0.055*xMVK + 0.179*xIPRD + 0.012*xCLCCHO + 0.18*xCLACET + 0.357*yROOH +  0.643*yR6OOH + 0.247*XC ';
k(:,i) =  3.83e-10;
Gstr{i,1} = 'OLE2'; Gstr{i,2} = 'CL'; 
fOLE2(i)=fOLE2(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.447; fxCL(i)=fxCL(i)+0.448; fxMEO2(i)=fxMEO2(i)+0.001; fRO2C(i)=fRO2C(i)+1.514; fRO2XC(i)=fRO2XC(i)+0.104; fzRNO3(i)=fzRNO3(i)+0.104; fHCL(i)=fHCL(i)+0.263; fxHCHO(i)=fxHCHO(i)+0.228; fxCCHO(i)=fxCCHO(i)+0.361; fxRCHO(i)=fxRCHO(i)+0.3; fxACET(i)=fxACET(i)+0.081; fxMEK(i)=fxMEK(i)+0.04; fxMACR(i)=fxMACR(i)+0.049; fxMVK(i)=fxMVK(i)+0.055; fxIPRD(i)=fxIPRD(i)+0.179; fxCLCCHO(i)=fxCLCCHO(i)+0.012; fxCLACET(i)=fxCLACET(i)+0.18; fyROOH(i)=fyROOH(i)+0.357; fyR6OOH(i)=fyR6OOH(i)+0.643; fXC(i)=fXC(i)+0.247; 

i=i+1;
Rnames{i} = ' ARO1 + CL = 0.88*xHO2 + 0.88*RO2C + 0.12*RO2XC + 0.12*zRNO3 +  0.671*xBALD + 0.21*xPROD2 + 0.323*XC ';
k(:,i) =  1.00e-10;
Gstr{i,1} = 'ARO1'; Gstr{i,2} = 'CL'; 
fARO1(i)=fARO1(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.88; fRO2C(i)=fRO2C(i)+0.88; fRO2XC(i)=fRO2XC(i)+0.12; fzRNO3(i)=fzRNO3(i)+0.12; fxBALD(i)=fxBALD(i)+0.671; fxPROD2(i)=fxPROD2(i)+0.21; fXC(i)=fXC(i)+0.323; 

i=i+1;
Rnames{i} = ' ARO2 + CL = 0.842*xHO2 + 0.842*RO2C + 0.158*RO2XC + 0.158*zRNO3 +  0.618*xBALD + 0.224*xPROD2 + 2.382*XC ';
k(:,i) =  2.18e-10;
Gstr{i,1} = 'ARO2'; Gstr{i,2} = 'CL'; 
fARO2(i)=fARO2(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.842; fRO2C(i)=fRO2C(i)+0.842; fRO2XC(i)=fRO2XC(i)+0.158; fzRNO3(i)=fzRNO3(i)+0.158; fxBALD(i)=fxBALD(i)+0.618; fxPROD2(i)=fxPROD2(i)+0.224; fXC(i)=fXC(i)+2.382; 

i=i+1;
Rnames{i} = ' TERP + CL = 0.252*xHO2 + 0.068*xCL + 0.034*xMECO3 + 0.05*xRCO3 + 0.016*xMACO3 + 2.258*RO2C + 0.582*RO2XC + 0.582*zRNO3 + 0.548*HCL + 0.035*xCO + 0.158*xHCHO + 0.185*xRCHO + 0.274*xACET + 0.007*xGLY + 0.003*xBACL + 0.003*xMVK + 0.158*xIPRD + 0.006*xAFG1 + 0.006*xAFG2 +  0.001*xAFG3 + 0.109*xCLCCHO + yR6OOH + 3.543*XC ';
k(:,i) =  5.46e-10;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'CL'; 
fTERP(i)=fTERP(i)-1; fCL(i)=fCL(i)-1; fxHO2(i)=fxHO2(i)+0.252; fxCL(i)=fxCL(i)+0.068; fxMECO3(i)=fxMECO3(i)+0.034; fxRCO3(i)=fxRCO3(i)+0.05; fxMACO3(i)=fxMACO3(i)+0.016; fRO2C(i)=fRO2C(i)+2.258; fRO2XC(i)=fRO2XC(i)+0.582; fzRNO3(i)=fzRNO3(i)+0.582; fHCL(i)=fHCL(i)+0.548; fxCO(i)=fxCO(i)+0.035; fxHCHO(i)=fxHCHO(i)+0.158; fxRCHO(i)=fxRCHO(i)+0.185; fxACET(i)=fxACET(i)+0.274; fxGLY(i)=fxGLY(i)+0.007; fxBACL(i)=fxBACL(i)+0.003; fxMVK(i)=fxMVK(i)+0.003; fxIPRD(i)=fxIPRD(i)+0.158; fxAFG1(i)=fxAFG1(i)+0.006; fxAFG2(i)=fxAFG2(i)+0.006; fxAFG3(i)=fxAFG3(i)+0.001; fxCLCCHO(i)=fxCLCCHO(i)+0.109; fyR6OOH(i)=fyR6OOH(i)+1; fXC(i)=fXC(i)+3.543; 

i=i+1;
Rnames{i} = 'NO +  xHO2 = HO2  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xHO2'; 
fNO(i)=fNO(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xHO2 = HO2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xHO2'; 
fNO3(i)=fNO3(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xHO2 = HO2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xHO2'; 
fMECO3(i)=fMECO3(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xHO2 = HO2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xHO2'; 
fRCO3(i)=fRCO3(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xHO2 = HO2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xHO2'; 
fBZCO3(i)=fBZCO3(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xHO2 = HO2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xHO2'; 
fMACO3(i)=fMACO3(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xHO2 = HO2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xHO2'; 
fMEO2(i)=fMEO2(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xHO2 = HO2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xHO2'; 
fRO2C(i)=fRO2C(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xHO2 = HO2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xHO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xHO2 =   + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xHO2'; 
fHO2(i)=fHO2(i)-1; fxHO2(i)=fxHO2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xHO2 =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xHO2'; 
fMEO2(i)=fMEO2(i)-1; fxHO2(i)=fxHO2(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xHO2 =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xHO2'; 
fRO2C(i)=fRO2C(i)-1; fxHO2(i)=fxHO2(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xHO2 =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xHO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxHO2(i)=fxHO2(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xOH = OH  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xOH'; 
fNO(i)=fNO(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xOH = OH  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xOH'; 
fNO3(i)=fNO3(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xOH = OH  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xOH'; 
fMECO3(i)=fMECO3(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xOH = OH  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xOH'; 
fRCO3(i)=fRCO3(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xOH = OH  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xOH'; 
fBZCO3(i)=fBZCO3(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xOH = OH  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xOH'; 
fMACO3(i)=fMACO3(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xOH = OH  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xOH'; 
fMEO2(i)=fMEO2(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xOH = OH  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xOH'; 
fRO2C(i)=fRO2C(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xOH = OH  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xOH'; 
fRO2XC(i)=fRO2XC(i)-1; fxOH(i)=fxOH(i)-1; fOH(i)=fOH(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xOH =   + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xOH'; 
fHO2(i)=fHO2(i)-1; fxOH(i)=fxOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xOH =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xOH'; 
fMEO2(i)=fMEO2(i)-1; fxOH(i)=fxOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xOH =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xOH'; 
fRO2C(i)=fRO2C(i)-1; fxOH(i)=fxOH(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xOH =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xOH'; 
fRO2XC(i)=fRO2XC(i)-1; fxOH(i)=fxOH(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xNO2 = NO2  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xNO2'; 
fNO(i)=fNO(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xNO2 = NO2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xNO2'; 
fNO3(i)=fNO3(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xNO2 = NO2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xNO2'; 
fMECO3(i)=fMECO3(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xNO2 = NO2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xNO2'; 
fRCO3(i)=fRCO3(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xNO2 = NO2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xNO2'; 
fBZCO3(i)=fBZCO3(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xNO2 = NO2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xNO2'; 
fMACO3(i)=fMACO3(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xNO2 = NO2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xNO2'; 
fMEO2(i)=fMEO2(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xNO2 = NO2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xNO2'; 
fRO2C(i)=fRO2C(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xNO2 = NO2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xNO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxNO2(i)=fxNO2(i)-1; fNO2(i)=fNO2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xNO2 = XN  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xNO2'; 
fHO2(i)=fHO2(i)-1; fxNO2(i)=fxNO2(i)-1; fXN(i)=fXN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xNO2 = XN  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xNO2'; 
fMEO2(i)=fMEO2(i)-1; fxNO2(i)=fxNO2(i)-1; fXN(i)=fXN(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xNO2 = XN  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xNO2'; 
fRO2C(i)=fRO2C(i)-1; fxNO2(i)=fxNO2(i)-1; fXN(i)=fXN(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xNO2 = XN  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xNO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxNO2(i)=fxNO2(i)-1; fXN(i)=fXN(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMEO2 = MEO2  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMEO2'; 
fNO(i)=fNO(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMEO2 = MEO2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMEO2'; 
fNO3(i)=fNO3(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMEO2 = MEO2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMEO2'; 
fMECO3(i)=fMECO3(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMEO2 = MEO2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMEO2'; 
fRCO3(i)=fRCO3(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMEO2 = MEO2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMEO2'; 
fBZCO3(i)=fBZCO3(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMEO2 = MEO2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMEO2'; 
fMACO3(i)=fMACO3(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMEO2 = MEO2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMEO2'; 
fMEO2(i)=fMEO2(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMEO2 = MEO2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMEO2'; 
fRO2C(i)=fRO2C(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMEO2 = MEO2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMEO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxMEO2(i)=fxMEO2(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMEO2 = XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMEO2'; 
fHO2(i)=fHO2(i)-1; fxMEO2(i)=fxMEO2(i)-1; fXC(i)=fXC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMEO2 = XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMEO2'; 
fMEO2(i)=fMEO2(i)-1; fxMEO2(i)=fxMEO2(i)-1; fXC(i)=fXC(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMEO2 = XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMEO2'; 
fRO2C(i)=fRO2C(i)-1; fxMEO2(i)=fxMEO2(i)-1; fXC(i)=fXC(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMEO2 = XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMEO2'; 
fRO2XC(i)=fRO2XC(i)-1; fxMEO2(i)=fxMEO2(i)-1; fXC(i)=fXC(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMECO3 = MECO3  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMECO3'; 
fNO(i)=fNO(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMECO3 = MECO3  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMECO3'; 
fNO3(i)=fNO3(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMECO3 = MECO3  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMECO3'; 
fMECO3(i)=fMECO3(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMECO3 = MECO3  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMECO3'; 
fRCO3(i)=fRCO3(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMECO3 = MECO3  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMECO3'; 
fBZCO3(i)=fBZCO3(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMECO3 = MECO3  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMECO3'; 
fMACO3(i)=fMACO3(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMECO3 = MECO3  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMECO3'; 
fMEO2(i)=fMEO2(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMECO3 = MECO3  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMECO3'; 
fRO2C(i)=fRO2C(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMECO3 = MECO3  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMECO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxMECO3(i)=fxMECO3(i)-1; fMECO3(i)=fMECO3(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMECO3 = 2*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMECO3'; 
fHO2(i)=fHO2(i)-1; fxMECO3(i)=fxMECO3(i)-1; fXC(i)=fXC(i)+2; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMECO3 = 2*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMECO3'; 
fMEO2(i)=fMEO2(i)-1; fxMECO3(i)=fxMECO3(i)-1; fXC(i)=fXC(i)+2; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMECO3 = 2*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMECO3'; 
fRO2C(i)=fRO2C(i)-1; fxMECO3(i)=fxMECO3(i)-1; fXC(i)=fXC(i)+2; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMECO3 = 2*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMECO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxMECO3(i)=fxMECO3(i)-1; fXC(i)=fXC(i)+2; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xRCO3 = RCO3  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xRCO3'; 
fNO(i)=fNO(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xRCO3 = RCO3  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xRCO3'; 
fNO3(i)=fNO3(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xRCO3 = RCO3  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xRCO3'; 
fMECO3(i)=fMECO3(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xRCO3 = RCO3  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xRCO3'; 
fRCO3(i)=fRCO3(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xRCO3 = RCO3  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xRCO3'; 
fBZCO3(i)=fBZCO3(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xRCO3 = RCO3  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xRCO3'; 
fMACO3(i)=fMACO3(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRCO3 = RCO3  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRCO3'; 
fMEO2(i)=fMEO2(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRCO3 = RCO3  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRCO3'; 
fRO2C(i)=fRO2C(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRCO3 = RCO3  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRCO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxRCO3(i)=fxRCO3(i)-1; fRCO3(i)=fRCO3(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xRCO3 = 3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xRCO3'; 
fHO2(i)=fHO2(i)-1; fxRCO3(i)=fxRCO3(i)-1; fXC(i)=fXC(i)+3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRCO3 = 3*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRCO3'; 
fMEO2(i)=fMEO2(i)-1; fxRCO3(i)=fxRCO3(i)-1; fXC(i)=fXC(i)+3; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRCO3 = 3*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRCO3'; 
fRO2C(i)=fRO2C(i)-1; fxRCO3(i)=fxRCO3(i)-1; fXC(i)=fXC(i)+3; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRCO3 = 3*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRCO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxRCO3(i)=fxRCO3(i)-1; fXC(i)=fXC(i)+3; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMACO3 = MACO3  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMACO3'; 
fNO(i)=fNO(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMACO3 = MACO3  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMACO3'; 
fNO3(i)=fNO3(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMACO3 = MACO3  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMACO3'; 
fMECO3(i)=fMECO3(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMACO3 = MACO3  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMACO3'; 
fRCO3(i)=fRCO3(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMACO3 = MACO3  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMACO3'; 
fBZCO3(i)=fBZCO3(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMACO3 = MACO3  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMACO3'; 
fMACO3(i)=fMACO3(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMACO3 = MACO3  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMACO3'; 
fMEO2(i)=fMEO2(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMACO3 = MACO3  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMACO3'; 
fRO2C(i)=fRO2C(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMACO3 = MACO3  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMACO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxMACO3(i)=fxMACO3(i)-1; fMACO3(i)=fMACO3(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMACO3 = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMACO3'; 
fHO2(i)=fHO2(i)-1; fxMACO3(i)=fxMACO3(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMACO3 = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMACO3'; 
fMEO2(i)=fMEO2(i)-1; fxMACO3(i)=fxMACO3(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMACO3 = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMACO3'; 
fRO2C(i)=fRO2C(i)-1; fxMACO3(i)=fxMACO3(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMACO3 = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMACO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxMACO3(i)=fxMACO3(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xTBUO = TBUO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xTBUO'; 
fNO(i)=fNO(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xTBUO = TBUO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xTBUO'; 
fNO3(i)=fNO3(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xTBUO = TBUO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xTBUO'; 
fMECO3(i)=fMECO3(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xTBUO = TBUO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xTBUO'; 
fRCO3(i)=fRCO3(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xTBUO = TBUO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xTBUO'; 
fBZCO3(i)=fBZCO3(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xTBUO = TBUO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xTBUO'; 
fMACO3(i)=fMACO3(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xTBUO = TBUO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xTBUO'; 
fMEO2(i)=fMEO2(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xTBUO = TBUO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xTBUO'; 
fRO2C(i)=fRO2C(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xTBUO = TBUO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xTBUO'; 
fRO2XC(i)=fRO2XC(i)-1; fxTBUO(i)=fxTBUO(i)-1; fTBUO(i)=fTBUO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xTBUO = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xTBUO'; 
fHO2(i)=fHO2(i)-1; fxTBUO(i)=fxTBUO(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xTBUO = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xTBUO'; 
fMEO2(i)=fMEO2(i)-1; fxTBUO(i)=fxTBUO(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xTBUO = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xTBUO'; 
fRO2C(i)=fRO2C(i)-1; fxTBUO(i)=fxTBUO(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xTBUO = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xTBUO'; 
fRO2XC(i)=fRO2XC(i)-1; fxTBUO(i)=fxTBUO(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xCO = CO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xCO'; 
fNO(i)=fNO(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xCO = CO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xCO'; 
fNO3(i)=fNO3(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xCO = CO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xCO'; 
fMECO3(i)=fMECO3(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xCO = CO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xCO'; 
fRCO3(i)=fRCO3(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xCO = CO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xCO'; 
fBZCO3(i)=fBZCO3(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xCO = CO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xCO'; 
fMACO3(i)=fMACO3(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCO = CO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCO'; 
fMEO2(i)=fMEO2(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCO = CO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCO'; 
fRO2C(i)=fRO2C(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCO = CO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCO(i)=fxCO(i)-1; fCO(i)=fCO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xCO = XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xCO'; 
fHO2(i)=fHO2(i)-1; fxCO(i)=fxCO(i)-1; fXC(i)=fXC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCO = XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCO'; 
fMEO2(i)=fMEO2(i)-1; fxCO(i)=fxCO(i)-1; fXC(i)=fXC(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCO = XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCO'; 
fRO2C(i)=fRO2C(i)-1; fxCO(i)=fxCO(i)-1; fXC(i)=fXC(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCO = XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCO(i)=fxCO(i)-1; fXC(i)=fXC(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xHCHO = HCHO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xHCHO'; 
fNO(i)=fNO(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xHCHO = HCHO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xHCHO'; 
fNO3(i)=fNO3(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xHCHO = HCHO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xHCHO'; 
fMECO3(i)=fMECO3(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xHCHO = HCHO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xHCHO'; 
fRCO3(i)=fRCO3(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xHCHO = HCHO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xHCHO'; 
fBZCO3(i)=fBZCO3(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xHCHO = HCHO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xHCHO'; 
fMACO3(i)=fMACO3(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xHCHO = HCHO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xHCHO'; 
fMEO2(i)=fMEO2(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xHCHO = HCHO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xHCHO'; 
fRO2C(i)=fRO2C(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xHCHO = HCHO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xHCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxHCHO(i)=fxHCHO(i)-1; fHCHO(i)=fHCHO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xHCHO = XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xHCHO'; 
fHO2(i)=fHO2(i)-1; fxHCHO(i)=fxHCHO(i)-1; fXC(i)=fXC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xHCHO = XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xHCHO'; 
fMEO2(i)=fMEO2(i)-1; fxHCHO(i)=fxHCHO(i)-1; fXC(i)=fXC(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xHCHO = XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xHCHO'; 
fRO2C(i)=fRO2C(i)-1; fxHCHO(i)=fxHCHO(i)-1; fXC(i)=fXC(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xHCHO = XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xHCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxHCHO(i)=fxHCHO(i)-1; fXC(i)=fXC(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xCCHO = CCHO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xCCHO'; 
fNO(i)=fNO(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xCCHO = CCHO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xCCHO'; 
fNO3(i)=fNO3(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xCCHO = CCHO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xCCHO'; 
fMECO3(i)=fMECO3(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xCCHO = CCHO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xCCHO'; 
fRCO3(i)=fRCO3(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xCCHO = CCHO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xCCHO'; 
fBZCO3(i)=fBZCO3(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xCCHO = CCHO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xCCHO'; 
fMACO3(i)=fMACO3(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCCHO = CCHO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCCHO'; 
fMEO2(i)=fMEO2(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCCHO = CCHO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCCHO'; 
fRO2C(i)=fRO2C(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCCHO = CCHO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCCHO(i)=fxCCHO(i)-1; fCCHO(i)=fCCHO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xCCHO = 2*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xCCHO'; 
fHO2(i)=fHO2(i)-1; fxCCHO(i)=fxCCHO(i)-1; fXC(i)=fXC(i)+2; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCCHO = 2*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCCHO'; 
fMEO2(i)=fMEO2(i)-1; fxCCHO(i)=fxCCHO(i)-1; fXC(i)=fXC(i)+2; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCCHO = 2*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCCHO'; 
fRO2C(i)=fRO2C(i)-1; fxCCHO(i)=fxCCHO(i)-1; fXC(i)=fXC(i)+2; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCCHO = 2*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCCHO(i)=fxCCHO(i)-1; fXC(i)=fXC(i)+2; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xRCHO = RCHO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xRCHO'; 
fNO(i)=fNO(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xRCHO = RCHO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xRCHO'; 
fNO3(i)=fNO3(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xRCHO = RCHO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xRCHO'; 
fMECO3(i)=fMECO3(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xRCHO = RCHO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xRCHO'; 
fRCO3(i)=fRCO3(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xRCHO = RCHO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xRCHO'; 
fBZCO3(i)=fBZCO3(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xRCHO = RCHO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xRCHO'; 
fMACO3(i)=fMACO3(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRCHO = RCHO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRCHO'; 
fMEO2(i)=fMEO2(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRCHO = RCHO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRCHO'; 
fRO2C(i)=fRO2C(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRCHO = RCHO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxRCHO(i)=fxRCHO(i)-1; fRCHO(i)=fRCHO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xRCHO = 3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xRCHO'; 
fHO2(i)=fHO2(i)-1; fxRCHO(i)=fxRCHO(i)-1; fXC(i)=fXC(i)+3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRCHO = 3*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRCHO'; 
fMEO2(i)=fMEO2(i)-1; fxRCHO(i)=fxRCHO(i)-1; fXC(i)=fXC(i)+3; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRCHO = 3*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRCHO'; 
fRO2C(i)=fRO2C(i)-1; fxRCHO(i)=fxRCHO(i)-1; fXC(i)=fXC(i)+3; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRCHO = 3*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxRCHO(i)=fxRCHO(i)-1; fXC(i)=fXC(i)+3; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xACET = ACET  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xACET'; 
fNO(i)=fNO(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xACET = ACET  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xACET'; 
fNO3(i)=fNO3(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xACET = ACET  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xACET'; 
fMECO3(i)=fMECO3(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xACET = ACET  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xACET'; 
fRCO3(i)=fRCO3(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xACET = ACET  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xACET'; 
fBZCO3(i)=fBZCO3(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xACET = ACET  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xACET'; 
fMACO3(i)=fMACO3(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xACET = ACET  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xACET'; 
fMEO2(i)=fMEO2(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xACET = ACET  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xACET'; 
fRO2C(i)=fRO2C(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xACET = ACET  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xACET'; 
fRO2XC(i)=fRO2XC(i)-1; fxACET(i)=fxACET(i)-1; fACET(i)=fACET(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xACET = 3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xACET'; 
fHO2(i)=fHO2(i)-1; fxACET(i)=fxACET(i)-1; fXC(i)=fXC(i)+3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xACET = 3*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xACET'; 
fMEO2(i)=fMEO2(i)-1; fxACET(i)=fxACET(i)-1; fXC(i)=fXC(i)+3; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xACET = 3*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xACET'; 
fRO2C(i)=fRO2C(i)-1; fxACET(i)=fxACET(i)-1; fXC(i)=fXC(i)+3; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xACET = 3*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xACET'; 
fRO2XC(i)=fRO2XC(i)-1; fxACET(i)=fxACET(i)-1; fXC(i)=fXC(i)+3; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMEK = MEK  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMEK'; 
fNO(i)=fNO(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMEK = MEK  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMEK'; 
fNO3(i)=fNO3(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMEK = MEK  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMEK'; 
fMECO3(i)=fMECO3(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMEK = MEK  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMEK'; 
fRCO3(i)=fRCO3(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMEK = MEK  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMEK'; 
fBZCO3(i)=fBZCO3(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMEK = MEK  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMEK'; 
fMACO3(i)=fMACO3(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMEK = MEK  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMEK'; 
fMEO2(i)=fMEO2(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMEK = MEK  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMEK'; 
fRO2C(i)=fRO2C(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMEK = MEK  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMEK'; 
fRO2XC(i)=fRO2XC(i)-1; fxMEK(i)=fxMEK(i)-1; fMEK(i)=fMEK(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMEK = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMEK'; 
fHO2(i)=fHO2(i)-1; fxMEK(i)=fxMEK(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMEK = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMEK'; 
fMEO2(i)=fMEO2(i)-1; fxMEK(i)=fxMEK(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMEK = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMEK'; 
fRO2C(i)=fRO2C(i)-1; fxMEK(i)=fxMEK(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMEK = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMEK'; 
fRO2XC(i)=fRO2XC(i)-1; fxMEK(i)=fxMEK(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xPROD2 = PRD2  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xPROD2'; 
fNO(i)=fNO(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xPROD2 = PRD2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xPROD2'; 
fNO3(i)=fNO3(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xPROD2 = PRD2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xPROD2'; 
fMECO3(i)=fMECO3(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xPROD2 = PRD2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xPROD2'; 
fRCO3(i)=fRCO3(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xPROD2 = PRD2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xPROD2'; 
fBZCO3(i)=fBZCO3(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xPROD2 = PRD2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xPROD2'; 
fMACO3(i)=fMACO3(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xPROD2 = PRD2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xPROD2'; 
fMEO2(i)=fMEO2(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xPROD2 = PRD2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xPROD2'; 
fRO2C(i)=fRO2C(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xPROD2 = PRD2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xPROD2'; 
fRO2XC(i)=fRO2XC(i)-1; fxPROD2(i)=fxPROD2(i)-1; fPRD2(i)=fPRD2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xPROD2 = 6*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xPROD2'; 
fHO2(i)=fHO2(i)-1; fxPROD2(i)=fxPROD2(i)-1; fXC(i)=fXC(i)+6; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xPROD2 = 6*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xPROD2'; 
fMEO2(i)=fMEO2(i)-1; fxPROD2(i)=fxPROD2(i)-1; fXC(i)=fXC(i)+6; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xPROD2 = 6*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xPROD2'; 
fRO2C(i)=fRO2C(i)-1; fxPROD2(i)=fxPROD2(i)-1; fXC(i)=fXC(i)+6; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xPROD2 = 6*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xPROD2'; 
fRO2XC(i)=fRO2XC(i)-1; fxPROD2(i)=fxPROD2(i)-1; fXC(i)=fXC(i)+6; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xGLY = GLY  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xGLY'; 
fNO(i)=fNO(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xGLY = GLY  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xGLY'; 
fNO3(i)=fNO3(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xGLY = GLY  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xGLY'; 
fMECO3(i)=fMECO3(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xGLY = GLY  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xGLY'; 
fRCO3(i)=fRCO3(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xGLY = GLY  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xGLY'; 
fBZCO3(i)=fBZCO3(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xGLY = GLY  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xGLY'; 
fMACO3(i)=fMACO3(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xGLY = GLY  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xGLY'; 
fMEO2(i)=fMEO2(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xGLY = GLY  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xGLY'; 
fRO2C(i)=fRO2C(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xGLY = GLY  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xGLY'; 
fRO2XC(i)=fRO2XC(i)-1; fxGLY(i)=fxGLY(i)-1; fGLY(i)=fGLY(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xGLY = 2*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xGLY'; 
fHO2(i)=fHO2(i)-1; fxGLY(i)=fxGLY(i)-1; fXC(i)=fXC(i)+2; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xGLY = 2*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xGLY'; 
fMEO2(i)=fMEO2(i)-1; fxGLY(i)=fxGLY(i)-1; fXC(i)=fXC(i)+2; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xGLY = 2*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xGLY'; 
fRO2C(i)=fRO2C(i)-1; fxGLY(i)=fxGLY(i)-1; fXC(i)=fXC(i)+2; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xGLY = 2*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xGLY'; 
fRO2XC(i)=fRO2XC(i)-1; fxGLY(i)=fxGLY(i)-1; fXC(i)=fXC(i)+2; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMGLY = MGLY  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMGLY'; 
fNO(i)=fNO(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMGLY = MGLY  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMGLY'; 
fNO3(i)=fNO3(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMGLY = MGLY  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMGLY'; 
fMECO3(i)=fMECO3(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMGLY = MGLY  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMGLY'; 
fRCO3(i)=fRCO3(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMGLY = MGLY  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMGLY'; 
fBZCO3(i)=fBZCO3(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMGLY = MGLY  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMGLY'; 
fMACO3(i)=fMACO3(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMGLY = MGLY  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMGLY'; 
fMEO2(i)=fMEO2(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMGLY = MGLY  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMGLY'; 
fRO2C(i)=fRO2C(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMGLY = MGLY  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMGLY'; 
fRO2XC(i)=fRO2XC(i)-1; fxMGLY(i)=fxMGLY(i)-1; fMGLY(i)=fMGLY(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMGLY = 3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMGLY'; 
fHO2(i)=fHO2(i)-1; fxMGLY(i)=fxMGLY(i)-1; fXC(i)=fXC(i)+3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMGLY = 3*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMGLY'; 
fMEO2(i)=fMEO2(i)-1; fxMGLY(i)=fxMGLY(i)-1; fXC(i)=fXC(i)+3; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMGLY = 3*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMGLY'; 
fRO2C(i)=fRO2C(i)-1; fxMGLY(i)=fxMGLY(i)-1; fXC(i)=fXC(i)+3; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMGLY = 3*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMGLY'; 
fRO2XC(i)=fRO2XC(i)-1; fxMGLY(i)=fxMGLY(i)-1; fXC(i)=fXC(i)+3; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xBACL = BACL  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xBACL'; 
fNO(i)=fNO(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xBACL = BACL  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xBACL'; 
fNO3(i)=fNO3(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xBACL = BACL  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xBACL'; 
fMECO3(i)=fMECO3(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xBACL = BACL  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xBACL'; 
fRCO3(i)=fRCO3(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xBACL = BACL  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xBACL'; 
fBZCO3(i)=fBZCO3(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xBACL = BACL  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xBACL'; 
fMACO3(i)=fMACO3(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xBACL = BACL  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xBACL'; 
fMEO2(i)=fMEO2(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xBACL = BACL  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xBACL'; 
fRO2C(i)=fRO2C(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xBACL = BACL  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xBACL'; 
fRO2XC(i)=fRO2XC(i)-1; fxBACL(i)=fxBACL(i)-1; fBACL(i)=fBACL(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xBACL = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xBACL'; 
fHO2(i)=fHO2(i)-1; fxBACL(i)=fxBACL(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xBACL = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xBACL'; 
fMEO2(i)=fMEO2(i)-1; fxBACL(i)=fxBACL(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xBACL = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xBACL'; 
fRO2C(i)=fRO2C(i)-1; fxBACL(i)=fxBACL(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xBACL = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xBACL'; 
fRO2XC(i)=fRO2XC(i)-1; fxBACL(i)=fxBACL(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xBALD = BALD  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xBALD'; 
fNO(i)=fNO(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xBALD = BALD  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xBALD'; 
fNO3(i)=fNO3(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xBALD = BALD  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xBALD'; 
fMECO3(i)=fMECO3(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xBALD = BALD  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xBALD'; 
fRCO3(i)=fRCO3(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xBALD = BALD  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xBALD'; 
fBZCO3(i)=fBZCO3(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xBALD = BALD  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xBALD'; 
fMACO3(i)=fMACO3(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xBALD = BALD  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xBALD'; 
fMEO2(i)=fMEO2(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xBALD = BALD  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xBALD'; 
fRO2C(i)=fRO2C(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xBALD = BALD  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xBALD'; 
fRO2XC(i)=fRO2XC(i)-1; fxBALD(i)=fxBALD(i)-1; fBALD(i)=fBALD(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xBALD = 7*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xBALD'; 
fHO2(i)=fHO2(i)-1; fxBALD(i)=fxBALD(i)-1; fXC(i)=fXC(i)+7; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xBALD = 7*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xBALD'; 
fMEO2(i)=fMEO2(i)-1; fxBALD(i)=fxBALD(i)-1; fXC(i)=fXC(i)+7; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xBALD = 7*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xBALD'; 
fRO2C(i)=fRO2C(i)-1; fxBALD(i)=fxBALD(i)-1; fXC(i)=fXC(i)+7; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xBALD = 7*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xBALD'; 
fRO2XC(i)=fRO2XC(i)-1; fxBALD(i)=fxBALD(i)-1; fXC(i)=fXC(i)+7; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xAFG1 = AFG1  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xAFG1'; 
fNO(i)=fNO(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xAFG1 = AFG1  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xAFG1'; 
fNO3(i)=fNO3(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xAFG1 = AFG1  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xAFG1'; 
fMECO3(i)=fMECO3(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xAFG1 = AFG1  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xAFG1'; 
fRCO3(i)=fRCO3(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xAFG1 = AFG1  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xAFG1'; 
fBZCO3(i)=fBZCO3(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xAFG1 = AFG1  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xAFG1'; 
fMACO3(i)=fMACO3(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG1 = AFG1  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG1'; 
fMEO2(i)=fMEO2(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG1 = AFG1  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG1'; 
fRO2C(i)=fRO2C(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG1 = AFG1  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG1'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG1(i)=fxAFG1(i)-1; fAFG1(i)=fAFG1(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xAFG1 = 5*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xAFG1'; 
fHO2(i)=fHO2(i)-1; fxAFG1(i)=fxAFG1(i)-1; fXC(i)=fXC(i)+5; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG1 = 5*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG1'; 
fMEO2(i)=fMEO2(i)-1; fxAFG1(i)=fxAFG1(i)-1; fXC(i)=fXC(i)+5; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG1 = 5*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG1'; 
fRO2C(i)=fRO2C(i)-1; fxAFG1(i)=fxAFG1(i)-1; fXC(i)=fXC(i)+5; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG1 = 5*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG1'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG1(i)=fxAFG1(i)-1; fXC(i)=fXC(i)+5; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xAFG2 = AFG2  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xAFG2'; 
fNO(i)=fNO(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xAFG2 = AFG2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xAFG2'; 
fNO3(i)=fNO3(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xAFG2 = AFG2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xAFG2'; 
fMECO3(i)=fMECO3(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xAFG2 = AFG2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xAFG2'; 
fRCO3(i)=fRCO3(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xAFG2 = AFG2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xAFG2'; 
fBZCO3(i)=fBZCO3(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xAFG2 = AFG2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xAFG2'; 
fMACO3(i)=fMACO3(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG2 = AFG2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG2'; 
fMEO2(i)=fMEO2(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG2 = AFG2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG2'; 
fRO2C(i)=fRO2C(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG2 = AFG2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG2'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG2(i)=fxAFG2(i)-1; fAFG2(i)=fAFG2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xAFG2 = 5*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xAFG2'; 
fHO2(i)=fHO2(i)-1; fxAFG2(i)=fxAFG2(i)-1; fXC(i)=fXC(i)+5; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG2 = 5*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG2'; 
fMEO2(i)=fMEO2(i)-1; fxAFG2(i)=fxAFG2(i)-1; fXC(i)=fXC(i)+5; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG2 = 5*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG2'; 
fRO2C(i)=fRO2C(i)-1; fxAFG2(i)=fxAFG2(i)-1; fXC(i)=fXC(i)+5; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG2 = 5*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG2'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG2(i)=fxAFG2(i)-1; fXC(i)=fXC(i)+5; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xAFG3 = AFG3  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xAFG3'; 
fNO(i)=fNO(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xAFG3 = AFG3  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xAFG3'; 
fNO3(i)=fNO3(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xAFG3 = AFG3  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xAFG3'; 
fMECO3(i)=fMECO3(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xAFG3 = AFG3  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xAFG3'; 
fRCO3(i)=fRCO3(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xAFG3 = AFG3  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xAFG3'; 
fBZCO3(i)=fBZCO3(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xAFG3 = AFG3  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xAFG3'; 
fMACO3(i)=fMACO3(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG3 = AFG3  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG3'; 
fMEO2(i)=fMEO2(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG3 = AFG3  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG3'; 
fRO2C(i)=fRO2C(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG3 = AFG3  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG3'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG3(i)=fxAFG3(i)-1; fAFG3(i)=fAFG3(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xAFG3 = 7*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xAFG3'; 
fHO2(i)=fHO2(i)-1; fxAFG3(i)=fxAFG3(i)-1; fXC(i)=fXC(i)+7; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xAFG3 = 7*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xAFG3'; 
fMEO2(i)=fMEO2(i)-1; fxAFG3(i)=fxAFG3(i)-1; fXC(i)=fXC(i)+7; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xAFG3 = 7*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xAFG3'; 
fRO2C(i)=fRO2C(i)-1; fxAFG3(i)=fxAFG3(i)-1; fXC(i)=fXC(i)+7; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xAFG3 = 7*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xAFG3'; 
fRO2XC(i)=fRO2XC(i)-1; fxAFG3(i)=fxAFG3(i)-1; fXC(i)=fXC(i)+7; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMACR = MACR  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMACR'; 
fNO(i)=fNO(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMACR = MACR  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMACR'; 
fNO3(i)=fNO3(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMACR = MACR  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMACR'; 
fMECO3(i)=fMECO3(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMACR = MACR  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMACR'; 
fRCO3(i)=fRCO3(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMACR = MACR  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMACR'; 
fBZCO3(i)=fBZCO3(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMACR = MACR  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMACR'; 
fMACO3(i)=fMACO3(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMACR = MACR  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMACR'; 
fMEO2(i)=fMEO2(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMACR = MACR  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMACR'; 
fRO2C(i)=fRO2C(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMACR = MACR  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMACR'; 
fRO2XC(i)=fRO2XC(i)-1; fxMACR(i)=fxMACR(i)-1; fMACR(i)=fMACR(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMACR = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMACR'; 
fHO2(i)=fHO2(i)-1; fxMACR(i)=fxMACR(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMACR = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMACR'; 
fMEO2(i)=fMEO2(i)-1; fxMACR(i)=fxMACR(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMACR = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMACR'; 
fRO2C(i)=fRO2C(i)-1; fxMACR(i)=fxMACR(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMACR = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMACR'; 
fRO2XC(i)=fRO2XC(i)-1; fxMACR(i)=fxMACR(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xMVK = MVK  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xMVK'; 
fNO(i)=fNO(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xMVK = MVK  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xMVK'; 
fNO3(i)=fNO3(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xMVK = MVK  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xMVK'; 
fMECO3(i)=fMECO3(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xMVK = MVK  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xMVK'; 
fRCO3(i)=fRCO3(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xMVK = MVK  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xMVK'; 
fBZCO3(i)=fBZCO3(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xMVK = MVK  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xMVK'; 
fMACO3(i)=fMACO3(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMVK = MVK  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMVK'; 
fMEO2(i)=fMEO2(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMVK = MVK  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMVK'; 
fRO2C(i)=fRO2C(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMVK = MVK  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMVK'; 
fRO2XC(i)=fRO2XC(i)-1; fxMVK(i)=fxMVK(i)-1; fMVK(i)=fMVK(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xMVK = 4*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xMVK'; 
fHO2(i)=fHO2(i)-1; fxMVK(i)=fxMVK(i)-1; fXC(i)=fXC(i)+4; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xMVK = 4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xMVK'; 
fMEO2(i)=fMEO2(i)-1; fxMVK(i)=fxMVK(i)-1; fXC(i)=fXC(i)+4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xMVK = 4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xMVK'; 
fRO2C(i)=fRO2C(i)-1; fxMVK(i)=fxMVK(i)-1; fXC(i)=fXC(i)+4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xMVK = 4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xMVK'; 
fRO2XC(i)=fRO2XC(i)-1; fxMVK(i)=fxMVK(i)-1; fXC(i)=fXC(i)+4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xIPRD = IPRD  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xIPRD'; 
fNO(i)=fNO(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xIPRD = IPRD  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xIPRD'; 
fNO3(i)=fNO3(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xIPRD = IPRD  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xIPRD'; 
fMECO3(i)=fMECO3(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xIPRD = IPRD  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xIPRD'; 
fRCO3(i)=fRCO3(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xIPRD = IPRD  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xIPRD'; 
fBZCO3(i)=fBZCO3(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xIPRD = IPRD  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xIPRD'; 
fMACO3(i)=fMACO3(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xIPRD = IPRD  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xIPRD'; 
fMEO2(i)=fMEO2(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xIPRD = IPRD  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xIPRD'; 
fRO2C(i)=fRO2C(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xIPRD = IPRD  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xIPRD'; 
fRO2XC(i)=fRO2XC(i)-1; fxIPRD(i)=fxIPRD(i)-1; fIPRD(i)=fIPRD(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xIPRD = 5*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xIPRD'; 
fHO2(i)=fHO2(i)-1; fxIPRD(i)=fxIPRD(i)-1; fXC(i)=fXC(i)+5; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xIPRD = 5*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xIPRD'; 
fMEO2(i)=fMEO2(i)-1; fxIPRD(i)=fxIPRD(i)-1; fXC(i)=fXC(i)+5; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xIPRD = 5*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xIPRD'; 
fRO2C(i)=fRO2C(i)-1; fxIPRD(i)=fxIPRD(i)-1; fXC(i)=fXC(i)+5; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xIPRD = 5*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xIPRD'; 
fRO2XC(i)=fRO2XC(i)-1; fxIPRD(i)=fxIPRD(i)-1; fXC(i)=fXC(i)+5; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xRNO3 = RNO3  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xRNO3'; 
fNO(i)=fNO(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xRNO3 = RNO3  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xRNO3'; 
fNO3(i)=fNO3(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xRNO3 = RNO3  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xRNO3'; 
fMECO3(i)=fMECO3(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xRNO3 = RNO3  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xRNO3'; 
fRCO3(i)=fRCO3(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xRNO3 = RNO3  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xRNO3'; 
fBZCO3(i)=fBZCO3(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xRNO3 = RNO3  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xRNO3'; 
fMACO3(i)=fMACO3(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRNO3 = RNO3  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRNO3'; 
fMEO2(i)=fMEO2(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRNO3 = RNO3  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRNO3'; 
fRO2C(i)=fRO2C(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRNO3 = RNO3  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRNO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxRNO3(i)=fxRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xRNO3 = 6*XC + XN  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xRNO3'; 
fHO2(i)=fHO2(i)-1; fxRNO3(i)=fxRNO3(i)-1; fXC(i)=fXC(i)+6; fXN(i)=fXN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xRNO3 = 6*XC + XN  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xRNO3'; 
fMEO2(i)=fMEO2(i)-1; fxRNO3(i)=fxRNO3(i)-1; fXC(i)=fXC(i)+6; fXN(i)=fXN(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xRNO3 = 6*XC + XN  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xRNO3'; 
fRO2C(i)=fRO2C(i)-1; fxRNO3(i)=fxRNO3(i)-1; fXC(i)=fXC(i)+6; fXN(i)=fXN(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xRNO3 = 6*XC + XN  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xRNO3'; 
fRO2XC(i)=fRO2XC(i)-1; fxRNO3(i)=fxRNO3(i)-1; fXC(i)=fXC(i)+6; fXN(i)=fXN(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  zRNO3 = RNO3 + -1*XN  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'zRNO3'; 
fNO(i)=fNO(i)-1; fzRNO3(i)=fzRNO3(i)-1; fRNO3(i)=fRNO3(i)+1; fXN(i)=fXN(i)+-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  zRNO3 = PRD2 + HO2  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'zRNO3'; 
fNO3(i)=fNO3(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  zRNO3 = PRD2 + HO2  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'zRNO3'; 
fMECO3(i)=fMECO3(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  zRNO3 = PRD2 + HO2  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'zRNO3'; 
fRCO3(i)=fRCO3(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  zRNO3 = PRD2 + HO2  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'zRNO3'; 
fBZCO3(i)=fBZCO3(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  zRNO3 = PRD2 + HO2  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'zRNO3'; 
fMACO3(i)=fMACO3(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  zRNO3 = PRD2 + HO2  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'zRNO3'; 
fMEO2(i)=fMEO2(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  zRNO3 = PRD2 + HO2  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'zRNO3'; 
fRO2C(i)=fRO2C(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  zRNO3 = PRD2 + HO2  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'zRNO3'; 
fRO2XC(i)=fRO2XC(i)-1; fzRNO3(i)=fzRNO3(i)-1; fPRD2(i)=fPRD2(i)+1; fHO2(i)=fHO2(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  zRNO3 = 6*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'zRNO3'; 
fHO2(i)=fHO2(i)-1; fzRNO3(i)=fzRNO3(i)-1; fXC(i)=fXC(i)+6; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  zRNO3 = 6*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'zRNO3'; 
fMEO2(i)=fMEO2(i)-1; fzRNO3(i)=fzRNO3(i)-1; fXC(i)=fXC(i)+6; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  zRNO3 = 6*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'zRNO3'; 
fRO2C(i)=fRO2C(i)-1; fzRNO3(i)=fzRNO3(i)-1; fXC(i)=fXC(i)+6; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  zRNO3 = 6*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'zRNO3'; 
fRO2XC(i)=fRO2XC(i)-1; fzRNO3(i)=fzRNO3(i)-1; fXC(i)=fXC(i)+6; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  yROOH = ROOH + -3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'yROOH'; 
fHO2(i)=fHO2(i)-1; fyROOH(i)=fyROOH(i)-1; fROOH(i)=fROOH(i)+1; fXC(i)=fXC(i)+-3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yROOH = MEK + -4*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yROOH'; 
fMEO2(i)=fMEO2(i)-1; fyROOH(i)=fyROOH(i)-1; fMEK(i)=fMEK(i)+1; fXC(i)=fXC(i)+-4; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yROOH = MEK + -4*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yROOH'; 
fRO2C(i)=fRO2C(i)-1; fyROOH(i)=fyROOH(i)-1; fMEK(i)=fMEK(i)+1; fXC(i)=fXC(i)+-4; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yROOH = MEK + -4*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yROOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyROOH(i)=fyROOH(i)-1; fMEK(i)=fMEK(i)+1; fXC(i)=fXC(i)+-4; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  yROOH =   + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'yROOH'; 
fNO(i)=fNO(i)-1; fyROOH(i)=fyROOH(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  yROOH =   + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'yROOH'; 
fNO3(i)=fNO3(i)-1; fyROOH(i)=fyROOH(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  yROOH =   + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'yROOH'; 
fMECO3(i)=fMECO3(i)-1; fyROOH(i)=fyROOH(i)-1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  yROOH =   + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'yROOH'; 
fRCO3(i)=fRCO3(i)-1; fyROOH(i)=fyROOH(i)-1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  yROOH =   + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'yROOH'; 
fBZCO3(i)=fBZCO3(i)-1; fyROOH(i)=fyROOH(i)-1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  yROOH =   + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'yROOH'; 
fMACO3(i)=fMACO3(i)-1; fyROOH(i)=fyROOH(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yROOH =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yROOH'; 
fMEO2(i)=fMEO2(i)-1; fyROOH(i)=fyROOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yROOH =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yROOH'; 
fRO2C(i)=fRO2C(i)-1; fyROOH(i)=fyROOH(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yROOH =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yROOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyROOH(i)=fyROOH(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  yR6OOH = R6OOH + -6*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'yR6OOH'; 
fHO2(i)=fHO2(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fR6OOH(i)=fR6OOH(i)+1; fXC(i)=fXC(i)+-6; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yR6OOH = PRD2 + -6*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yR6OOH'; 
fMEO2(i)=fMEO2(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yR6OOH = PRD2 + -6*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yR6OOH'; 
fRO2C(i)=fRO2C(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yR6OOH = PRD2 + -6*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yR6OOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  yR6OOH =   + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'yR6OOH'; 
fNO(i)=fNO(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  yR6OOH =   + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'yR6OOH'; 
fNO3(i)=fNO3(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  yR6OOH =   + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'yR6OOH'; 
fMECO3(i)=fMECO3(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  yR6OOH =   + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'yR6OOH'; 
fRCO3(i)=fRCO3(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  yR6OOH =   + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'yR6OOH'; 
fBZCO3(i)=fBZCO3(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  yR6OOH =   + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'yR6OOH'; 
fMACO3(i)=fMACO3(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yR6OOH =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yR6OOH'; 
fMEO2(i)=fMEO2(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yR6OOH =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yR6OOH'; 
fRO2C(i)=fRO2C(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yR6OOH =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yR6OOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyR6OOH(i)=fyR6OOH(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  yRAOOH = RAOOH + -8*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'yRAOOH'; 
fHO2(i)=fHO2(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fRAOOH(i)=fRAOOH(i)+1; fXC(i)=fXC(i)+-8; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yRAOOH = PRD2 + -6*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yRAOOH'; 
fMEO2(i)=fMEO2(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yRAOOH = PRD2 + -6*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yRAOOH'; 
fRO2C(i)=fRO2C(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yRAOOH = PRD2 + -6*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yRAOOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fPRD2(i)=fPRD2(i)+1; fXC(i)=fXC(i)+-6; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  yRAOOH =   + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'yRAOOH'; 
fNO(i)=fNO(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  yRAOOH =   + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'yRAOOH'; 
fNO3(i)=fNO3(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  yRAOOH =   + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'yRAOOH'; 
fMECO3(i)=fMECO3(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  yRAOOH =   + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'yRAOOH'; 
fRCO3(i)=fRCO3(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  yRAOOH =   + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'yRAOOH'; 
fBZCO3(i)=fBZCO3(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  yRAOOH =   + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'yRAOOH'; 
fMACO3(i)=fMACO3(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  yRAOOH =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'yRAOOH'; 
fMEO2(i)=fMEO2(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  yRAOOH =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'yRAOOH'; 
fRO2C(i)=fRO2C(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  yRAOOH =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'yRAOOH'; 
fRO2XC(i)=fRO2XC(i)-1; fyRAOOH(i)=fyRAOOH(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xCL = CL  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xCL'; 
fNO(i)=fNO(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xCL = CL  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xCL'; 
fNO3(i)=fNO3(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xCL = CL  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xCL'; 
fMECO3(i)=fMECO3(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xCL = CL  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xCL'; 
fRCO3(i)=fRCO3(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xCL = CL  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xCL'; 
fBZCO3(i)=fBZCO3(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xCL = CL  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xCL'; 
fMACO3(i)=fMACO3(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCL = CL  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCL'; 
fMEO2(i)=fMEO2(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCL = CL  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCL'; 
fRO2C(i)=fRO2C(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCL = CL  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCL'; 
fRO2XC(i)=fRO2XC(i)-1; fxCL(i)=fxCL(i)-1; fCL(i)=fCL(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xCL =   + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xCL'; 
fHO2(i)=fHO2(i)-1; fxCL(i)=fxCL(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCL =   + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCL'; 
fMEO2(i)=fMEO2(i)-1; fxCL(i)=fxCL(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCL =   + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCL'; 
fRO2C(i)=fRO2C(i)-1; fxCL(i)=fxCL(i)-1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCL =   + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCL'; 
fRO2XC(i)=fRO2XC(i)-1; fxCL(i)=fxCL(i)-1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xCLCCHO = CLCCHO  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xCLCCHO'; 
fNO(i)=fNO(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xCLCCHO = CLCCHO  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xCLCCHO'; 
fNO3(i)=fNO3(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xCLCCHO = CLCCHO  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xCLCCHO'; 
fMECO3(i)=fMECO3(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xCLCCHO = CLCCHO  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xCLCCHO'; 
fRCO3(i)=fRCO3(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xCLCCHO = CLCCHO  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xCLCCHO'; 
fBZCO3(i)=fBZCO3(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xCLCCHO = CLCCHO  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xCLCCHO'; 
fMACO3(i)=fMACO3(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCLCCHO = CLCCHO  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCLCCHO'; 
fMEO2(i)=fMEO2(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCLCCHO = CLCCHO  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCLCCHO'; 
fRO2C(i)=fRO2C(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCLCCHO = CLCCHO  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCLCCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fCLCCHO(i)=fCLCCHO(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xCLCCHO = 2*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xCLCCHO'; 
fHO2(i)=fHO2(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fXC(i)=fXC(i)+2; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCLCCHO = 2*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCLCCHO'; 
fMEO2(i)=fMEO2(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fXC(i)=fXC(i)+2; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCLCCHO = 2*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCLCCHO'; 
fRO2C(i)=fRO2C(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fXC(i)=fXC(i)+2; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCLCCHO = 2*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCLCCHO'; 
fRO2XC(i)=fRO2XC(i)-1; fxCLCCHO(i)=fxCLCCHO(i)-1; fXC(i)=fXC(i)+2; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'NO +  xCLACET = CLACET  + NO';
k(:,i) =  2.60e-12.*exp(380./ T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'xCLACET'; 
fNO(i)=fNO(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 +  xCLACET = CLACET  + NO3';
k(:,i) =  2.30e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'xCLACET'; 
fNO3(i)=fNO3(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MECO3 +  xCLACET = CLACET  + MECO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MECO3'; Gstr{i,2} = 'xCLACET'; 
fMECO3(i)=fMECO3(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fMECO3(i)=fMECO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 +  xCLACET = CLACET  + RCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'xCLACET'; 
fRCO3(i)=fRCO3(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZCO3 +  xCLACET = CLACET  + BZCO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'BZCO3'; Gstr{i,2} = 'xCLACET'; 
fBZCO3(i)=fBZCO3(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fBZCO3(i)=fBZCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 +  xCLACET = CLACET  + MACO3';
k(:,i) =  4.40e-13.*exp(1070./ T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'xCLACET'; 
fMACO3(i)=fMACO3(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCLACET = CLACET  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCLACET'; 
fMEO2(i)=fMEO2(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCLACET = CLACET  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCLACET'; 
fRO2C(i)=fRO2C(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCLACET = CLACET  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCLACET'; 
fRO2XC(i)=fRO2XC(i)-1; fxCLACET(i)=fxCLACET(i)-1; fCLACET(i)=fCLACET(i)+1; fRO2XC(i)=fRO2XC(i)+1; 

i=i+1;
Rnames{i} = 'HO2 +  xCLACET = 3*XC  + HO2';
k(:,i) =  3.80e-13.*exp(900./ T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'xCLACET'; 
fHO2(i)=fHO2(i)-1; fxCLACET(i)=fxCLACET(i)-1; fXC(i)=fXC(i)+3; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MEO2 +  xCLACET = 3*XC  + MEO2';
k(:,i) =  2.00e-13*0.5;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'xCLACET'; 
fMEO2(i)=fMEO2(i)-1; fxCLACET(i)=fxCLACET(i)-1; fXC(i)=fXC(i)+3; fMEO2(i)=fMEO2(i)+1; 

i=i+1;
Rnames{i} = 'RO2C +  xCLACET = 3*XC  + RO2C';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2C'; Gstr{i,2} = 'xCLACET'; 
fRO2C(i)=fRO2C(i)-1; fxCLACET(i)=fxCLACET(i)-1; fXC(i)=fXC(i)+3; fRO2C(i)=fRO2C(i)+1; 

i=i+1;
Rnames{i} = 'RO2XC +  xCLACET = 3*XC  + RO2XC';
k(:,i) =  3.50e-14*0.5;
Gstr{i,1} = 'RO2XC'; Gstr{i,2} = 'xCLACET'; 
fRO2XC(i)=fRO2XC(i)-1; fxCLACET(i)=fxCLACET(i)-1; fXC(i)=fXC(i)+3; fRO2XC(i)=fRO2XC(i)+1; 

%END OF REACTION LIST


