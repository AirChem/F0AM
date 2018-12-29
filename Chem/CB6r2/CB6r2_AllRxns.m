% CB6r2_AllRxns.m
% # of species = 77
% # of reactions = 216
% For more information, please see CAMx User's Guide, Appendix A.
% NOTE: CB6r2 species "O" renamed "O3P"
%
% 20150415 MM   First build.
% 20160203 GMW  Checked against documentation.
% 20160606 MM   Updated for consistency with CAMx v 6.3.

SpeciesToAdd = {...
'O1D'; 'O3P'; 'OH'; 'HO2'; 'C2O3'; 'XO2'; 'XO2N'; 'CXO3'; 'MEO2'; 'TO2'; ...
'ROR'; 'HCO3'; 'CRO'; 'BZO2'; 'EPX2'; 'ISO2'; 'OPO3'; 'RO2'; 'XLO2'; 'XO2H'; ...
'AACD'; 'ACET'; 'ALD2'; 'ALDX'; 'BENZ'; 'CAT1'; 'CO'; 'CRES'; 'CRON'; 'EPOX'; ...
'ETH'; 'ETHA'; 'ETHY'; 'ETOH'; 'FACD'; 'FORM'; 'GLY'; 'GLYD'; 'H2O2'; 'HNO3'; ...
'HONO'; 'HPLD'; 'INTR'; 'IOLE'; 'ISOP'; 'ISPD'; 'ISPX'; 'KET'; 'MEOH'; 'MEPX'; ...
'MGLY'; 'N2O5'; 'NO'; 'NO2'; 'NO3'; 'NTR1'; 'NTR2'; 'O3'; 'OLE'; 'OPAN'; ...
'OPEN'; 'PACD'; 'PAN'; 'PANX'; 'PAR'; 'PNA'; 'PRPA'; 'ROOH'; 'SO2'; 'SULF'; ...
'TERP'; 'TOL'; 'XOPN'; 'XYL'; 'ECH4'; 'H2'; 'CH4'; };

RO2ToAdd = {'RO2'};

AddSpecies

%1
i=i+1;
Rnames{i} = 'NO2 = NO + O3P';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2';
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO3P(i)=fO3P(i)+1;

%2
i=i+1;
Rnames{i} = 'O3P = O3';
k(:,i) = 5.68e-34.*((T./300).^-2.6).*M.^2.*0.21;
Gstr{i,1} = 'O3P';
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1;

%3
i=i+1;
Rnames{i} = 'O3 + NO = NO2';
k(:,i) = 1.40e-12.*exp(-1310./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO';
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%4
i=i+1;
Rnames{i} = 'O3P + NO = NO2';
k(:,i) = 1.00e-31.*((T./300).^-1.6).*M;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO';
fO3P(i)=fO3P(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%5
i=i+1;
Rnames{i} = 'O3P + NO2 = NO';
k(:,i) = 5.50e-12.*exp(188./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2';
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%6
i=i+1;
Rnames{i} = 'O3P + NO2 = NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2';
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1;

%7
i=i+1;
Rnames{i} = 'O3P + O3 = ';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'O3';
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)-1;

%8
i=i+1;
Rnames{i} = 'O3 = O3P';
k(:,i) = JO3P;
Gstr{i,1} = 'O3';
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1;

%9
i=i+1;
Rnames{i} = 'O3 = O1D';
k(:,i) = JO1D;
Gstr{i,1} = 'O3';
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1;

%10
i=i+1;
Rnames{i} = 'O1D = O3P';
k(:,i) = 2.23e-11.*exp(115./T).*M;
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

%11
i=i+1;
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.140e-10.*H2O;
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1;

%12
i=i+1;
Rnames{i} = 'O3 + OH = HO2';
k(:,i) = 1.7e-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH';
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%13
i=i+1;
Rnames{i} = 'O3 + HO2 = OH';
k(:,i) = 2.03e-16.*((T./300).^4.57).*exp(693./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2';
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

%14
i=i+1;
Rnames{i} = 'OH + O3P = HO2';
k(:,i) = 2.4E-11.*exp(110./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3P';
fOH(i)=fOH(i)-1; fO3P(i)=fO3P(i)-1; fHO2(i)=fHO2(i)+1;

%15
i=i+1;
Rnames{i} = 'HO2 + O3P = OH';
k(:,i) = 2.70E-11.*exp(224./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3P';
fHO2(i)=fHO2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1;

%16
i=i+1;
Rnames{i} = 'OH + OH = O3P';
k(:,i) = 6.20e-14.*((T./298).^2.6).*exp(945./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fO3P(i)=fO3P(i)+1;

%17
i=i+1;
Rnames{i} = 'OH + OH = H2O2';
k(:,i) = K_OH_OH;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)+1;

%18
i=i+1;
Rnames{i} = 'OH + HO2 = ';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2';
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;

%19
i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*exp(600./T)+1.90e-33.*exp(980./T).*M;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2';
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1;

%20
i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = (3.08e-34.*exp(2800./T)+2.66e-54.*exp(3180./T).*M).*H2O;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2';
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1;

%21
i=i+1;
Rnames{i} = 'H2O2 = OH + OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2';
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1;

%22
i=i+1;
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2';
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1;

%23
i=i+1;
Rnames{i} = 'H2O2 + O3P = OH + HO2';
k(:,i) = 1.4E-12.*exp(-2000./T)   ;
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'O3P';
fH2O2(i)=fH2O2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;

%24
i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3E-39.*exp(530./T).*0.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO';
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1;

%25
i=i+1;
Rnames{i} = 'HO2 + NO = OH + NO2';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO';
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

%26
i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.40E-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3';
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1;

%27
i=i+1;
Rnames{i} = 'NO3 = NO2 + O3P';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO3P(i)=fO3P(i)+1;

%28
i=i+1;
Rnames{i} = 'NO3 = NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1;

%29
i=i+1;
Rnames{i} = 'NO3 + NO = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO';
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1;

%30
i=i+1;
Rnames{i} = 'NO3 + NO2 = NO + NO2';
k(:,i) = 4.5e-14.*exp(-1260./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2';
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

%31
i=i+1;
Rnames{i} = 'NO3 + O3P = NO2';
k(:,i) = 1.70E-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3P';
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1;

%32
i=i+1;
Rnames{i} = 'NO3 + OH = NO2 + HO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH';
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%33
i=i+1;
Rnames{i} = 'NO3 + HO2 = OH + NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2';
fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

%34
i=i+1;
Rnames{i} = 'NO3 + O3 = NO2';
k(:,i) = 1.0E-17;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3';
fNO3(i)=fNO3(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1;

%35
i=i+1;
Rnames{i} = 'NO3 + NO3 = NO2 + NO2';
k(:,i) = 8.5e-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1;

%36
i=i+1;
Rnames{i} = 'NO3 + NO2 = N2O5';
k(:,i) = K_NO3_NO2;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2';
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fN2O5(i)=fN2O5(i)+1;

%37
i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

%38
i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = JN2O5;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

%39
i=i+1;
Rnames{i} = 'N2O5 = HNO3 + HNO3';
k(:,i) = 1.00e-22.*H2O;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%40
i=i+1;
Rnames{i} = 'OH + NO = HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO';
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1;

%41
i=i+1;
Rnames{i} = 'NO + NO2 = HONO + HONO';
k(:,i) = 5.0e-40.*H2O;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO2';
fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)-1; fHONO(i)=fHONO(i)+1; fHONO(i)=fHONO(i)+1;

%42
i=i+1;
Rnames{i} = 'HONO + HONO = NO + NO2';
k(:,i) = 1.0e-20;
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'HONO';
fHONO(i)=fHONO(i)-1; fHONO(i)=fHONO(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

%43
i=i+1;
Rnames{i} = 'HONO = OH + NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO';
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1;

%44
i=i+1;
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO';
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1;

%45
i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2';
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1;

%46
i=i+1;
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3';
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%47
i=i+1;
Rnames{i} = 'HNO3 = OH + NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3';
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

%48
i=i+1;
Rnames{i} = 'HO2 + NO2 = PNA';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2';
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fPNA(i)=fPNA(i)+1;

%49
i=i+1;
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = K_PNA;
Gstr{i,1} = 'PNA';
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;

%50
i=i+1;
Rnames{i} = 'PNA = 0.59HO2 + 0.59NO2 + 0.41OH + 0.41NO3';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'PNA';
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+0.59; fNO2(i)=fNO2(i)+0.59; fOH(i)=fOH(i)+0.41; 
fNO3(i)=fNO3(i)+0.41;

%51
i=i+1;
Rnames{i} = 'OH + PNA = NO2';
k(:,i) = 3.20e-13.*exp(690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PNA';
fOH(i)=fOH(i)-1; fPNA(i)=fPNA(i)-1; fNO2(i)=fNO2(i)+1;

%52
i=i+1;
Rnames{i} = 'SO2 + OH = SULF + HO2';
k(:,i) = K_SO2_OH;
Gstr{i,1} = 'SO2'; Gstr{i,2} = 'OH';
fSO2(i)=fSO2(i)-1; fOH(i)=fOH(i)-1; fSULF(i)=fSULF(i)+1; fHO2(i)=fHO2(i)+1;

%53
i=i+1;
Rnames{i} = 'C2O3 + NO = NO2 + MEO2 + RO2';
k(:,i) = 7.5E-12.*exp(290./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO';
fC2O3(i)=fC2O3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%54
i=i+1;
Rnames{i} = 'C2O3 + NO2 = PAN';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO2';
fC2O3(i)=fC2O3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1;

%55
i=i+1;
Rnames{i} = 'PAN = C2O3 + NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN';
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1;

%56
i=i+1;
Rnames{i} = 'PAN = 0.6C2O3 + 0.6NO2 + 0.4NO3 + 0.4MEO2 + 0.4RO2';
k(:,i) = JPAN;
Gstr{i,1} = 'PAN';
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fNO3(i)=fNO3(i)+0.4; 
fMEO2(i)=fMEO2(i)+0.4; fRO2(i)=fRO2(i)+0.4;

%57
i=i+1;
Rnames{i} = 'C2O3 + HO2  = 0.41PACD + 0.15O3 + 0.15AACD + 0.44MEO2 + 0.44RO2 + 0.44OH';
k(:,i) = 5.2e-13.*exp(980./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'HO2';
fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.41; fO3(i)=fO3(i)+0.15; 
fAACD(i)=fAACD(i)+0.15; fMEO2(i)=fMEO2(i)+0.44; fRO2(i)=fRO2(i)+0.44; fOH(i)=fOH(i)+0.44;

%58
i=i+1;
Rnames{i} = 'C2O3 + RO2  = C2O3';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'RO2';
fC2O3(i)=fC2O3(i)-1; fRO2(i)=fRO2(i)-1; fC2O3(i)=fC2O3(i)+1;

%59
i=i+1;
Rnames{i} = 'C2O3 + C2O3 = MEO2 + MEO2 + RO2 + RO2';
k(:,i) = 2.9e-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'C2O3';
fC2O3(i)=fC2O3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fMEO2(i)=fMEO2(i)+1; 
fRO2(i)=fRO2(i)+1; fRO2(i)=fRO2(i)+1;

%60
i=i+1;
Rnames{i} = 'CXO3 + C2O3 = MEO2 + ALD2 + XO2H + RO2 + RO2';
k(:,i) = 2.9E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'C2O3';
fCXO3(i)=fCXO3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1;   fALD2(i)=fALD2(i)+1; 
fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1; fRO2(i)=fRO2(i)+1;

%61
i=i+1;
Rnames{i} = 'CXO3 + NO = ALD2 + NO2 + RO2 + XO2H';
k(:,i) = 6.7E-12.*exp(340./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO';
fCXO3(i)=fCXO3(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 
fRO2(i)=fRO2(i)+1; fXO2H(i)=fXO2H(i)+1;

%62
i=i+1;
Rnames{i} = 'CXO3 + NO2 = PANX';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO2';
fCXO3(i)=fCXO3(i)-1; fNO2(i)=fNO2(i)-1; fPANX(i)=fPANX(i)+1;

%63
i=i+1;
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PANX';
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1;

%64
i=i+1;
Rnames{i} = 'PANX = 0.6CXO3 + 0.6NO2 + 0.4NO3 + 0.4ALD2 + 0.4XO2H + 0.4RO2';
k(:,i) = JPAN;
Gstr{i,1} = 'PANX';
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fNO3(i)=fNO3(i)+0.4; 
fALD2(i)=fALD2(i)+0.4; fXO2H(i)=fXO2H(i)+0.4; fRO2(i)=fRO2(i)+0.4;

%65
i=i+1;
Rnames{i} = 'CXO3 + HO2 = 0.41PACD + 0.15AACD + 0.15O3 + 0.44ALD2 + 0.44XO2H + 0.44RO2 + 0.44OH';
k(:,i) = 5.20E-13.*exp(980./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'HO2';
fCXO3(i)=fCXO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.41; fAACD(i)=fAACD(i)+0.15; 
fO3(i)=fO3(i)+0.15; fALD2(i)=fALD2(i)+0.44; fXO2H(i)=fXO2H(i)+0.44; 
fRO2(i)=fRO2(i)+0.44; fOH(i)=fOH(i)+0.44;

%66
i=i+1;
Rnames{i} = 'CXO3 + RO2 = 0.8ALD2 + 0.8XO2H + 0.8RO2';
k(:,i) = 8.90E-13.*exp(800./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'RO2';
fCXO3(i)=fCXO3(i)-1; fRO2(i)=fRO2(i)-1; fALD2(i)=fALD2(i)+0.8; fXO2H(i)=fXO2H(i)+0.8; fRO2(i)=fRO2(i)+0.8;

%67
i=i+1;
Rnames{i} = 'CXO3 + CXO3 = ALD2 + ALD2 + XO2H + XO2H + RO2 + RO2';
k(:,i) = 3.20E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'CXO3';
fCXO3(i)=fCXO3(i)-1; fCXO3(i)=fCXO3(i)-1; fALD2(i)=fALD2(i)+1; fALD2(i)=fALD2(i)+1; 
fXO2H(i)=fXO2H(i)+1; fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1; fRO2(i)=fRO2(i)+1;

%68
i=i+1;
Rnames{i} = 'RO2 + NO = NO';
k(:,i) = 2.40E-12.*exp(360./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'NO';
fRO2(i)=fRO2(i)-1; fNO(i)=fNO(i)-1; fNO(i)=fNO(i)+1;

%69
i=i+1;
Rnames{i} = 'RO2 + HO2 = HO2';
k(:,i) = 4.80E-13.*exp(800./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'HO2';
fRO2(i)=fRO2(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1;

%70
i=i+1;
Rnames{i} = 'RO2 + RO2 = ';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'RO2';
fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)-1;

%71
i=i+1;
Rnames{i} = 'MEO2 + NO = FORM + HO2 + NO2';
k(:,i) = 2.3E-12.*exp(360./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO';
fMEO2(i)=fMEO2(i)-1; fNO(i)=fNO(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;

%72
i=i+1;
Rnames{i} = 'MEO2 + HO2 = 0.9MEPX + 0.1FORM';
k(:,i) = 3.80E-13.*exp(780./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2';
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+0.9; fFORM(i)=fFORM(i)+0.1;

%73
i=i+1;
Rnames{i} = 'C2O3 + MEO2 = FORM + 0.9MEO2 + 0.9HO2 + 0.1AACD + 0.9RO2';
k(:,i) = 2.0E-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'MEO2';
fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fMEO2(i)=fMEO2(i)+0.9; 
fHO2(i)=fHO2(i)+0.9; fAACD(i)=fAACD(i)+0.1; fRO2(i)=fRO2(i)+0.9;

%74
i=i+1;
Rnames{i} = 'MEO2 + RO2 = 0.685FORM + 0.315MEOH + 0.37HO2 + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'RO2';
fMEO2(i)=fMEO2(i)-1; fRO2(i)=fRO2(i)-1; fFORM(i)=fFORM(i)+0.685; fMEOH(i)=fMEOH(i)+0.315; 
fHO2(i)=fHO2(i)+0.37; fRO2(i)=fRO2(i)+1;

%75
i=i+1;
Rnames{i} = 'XO2H + NO = NO2 + HO2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'NO';
fXO2H(i)=fXO2H(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%76
i=i+1;
Rnames{i} = 'XO2H + HO2 = ROOH';
k(:,i) = 6.80E-13.*exp(800./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'HO2';
fXO2H(i)=fXO2H(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%77
i=i+1;
Rnames{i} = 'XO2H + C2O3 = 0.8HO2 + 0.8MEO2 + 0.2AACD + 0.8RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'C2O3';
fXO2H(i)=fXO2H(i)-1; fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)+0.8; fMEO2(i)=fMEO2(i)+0.8; 
fAACD(i)=fAACD(i)+0.2; fRO2(i)=fRO2(i)+0.8;

%78
i=i+1;
Rnames{i} = 'XO2H + RO2 = 0.6HO2 + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'RO2';
fXO2H(i)=fXO2H(i)-1; fRO2(i)=fRO2(i)-1; fHO2(i)=fHO2(i)+0.6; fRO2(i)=fRO2(i)+1;

%79
i=i+1;
Rnames{i} = 'XO2 + NO = NO2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO';
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%80
i=i+1;
Rnames{i} = 'XO2 + HO2 = ROOH';
k(:,i) = 6.80E-13.*exp(800./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2';
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%81
i=i+1;
Rnames{i} = 'XO2 + C2O3 = 0.8MEO2 + 0.2AACD + 0.8RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'C2O3';
fXO2(i)=fXO2(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+0.8; fAACD(i)=fAACD(i)+0.2; 
fRO2(i)=fRO2(i)+0.8;

%82
i=i+1;
Rnames{i} = 'XO2 + RO2 = RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RO2';
fXO2(i)=fXO2(i)-1; fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)+1;

%83
i=i+1;
Rnames{i} = 'XO2N + NO = 0.5NTR1 + 0.5NTR2'; %mm
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'NO';
fXO2N(i)=fXO2N(i)-1; fNO(i)=fNO(i)-1; fNTR1(i)=fNTR1(i)+0.5; fNTR2(i)=fNTR2(i)+0.5;

%84
i=i+1;
Rnames{i} = 'XO2N + HO2 = ROOH';
k(:,i) = 6.80E-13.*exp(800./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'HO2';
fXO2N(i)=fXO2N(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%85
i=i+1;
Rnames{i} = 'XO2N + C2O3 = 0.8HO2 + 0.8MEO2 + 0.2AACD + 0.8RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'C2O3';
fXO2N(i)=fXO2N(i)-1; fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)+0.8; fMEO2(i)=fMEO2(i)+0.8; 
fAACD(i)=fAACD(i)+0.2; fRO2(i)=fRO2(i)+0.8;

%86
i=i+1;
Rnames{i} = 'XO2N + RO2 = RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'RO2';
fXO2N(i)=fXO2N(i)-1; fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)+1;

%87
i=i+1;
Rnames{i} = 'MEPX + OH = 0.6MEO2 + 0.6RO2 + 0.4FORM + 0.4OH';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'MEPX'; Gstr{i,2} = 'OH';
fMEPX(i)=fMEPX(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+0.6; fRO2(i)=fRO2(i)+0.6; 
fFORM(i)=fFORM(i)+0.4; fOH(i)=fOH(i)+0.4;

%88
i=i+1;
Rnames{i} = 'MEPX = MEO2 + RO2 + OH';
k(:,i) = JCOOH;
Gstr{i,1} = 'MEPX';
fMEPX(i)=fMEPX(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1; fOH(i)=fOH(i)+1;

%89
i=i+1;
Rnames{i} = 'ROOH + OH = 0.54XO2H + 0.06XO2N + 0.6RO2 + 0.4OH';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH';
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fXO2H(i)=fXO2H(i)+0.54; fXO2N(i)=fXO2N(i)+0.06; 
fRO2(i)=fRO2(i)+0.6; fOH(i)=fOH(i)+0.4;

%90
i=i+1;
Rnames{i} = 'ROOH = OH + HO2';
k(:,i) = JCOOH;
Gstr{i,1} = 'ROOH';
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;

%91
i=i+1;
Rnames{i} = 'NTR1 + OH = NTR2'; %mm
k(:,i) = 2.00E-12;
Gstr{i,1} = 'NTR1'; Gstr{i,2} = 'OH';
fNTR1(i)=fNTR1(i)-1; fOH(i)=fOH(i)-1; fNTR2(i)=fNTR2(i)+1;

%92
i=i+1;
Rnames{i} = 'NTR1 = NO2'; %mm
k(:,i) = JNTR;
Gstr{i,1} = 'NTR1';
fNTR1(i)=fNTR1(i)-1; fNO2(i)=fNO2(i)+1;

%93
i=i+1;
Rnames{i} = 'FACD + OH = HO2';
k(:,i) = 4.500E-13;
Gstr{i,1} = 'FACD'; Gstr{i,2} = 'OH';
fFACD(i)=fFACD(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%94
i=i+1;
Rnames{i} = 'AACD + OH = MEO2 + RO2';
k(:,i) = 4.00E-14.*exp(850./T);
Gstr{i,1} = 'AACD'; Gstr{i,2} = 'OH';
fAACD(i)=fAACD(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%95
i=i+1;
Rnames{i} = 'PACD + OH = C2O3';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'PACD'; Gstr{i,2} = 'OH';
fPACD(i)=fPACD(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1;

%96
i=i+1;
Rnames{i} = 'FORM + OH = HO2 + CO';
k(:,i) = 5.40E-12.*exp(135./T);
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'OH';
fFORM(i)=fFORM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%97
i=i+1;
Rnames{i} = 'FORM = HO2 + HO2 + CO';
k(:,i) = JHCHO_R;
Gstr{i,1} = 'FORM';
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%98
i=i+1;
Rnames{i} = 'FORM = CO + H2';
k(:,i) = JHCHO_M;
Gstr{i,1} = 'FORM';
fFORM(i)=fFORM(i)-1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1;

%99
i=i+1;
Rnames{i} = 'FORM + O3P = OH  + HO2 + CO';
k(:,i) = 3.4e-11.*exp(-1600./T);
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'O3P';
fFORM(i)=fFORM(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%100
i=i+1;
Rnames{i} = 'FORM + NO3 = HNO3 + HO2 + CO';
k(:,i) = 5.500E-16;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'NO3';
fFORM(i)=fFORM(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%101
i=i+1;
Rnames{i} = 'FORM + HO2 = HCO3';
k(:,i) = 9.7E-15.*exp(625./T);
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'HO2';
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)-1; fHCO3(i)=fHCO3(i)+1;

%102
i=i+1;
Rnames{i} = 'HCO3 = FORM + HO2';
k(:,i) = 2.4E+12.*exp(-7000./T);
Gstr{i,1} = 'HCO3';
fHCO3(i)=fHCO3(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1;

%103
i=i+1;
Rnames{i} = 'HCO3 + NO = FACD + NO2 + HO2';
k(:,i) = 5.600E-12;
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'NO';
fHCO3(i)=fHCO3(i)-1; fNO(i)=fNO(i)-1; fFACD(i)=fFACD(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%104
i=i+1;
Rnames{i} = 'HCO3 + HO2 = 0.5MEPX + 0.5FACD + 0.2OH + 0.2HO2';
k(:,i) = 5.6E-15.*exp(2300./T);
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'HO2';
fHCO3(i)=fHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+0.5; fFACD(i)=fFACD(i)+0.5; 
fOH(i)=fOH(i)+0.2; fHO2(i)=fHO2(i)+0.2;

%105
i=i+1;
Rnames{i} = 'ALD2 + O3P = C2O3 + OH';
k(:,i) = 1.8E-11.*exp(-1100./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'O3P';
fALD2(i)=fALD2(i)-1; fO3P(i)=fO3P(i)-1; fC2O3(i)=fC2O3(i)+1; fOH(i)=fOH(i)+1;

%106
i=i+1;
Rnames{i} = 'ALD2 + OH = C2O3';
k(:,i) = 4.70E-12.*exp(345./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH';
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1;

%107
i=i+1;
Rnames{i} = 'ALD2 + NO3 = C2O3 + HNO3';
k(:,i) = 1.4E-12.*exp(-1860./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3';
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fC2O3(i)=fC2O3(i)+1; fHNO3(i)=fHNO3(i)+1;

%108
i=i+1;
Rnames{i} = 'ALD2 = MEO2 + CO + HO2 + RO2';
k(:,i) = JCCHO_R;
Gstr{i,1} = 'ALD2';
fALD2(i)=fALD2(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%109
i=i+1;
Rnames{i} = 'ALDX + O3P = CXO3 + OH';
k(:,i) = 1.3E-11.*exp(-870./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'O3P';
fALDX(i)=fALDX(i)-1; fO3P(i)=fO3P(i)-1; fCXO3(i)=fCXO3(i)+1; fOH(i)=fOH(i)+1;

%110
i=i+1;
Rnames{i} = 'ALDX + OH = CXO3';
k(:,i) = 4.9E-12.*exp(405./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'OH';
fALDX(i)=fALDX(i)-1; fOH(i)=fOH(i)-1; fCXO3(i)=fCXO3(i)+1;

%111
i=i+1;
Rnames{i} = 'ALDX + NO3 = CXO3 + HNO3';
k(:,i) = 6.300E-15;
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'NO3';
fALDX(i)=fALDX(i)-1; fNO3(i)=fNO3(i)-1; fCXO3(i)=fCXO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%112
i=i+1;
Rnames{i} = 'ALDX = ALD2 + XO2H + CO + HO2 + RO2';
k(:,i) = JC2CHO;
Gstr{i,1} = 'ALDX';
fALDX(i)=fALDX(i)-1; fALD2(i)=fALD2(i)+1; fXO2H(i)=fXO2H(i)+1; fCO(i)=fCO(i)+1; 
fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%113
i=i+1;
Rnames{i} = 'GLYD + OH = 0.2GLY + 0.2HO2 + 0.8C2O3';
k(:,i) = 8.000E-12;
Gstr{i,1} = 'GLYD'; Gstr{i,2} = 'OH';
fGLYD(i)=fGLYD(i)-1; fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)+0.2; fHO2(i)=fHO2(i)+0.2; 
fC2O3(i)=fC2O3(i)+0.8;

%114
i=i+1;
Rnames{i} = 'GLYD = 0.74FORM + 0.89CO + 1.4HO2 + 0.15MEOH + 0.19OH + 0.11GLY + 0.11XO2H + 0.11RO2';
k(:,i) = JGLYD;
Gstr{i,1} = 'GLYD';
fGLYD(i)=fGLYD(i)-1; fFORM(i)=fFORM(i)+0.74; fCO(i)=fCO(i)+0.89; fHO2(i)=fHO2(i)+1.4; 
fMEOH(i)=fMEOH(i)+0.15; fOH(i)=fOH(i)+0.19; fGLY(i)=fGLY(i)+0.11; 
fXO2H(i)=fXO2H(i)+0.11; fRO2(i)=fRO2(i)+0.11;

%115
i=i+1;
Rnames{i} = 'GLYD + NO3 = HNO3 + C2O3';
k(:,i) = 1.40E-12.*exp(-1860./T);
Gstr{i,1} = 'GLYD'; Gstr{i,2} = 'NO3';
fGLYD(i)=fGLYD(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fC2O3(i)=fC2O3(i)+1;

%116
i=i+1;
Rnames{i} = 'OH + GLY = 1.8CO + 0.2XO2 + 0.2RO2 + HO2';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLY';
fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)-1; fCO(i)=fCO(i)+1.8; fXO2(i)=fXO2(i)+0.2; 
fRO2(i)=fRO2(i)+0.2; fHO2(i)=fHO2(i)+1;

%117
i=i+1;
Rnames{i} = 'GLY = HO2 + HO2 + CO + CO';
k(:,i) = JGLY;
Gstr{i,1} = 'GLY';
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1;

%118
i=i+1;
Rnames{i} = 'GLY + NO3 = HNO3 + 1.5CO + HO2 + 0.5XO2 + 0.5RO2';
k(:,i) = 1.40E-12.*exp(-1860./T);
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3';
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1.5; 
fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+0.5; fRO2(i)=fRO2(i)+0.5;

%119
i=i+1;
Rnames{i} = 'MGLY = C2O3 + HO2 + CO';
k(:,i) = JMGLY  ;
Gstr{i,1} = 'MGLY';
fMGLY(i)=fMGLY(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%120
i=i+1;
Rnames{i} = 'MGLY + NO3 = HNO3 + C2O3 + XO2 + RO2';
k(:,i) = 1.40E-12.*exp(-1860./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3';
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fC2O3(i)=fC2O3(i)+1; 
fXO2(i)=fXO2(i)+1; fRO2(i)=fRO2(i)+1;

%121
i=i+1;
Rnames{i} = ' OH + MGLY = CO + C2O3';
k(:,i) = 1.90E-12.*exp(575./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLY';
fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)-1; fCO(i)=fCO(i)+1; fC2O3(i)=fC2O3(i)+1;

%122
i=i+1;
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 7.70E-12.*exp(-2100./T) ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2';
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1;

%123
i=i+1;
Rnames{i} = 'OH + CO = HO2';
k(:,i) = 1.44e-13+(3.43e-33).*M;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO';
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1;

%124
i=i+1;
Rnames{i} = 'OH + CH4 = MEO2 + RO2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4';
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%125
i=i+1;
Rnames{i} = 'OH + ETHA = 0.991ALD2 + 0.991XO2H + 0.009XO2N + RO2';
k(:,i) = 6.90E-12.*exp(-1000./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETHA';
fOH(i)=fOH(i)-1; fETHA(i)=fETHA(i)-1; fALD2(i)=fALD2(i)+0.991; fXO2H(i)=fXO2H(i)+0.991; 
fXO2N(i)=fXO2N(i)+0.009; fRO2(i)=fRO2(i)+1;

%126
i=i+1;
Rnames{i} = 'MEOH + OH = FORM + HO2';
k(:,i) = 2.85E-12.*exp(-345./T);
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'OH';
fMEOH(i)=fMEOH(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1;

%127
i=i+1;
Rnames{i} = 'ETOH + OH = 0.95ALD2 + 0.9HO2 + 0.1XO2H + 0.1RO2 + 0.078FORM + 0.011GLYD';
k(:,i) = 3.00e-12.*exp(20./T);
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH';
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+0.95; fHO2(i)=fHO2(i)+0.9; 
fXO2H(i)=fXO2H(i)+0.1; fRO2(i)=fRO2(i)+0.1; fFORM(i)=fFORM(i)+0.078; fGLYD(i)=fGLYD(i)+0.011;

%128
i=i+1;
Rnames{i} = 'KET = 0.5ALD2 + 0.5C2O3 + 0.5XO2H + 0.5CXO3 + 0.5MEO2 + RO2 - 2.5PAR';
k(:,i) = JMEK;
Gstr{i,1} = 'KET';
fKET(i)=fKET(i)-1; fALD2(i)=fALD2(i)+0.5; fC2O3(i)=fC2O3(i)+0.5; fXO2H(i)=fXO2H(i)+0.5; 
fCXO3(i)=fCXO3(i)+0.5; fMEO2(i)=fMEO2(i)+0.5; fRO2(i)=fRO2(i)+1; fPAR(i)=fPAR(i)-2.5;

%129
i=i+1;
Rnames{i} = 'ACET = 0.38CO + 1.38MEO2 + 1.38RO2 + 0.62C2O3';
k(:,i) = JACET;
Gstr{i,1} = 'ACET';
fACET(i)=fACET(i)-1; fCO(i)=fCO(i)+0.38; fMEO2(i)=fMEO2(i)+1.38; fRO2(i)=fRO2(i)+1.38; 
fC2O3(i)=fC2O3(i)+0.62;

%130
i=i+1;
Rnames{i} = 'ACET + OH = FORM + C2O3 + XO2 + RO2';
k(:,i) = 1.41E-12.*exp(-620.6./T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH';
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fC2O3(i)=fC2O3(i)+1; 
fXO2(i)=fXO2(i)+1; fRO2(i)=fRO2(i)+1;

%131
i=i+1;
Rnames{i} = 'OH + PRPA = 0.71ACET + 0.26ALDX + 0.26PAR + 0.97XO2H + 0.03XO2N + RO2';
k(:,i) = 7.60E-12.*exp(-585./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PRPA';
fOH(i)=fOH(i)-1; fPRPA(i)=fPRPA(i)-1; fACET(i)=fACET(i)+0.71; fALDX(i)=fALDX(i)+0.26; 
fPAR(i)=fPAR(i)+0.26; fXO2H(i)=fXO2H(i)+0.97; fXO2N(i)=fXO2N(i)+0.03; fRO2(i)=fRO2(i)+1;

%132
i=i+1;
Rnames{i} = 'OH + PAR = 0.11ALDX + 0.76ROR + 0.13XO2N + 0.11XO2H + 0.76XO2 + RO2 - 0.11PAR';
k(:,i) = 8.1e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR';
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1; fALDX(i)=fALDX(i)+0.11; fROR(i)=fROR(i)+0.76; 
fXO2N(i)=fXO2N(i)+0.13; fXO2H(i)=fXO2H(i)+0.11; fXO2(i)=fXO2(i)+0.76; fRO2(i)=fRO2(i)+1; 
fPAR(i)=fPAR(i)-0.11;

%133
i=i+1;
Rnames{i} = 'ROR = 0.2KET + 0.42ACET + 0.74ALD2 + 0.37ALDX + 0.04XO2N + 0.94XO2H + 0.98RO2 + 0.02ROR - 2.7PAR';
k(:,i) = 5.70e12.*exp(-5780./T);
Gstr{i,1} = 'ROR';
fROR(i)=fROR(i)-1; fKET(i)=fKET(i)+0.2; fACET(i)=fACET(i)+0.42; fALD2(i)=fALD2(i)+0.74; 
fALDX(i)=fALDX(i)+0.37; fXO2N(i)=fXO2N(i)+0.04; fXO2H(i)=fXO2H(i)+0.94; fRO2(i)=fRO2(i)+0.98; 
fROR(i)=fROR(i)+0.02; fPAR(i)=fPAR(i)-2.7;

%134
i=i+1;
Rnames{i} = 'ROR = KET + HO2';
k(:,i) = 1.50e-14.*exp(-200./T).*M.*0.21;
Gstr{i,1} = 'ROR';
fROR(i)=fROR(i)-1; fKET(i)=fKET(i)+1; fHO2(i)=fHO2(i)+1;

%135
i=i+1;
Rnames{i} = 'ROR + NO2 = NTR1'; %mm
k(:,i) = 8.60e-12.*exp(400./T);
Gstr{i,1} = 'ROR'; Gstr{i,2} = 'NO2';
fROR(i)=fROR(i)-1; fNO2(i)=fNO2(i)-1; fNTR1(i)=fNTR1(i)+1;

%136
i=i+1;
Rnames{i} = 'OH + ETHY = 0.7GLY + 0.7OH + 0.3FACD + 0.3CO + 0.3HO2';
k(:,i) = K_OH_ETHY;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETHY';
fOH(i)=fOH(i)-1; fETHY(i)=fETHY(i)-1; fGLY(i)=fGLY(i)+0.7; fOH(i)=fOH(i)+0.7; 
fFACD(i)=fFACD(i)+0.3; fCO(i)=fCO(i)+0.3; fHO2(i)=fHO2(i)+0.3;

%137
i=i+1;
Rnames{i} = 'O3P + ETH = FORM + CO + HO2 + 0.7XO2H + 0.7RO2 + 0.3OH';
k(:,i) = 1.04e-11.*exp(-792./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ETH';
fO3P(i)=fO3P(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+1; 
fHO2(i)=fHO2(i)+1; fXO2H(i)=fXO2H(i)+0.7; fRO2(i)=fRO2(i)+0.7; fOH(i)=fOH(i)+0.3;

%138
i=i+1;
Rnames{i} = 'OH + ETH = XO2H + RO2 + 1.56FORM + 0.22GLYD';
k(:,i) = K_OH_ETH;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETH';
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1; 
fFORM(i)=fFORM(i)+1.56; fGLYD(i)=fGLYD(i)+0.22;

%139
i=i+1;
Rnames{i} = 'O3 + ETH = FORM + 0.51CO + 0.16OH + 0.16HO2 + 0.37FACD';
k(:,i) = 9.10e-15.*exp(-2580./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ETH';
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+0.51; 
fOH(i)=fOH(i)+0.16; fHO2(i)=fHO2(i)+0.16; fFACD(i)=fFACD(i)+0.37;

%140
i=i+1;
Rnames{i} = 'NO3 + ETH = 0.5NO2 + 0.5NTR1 + 0.5XO2H + 0.5XO2 + RO2 + 1.125FORM'; %mm
k(:,i) = 3.3E-12.*exp(-2880./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ETH';
fNO3(i)=fNO3(i)-1; fETH(i)=fETH(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2H(i)=fXO2H(i)+0.5; fXO2(i)=fXO2(i)+0.5; fRO2(i)=fRO2(i)+1; fFORM(i)=fFORM(i)+1.125;

%141
i=i+1;
Rnames{i} = 'O3P + OLE = 0.2ALD2 + 0.3ALDX + 0.1HO2 + 0.2XO2H + 0.2CO + 0.2FORM + 0.01XO2N + 0.21RO2 + 0.2PAR + 0.1OH';
k(:,i) = 1.0e-11.*exp(-280./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE';
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+0.2; fALDX(i)=fALDX(i)+0.3; 
fHO2(i)=fHO2(i)+0.1; fXO2H(i)=fXO2H(i)+0.2; fCO(i)=fCO(i)+0.2; fFORM(i)=fFORM(i)+0.2; 
fXO2N(i)=fXO2N(i)+0.01; fRO2(i)=fRO2(i)+0.21; fPAR(i)=fPAR(i)+0.2; fOH(i)=fOH(i)+0.1;

%142
i=i+1;
Rnames{i} = 'OH + OLE = 0.781FORM + 0.488ALD2 + 0.488ALDX + 0.976XO2H + 0.195XO2 + 0.024XO2N + 1.195RO2 - 0.73PAR';
k(:,i) = K_OH_OLE;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE';
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; fFORM(i)=fFORM(i)+0.781; fALD2(i)=fALD2(i)+0.488; 
fALDX(i)=fALDX(i)+0.488; fXO2H(i)=fXO2H(i)+0.976; fXO2(i)=fXO2(i)+0.195; fXO2N(i)=fXO2N(i)+0.024; 
fRO2(i)=fRO2(i)+1.195; fPAR(i)=fPAR(i)-0.73;

%143
i=i+1;
Rnames{i} = 'O3 + OLE = 0.295ALD2 + 0.555FORM + 0.27ALDX + 0.15XO2H + 0.15RO2 + 0.334OH + 0.08HO2 + 0.378CO + 0.075GLY + 0.075MGLY + 0.09FACD + 0.13AACD + 0.04H2O2 - 0.79PAR';
k(:,i) = 5.50e-15.*exp(-1880./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE';
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+0.295; fFORM(i)=fFORM(i)+0.555; 
fALDX(i)=fALDX(i)+0.27; fXO2H(i)=fXO2H(i)+0.15; fRO2(i)=fRO2(i)+0.15; fOH(i)=fOH(i)+0.334; 
fHO2(i)=fHO2(i)+0.08; fCO(i)=fCO(i)+0.378; fGLY(i)=fGLY(i)+0.075; fMGLY(i)=fMGLY(i)+0.075; 
fFACD(i)=fFACD(i)+0.09; fAACD(i)=fAACD(i)+0.13; fH2O2(i)=fH2O2(i)+0.04; fPAR(i)=fPAR(i)-0.79;

%144
i=i+1;
Rnames{i} = 'NO3 + OLE = 0.5NO2 + 0.5NTR1 + 0.48XO2  + 0.48XO2H + 0.04XO2N + RO2 + 0.5FORM + 0.25ALD2 + 0.375ALDX - PAR'; %mm
k(:,i) = 4.60e-13.*exp(-1155./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE';
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.48; fXO2N(i)=fXO2N(i)+0.04; fRO2(i)=fRO2(i)+1; 
fFORM(i)=fFORM(i)+0.5; fALD2(i)=fALD2(i)+0.25; fALDX(i)=fALDX(i)+0.375; fPAR(i)=fPAR(i)-1;

%145
i=i+1;
Rnames{i} = 'IOLE + O3P = 1.24ALD2 + 0.66ALDX + 0.1XO2H + 0.1RO2 + 0.1CO + 0.1PAR';
k(:,i) = 2.3E-11;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3P';
fIOLE(i)=fIOLE(i)-1; fO3P(i)=fO3P(i)-1; fALD2(i)=fALD2(i)+1.24; fALDX(i)=fALDX(i)+0.66; 
fXO2H(i)=fXO2H(i)+0.1; fRO2(i)=fRO2(i)+0.1; fCO(i)=fCO(i)+0.1; fPAR(i)=fPAR(i)+0.1;

%146
i=i+1;
Rnames{i} = 'IOLE + OH = 1.3ALD2 + 0.7ALDX + XO2H + RO2';
k(:,i) = 1.05E-11.*exp(519./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'OH';
fIOLE(i)=fIOLE(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1.3; fALDX(i)=fALDX(i)+0.7; 
fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1;

%147
i=i+1;
Rnames{i} = 'IOLE + O3 = 0.732ALD2 + 0.442ALDX + 0.128FORM + 0.245CO + 0.5OH + 0.3XO2H + 0.3RO2 + 0.24GLY + 0.06MGLY + 0.29PAR + 0.08AACD + 0.08H2O2';
k(:,i) = 4.70E-15.*exp(-1013./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3';
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+0.732; fALDX(i)=fALDX(i)+0.442; 
fFORM(i)=fFORM(i)+0.128; fCO(i)=fCO(i)+0.245; fOH(i)=fOH(i)+0.5; fXO2H(i)=fXO2H(i)+0.3; 
fRO2(i)=fRO2(i)+0.3; fGLY(i)=fGLY(i)+0.24; fMGLY(i)=fMGLY(i)+0.06; fPAR(i)=fPAR(i)+0.29; 
fAACD(i)=fAACD(i)+0.08; fH2O2(i)=fH2O2(i)+0.08;

%148
i=i+1;
Rnames{i} = 'IOLE + NO3 = 0.5NO2 + 0.5NTR1 + 0.48XO2 + 0.48XO2H + 0.04XO2N + RO2 + 0.5ALD2 + 0.625ALDX + PAR'; %mm
k(:,i) = 3.700E-13;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3';
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.48; fXO2N(i)=fXO2N(i)+0.04; fRO2(i)=fRO2(i)+1; 
fALD2(i)=fALD2(i)+0.5; fALDX(i)=fALDX(i)+0.625; fPAR(i)=fPAR(i)+1;

%149
i=i+1;
Rnames{i} = 'OH + ISOP = ISO2 + RO2';
k(:,i) = 2.7e-11.*exp(390./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP';
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fISO2(i)=fISO2(i)+1; fRO2(i)=fRO2(i)+1;

%150
i=i+1;
Rnames{i} = 'O3P + ISOP = 0.75ISPD + 0.5FORM + 0.25XO2 + 0.25RO2 + 0.25HO2 + 0.25CXO3 + 0.25PAR';
k(:,i) = 3.00E-11;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ISOP';
fO3P(i)=fO3P(i)-1; fISOP(i)=fISOP(i)-1; fISPD(i)=fISPD(i)+0.75; fFORM(i)=fFORM(i)+0.5; 
fXO2(i)=fXO2(i)+0.25; fRO2(i)=fRO2(i)+0.25; fHO2(i)=fHO2(i)+0.25; fCXO3(i)=fCXO3(i)+0.25; 
fPAR(i)=fPAR(i)+0.25;

%151
i=i+1;
Rnames{i} = 'NO + ISO2 = 0.1INTR + 0.9NO2 + 0.818HO2 + 0.673FORM + 0.9ISPD + 0.082XO2H + 0.082RO2';
k(:,i) = 2.39e-12.*exp(365./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'ISO2';
fNO(i)=fNO(i)-1; fISO2(i)=fISO2(i)-1; fINTR(i)=fINTR(i)+0.1; fNO2(i)=fNO2(i)+0.9; 
fHO2(i)=fHO2(i)+0.818; fFORM(i)=fFORM(i)+0.673; fISPD(i)=fISPD(i)+0.9; 
fXO2H(i)=fXO2H(i)+0.082; fRO2(i)=fRO2(i)+0.082;

%152
i=i+1;
Rnames{i} = 'HO2 + ISO2 = 0.88ISPX + 0.12OH + 0.12HO2 + 0.12FORM + 0.12ISPD';
k(:,i) = 7.43e-13.*exp(700./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ISO2';
fHO2(i)=fHO2(i)-1; fISO2(i)=fISO2(i)-1; fISPX(i)=fISPX(i)+0.88; fOH(i)=fOH(i)+0.12; 
fHO2(i)=fHO2(i)+0.12; fFORM(i)=fFORM(i)+0.12; fISPD(i)=fISPD(i)+0.12;

%153
i=i+1;
Rnames{i} = 'C2O3 + ISO2 = 0.728HO2 + 0.598FORM + ISPD + 0.072XO2H + 0.8MEO2 + 0.2AACD + 0.872RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'ISO2';
fC2O3(i)=fC2O3(i)-1; fISO2(i)=fISO2(i)-1; fHO2(i)=fHO2(i)+0.728; fFORM(i)=fFORM(i)+0.598; 
fISPD(i)=fISPD(i)+1; fXO2H(i)=fXO2H(i)+0.072; fMEO2(i)=fMEO2(i)+0.8; fAACD(i)=fAACD(i)+0.2; 
fRO2(i)=fRO2(i)+0.872;

%154
i=i+1;
Rnames{i} = 'RO2 + ISO2 = 0.728HO2 + 0.598FORM + ISPD + 0.072XO2H + 0.072RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'ISO2';
fRO2(i)=fRO2(i)-1; fISO2(i)=fISO2(i)-1; fHO2(i)=fHO2(i)+0.728; fFORM(i)=fFORM(i)+0.598; 
fISPD(i)=fISPD(i)+1; fXO2H(i)=fXO2H(i)+0.072; fRO2(i)=fRO2(i)+0.072;

%155
i=i+1;
Rnames{i} = 'ISO2 = HO2 + HPLD';
k(:,i) = 3.30E+9.*exp(-8300./T);
Gstr{i,1} = 'ISO2';
fISO2(i)=fISO2(i)-1; fHO2(i)=fHO2(i)+1; fHPLD(i)=fHPLD(i)+1;

%156
i=i+1;
Rnames{i} = 'O3 + ISOP = 0.6FORM + 0.65ISPD + 0.15ALDX + 0.2CXO3 + 0.35PAR + 0.266OH + 0.2XO2 + 0.2RO2 + 0.066HO2 + 0.066CO';
k(:,i) = 1.030e-14.*exp(-1995./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP';
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fFORM(i)=fFORM(i)+0.6; fISPD(i)=fISPD(i)+0.65; 
fALDX(i)=fALDX(i)+0.15; fCXO3(i)=fCXO3(i)+0.2; fPAR(i)=fPAR(i)+0.35; fOH(i)=fOH(i)+0.266; 
fXO2(i)=fXO2(i)+0.2; fRO2(i)=fRO2(i)+0.2; fHO2(i)=fHO2(i)+0.066; fCO(i)=fCO(i)+0.066;

%157
i=i+1;
Rnames{i} = 'NO3 + ISOP = 0.35NO2 + 0.65NTR2 + 0.64XO2H + 0.33XO2 + 0.03XO2N + RO2 + 0.35FORM + 0.35ISPD'; %mm
k(:,i) = 3.03e-12.*exp(-448./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ISOP';
fNO3(i)=fNO3(i)-1; fISOP(i)=fISOP(i)-1; fNO2(i)=fNO2(i)+0.35; fNTR2(i)=fNTR2(i)+0.65; 
fXO2H(i)=fXO2H(i)+0.64; fXO2(i)=fXO2(i)+0.33; fXO2N(i)=fXO2N(i)+0.03; fRO2(i)=fRO2(i)+1; 
fFORM(i)=fFORM(i)+0.35; fISPD(i)=fISPD(i)+0.35;

%158
i=i+1;
Rnames{i} = 'ISPD + OH = 0.022XO2N + 0.521XO2 + 0.115MGLY + 0.115MEO2 + 0.269GLYD + 0.269C2O3 + 0.457OPO3 + 0.117PAR + 0.137ACET + 0.137CO + 0.137HO2 + 0.658RO2'; %mm
k(:,i) = 5.58e-12.*exp(511./T);
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH';
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fXO2N(i)=fXO2N(i)+0.022; fXO2(i)=fXO2(i)+0.521; 
fMGLY(i)=fMGLY(i)+0.115; fMEO2(i)=fMEO2(i)+0.115; fGLYD(i)=fGLYD(i)+0.269;  
fC2O3(i)=fC2O3(i)+0.269; fOPO3(i)=fOPO3(i)+0.457; fPAR(i)=fPAR(i)+0.117; fACET(i)=fACET(i)+0.137;
fCO(i)=fCO(i)+0.137; fHO2(i)=fHO2(i)+0.137; fRO2(i)=fRO2(i)+0.658; 

%159
i=i+1;
Rnames{i} = 'ISPD + O3 = 0.04ALD2 + 0.231FORM + 0.543CO + 0.17GLY + 0.531MGLY + 0.143C2O3 + 0.461OH + 0.398HO2 + 0.17ACET + 0.15FACD';
k(:,i) = 3.88e-15.*exp(-1770./T);
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3';
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+0.04; fFORM(i)=fFORM(i)+0.231; 
fCO(i)=fCO(i)+0.543;  fGLY(i)=fGLY(i)+0.17; fMGLY(i)=fMGLY(i)+0.531; fC2O3(i)=fC2O3(i)+0.143; 
fOH(i)=fOH(i)+0.461; fHO2(i)=fHO2(i)+0.398; fACET(i)=fACET(i)+0.17; fFACD(i)=fFACD(i)+0.15;

%160
i=i+1;
Rnames{i} = 'ISPD + NO3 = 0.717PAR + 0.717CXO3 + 0.142XO2 + 0.142XO2H + 0.284RO2 + 0.142NTR2 + 0.142NO2 + 0.717HNO3 + 0.113GLYD + 0.113MGLY'; %mm
k(:,i) = 4.10e-12.*exp(-1860./T);
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3';
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fPAR(i)=fPAR(i)+0.717; fCXO3(i)=fCXO3(i)+0.717; 
fXO2(i)=fXO2(i)+0.142; fXO2H(i)=fXO2H(i)+0.142; fRO2(i)=fRO2(i)+0.284; fNTR2(i)=fNTR2(i)+0.142; 
fNO2(i)=fNO2(i)+0.142; fHNO3(i)=fHNO3(i)+0.717; fGLYD(i)=fGLYD(i)+0.113; fMGLY(i)=fMGLY(i)+0.113;

%161
i=i+1;
Rnames{i} = 'ISPD = 0.26FORM + 0.24PAR + 0.76HO2 + 0.16XO2 + 0.34XO2H + 0.34MEO2 + 0.84RO2 + 0.208C2O3 + 0.24OLE +0.17ACET + 0.128GLYD';
k(:,i) = JACRO * 0.0036/0.0065; %QY scaling based on CB6 documentation (Yarwood 2010) and JPL 2016
Gstr{i,1} = 'ISPD';
fISPD(i)=fISPD(i)-1; fFORM(i)=fFORM(i)+0.26; fPAR(i)=fPAR(i)+0.24; fHO2(i)=fHO2(i)+0.76; 
fXO2(i)=fXO2(i)+0.16; fXO2H(i)=fXO2H(i)+0.34; fMEO2(i)=fMEO2(i)+0.34; fRO2(i)=fRO2(i)+0.84; 
fC2O3(i)=fC2O3(i)+0.208; fOLE(i)=fOLE(i)+0.24; fACET(i)=fACET(i)+0.17; fGLYD(i)=fGLYD(i)+0.128;

%162
i=i+1;
Rnames{i} = 'ISPX + OH = 0.904EPOX + 0.933OH + 0.067ISO2 + 0.067RO2 + 0.029IOLE + 0.029ALDX';
k(:,i) = 2.23e-11.*exp(372./T);
Gstr{i,1} = 'ISPX'; Gstr{i,2} = 'OH';
fISPX(i)=fISPX(i)-1; fOH(i)=fOH(i)-1; fEPOX(i)=fEPOX(i)+0.904; fOH(i)=fOH(i)+0.933; 
fISO2(i)=fISO2(i)+0.067; fRO2(i)=fRO2(i)+0.067; fIOLE(i)=fIOLE(i)+0.029; fALDX(i)=fALDX(i)+0.029;

%163
i=i+1;
Rnames{i} = 'HPLD = OH + ISPD'; %mm
k(:,i) = JHPLD;
Gstr{i,1} = 'HPLD';
fHPLD(i)=fHPLD(i)-1; fOH(i)=fOH(i)+1; fISPD(i)=fISPD(i)+1;

%164
i=i+1;
Rnames{i} = 'HPLD + NO3 = HNO3 + ISPD';
k(:,i) = 6.00e-12.*exp(-1860./T);
Gstr{i,1} = 'HPLD'; Gstr{i,2} = 'NO3';
fHPLD(i)=fHPLD(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fISPD(i)=fISPD(i)+1;

%165
i=i+1;
Rnames{i} = 'OH + EPOX = EPX2 + RO2';
k(:,i) = 5.78e-11.*exp(-400./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'EPOX';
fOH(i)=fOH(i)-1; fEPOX(i)=fEPOX(i)-1; fEPX2(i)=fEPX2(i)+1; fRO2(i)=fRO2(i)+1;

%166
i=i+1;
Rnames{i} = 'HO2 + EPX2 = 0.275GLYD + 0.275GLY + 0.275MGLY + 1.125OH + 0.825HO2 + 0.375FORM + 0.074FACD + 0.251CO + 2.175PAR';
k(:,i) = 7.43e-13.*exp(700./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'EPX2';
fHO2(i)=fHO2(i)-1; fEPX2(i)=fEPX2(i)-1; fGLYD(i)=fGLYD(i)+0.275; fGLY(i)=fGLY(i)+0.275; 
fMGLY(i)=fMGLY(i)+0.275; fOH(i)=fOH(i)+1.125; fHO2(i)=fHO2(i)+0.825; fFORM(i)=fFORM(i)+0.375; 
fFACD(i)=fFACD(i)+0.074; fCO(i)=fCO(i)+0.251; fPAR(i)=fPAR(i)+2.175;

%167
i=i+1;
Rnames{i} = 'NO + EPX2 = 0.275GLYD + 0.275GLY + 0.275MGLY + 0.125OH + 0.825HO2 + 0.375FORM + NO2 + 0.251CO + 2.175PAR';
k(:,i) = 2.39e-12.*exp(365./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'EPX2';
fNO(i)=fNO(i)-1; fEPX2(i)=fEPX2(i)-1; fGLYD(i)=fGLYD(i)+0.275; fGLY(i)=fGLY(i)+0.275; 
fMGLY(i)=fMGLY(i)+0.275; fOH(i)=fOH(i)+0.125; fHO2(i)=fHO2(i)+0.825; fFORM(i)=fFORM(i)+0.375; 
fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+0.251; fPAR(i)=fPAR(i)+2.175;

%168
i=i+1;
Rnames{i} = 'C2O3 + EPX2 = 0.22GLYD + 0.22GLY + 0.22MGLY + 0.1OH + 0.66HO2 + 0.3FORM + 0.2CO + 1.74PAR + 0.8MEO2 + 0.2AACD + 0.8RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'EPX2';
fC2O3(i)=fC2O3(i)-1; fEPX2(i)=fEPX2(i)-1; fGLYD(i)=fGLYD(i)+0.22; fGLY(i)=fGLY(i)+0.22; 
fMGLY(i)=fMGLY(i)+0.22; fOH(i)=fOH(i)+0.1; fHO2(i)=fHO2(i)+0.66; fFORM(i)=fFORM(i)+0.3; 
fCO(i)=fCO(i)+0.2; fPAR(i)=fPAR(i)+1.74; fMEO2(i)=fMEO2(i)+0.8; fAACD(i)=fAACD(i)+0.2; fRO2(i)=fRO2(i)+0.8;

%169
i=i+1;
Rnames{i} = 'RO2 + EPX2 = 0.275GLYD + 0.275GLY + 0.275MGLY + 0.125OH + 0.825HO2 + 0.375FORM + 0.251CO + 2.175PAR + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'EPX2';
fRO2(i)=fRO2(i)-1; fEPX2(i)=fEPX2(i)-1; fGLYD(i)=fGLYD(i)+0.275; fGLY(i)=fGLY(i)+0.275; 
fMGLY(i)=fMGLY(i)+0.275; fOH(i)=fOH(i)+0.125; fHO2(i)=fHO2(i)+0.825; fFORM(i)=fFORM(i)+0.375; 
fCO(i)=fCO(i)+0.251; fPAR(i)=fPAR(i)+2.175; fRO2(i)=fRO2(i)+1;

%170
i=i+1;
Rnames{i} = 'INTR + OH = 0.63XO2 + 0.37XO2H + RO2 + 0.444NO2 + 0.185NO3 + 0.104INTR + 0.592FORM + 0.331GLYD + 0.185FACD + 2.7PAR + 0.098OLE + 0.078ALDX + 0.266NTR2'; %mm
k(:,i) = 3.100E-11;
Gstr{i,1} = 'INTR'; Gstr{i,2} = 'OH';
fINTR(i)=fINTR(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+0.63; fXO2H(i)=fXO2H(i)+0.37; 
fRO2(i)=fRO2(i)+1; fNO2(i)=fNO2(i)+0.444; fNO3(i)=fNO3(i)+0.185; fINTR(i)=fINTR(i)+0.104; 
fFORM(i)=fFORM(i)+0.592; fGLYD(i)=fGLYD(i)+0.331; fFACD(i)=fFACD(i)+0.185; fPAR(i)=fPAR(i)+2.7; 
fOLE(i)=fOLE(i)+0.098; fALDX(i)=fALDX(i)+0.078; fNTR2(i)=fNTR2(i)+0.266;

%171
i=i+1;
Rnames{i} = 'TERP + O3P = 0.15ALDX + 5.12PAR';
k(:,i) = 3.6E-11;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P';
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fALDX(i)=fALDX(i)+0.15; fPAR(i)=fPAR(i)+5.12;

%172
i=i+1;
Rnames{i} = 'TERP + OH = 0.75XO2H + 0.5XO2 + 0.25XO2N + 1.5RO2 + 0.28FORM + 1.66PAR + 0.47ALDX';
k(:,i) = 1.5E-11.*exp(449./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH';
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fXO2H(i)=fXO2H(i)+0.75; fXO2(i)=fXO2(i)+0.5; 
fXO2N(i)=fXO2N(i)+0.25; fRO2(i)=fRO2(i)+1.5; fFORM(i)=fFORM(i)+0.28; fPAR(i)=fPAR(i)+1.66; 
fALDX(i)=fALDX(i)+0.47;

%173
i=i+1;
Rnames{i} = 'TERP + O3 = 0.57OH + 0.07XO2H + 0.69XO2 + 0.18XO2N + 0.94RO2 + 0.24FORM + 0.001CO + 7PAR + 0.21ALDX + 0.39CXO3';
k(:,i) = 1.2E-15.*exp(-821./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3';
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.57; fXO2H(i)=fXO2H(i)+0.07; 
fXO2(i)=fXO2(i)+0.69; fXO2N(i)=fXO2N(i)+0.18; fRO2(i)=fRO2(i)+0.94; fFORM(i)=fFORM(i)+0.24; 
fCO(i)=fCO(i)+0.001; fPAR(i)=fPAR(i)+7; fALDX(i)=fALDX(i)+0.21; fCXO3(i)=fCXO3(i)+0.39;

%174
i=i+1;
Rnames{i} = 'TERP + NO3 = 0.47NO2 + 0.28XO2H + 0.75XO2 + 0.25XO2N + 1.28RO2 + 0.47ALDX + 0.53NTR2'; %mm
k(:,i) = 3.7E-12.*exp(175./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3';
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.47; fXO2H(i)=fXO2H(i)+0.28; 
fXO2(i)=fXO2(i)+0.75; fXO2N(i)=fXO2N(i)+0.25; fRO2(i)=fRO2(i)+1.28; fALDX(i)=fALDX(i)+0.47; 
fNTR2(i)=fNTR2(i)+0.53;

%175
i=i+1;
Rnames{i} = 'BENZ + OH = 0.53CRES + 0.352BZO2 + 0.352RO2 + 0.118OPEN + 0.118OH + 0.53HO2';
k(:,i) = 2.30E-12.*exp(-190./T);
Gstr{i,1} = 'BENZ'; Gstr{i,2} = 'OH';
fBENZ(i)=fBENZ(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.53; fBZO2(i)=fBZO2(i)+0.352; 
fRO2(i)=fRO2(i)+0.352; fOPEN(i)=fOPEN(i)+0.118; fOH(i)=fOH(i)+0.118; fHO2(i)=fHO2(i)+0.53;

%176
i=i+1;
Rnames{i} = 'NO + BZO2 = 0.918NO2 + 0.082NTR2 + 0.918GLY + 0.918OPEN + 0.918HO2'; %mm
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'BZO2';
fNO(i)=fNO(i)-1; fBZO2(i)=fBZO2(i)-1; fNO2(i)=fNO2(i)+0.918; fNTR2(i)=fNTR2(i)+0.082; 
fGLY(i)=fGLY(i)+0.918; fOPEN(i)=fOPEN(i)+0.918; fHO2(i)=fHO2(i)+0.918;

%177
i=i+1;
Rnames{i} = 'C2O3 + BZO2 = GLY + OPEN + HO2 + MEO2 + RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'BZO2';
fC2O3(i)=fC2O3(i)-1; fBZO2(i)=fBZO2(i)-1; fGLY(i)=fGLY(i)+1; fOPEN(i)=fOPEN(i)+1; 
fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%178
i=i+1;
Rnames{i} = 'HO2 + BZO2 = ';
k(:,i) = 1.90e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'BZO2';
fHO2(i)=fHO2(i)-1; fBZO2(i)=fBZO2(i)-1;

%179
i=i+1;
Rnames{i} = 'RO2 + BZO2 = GLY + OPEN + HO2 + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'BZO2';
fRO2(i)=fRO2(i)-1; fBZO2(i)=fBZO2(i)-1; fGLY(i)=fGLY(i)+1; fOPEN(i)=fOPEN(i)+1; 
fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%180
i=i+1;
Rnames{i} = 'TOL + OH = 0.18CRES + 0.65TO2 + 0.72RO2 + 0.1OPEN + 0.1OH + 0.07XO2H + 0.18HO2';
k(:,i) = 1.80E-12.*exp(340./T);
Gstr{i,1} = 'TOL'; Gstr{i,2} = 'OH';
fTOL(i)=fTOL(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.18; fTO2(i)=fTO2(i)+0.65; 
fRO2(i)=fRO2(i)+0.72; fOPEN(i)=fOPEN(i)+0.1; fOH(i)=fOH(i)+0.1; fXO2H(i)=fXO2H(i)+0.07; fHO2(i)=fHO2(i)+0.18;

%181
i=i+1;
Rnames{i} = 'NO + TO2 = 0.86NO2 + 0.14NTR2 + 0.417GLY + 0.443MGLY + 0.66OPEN + 0.2XOPN + 0.86HO2'; %mm
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'TO2';
fNO(i)=fNO(i)-1; fTO2(i)=fTO2(i)-1; fNO2(i)=fNO2(i)+0.86; fNTR2(i)=fNTR2(i)+0.14; 
fGLY(i)=fGLY(i)+0.417; fMGLY(i)=fMGLY(i)+0.443; fOPEN(i)=fOPEN(i)+0.66; 
fXOPN(i)=fXOPN(i)+0.2; fHO2(i)=fHO2(i)+0.86;

%182
i=i+1;
Rnames{i} = 'C2O3 + TO2 = 0.48GLY + 0.52MGLY + 0.77OPEN + 0.23XOPN + HO2 + MEO2 + RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'TO2';
fC2O3(i)=fC2O3(i)-1; fTO2(i)=fTO2(i)-1; fGLY(i)=fGLY(i)+0.48; fMGLY(i)=fMGLY(i)+0.52; 
fOPEN(i)=fOPEN(i)+0.77; fXOPN(i)=fXOPN(i)+0.23; fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%183
i=i+1;
Rnames{i} = 'HO2 + TO2 = ';
k(:,i) = 1.90e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'TO2';
fHO2(i)=fHO2(i)-1; fTO2(i)=fTO2(i)-1;

%184
i=i+1;
Rnames{i} = 'RO2 + TO2 = 0.48GLY + 0.52MGLY + 0.77OPEN + 0.23XOPN + HO2 + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'TO2';
fRO2(i)=fRO2(i)-1; fTO2(i)=fTO2(i)-1; fGLY(i)=fGLY(i)+0.48; fMGLY(i)=fMGLY(i)+0.52; 
fOPEN(i)=fOPEN(i)+0.77; fXOPN(i)=fXOPN(i)+0.23; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%185
i=i+1;
Rnames{i} = 'XYL + OH = 0.155CRES + 0.544XLO2 + 0.602RO2 + 0.244XOPN + 0.244OH + 0.058XO2H + 0.155HO2';
k(:,i) = 1.850E-11;
Gstr{i,1} = 'XYL'; Gstr{i,2} = 'OH';
fXYL(i)=fXYL(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.155; fXLO2(i)=fXLO2(i)+0.544; 
fRO2(i)=fRO2(i)+0.602; fXOPN(i)=fXOPN(i)+0.244; fOH(i)=fOH(i)+0.244; fXO2H(i)=fXO2H(i)+0.058; 
fHO2(i)=fHO2(i)+0.155;

%186
i=i+1;
Rnames{i} = 'NO + XLO2 = 0.86NO2 + 0.14NTR2 + 0.221GLY + 0.675MGLY + 0.3OPEN + 0.56XOPN + 0.86HO2'; %mm
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'XLO2';
fNO(i)=fNO(i)-1; fXLO2(i)=fXLO2(i)-1; fNO2(i)=fNO2(i)+0.86; fNTR2(i)=fNTR2(i)+0.14; 
fGLY(i)=fGLY(i)+0.221; fMGLY(i)=fMGLY(i)+0.675; fOPEN(i)=fOPEN(i)+0.3; fXOPN(i)=fXOPN(i)+0.56; 
fHO2(i)=fHO2(i)+0.86;

%187
i=i+1;
Rnames{i} = 'HO2 + XLO2 = ';
k(:,i) = 1.90e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'XLO2';
fHO2(i)=fHO2(i)-1; fXLO2(i)=fXLO2(i)-1;

%188
i=i+1;
Rnames{i} = 'C2O3 + XLO2 = 0.26GLY + 0.77MGLY + 0.35OPEN + 0.65XOPN + HO2 + MEO2 + RO2';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'XLO2';
fC2O3(i)=fC2O3(i)-1; fXLO2(i)=fXLO2(i)-1; fGLY(i)=fGLY(i)+0.26; fMGLY(i)=fMGLY(i)+0.77; 
fOPEN(i)=fOPEN(i)+0.35; fXOPN(i)=fXOPN(i)+0.65; fHO2(i)=fHO2(i)+1; fMEO2(i)=fMEO2(i)+1; 
fRO2(i)=fRO2(i)+1;

%189
i=i+1;
Rnames{i} = 'RO2 + XLO2 = 0.26GLY + 0.77MGLY + 0.35OPEN + 0.65XOPN + HO2 + RO2';
k(:,i) = 6.50E-14.*exp(500./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'XLO2';
fRO2(i)=fRO2(i)-1; fXLO2(i)=fXLO2(i)-1; fGLY(i)=fGLY(i)+0.26; fMGLY(i)=fMGLY(i)+0.77; 
fOPEN(i)=fOPEN(i)+0.35; fXOPN(i)=fXOPN(i)+0.65; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%190
i=i+1;
Rnames{i} = 'CRES + OH = 0.2CRO + HO2 + 0.025OPEN + 0.732CAT1 + 0.025GLY + 0.02XO2N + 0.02RO2';
k(:,i) = 1.70e-12.*exp(950./T);
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'OH';
fCRES(i)=fCRES(i)-1; fOH(i)=fOH(i)-1; fCRO(i)=fCRO(i)+0.2; fHO2(i)=fHO2(i)+1; 
fOPEN(i)=fOPEN(i)+0.025; fCAT1(i)=fCAT1(i)+0.732; fGLY(i)=fGLY(i)+0.025; fXO2N(i)=fXO2N(i)+0.02; 
fRO2(i)=fRO2(i)+0.02;

%191
i=i+1;
Rnames{i} = 'CRES + NO3 = 0.3CRO + HNO3 + 0.48XO2 + 0.12XO2H + 0.24GLY + 0.24MGLY + 0.48OPO3 + 0.1XO2N + 0.7RO2';
k(:,i) = 1.400E-11;
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'NO3';
fCRES(i)=fCRES(i)-1; fNO3(i)=fNO3(i)-1; fCRO(i)=fCRO(i)+0.3; fHNO3(i)=fHNO3(i)+1; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.12; fGLY(i)=fGLY(i)+0.24; fMGLY(i)=fMGLY(i)+0.24; 
fOPO3(i)=fOPO3(i)+0.48; fXO2N(i)=fXO2N(i)+0.1; fRO2(i)=fRO2(i)+0.7;

%192
i=i+1;
Rnames{i} = 'CRO + NO2 = CRON';
k(:,i) = 2.100E-12;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'NO2';
fCRO(i)=fCRO(i)-1; fNO2(i)=fNO2(i)-1; fCRON(i)=fCRON(i)+1;

%193
i=i+1;
Rnames{i} = 'CRO + HO2 = CRES';
k(:,i) = 5.5E-12;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'HO2';
fCRO(i)=fCRO(i)-1; fHO2(i)=fHO2(i)-1; fCRES(i)=fCRES(i)+1;

%194
i=i+1;
Rnames{i} = 'CRON + OH = NTR2 + 0.5CRO'; %mm
k(:,i) = 1.530E-12;
Gstr{i,1} = 'CRON'; Gstr{i,2} = 'OH';
fCRON(i)=fCRON(i)-1; fOH(i)=fOH(i)-1; fNTR2(i)=fNTR2(i)+1; fCRO(i)=fCRO(i)+0.5;

%195
i=i+1;
Rnames{i} = 'CRON + NO3 = NTR2 + 0.5CRO + HNO3'; %mm
k(:,i) = 3.800E-12;
Gstr{i,1} = 'CRON'; Gstr{i,2} = 'NO3';
fCRON(i)=fCRON(i)-1; fNO3(i)=fNO3(i)-1; fNTR2(i)=fNTR2(i)+1; fCRO(i)=fCRO(i)+0.5; fHNO3(i)=fHNO3(i)+1;

%196
i=i+1;
Rnames{i} = 'CRON = HONO + HO2 + FORM + OPEN';
k(:,i) = JCRON;
Gstr{i,1} = 'CRON';
fCRON(i)=fCRON(i)-1; fHONO(i)=fHONO(i)+1; fHO2(i)=fHO2(i)+1; fFORM(i)=fFORM(i)+1; fOPEN(i)=fOPEN(i)+1;

%197
i=i+1;
Rnames{i} = 'XOPN = 0.4GLY + XO2H + 0.7HO2 + 0.7CO + 0.3C2O3';
k(:,i) = 0.05.*JNO2;
Gstr{i,1} = 'XOPN';
fXOPN(i)=fXOPN(i)-1; fGLY(i)=fGLY(i)+0.4; fXO2H(i)=fXO2H(i)+1; fHO2(i)=fHO2(i)+0.7; 
fCO(i)=fCO(i)+0.7; fC2O3(i)=fC2O3(i)+0.3; 

%198
i=i+1;
Rnames{i} = 'XOPN + OH = MGLY + 0.4GLY + 2XO2H + 2RO2';
k(:,i) = 9.000E-11;
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'OH';
fXOPN(i)=fXOPN(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fGLY(i)=fGLY(i)+0.4; 
fXO2H(i)=fXO2H(i)+2; fRO2(i)=fRO2(i)+2;

%199
i=i+1;
Rnames{i} = 'XOPN + O3 = 1.2MGLY + 0.5OH + 0.6C2O3 + 0.1ALD2 + 0.5CO + 0.3XO2H + 0.3RO2';
k(:,i) = 1.08E-16.*exp(-500./T);
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'O3';
fXOPN(i)=fXOPN(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1.2; fOH(i)=fOH(i)+0.5; 
fC2O3(i)=fC2O3(i)+0.6; fALD2(i)=fALD2(i)+0.1; fCO(i)=fCO(i)+0.5; fXO2H(i)=fXO2H(i)+0.3; 
fRO2(i)=fRO2(i)+0.3;

%200
i=i+1;
Rnames{i} = 'XOPN + NO3 = 0.5NO2 + 0.5NTR2 + 0.45XO2H + 0.45XO2 + 0.1XO2N + RO2 + 0.25OPEN + 0.25MGLY'; %mm
k(:,i) = 3.000E-12;
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'NO3';
fXOPN(i)=fXOPN(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR2(i)=fNTR2(i)+0.5; 
fXO2H(i)=fXO2H(i)+0.45; fXO2(i)=fXO2(i)+0.45; fXO2N(i)=fXO2N(i)+0.1; fRO2(i)=fRO2(i)+1; 
fOPEN(i)=fOPEN(i)+0.25; fMGLY(i)=fMGLY(i)+0.25;

%updated J-value since CB05
%201
i=i+1;
Rnames{i} = 'OPEN = OPO3 + HO2 + CO';
k(:,i) = 0.028.*JNO2;
Gstr{i,1} = 'OPEN';
fOPEN(i)=fOPEN(i)-1; fOPO3(i)=fOPO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%202
i=i+1;
Rnames{i} = 'OPEN + OH = 0.6OPO3 + 0.4XO2H + 0.4RO2 + 0.4GLY';
k(:,i) = 4.400E-11;
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'OH';
fOPEN(i)=fOPEN(i)-1; fOH(i)=fOH(i)-1; fOPO3(i)=fOPO3(i)+0.6; fXO2H(i)=fXO2H(i)+0.4; 
fRO2(i)=fRO2(i)+0.4; fGLY(i)=fGLY(i)+0.4;

%203
i=i+1;
Rnames{i} = 'OPEN + O3 = 1.4GLY + 0.24MGLY + 0.5OH + 0.12C2O3 + 0.08FORM + 0.02ALD2 + 1.98CO + 0.56HO2';
k(:,i) = 5.40E-17.*exp(-500./T);
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'O3';
fOPEN(i)=fOPEN(i)-1; fO3(i)=fO3(i)-1; fGLY(i)=fGLY(i)+1.4; fMGLY(i)=fMGLY(i)+0.24; 
fOH(i)=fOH(i)+0.5; fC2O3(i)=fC2O3(i)+0.12; fFORM(i)=fFORM(i)+0.08; fALD2(i)=fALD2(i)+0.02; 
fCO(i)=fCO(i)+1.98; fHO2(i)=fHO2(i)+0.56;

%204
i=i+1;
Rnames{i} = 'OPEN + NO3 = OPO3 + HNO3';
k(:,i) = 3.800E-12;
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'NO3';
fOPEN(i)=fOPEN(i)-1; fNO3(i)=fNO3(i)-1; fOPO3(i)=fOPO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%205
i=i+1;
Rnames{i} = 'CAT1 + OH = 0.14FORM + 0.2HO2 + 0.5CRO';
k(:,i) = 5.000E-11;
Gstr{i,1} = 'CAT1'; Gstr{i,2} = 'OH';
fCAT1(i)=fCAT1(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+0.14; fHO2(i)=fHO2(i)+0.2; fCRO(i)=fCRO(i)+0.5;

%206
i=i+1;
Rnames{i} = 'CAT1 + NO3 = CRO + HNO3';
k(:,i) = 1.700E-10;
Gstr{i,1} = 'CAT1'; Gstr{i,2} = 'NO3';
fCAT1(i)=fCAT1(i)-1; fNO3(i)=fNO3(i)-1; fCRO(i)=fCRO(i)+1; fHNO3(i)=fHNO3(i)+1;

%207
i=i+1;
Rnames{i} = 'OPO3 + NO = NO2 + 0.5GLY + 0.5CO + 0.8HO2 + 0.2CXO3';
k(:,i) = 1.000E-11;
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'NO';
fOPO3(i)=fOPO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+0.5; fCO(i)=fCO(i)+0.5; 
fHO2(i)=fHO2(i)+0.8; fCXO3(i)=fCXO3(i)+0.2;

%208
i=i+1;
Rnames{i} = 'OPO3 + NO2 = OPAN';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'NO2';
fOPO3(i)=fOPO3(i)-1; fNO2(i)=fNO2(i)-1; fOPAN(i)=fOPAN(i)+1;

%209
i=i+1;
Rnames{i} = 'OPAN = OPO3 + NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'OPAN';
fOPAN(i)=fOPAN(i)-1; fOPO3(i)=fOPO3(i)+1; fNO2(i)=fNO2(i)+1;

%210
i=i+1;
Rnames{i} = 'OPO3 + HO2 = 0.41PACD + 0.15AACD + 0.15O3 + 0.44ALDX + 0.44XO2H + 0.44RO2 + 0.44OH';
k(:,i) = 5.2e-13.*exp(980./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'HO2';
fOPO3(i)=fOPO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.41; fAACD(i)=fAACD(i)+0.15; 
fO3(i)=fO3(i)+0.15; fALDX(i)=fALDX(i)+0.44; fXO2H(i)=fXO2H(i)+0.44; fRO2(i)=fRO2(i)+0.44; 
fOH(i)=fOH(i)+0.44;

%211
i=i+1;
Rnames{i} = 'OPO3 + C2O3 = MEO2 + XO2 + ALDX + RO2 + RO2';
k(:,i) = 2.9e-12.*exp(500./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'C2O3';
fOPO3(i)=fOPO3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fXO2(i)=fXO2(i)+1; 
fALDX(i)=fALDX(i)+1; fRO2(i)=fRO2(i)+1; fRO2(i)=fRO2(i)+1;

%212
i=i+1;
Rnames{i} = 'OPO3 + RO2 = 0.8XO2H + 1.8RO2 + 0.8ALDX + 0.2AACD';
k(:,i) = 8.9e-13.*exp(800./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'RO2';
fOPO3(i)=fOPO3(i)-1; fRO2(i)=fRO2(i)-1; fXO2H(i)=fXO2H(i)+0.8; fRO2(i)=fRO2(i)+1.8; 
fALDX(i)=fALDX(i)+0.8; fAACD(i)=fAACD(i)+0.2;

%213
i=i+1;
Rnames{i} = 'OPAN + OH = 0.5GLY + CO + 0.5NO2 + 0.5NTR2'; %mm
k(:,i) = 3.60E-11;
Gstr{i,1} = 'OPAN'; Gstr{i,2} = 'OH';
fOPAN(i)=fOPAN(i)-1; fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)+0.5; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+0.5; fNTR2(i)=fNTR2(i)+0.5;

%214
i=i+1;
Rnames{i} = 'PANX + OH = ALD2 + NO2';
k(:,i) = 3.00E-12;
Gstr{i,1} = 'PANX'; Gstr{i,2} = 'OH';
fPANX(i)=fPANX(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1;

%215
i=i+1;
Rnames{i} = 'NTR2 = HNO3'; %mm
k(:,i) = 2.30E-5;
Gstr{i,1} = 'NTR2';
fNTR2(i)=fNTR2(i)-1; fHNO3(i)=fHNO3(i)+1;

%216
i=i+1;
Rnames{i} = 'ECH4 + OH = MEO2 + RO2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'ECH4'; Gstr{i,2} = 'OH';
fECH4(i)=fECH4(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

% END OF REACTION LIST


