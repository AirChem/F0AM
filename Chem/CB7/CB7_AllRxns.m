% CB7_AllRxns.m
% # of species = 93
% # of reactions = 229
% For more information, please see CAMx User's Guide, Appendix A.
% NOTE: CB7 species 'O3P' renamed to 'O'
%
% 20150415 MM   First build.
% 20160203 GMW  Checked against documentation.
% 20160606 MM   Updated for consistency with CAMx v 6.3.
% 20250310 EPH  Updated to CB7

SpeciesToAdd = {
'O1D'; 'O'; 'OH'; 'HO2'; 'C2O3'; 'XO2'; 'XO2N'; 'CXO3'; 'MEO2'; 'TO2'; ...
'ROR'; 'CRO'; 'BZO2'; 'EPX2'; 'ISO2'; 'OPO3'; 'RO2'; 'XLO2'; 'XO2H'; 
'AACD'; 'ACET'; 'ALD2'; 'ALDX'; 'BENZ'; 'CAT1'; 'CO'; 'CRES'; 'CRON'; 'EPOX'; 
'ETH'; 'ETHA'; 'ETHY'; 'ETOH'; 'FACD'; 'FORM'; 'GLY'; 'GLYD'; 'H2O2'; 'HNO3'; 
'HONO'; 'HPLD'; 'INTR'; 'IOLE'; 'ISOP'; 'ISPD'; 'ISPX'; 'KET'; 'MEOH'; 'MEPX'; 
'MGLY'; 'N2O5'; 'NO'; 'NO2'; 'NO3'; 'NTR1'; 'NTR2'; 'O3'; 'OLE'; 'OPAN'; 
'OPEN'; 'PACD'; 'PAN'; 'PANX'; 'PAR'; 'PNA'; 'PRPA'; 'ROOH'; 'SO2'; 'SULF'; 
'TERP'; 'TOL'; 'XOPN'; 'XYL'; 'ECH4'; 'H2'; 'CH4'; 'APIN'; 'SQT'; 'DMS'; 
'HACT'; 'XPRP'; 'XPAR'; 'ARPX'; 'APO2'; 'SQO2'; 'TPO2'; 'I'; 'I2'; 'OIO'; 
'IO'; 'I2O2'; 'HOI'; 'INO3'; 'IXOY'; };


RO2ToAdd = {'RO2'};

AddSpecies

%1
i=i+1;
Rnames{i} = 'NO2 = NO + O';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2';
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1;

%2
i=i+1;
Rnames{i} = 'O2 + O = O3';
k(:,i) = 6.00e-34.*((T./300).^-2.6).*M.^2;
Gstr{i,1} = 'O';
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1;

%3
i=i+1;
Rnames{i} = 'O3 + NO = NO2';
k(:,i) = 2.07e-12.*exp(-1400./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO';
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%4
i=i+1;
Rnames{i} = 'O + NO = NO2';
k(:,i) = K_O_NO;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO';
fO(i)=fO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%5
i=i+1;
Rnames{i} = 'O + NO2 = NO';
k(:,i) = 5.10e-12.*exp(198./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2';
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

%6
i=i+1;
Rnames{i} = 'O + NO2 = NO3';
k(:,i) = K_O_NO2;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2';
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1;

%7
i=i+1;
Rnames{i} = 'O + O3 = ';
k(:,i) = 8.00e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3';
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1;

%8
i=i+1;
Rnames{i} = 'O3 = O';
k(:,i) = JO;
Gstr{i,1} = 'O3';
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1;

%9
i=i+1;
Rnames{i} = 'O3 = O1D';
k(:,i) = JO1D;
Gstr{i,1} = 'O3';
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1;

%10
i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 2.23e-11.*exp(115./T).*M;
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1;

%11
i=i+1;
Rnames{i} = 'O1D + H2O = OH + OH';
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
Rnames{i} = 'OH + O = HO2';
k(:,i) = 2.4E-11.*exp(110./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O';
fOH(i)=fOH(i)-1; fO(i)=fO(i)-1; fHO2(i)=fHO2(i)+1;

%15
i=i+1;
Rnames{i} = 'HO2 + O = OH';
k(:,i) = 3.00E-11.*exp(200./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O';
fHO2(i)=fHO2(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1;

%16
i=i+1;
Rnames{i} = 'OH + OH = O';
k(:,i) = 6.20e-14.*((T./298).^2.6).*exp(945./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fO(i)=fO(i)+1;

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
k(:,i) = (2.20e-13.*exp(600./T))+(1.90e-33.*exp(980./T)).*M;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2';
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1;

%20
i=i+1;
Rnames{i} = 'HO2 + HO2 + H2O = H2O2';
k(:,i) = (3.08e-34.*exp(2800./T) + 2.66e-54.*exp(3180./T).*M).*H2O;
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
k(:,i) = 1.8e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2';
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1;

%23
i=i+1;
Rnames{i} = 'H2O2 + O = OH + HO2';
k(:,i) = 1.4E-12.*exp(-2000./T)   ;
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'O';
fH2O2(i)=fH2O2(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;

%24
i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 4.25E-39.*exp(664./T);
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
Rnames{i} = 'NO3 = NO2 + O';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1;

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
Rnames{i} = 'NO3 + OH = NO2 + HO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH';
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%32
i=i+1;
Rnames{i} = 'NO3 + HO2 = OH + NO2';
k(:,i) = 4.00e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2';
fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

%33
i=i+1;
Rnames{i} = 'NO3 + NO3 = NO2 + NO2';
k(:,i) = 8.5e-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1;

%34
i=i+1;
Rnames{i} = 'NO3 + NO2 = N2O5';
k(:,i) = K_NO3_NO2;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2';
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fN2O5(i)=fN2O5(i)+1;

%35
i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

%36
i=i+1;
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = JN2O5;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

%37
i=i+1;
Rnames{i} = 'N2O5 + H2O = HNO3 + HNO3';
k(:,i) = 1.00e-22.*H2O;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%38
i=i+1;
Rnames{i} = 'OH + NO = HONO';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO';
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1;

%39
i=i+1;
Rnames{i} = 'HONO = OH + NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HONO';
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1;

%40
i=i+1;
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.50e-12.*exp(260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO';
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1;

%41
i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2';
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1;

%42
i=i+1;
Rnames{i} = 'OH + NO2 + H2O = HNO3 + H2O';
k(:,i) = 1.1E-30 .*H2O;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2';
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1;

%43
i=i+1;
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3';
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

%44
i=i+1;
Rnames{i} = 'HNO3 = OH + NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3';
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;

%45
i=i+1;
Rnames{i} = 'HO2 + NO2 = PNA';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2';
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fPNA(i)=fPNA(i)+1;

%46
i=i+1;
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = K_PNA;
Gstr{i,1} = 'PNA';
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;

%47
i=i+1;
Rnames{i} = 'PNA = 0.59HO2 + 0.59NO2 + 0.41OH + 0.41NO3';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'PNA';
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+0.59; fNO2(i)=fNO2(i)+0.59; fOH(i)=fOH(i)+0.41; 
fNO3(i)=fNO3(i)+0.41;

%48
i=i+1;
Rnames{i} = 'OH + PNA = NO2';
k(:,i) = 3.20e-13.*exp(690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PNA';
fOH(i)=fOH(i)-1; fPNA(i)=fPNA(i)-1; fNO2(i)=fNO2(i)+1;

%49
i=i+1;
Rnames{i} = 'H2 + OH = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T) ;
Gstr{i,1} = 'H2'; Gstr{i,2} = 'OH';
fH2(i)=fH2(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%50
i=i+1;
Rnames{i} = 'CO + OH = HO2';
k(:,i) = (1.44E-13) + (3.43E-33 .*M);
Gstr{i,1} = 'CO'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1;

%51
i=i+1;
Rnames{i} = 'SO2 + OH = SULF + HO2';
k(:,i) = K_SO2_OH;
Gstr{i,1} = 'SO2'; Gstr{i,2} = 'OH';
fSO2(i)=fSO2(i)-1; fOH(i)=fOH(i)-1; fSULF(i)=fSULF(i)+1; fHO2(i)=fHO2(i)+1;

%52 
i=i+1;
Rnames{i} = 'SO2 = SULF';
k(:,i) = 0;
Gstr{i,1} = 'SO2';
fSO2(i)=fSO2(i)-1; fSULF(i)=fSULF(i)+1;

%53
i=i+1;
Rnames{i} = 'DMS + OH = SO2 + FORM + MEO2';
k(:,i) = 1.12E-11.*exp(-250./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH';
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)+1; fFORM(i)=fFORM(i)+1; fMEO2(i)=fMEO2(i)+1;

%54****
i=i+1;
Rnames{i} = 'DMS + OH + O2 = SULF + MEO2';
k(:,i) = 1.28E-37.*exp(4480./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fDMS(i)=fDMS(i)-1; fSULF(i)=fSULF(i)+1;fMEO2(i)=fMEO2(i)+1;

%55
i=i+1;
Rnames{i} = 'DMS + NO3 = SO2 + FORM + MEO2 + HNO3';
k(:,i) = 1.90E-13.*exp(520./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'NO3';
fDMS(i)=fDMS(i)-1; fNO3(i)=fNO3(i)-1; fSO2(i)=fSO2(i)+1; fFORM(i)=fFORM(i)+1; 
fMEO2(i)=fMEO2(i)+1; fHNO3(i)=fHNO3(i)+1;

%56
i=i+1;
Rnames{i} = 'C2O3 + NO = NO2 + MEO2 + RO2';
k(:,i) = 7.5E-12.*exp(290./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO';
fC2O3(i)=fC2O3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%57
i=i+1;
Rnames{i} = 'C2O3 + NO2 = PAN';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO2';
fC2O3(i)=fC2O3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1;

%58
i=i+1;
Rnames{i} = 'PAN = C2O3 + NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN';
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1;

%59
i=i+1;
Rnames{i} = 'PAN = 0.6C2O3 + 0.6NO2 + 0.4NO3 + 0.4MEO2 + 0.4RO2';
k(:,i) = JPAN;
Gstr{i,1} = 'PAN';
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+0.6; fNO2(i)=fNO2(i)+0.6; fNO3(i)=fNO3(i)+0.4; 
fMEO2(i)=fMEO2(i)+0.4; fRO2(i)=fRO2(i)+0.4;

%60
i=i+1;
Rnames{i} = 'C2O3 + HO2  = 0.37PACD + 0.13O3 + 0.13AACD + 0.5MEO2 + 0.5RO2 + 0.5OH';
k(:,i) = 3.14e-12.*exp(580./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'HO2';
fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.37; fO3(i)=fO3(i)+0.13; 
fAACD(i)=fAACD(i)+0.13; fMEO2(i)=fMEO2(i)+0.5; fRO2(i)=fRO2(i)+0.5; fOH(i)=fOH(i)+0.5;

%61
i=i+1;
Rnames{i} = 'C2O3 + RO2  = 0.3AACD + 0.7MEO2 + 1.7RO2';
k(:,i) = 4.4e-13.*exp(1070./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'RO2';
fC2O3(i)=fC2O3(i)-1; fRO2(i)=fRO2(i)-1; fAACD(i)=fAACD(i)+0.3; fMEO2(i)=fMEO2(i)+0.7; 
fRO2(i)=fRO2(i)+1.7;

%62
i=i+1;
Rnames{i} = 'C2O3 + C2O3 = MEO2 + MEO2 + RO2 + RO2';
k(:,i) = 2.9e-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'C2O3';
fC2O3(i)=fC2O3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fMEO2(i)=fMEO2(i)+1; 
fRO2(i)=fRO2(i)+1; fRO2(i)=fRO2(i)+1;

%63
i=i+1;
Rnames{i} = 'CXO3 + NO = NO2 + 0.5ALD2 + XO2H + RO2';
k(:,i) = 6.7E-12.*exp(340./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO';
fCXO3(i)=fCXO3(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+0.5; fNO2(i)=fNO2(i)+1;  
fXO2H(i)=fXO2H(i)+1;

%64
i=i+1;
Rnames{i} = 'CXO3 + NO2 = PANX';
k(:,i) = K_C2O3_NO2 * 1.19;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO2';
fCXO3(i)=fCXO3(i)-1; fNO2(i)=fNO2(i)-1; fPANX(i)=fPANX(i)+1;

%65
i=i+1;
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = K_PAN .*1.19;
Gstr{i,1} = 'PANX';
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1;

%66
i=i+1;
Rnames{i} = 'PANX + OH = 0.5ALD2 + NO2';
k(:,i) = 3E-12;
Gstr{i,1} = 'PANX';
fPANX(i)=fPANX(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fALD2(i)=fALD2(i)+0.5;

%67
i=i+1;
Rnames{i} = 'CXO3 + HO2 = 0.19PACD + 0.06AACD + 0.06O3 + 0.25ALD2 + 0.25HO2 + 0.25OH';
k(:,i) = 3.14E-12.*exp(580./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'HO2';
fCXO3(i)=fCXO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.19; fAACD(i)=fAACD(i)+0.06;
fO3(i)=fO3(i)+0.06; fALD2(i)=fALD2(i)+0.25; fOH(i)=fOH(i)+0.25; fHO2(i)=fHO2(i)+0.25;

%68
i=i+1;
Rnames{i} = 'CXO3 + RO2 = 0.35ALD2 + 0.15AACD + 0.35HO2 + RO2';
k(:,i) = 4.4E-13.*exp(1070./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'RO2';
fCXO3(i)=fCXO3(i)-1; fRO2(i)=fRO2(i)-1; fALD2(i)=fALD2(i)+0.35; fAACD(i)=fAACD(i)+0.15; 
fHO2(i)=fHO2(i)+0.35; fRO2(i)=fRO2(i)+1;

%69
i=i+1;
Rnames{i} = 'OPO3 + NO = NO2 + 0.5GLY + 0.5CO + 0.8HO2 + 0.2CXO3';
k(:,i) = 6.70E-12.*exp(340./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'NO';
fOPO3(i)=fOPO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fGLY(i)=fGLY(i)+0.5; fCO(i)=fCO(i)+0.5; 
fHO2(i)=fHO2(i)+0.8; fCXO3(i)=fCXO3(i)+0.2;

%70
i=i+1;
Rnames{i} = 'OPO3 + NO2 = OPAN';
k(:,i) = K_C2O3_NO2 .* 1.19;
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'NO2';
fOPO3(i)=fOPO3(i)-1; fNO2(i)=fNO2(i)-1; fOPAN(i)=fOPAN(i)+1;

%71
i=i+1;
Rnames{i} = 'OPAN = OPO3 + NO2';
k(:,i) = K_PAN .*1.19;
Gstr{i,1} = 'OPAN';
fOPAN(i)=fOPAN(i)-1; fOPO3(i)=fOPO3(i)+1; fNO2(i)=fNO2(i)+1;

%72
i=i+1;
Rnames{i} = 'OPAN + OH = 0.5GLY + CO + 0.5NO2 + 0.5NTR2';
k(:,i) = 3.60E-11;
Gstr{i,1} = 'OPAN'; Gstr{i,2} = 'OH';
fOPAN(i)=fOPAN(i)-1; fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)+0.5; fCO(i)=fCO(i)+1; 
fNO2(i)=fNO2(i)+0.5; fNTR2(i)=fNTR2(i)+0.5;

%73
i=i+1;
Rnames{i} = 'OPO3 + HO2 = 0.37PACD + 0.13AACD + 0.13O3 + 0.5MEO2 + 0.5RO2 + 0.5OH';
k(:,i) = 3.14e-12.*exp(580./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'HO2';
fOPO3(i)=fOPO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.37; fAACD(i)=fAACD(i)+0.13; 
fO3(i)=fO3(i)+0.13; fMEO2(i)=fMEO2(i)+0.5; fRO2(i)=fRO2(i)+0.5; 
fOH(i)=fOH(i)+0.5;

%74
i=i+1;
Rnames{i} = 'OPO3 + RO2 = 0.7XO2H + 1.7RO2 + 0.7ALDX + 0.3AACD';
k(:,i) = 4.4e-13.*exp(1070./T);
Gstr{i,1} = 'OPO3'; Gstr{i,2} = 'RO2';
fOPO3(i)=fOPO3(i)-1; fRO2(i)=fRO2(i)-1; fXO2H(i)=fXO2H(i)+0.7; fRO2(i)=fRO2(i)+1.7; 
fALDX(i)=fALDX(i)+0.7; fAACD(i)=fAACD(i)+0.3;

% 75
i=i+1;
Rnames{i} = 'RO2 + NO = NO';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'NO';
fRO2(i)=fRO2(i)-1; fNO(i)=fNO(i)-1; fNO(i)=fNO(i)+1;

%76
i=i+1;
Rnames{i} = 'RO2 + HO2 = HO2';
k(:,i) = 2.12E-13.*exp(1300./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'HO2';
fRO2(i)=fRO2(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1;

%77
i=i+1;
Rnames{i} = 'RO2 + RO2 = ';
k(:,i) = 1.55E-13.*exp(350./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'RO2';
fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)-1;

%78
i=i+1;
Rnames{i} = 'MEO2 + NO = FORM + HO2 + NO2';
k(:,i) = 2.3E-12.*exp(360./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO';
fMEO2(i)=fMEO2(i)-1; fNO(i)=fNO(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1;

%79
i=i+1;
Rnames{i} = 'MEO2 + HO2 = 0.9MEPX + 0.1FORM';
k(:,i) = 3.80E-13.*exp(780./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2';
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+0.9; fFORM(i)=fFORM(i)+0.1;

%80
i=i+1;
Rnames{i} = 'MEO2 + C2O3 = FORM + 0.9MEO2 + 0.9HO2 + 0.1AACD + 0.9RO2';
k(:,i) = 2.0E-12.*exp(500./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'C2O3';
fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fMEO2(i)=fMEO2(i)+0.9; 
fHO2(i)=fHO2(i)+0.9; fAACD(i)=fAACD(i)+0.1; fRO2(i)=fRO2(i)+0.9;

%81
i=i+1;
Rnames{i} = 'MEO2 + RO2 = 0.685FORM + 0.315MEOH + 0.37HO2 + RO2';
k(:,i) = 1.55E-13.*exp(350./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'RO2';
fMEO2(i)=fMEO2(i)-1; fRO2(i)=fRO2(i)-1; fFORM(i)=fFORM(i)+0.685; fMEOH(i)=fMEOH(i)+0.315; 
fHO2(i)=fHO2(i)+0.37; fRO2(i)=fRO2(i)+1;

%82
i=i+1;
Rnames{i} = 'MEPX + OH = 0.6MEO2 + 0.6RO2 + 0.4FORM + 0.4OH';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'MEPX'; Gstr{i,2} = 'OH';
fMEPX(i)=fMEPX(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+0.6; fRO2(i)=fRO2(i)+0.6; 
fFORM(i)=fFORM(i)+0.4; fOH(i)=fOH(i)+0.4;

%83
i=i+1;
Rnames{i} = 'MEPX = MEO2 + RO2 + OH';
k(:,i) = JCOOH;
Gstr{i,1} = 'MEPX';
fMEPX(i)=fMEPX(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1; fOH(i)=fOH(i)+1;

%84
i=i+1;
Rnames{i} = 'XO2H + NO = NO2 + HO2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'NO';
fXO2H(i)=fXO2H(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;

%85
i=i+1;
Rnames{i} = 'XO2H + HO2 = ROOH';
k(:,i) = 2.12E-13.*exp(1300./T);
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'HO2';
fXO2H(i)=fXO2H(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%86
i=i+1;
Rnames{i} = 'XO2H + RO2 = 0.6HO2 + RO2';
k(:,i) = 1.55E-13.*exp(350./T) ./2 ;
Gstr{i,1} = 'XO2H'; Gstr{i,2} = 'RO2';
fXO2H(i)=fXO2H(i)-1; fRO2(i)=fRO2(i)-1; fHO2(i)=fHO2(i)+0.6; fRO2(i)=fRO2(i)+1;

%87
i=i+1;
Rnames{i} = 'XO2 + NO = NO2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO';
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

%88
i=i+1;
Rnames{i} = 'XO2 + HO2 = ROOH';
k(:,i) = 2.12E-13.*exp(1300./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2';
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%89
i=i+1;
Rnames{i} = 'XO2 + RO2 = RO2';
k(:,i) = (1.55E-13.*exp(350./T)) ./2 ;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'RO2';
fXO2(i)=fXO2(i)-1; fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)+1;

%90
i=i+1;
Rnames{i} = 'XO2N + NO = 0.5NTR1 + 0.5NTR2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'NO';
fXO2N(i)=fXO2N(i)-1; fNO(i)=fNO(i)-1; fNTR1(i)=fNTR1(i)+0.5; fNTR2(i)=fNTR2(i)+0.5;

%91
i=i+1;
Rnames{i} = 'XO2N + HO2 = ROOH';
k(:,i) = 2.12E-13.*exp(1300./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'HO2';
fXO2N(i)=fXO2N(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

%92
i=i+1;
Rnames{i} = 'XO2N + RO2 = RO2';
k(:,i) = (1.55E-13.*exp(350./T)) ./2;
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'RO2';
fXO2N(i)=fXO2N(i)-1; fRO2(i)=fRO2(i)-1; fRO2(i)=fRO2(i)+1;

%93
i=i+1;
Rnames{i} = 'ROOH + OH = 0.56XO2H + 0.04XO2N + 0.6RO2 + 0.4OH';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH';
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fXO2H(i)=fXO2H(i)+0.56; fXO2N(i)=fXO2N(i)+0.04; 
fRO2(i)=fRO2(i)+0.6; fOH(i)=fOH(i)+0.4;

%94
i=i+1;
Rnames{i} = 'ROOH = OH + HO2';
k(:,i) = JCOOH;
Gstr{i,1} = 'ROOH';
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;

%95
i=i+1;
Rnames{i} = 'NTR1 + OH = NTR2'; 
k(:,i) = 2.00E-12;
Gstr{i,1} = 'NTR1'; Gstr{i,2} = 'OH';
fNTR1(i)=fNTR1(i)-1; fOH(i)=fOH(i)-1; fNTR2(i)=fNTR2(i)+1;

%96
i=i+1;
Rnames{i} = 'NTR1 = NO2';
k(:,i) = JNTR;
Gstr{i,1} = 'NTR1';
fNTR1(i)=fNTR1(i)-1; fNO2(i)=fNO2(i)+1;

%97 
i=i+1;
Rnames{i} = 'NTR2 = HNO3';
k(:,i) = 2.30E-5;
Gstr{i,1} = 'NTR2';
fNTR2(i)=fNTR2(i)-1; fHNO3(i)=fHNO3(i)+1;

%98
i=i+1;
Rnames{i} = 'MEOH + OH = FORM + HO2';
k(:,i) = 2.85E-12.*exp(-345./T);
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'OH';
fMEOH(i)=fMEOH(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1;

%99
i=i+1;
Rnames{i} = 'ETOH + OH = 0.95ALD2 + 0.9HO2 + 0.1XO2H + 0.1RO2 + 0.078FORM + 0.011GLYD';
k(:,i) = 3.00e-12.*exp(20./T);
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH';
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+0.95; fHO2(i)=fHO2(i)+0.9; 
fXO2H(i)=fXO2H(i)+0.1; fRO2(i)=fRO2(i)+0.1; fFORM(i)=fFORM(i)+0.078; fGLYD(i)=fGLYD(i)+0.011;

%100 
i=i+1;
Rnames{i} = 'FORM + OH = HO2 + CO';
k(:,i) = 5.40E-12.*exp(135./T);
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'OH';
fFORM(i)=fFORM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%101
i=i+1;
Rnames{i} = 'FORM = HO2 + HO2 + CO';
k(:,i) = JHCHO_R;
Gstr{i,1} = 'FORM';
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%102
i=i+1;
Rnames{i} = 'FORM = CO + H2';
k(:,i) = JHCHO_M;
Gstr{i,1} = 'FORM';
fFORM(i)=fFORM(i)-1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1;

%103
i=i+1;
Rnames{i} = 'FORM + NO3 = HNO3 + HO2 + CO';
k(:,i) = 5.500E-16;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'NO3';
fFORM(i)=fFORM(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%104
i=i+1;
Rnames{i} = 'ALD2 + OH = C2O3';
k(:,i) = 4.70E-12.*exp(345./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH';
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1;

%105
i=i+1;
Rnames{i} = 'ALD2 + NO3 = C2O3 + HNO3';
k(:,i) = 1.4E-12.*exp(-1860./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3';
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fC2O3(i)=fC2O3(i)+1; fHNO3(i)=fHNO3(i)+1;

%106
i=i+1;
Rnames{i} = 'ALD2 = MEO2 + CO + HO2 + RO2';
k(:,i) = JCCHO_R;
Gstr{i,1} = 'ALD2';
fALD2(i)=fALD2(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%107
i=i+1;
Rnames{i} = 'ALDX + OH = CXO3';
k(:,i) = 4.9E-12.*exp(405./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'OH';
fALDX(i)=fALDX(i)-1; fOH(i)=fOH(i)-1; fCXO3(i)=fCXO3(i)+1;

%108
i=i+1;
Rnames{i} = 'ALDX + NO3 = CXO3 + HNO3';
k(:,i) = 6.300E-15;
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'NO3';
fALDX(i)=fALDX(i)-1; fNO3(i)=fNO3(i)-1; fCXO3(i)=fCXO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%109
i=i+1;
Rnames{i} = 'ALDX = ALD2 + XO2H + CO + HO2 + RO2';
k(:,i) = JC2CHO;
Gstr{i,1} = 'ALDX';
fALDX(i)=fALDX(i)-1; fALD2(i)=fALD2(i)+1; fXO2H(i)=fXO2H(i)+1; fCO(i)=fCO(i)+1; 
fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%110
i=i+1;
Rnames{i} = 'GLYD + OH = 0.2GLY + 0.2HO2 + 0.8C2O3';
k(:,i) = 8.00E-12;
Gstr{i,1} = 'GLYD'; Gstr{i,2} = 'OH';
fGLYD(i)=fGLYD(i)-1; fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)+0.2; fHO2(i)=fHO2(i)+0.2; 
fC2O3(i)=fC2O3(i)+0.8;

%111
i=i+1;
Rnames{i} = 'GLYD = 0.74FORM + 0.89CO + 1.4HO2 + 0.15MEOH + 0.19OH + 0.11GLY + 0.11XO2H + 0.11RO2';
k(:,i) = JGLYD;
Gstr{i,1} = 'GLYD';
fGLYD(i)=fGLYD(i)-1; fFORM(i)=fFORM(i)+0.74; fCO(i)=fCO(i)+0.89; fHO2(i)=fHO2(i)+1.4; 
fMEOH(i)=fMEOH(i)+0.15; fOH(i)=fOH(i)+0.19; fGLY(i)=fGLY(i)+0.11; 
fXO2H(i)=fXO2H(i)+0.11; fRO2(i)=fRO2(i)+0.11;

%112
i=i+1;
Rnames{i} = 'GLYD + NO3 = HNO3 + C2O3';
k(:,i) = 1.40E-12.*exp(-1860./T);
Gstr{i,1} = 'GLYD'; Gstr{i,2} = 'NO3';
fGLYD(i)=fGLYD(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fC2O3(i)=fC2O3(i)+1;

%113
i=i+1;
Rnames{i} = 'OH + GLY = 1.8CO + 0.2XO2 + 0.2RO2 + HO2';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLY';
fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)-1; fCO(i)=fCO(i)+1.8; fXO2(i)=fXO2(i)+0.2; 
fRO2(i)=fRO2(i)+0.2; fHO2(i)=fHO2(i)+1;

%114
i=i+1;
Rnames{i} = 'GLY = 2HO2 + 2CO';
k(:,i) = JGLY;
Gstr{i,1} = 'GLY';
fGLY(i)=fGLY(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+2;

%115
i=i+1;
Rnames{i} = 'GLY + NO3 = HNO3 + 1.5CO + HO2 + 0.5XO2 + 0.5RO2';
k(:,i) = 4.0E-16;
Gstr{i,1} = 'GLY'; Gstr{i,2} = 'NO3';
fGLY(i)=fGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1.5; 
fHO2(i)=fHO2(i)+1; fXO2(i)=fXO2(i)+0.5; fRO2(i)=fRO2(i)+0.5;

%116
i=i+1;
Rnames{i} = 'MGLY = C2O3 + HO2 + CO';
k(:,i) = JMGLY  ;
Gstr{i,1} = 'MGLY';
fMGLY(i)=fMGLY(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%117
i=i+1;
Rnames{i} = 'MGLY + NO3 = HNO3 + C2O3 + XO2 + RO2';
k(:,i) = 5.0E-16;
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3';
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fC2O3(i)=fC2O3(i)+1; 
fXO2(i)=fXO2(i)+1; fRO2(i)=fRO2(i)+1;

%118
i=i+1;
Rnames{i} = 'OH + MGLY = CO + C2O3';
k(:,i) = 1.90E-12.*exp(575./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLY';
fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)-1; fCO(i)=fCO(i)+1; fC2O3(i)=fC2O3(i)+1;

%119
i=i+1;
Rnames{i} = 'ACET = 0.38CO + 1.38MEO2 + 1.38RO2 + 0.62C2O3';
k(:,i) = JACET;
Gstr{i,1} = 'ACET';
fACET(i)=fACET(i)-1; fCO(i)=fCO(i)+0.38; fMEO2(i)=fMEO2(i)+1.38; fRO2(i)=fRO2(i)+1.38; 
fC2O3(i)=fC2O3(i)+0.62;

%120
i=i+1;
Rnames{i} = 'ACET + OH = FORM + C2O3 + XO2 + RO2';
k(:,i) = 1.41E-12.*exp(-620.6./T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH';
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fC2O3(i)=fC2O3(i)+1; 
fXO2(i)=fXO2(i)+1; fRO2(i)=fRO2(i)+1;

%121
i=i+1;
Rnames{i} = 'KET = 0.15FORM + 0.58ALD2 + 0.34ALDX + 0.96HO2 + 0.7C2O3 + 0.3CXO3 + 1.3XO2 + 0.03XO2N + 1.33RO2 - 3PAR';
k(:,i) = JMEK;
Gstr{i,1} = 'KET';
fKET(i)=fKET(i)-1; fFORM(i)=fFORM(i)+0.15; fALD2(i)=fALD2(i)+0.58; 
fALDX(i)=fALDX(i)+0.34; fHO2(i)=fHO2(i)+0.96; fC2O3(i)=fC2O3(i)+0.7; 
fCXO3(i)=fCXO3(i)+0.3; fXO2(i)=fXO2(i)+1.3; fXO2N(i)=fXO2N(i)+0.03; 
fRO2(i)=fRO2(i)+1.33; fPAR(i)=fPAR(i)-3;

%122
i=i+1;
Rnames{i} = 'KET + OH = 0.06KET + 0.15FORM + 0.29ALD2 + 0.46ALDX + 0.61HO2 + 0.27C2O3 + 0.06CXO3 + 0.72XO2 + 0.04XO2N + 0.76RO2 - 1.38PAR';
k(:,i) = 1E-12;
Gstr{i,1} = 'KET'; Gstr{i,2} = 'OH';
fKET(i)=fKET(i)-1; fOH(i)=fOH(i)-1; fKET(i)=fKET(i)+0.06; fFORM(i)=fFORM(i)+0.15; fALD2(i)=fALD2(i)+0.29; 
fALDX(i)=fALDX(i)+0.46; fHO2(i)=fHO2(i)+0.61; fC2O3(i)=fC2O3(i)+0.27; 
fCXO3(i)=fCXO3(i)+0.06; fXO2(i)=fXO2(i)+0.72; fXO2N(i)=fXO2N(i)+0.04; 
fRO2(i)=fRO2(i)+0.76; fPAR(i)=fPAR(i)-1.38;

%123
i=i+1;
Rnames{i} = 'HACT + OH = MGLY + HO2';
k(:,i) = 2.00E-12.*exp(320./T) ;
Gstr{i,1} = 'HACT'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fHACT(i)=fHACT(i)-1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1;


%124
i=i+1;
Rnames{i} = 'FACD + OH = HO2';
k(:,i) = 4.50E-13;
Gstr{i,1} = 'FACD'; Gstr{i,2} = 'OH';
fFACD(i)=fFACD(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

%125
i=i+1;
Rnames{i} = 'AACD + OH = MEO2 + RO2';
k(:,i) = 4.00E-14.*exp(850./T);
Gstr{i,1} = 'AACD'; Gstr{i,2} = 'OH';
fAACD(i)=fAACD(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%126
i=i+1;
Rnames{i} = 'PACD + OH = C2O3';
k(:,i) = 5.30E-12.*exp(190./T);
Gstr{i,1} = 'PACD'; Gstr{i,2} = 'OH';
fPACD(i)=fPACD(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1;

%127
i=i+1;
Rnames{i} = 'OH + CH4 = MEO2 + RO2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4';
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%128
i=i+1;
Rnames{i} = 'ECH4 + OH = MEO2 + RO2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'ECH4'; Gstr{i,2} = 'OH';
fECH4(i)=fECH4(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; fRO2(i)=fRO2(i)+1;

%129
i=i+1;
Rnames{i} = 'OH + ETHA = 0.991ALD2 + 0.991XO2H + 0.009XO2N + RO2';
k(:,i) = 6.90E-12.*exp(-1000./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETHA';
fOH(i)=fOH(i)-1; fETHA(i)=fETHA(i)-1; fALD2(i)=fALD2(i)+0.991; fXO2H(i)=fXO2H(i)+0.991; 
fXO2N(i)=fXO2N(i)+0.009; fRO2(i)=fRO2(i)+1;

%130
i=i+1;
Rnames{i} = 'PRPA + OH = XPRP';
k(:,i) = 7.6e-12.*exp(-585./T);
Gstr{i,1} = 'PRPA'; Gstr{i,2} = 'OH';
fPRPA(i)=fPRPA(i)-1; fOH(i)=fOH(i)-1; fXPRP(i)=fXPRP(i)+1;

% 131
i=i+1;
Rnames{i} = 'XPRP = XO2N + RO2';
k(:,i) = K_XPRP;
Gstr{i,1} = 'XPRP';
fXPRP(i)=fXPRP(i)-1; fXO2N(i)=fXO2N(i)+1; fRO2(i)=fRO2(i)+1;


%132
i=i+1;
Rnames{i} = 'XPRP = 0.732ACET + 0.268ALDX + 0.268PAR + XO2H + RO2';
k(:,i) = 1;
Gstr{i,1} = 'XPRP';
fXPRP(i)=fXPRP(i)-1; fACET(i)=fACET(i)+0.732; fALDX(i)=fALDX(i)+0.268;
fPAR(i)=fPAR(i)+0.268; fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1;

%133
i=i+1;
Rnames{i} = 'PAR + OH = XPAR';
k(:,i) = 3.09E-13.*(T./300).^2 .*exp(300./T);
Gstr{i,1} = 'PAR'; Gstr{i,2} = 'OH';
fPAR(i)=fPAR(i)-1; fOH(i)=fOH(i)-1; fXPAR(i)=fXPAR(i)+1;

%134
i=i+1;
Rnames{i} = 'XPAR = XO2N + RO2 - 3PAR';
k(:,i) = K_XPAR;
Gstr{i,1} = 'XPAR';
fXPAR(i)=fXPAR(i)-1; fXO2N(i)=fXO2N(i)+1; fRO2(i)=fRO2(i)+1;
fPAR(i)=fPAR(i)-3;

%135
i=i+1;
Rnames{i} = 'XPAR = 0.87ROR + 0.13ALDX + 0.13XO2H + 0.13RO2 - 0.13PAR';
k(:,i) = 1;
Gstr{i,1} = 'XPAR';
fXPAR(i)=fXPAR(i)-1; fROR(i)=fROR(i)+0.87; fALDX(i)=fALDX(i)+0.13;
fXO2H(i)=fXO2H(i)+0.13; fPAR(i)=fPAR(i)-0.13;

%136
i=i+1;
Rnames{i} = 'ROR = 0.32ACET + 0.3KET + 0.04FORM + 0.46ALD2 + 0.1ALDX + 0.62HO2 + 0.11MEO2 + 1.75XO2 + 0.25XO2H + 0.02XO2N + 2.13RO2 - 1.63PAR';
k(:,i) = 5.0E-14.*exp(-250./T) + 2.40E12.*exp(-5000./T);
Gstr{i,1} = 'ROR';
fROR(i)=fROR(i)-1; fACET(i)=fACET(i)+0.32; fKET(i)=fKET(i)+0.3; fFORM(i)=fFORM(i)+0.04; fALD2(i)=fALD2(i)+0.46; 
fALDX(i)=fALDX(i)+0.1; fHO2(i)=fHO2(i)+0.62; fMEO2(i)=fMEO2(i)+0.11; fXO2(i)=fXO2(i)+1.75; fXO2H(i)=fXO2H(i)+0.75; fXO2N(i)=fXO2N(i)+0.02; fRO2(i)=fRO2(i)+2.13; 
fPAR(i)=fPAR(i)-1.63;

%137 ***
i=i+1;
Rnames{i} = 'ROR + O2 = 0.15ACET + 0.85KET + HO2 - 0.3PAR';
k(:,i) = (5.0E-14.*exp(-250./T) + 2.40E12.*exp(-5000./T)) ;
Gstr{i,1} = 'ROR';
fROR(i)=fROR(i)-1; fACET(i)=fACET(i)+0.15; fKET(i)=fKET(i)+0.85; fHO2(i)=fHO2(i)+1;
fPAR(i)=fPAR(i)-0.3;


%138
i=i+1;
Rnames{i} = 'ETHY + OH = 0.7GLY + 0.7OH + 0.3FACD + 0.3CO + 0.3HO2';
k(:,i) = K_OH_ETHY;
Gstr{i,1} = 'ETHY'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fETHY(i)=fETHY(i)-1; fGLY(i)=fGLY(i)+0.7; fOH(i)=fOH(i)+0.7; 
fFACD(i)=fFACD(i)+0.3; fCO(i)=fCO(i)+0.3; fHO2(i)=fHO2(i)+0.3;

%139
i=i+1;
Rnames{i} = 'ETH + OH = XO2H + RO2 + 1.56FORM + 0.22GLYD';
k(:,i) = K_OH_ETH;
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1; 
fFORM(i)=fFORM(i)+1.56; fGLYD(i)=fGLYD(i)+0.22;

%140
i=i+1;
Rnames{i} = 'ETH + O3 = FORM + 0.35CO + 0.27HO2 + 0.17OH + 0.42FACD';
k(:,i) = 6.82e-15.*exp(-2500./T);
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'O3';
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fCO(i)=fCO(i)+0.35; 
fHO2(i)=fHO2(i)+0.27; fOH(i)=fOH(i)+0.17; fFACD(i)=fFACD(i)+0.42;

%141
i=i+1;
Rnames{i} = 'ETH + NO3 = 0.5NO2 + 0.5NTR1 + 0.5XO2H + 0.5XO2 + RO2 + 1.125FORM'; 
k(:,i) = 3.3E-12.*exp(-2880./T);
Gstr{i,1} = 'ETH'; Gstr{i,2} = 'NO3';
fNO3(i)=fNO3(i)-1; fETH(i)=fETH(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2H(i)=fXO2H(i)+0.5; fXO2(i)=fXO2(i)+0.5; fRO2(i)=fRO2(i)+1; fFORM(i)=fFORM(i)+1.125;

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
Rnames{i} = 'NO3 + OLE = 0.5NO2 + 0.5NTR1 + 0.48XO2  + 0.48XO2H + 0.04XO2N + RO2 + 0.5FORM + 0.25ALD2 + 0.375ALDX - PAR';
k(:,i) = 4.60e-13.*exp(-1155./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE';
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.48; fXO2N(i)=fXO2N(i)+0.04; fRO2(i)=fRO2(i)+1; 
fFORM(i)=fFORM(i)+0.5; fALD2(i)=fALD2(i)+0.25; fALDX(i)=fALDX(i)+0.375; fPAR(i)=fPAR(i)-1;

%145
i=i+1;
Rnames{i} = 'IOLE + OH = 1.3ALD2 + 0.7ALDX + XO2H + RO2';
k(:,i) = 1.05E-11.*exp(519./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'OH';
fIOLE(i)=fIOLE(i)-1; fO(i)=fO(i)-1; fALD2(i)=fALD2(i)+1.3; fALDX(i)=fALDX(i)+0.7; 
fXO2H(i)=fXO2H(i)+1; fRO2(i)=fRO2(i)+1;

%146
i=i+1;
Rnames{i} = 'IOLE + O3 = 0.732ALD2 + 0.442ALDX + 0.128FORM + 0.245CO + 0.5OH + 0.3XO2H + 0.3RO2 + 0.24GLY + 0.06MGLY + 0.29PAR + 0.08AACD + 0.08H2O2';
k(:,i) = 4.70E-15.*exp(-1013./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3';
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+0.732; fALDX(i)=fALDX(i)+0.442; 
fFORM(i)=fFORM(i)+0.128; fCO(i)=fCO(i)+0.245; fOH(i)=fOH(i)+0.5; fXO2H(i)=fXO2H(i)+0.3; 
fRO2(i)=fRO2(i)+0.3; fGLY(i)=fGLY(i)+0.24; fMGLY(i)=fMGLY(i)+0.06; fPAR(i)=fPAR(i)+0.29; 
fAACD(i)=fAACD(i)+0.08; fH2O2(i)=fH2O2(i)+0.08;


%147
i=i+1;
Rnames{i} = 'IOLE + NO3 = 0.5NO2 + 0.5NTR1 + 0.48XO2 + 0.48XO2H + 0.04XO2N + RO2 + 0.5ALD2 + 0.625ALDX + PAR';
k(:,i) = 3.700E-13;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3';
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR1(i)=fNTR1(i)+0.5; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.48; fXO2N(i)=fXO2N(i)+0.04; fRO2(i)=fRO2(i)+1; 
fALD2(i)=fALD2(i)+0.5; fALDX(i)=fALDX(i)+0.625; fPAR(i)=fPAR(i)+1;

%148
i=i+1;
Rnames{i} = 'BENZ + OH = 0.53CRES + 0.352BZO2 + 0.352RO2 + 0.118OPEN + 0.118OH + 0.53HO2';
k(:,i) = 2.30E-12.*exp(-190./T);
Gstr{i,1} = 'BENZ'; Gstr{i,2} = 'OH';
fBENZ(i)=fBENZ(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.53; fBZO2(i)=fBZO2(i)+0.352; 
fRO2(i)=fRO2(i)+0.352; fOPEN(i)=fOPEN(i)+0.118; fOH(i)=fOH(i)+0.118; fHO2(i)=fHO2(i)+0.53;

%149
i=i+1;
Rnames{i} = 'NO + BZO2 = 0.918NO2 + 0.082NTR2 + 0.918GLY + 0.918OPEN + 0.918HO2';
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'BZO2';
fNO(i)=fNO(i)-1; fBZO2(i)=fBZO2(i)-1; fNO2(i)=fNO2(i)+0.918; fNTR2(i)=fNTR2(i)+0.082; 
fGLY(i)=fGLY(i)+0.918; fOPEN(i)=fOPEN(i)+0.918; fHO2(i)=fHO2(i)+0.918;

%150
i=i+1;
Rnames{i} = 'HO2 + BZO2 = ARPX';
k(:,i) = 2.24e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'BZO2';
fHO2(i)=fHO2(i)-1; fBZO2(i)=fBZO2(i)-1; fARPX(i)=fARPX(i)+1;

%151
i=i+1;
Rnames{i} = 'RO2 + BZO2 = GLY + OPEN + HO2 + RO2';
k(:,i) = 1.55E-13.*exp(350./T);
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'BZO2';
fRO2(i)=fRO2(i)-1; fBZO2(i)=fBZO2(i)-1; fGLY(i)=fGLY(i)+1; fOPEN(i)=fOPEN(i)+1; 
fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%152
i=i+1;
Rnames{i} = 'TOL + OH = 0.18CRES + 0.65TO2 + 0.72RO2 + 0.1OPEN + 0.1OH + 0.07XO2H + 0.18HO2';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'TOL'; Gstr{i,2} = 'OH';
fTOL(i)=fTOL(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.18; fTO2(i)=fTO2(i)+0.65; 
fRO2(i)=fRO2(i)+0.72; fOPEN(i)=fOPEN(i)+0.1; fOH(i)=fOH(i)+0.1; fXO2H(i)=fXO2H(i)+0.07; fHO2(i)=fHO2(i)+0.18;

%153
i=i+1;
Rnames{i} = 'NO + TO2 = 0.86NO2 + 0.14NTR2 + 0.417GLY + 0.443MGLY + 0.66OPEN + 0.2XOPN + 0.86HO2';
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'TO2';
fNO(i)=fNO(i)-1; fTO2(i)=fTO2(i)-1; fNO2(i)=fNO2(i)+0.86; fNTR2(i)=fNTR2(i)+0.14; 
fGLY(i)=fGLY(i)+0.417; fMGLY(i)=fMGLY(i)+0.443; fOPEN(i)=fOPEN(i)+0.66; 
fXOPN(i)=fXOPN(i)+0.2; fHO2(i)=fHO2(i)+0.86;

%154
i=i+1;
Rnames{i} = 'HO2 + TO2 = ARPX';
k(:,i) = 2.39e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'TO2';
fHO2(i)=fHO2(i)-1; fTO2(i)=fTO2(i)-1;

%155
i=i+1;
Rnames{i} = 'RO2 + TO2 = 0.48GLY + 0.52MGLY + 0.77OPEN + 0.23XOPN + HO2 + RO2';
k(:,i) = 1.55e-13.*exp(350./T) .*2;
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'TO2';
fRO2(i)=fRO2(i)-1; fTO2(i)=fTO2(i)-1; fGLY(i)=fGLY(i)+0.48; fMGLY(i)=fMGLY(i)+0.52; 
fOPEN(i)=fOPEN(i)+0.77; fXOPN(i)=fXOPN(i)+0.23; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%156
i=i+1;
Rnames{i} = 'XYL + OH = 0.155CRES + 0.544XLO2 + 0.602RO2 + 0.244XOPN + 0.244OH + 0.058XO2H + 0.155HO2';
k(:,i) = 1.850E-11;
Gstr{i,1} = 'XYL'; Gstr{i,2} = 'OH';
fXYL(i)=fXYL(i)-1; fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)+0.155; fXLO2(i)=fXLO2(i)+0.544; 
fRO2(i)=fRO2(i)+0.602; fXOPN(i)=fXOPN(i)+0.244; fOH(i)=fOH(i)+0.244; fXO2H(i)=fXO2H(i)+0.058; 
fHO2(i)=fHO2(i)+0.155;

%157
i=i+1;
Rnames{i} = 'NO + XLO2 = 0.86NO2 + 0.14NTR2 + 0.221GLY + 0.675MGLY + 0.3OPEN + 0.56XOPN + 0.86HO2';
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'XLO2';
fNO(i)=fNO(i)-1; fXLO2(i)=fXLO2(i)-1; fNO2(i)=fNO2(i)+0.86; fNTR2(i)=fNTR2(i)+0.14; 
fGLY(i)=fGLY(i)+0.221; fMGLY(i)=fMGLY(i)+0.675; fOPEN(i)=fOPEN(i)+0.3; fXOPN(i)=fXOPN(i)+0.56; 
fHO2(i)=fHO2(i)+0.86;

%158
i=i+1;
Rnames{i} = 'HO2 + XLO2 = ARPX ';
k(:,i) = 2.50e-13.*exp(1300./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'XLO2';
fHO2(i)=fHO2(i)-1; fXLO2(i)=fXLO2(i)-1; fARPX(i)=fARPX(i)+1;

%159
i=i+1;
Rnames{i} = 'RO2 + XLO2 = 0.26GLY + 0.77MGLY + 0.35OPEN + 0.65XOPN + HO2 + RO2';
k(:,i) = 1.55e-13.*exp(350./T) .*2;
Gstr{i,1} = 'RO2'; Gstr{i,2} = 'XLO2';
fRO2(i)=fRO2(i)-1; fXLO2(i)=fXLO2(i)-1; fGLY(i)=fGLY(i)+0.26; fMGLY(i)=fMGLY(i)+0.77; 
fOPEN(i)=fOPEN(i)+0.35; fXOPN(i)=fXOPN(i)+0.65; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%160
i=i+1;
Rnames{i} = 'OPEN = OPO3 + HO2 + CO';
k(:,i) = 0.03.*JNO2;
Gstr{i,1} = 'OPEN';
fOPEN(i)=fOPEN(i)-1; fOPO3(i)=fOPO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1;

%161
i=i+1;
Rnames{i} = 'OPEN + OH = 0.6OPO3 + 0.4XO2H + 0.4RO2 + 0.4GLY';
k(:,i) = 4.400E-11;
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'OH';
fOPEN(i)=fOPEN(i)-1; fOH(i)=fOH(i)-1; fOPO3(i)=fOPO3(i)+0.6; fXO2H(i)=fXO2H(i)+0.4; 
fRO2(i)=fRO2(i)+0.4; fGLY(i)=fGLY(i)+0.4;

%162
i=i+1;
Rnames{i} = 'OPEN + O3 = 1.4GLY + 0.24MGLY + 0.5OH + 0.12C2O3 + 0.08FORM + 0.02ALD2 + 1.98CO + 0.56HO2';
k(:,i) = 5.40E-17.*exp(-500./T);
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'O3';
fOPEN(i)=fOPEN(i)-1; fO3(i)=fO3(i)-1; fGLY(i)=fGLY(i)+1.4; fMGLY(i)=fMGLY(i)+0.24; 
fOH(i)=fOH(i)+0.5; fC2O3(i)=fC2O3(i)+0.12; fFORM(i)=fFORM(i)+0.08; fALD2(i)=fALD2(i)+0.02; 
fCO(i)=fCO(i)+1.98; fHO2(i)=fHO2(i)+0.56;

%163
i=i+1;
Rnames{i} = 'OPEN + NO3 = OPO3 + HNO3';
k(:,i) = 3.800E-12;
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'NO3';
fOPEN(i)=fOPEN(i)-1; fNO3(i)=fNO3(i)-1; fOPO3(i)=fOPO3(i)+1; fHNO3(i)=fHNO3(i)+1;

%164
i=i+1;
Rnames{i} = 'XOPN = 0.4GLY + XO2H + 0.7HO2 + 0.7CO + 0.3C2O3';
k(:,i) = 0.08.*JNO2; 
Gstr{i,1} = 'XOPN';
fXOPN(i)=fXOPN(i)-1; fGLY(i)=fGLY(i)+0.4; fXO2H(i)=fXO2H(i)+1; fHO2(i)=fHO2(i)+0.7; 
fCO(i)=fCO(i)+0.7; fC2O3(i)=fC2O3(i)+0.3; 


%165
i=i+1;
Rnames{i} = 'XOPN + OH = MGLY + 0.4GLY + 2XO2H + 2RO2';
k(:,i) = 9.000E-11;
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'OH';
fXOPN(i)=fXOPN(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fGLY(i)=fGLY(i)+0.4; 
fXO2H(i)=fXO2H(i)+2; fRO2(i)=fRO2(i)+2;

%166
i=i+1;
Rnames{i} = 'XOPN + O3 = 1.2MGLY + 0.5OH + 0.6C2O3 + 0.1ALD2 + 0.5CO + 0.3XO2H + 0.3RO2';
k(:,i) = 1.08E-16.*exp(-500./T);
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'O3';
fXOPN(i)=fXOPN(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1.2; fOH(i)=fOH(i)+0.5; 
fC2O3(i)=fC2O3(i)+0.6; fALD2(i)=fALD2(i)+0.1; fCO(i)=fCO(i)+0.5; fXO2H(i)=fXO2H(i)+0.3; 
fRO2(i)=fRO2(i)+0.3;

%167
i=i+1;
Rnames{i} = 'XOPN + NO3 = 0.5NO2 + 0.5NTR2 + 0.45XO2H + 0.45XO2 + 0.1XO2N + RO2 + 0.25OPEN + 0.25MGLY'; 
k(:,i) = 3.000E-12;
Gstr{i,1} = 'XOPN'; Gstr{i,2} = 'NO3';
fXOPN(i)=fXOPN(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR2(i)=fNTR2(i)+0.5; 
fXO2H(i)=fXO2H(i)+0.45; fXO2(i)=fXO2(i)+0.45; fXO2N(i)=fXO2N(i)+0.1; fRO2(i)=fRO2(i)+1; 
fOPEN(i)=fOPEN(i)+0.25; fMGLY(i)=fMGLY(i)+0.25;

%168
i=i+1;
Rnames{i} = 'CRES + OH =  0.025GLY + 0.025OPEN + HO2 + 0.2CRO + 0.732CAT1 + 0.02XO2N + 0.02RO2';
k(:,i) = 1.70e-12.*exp(950./T);
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'OH';
fCRES(i)=fCRES(i)-1; fOH(i)=fOH(i)-1; fGLY(i)=fGLY(i)+0.025; fOPEN(i)=fOPEN(i)+0.025;
fHO2(i)=fHO2(i)+1; fCRO(i)=fCRO(i)+0.2; fCAT1(i)=fCAT1(i)+0.732; fXO2N(i)=fXO2N(i)+0.02; 
fRO2(i)=fRO2(i)+0.02;

%169
i=i+1;
Rnames{i} = 'CRES + NO3 = 0.3CRO + HNO3 + 0.48XO2 + 0.12XO2H + 0.24GLY + 0.24MGLY + 0.48OPO3 + 0.1XO2N + 0.7RO2';
k(:,i) = 1.400E-11;
Gstr{i,1} = 'CRES'; Gstr{i,2} = 'NO3';
fCRES(i)=fCRES(i)-1; fNO3(i)=fNO3(i)-1; fCRO(i)=fCRO(i)+0.3; fHNO3(i)=fHNO3(i)+1; 
fXO2(i)=fXO2(i)+0.48; fXO2H(i)=fXO2H(i)+0.12; fGLY(i)=fGLY(i)+0.24; fMGLY(i)=fMGLY(i)+0.24; 
fOPO3(i)=fOPO3(i)+0.48; fXO2N(i)=fXO2N(i)+0.1; fRO2(i)=fRO2(i)+0.7;

%170
i=i+1;
Rnames{i} = 'CRO + NO2 = CRON';
k(:,i) = 2.100E-12;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'NO2';
fCRO(i)=fCRO(i)-1; fNO2(i)=fNO2(i)-1; fCRON(i)=fCRON(i)+1;

%171
i=i+1;
Rnames{i} = 'CRO + HO2 = CRES';
k(:,i) = 5.5E-12;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'HO2';
fCRO(i)=fCRO(i)-1; fHO2(i)=fHO2(i)-1; fCRES(i)=fCRES(i)+1;

%172
i=i+1;
Rnames{i} = 'CRON + OH = NTR2 + 0.5CRO';
k(:,i) = 1.530E-12;
Gstr{i,1} = 'CRON'; Gstr{i,2} = 'OH';
fCRON(i)=fCRON(i)-1; fOH(i)=fOH(i)-1; fNTR2(i)=fNTR2(i)+1; fCRO(i)=fCRO(i)+0.5;

%173
i=i+1;
Rnames{i} = 'CRON + NO3 = NTR2 + 0.5CRO + HNO3';
k(:,i) = 3.800E-12;
Gstr{i,1} = 'CRON'; Gstr{i,2} = 'NO3';
fCRON(i)=fCRON(i)-1; fNO3(i)=fNO3(i)-1; fNTR2(i)=fNTR2(i)+1; fCRO(i)=fCRO(i)+0.5; fHNO3(i)=fHNO3(i)+1;

%174
i=i+1;
Rnames{i} = 'CRON = HONO + HO2 + FORM + OPEN';
k(:,i) = JNO2 .* 0.015 ;
Gstr{i,1} = 'CRON';
fCRON(i)=fCRON(i)-1; fHONO(i)=fHONO(i)+1; fHO2(i)=fHO2(i)+1; fFORM(i)=fFORM(i)+1; fOPEN(i)=fOPEN(i)+1;

%175
i=i+1;
Rnames{i} = 'CAT1 + OH = 0.14FORM + 0.2HO2 + 0.5CRO';
k(:,i) = 5.000E-11;
Gstr{i,1} = 'CAT1'; Gstr{i,2} = 'OH';
fCAT1(i)=fCAT1(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+0.14; fHO2(i)=fHO2(i)+0.2; fCRO(i)=fCRO(i)+0.5;

%176
i=i+1;
Rnames{i} = 'CAT1 + NO3 = CRO + HNO3';
k(:,i) = 1.700E-10;
Gstr{i,1} = 'CAT1'; Gstr{i,2} = 'NO3';
fCAT1(i)=fCAT1(i)-1; fNO3(i)=fNO3(i)-1; fCRO(i)=fCRO(i)+1; fHNO3(i)=fHNO3(i)+1;

%177
i=i+1;
Rnames{i} = 'ARPX + OH = 0.5OH + 0.2BZO2 + 0.15TO2 + 0.15XLO2 + 0.5RO2';
k(:,i) = 8.00E-11;
Gstr{i,1} = 'ARPX'; Gstr{i,2} = 'OH';
fARPX(i)=fARPX(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.5; fBZO2(i)=fBZO2(i)+0.2;
fTO2(i)=fTO2(i)+0.15; fXLO2(i)=fXLO2(i)+0.15; fRO2(i)=fRO2(i)+0.5;

%178
i=i+1;
Rnames{i} = 'OH + ISOP = ISO2 + RO2';
k(:,i) = 2.7e-11.*exp(390./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP';
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; fISO2(i)=fISO2(i)+1; fRO2(i)=fRO2(i)+1;

%179
i=i+1;
Rnames{i} = 'ISO2 + NO = 0.9NO2 + 0.1INTR + 0.9FORM + 0.9ISPD + 0.9HO2';
k(:,i) = 2.7e-12.*exp(360./T);
Gstr{i,1} = 'ISO2'; Gstr{i,2} = 'NO';
fNO(i)=fNO(i)-1; fISO2(i)=fISO2(i)-1; fNO2(i)=fNO2(i)+0.9; fINTR(i)=fINTR(i)+0.1; 
fFORM(i)=fFORM(i)+0.9; fISPD(i)=fISPD(i)+0.9; fHO2(i)=fHO2(i)+0.9;

%180
i=i+1;
Rnames{i} = 'ISO2 + HO2 = 0.94ISPX + 0.06FORM + 0.06ISPD + 0.06OH + 0.06HO2';
k(:,i) = 2.12e-13.*exp(1300./T);
Gstr{i,1} = 'ISO2'; Gstr{i,2} = 'HO2';
fHO2(i)=fHO2(i)-1; fISO2(i)=fISO2(i)-1; fISPX(i)=fISPX(i)+0.94; fFORM(i)=fFORM(i)+0.06;
fISPD(i)=fISPD(i)+0.06; fOH(i)=fOH(i)+0.06; fHO2(i)=fHO2(i)+0.06;

%181
i=i+1;
Rnames{i} = 'ISO2 + RO2 = ISPD + RO2';
k(:,i) = 1.55E-13.*exp(350./T);
Gstr{i,1} = 'ISO2'; Gstr{i,2} = 'RO2';
fRO2(i)=fRO2(i)-1; fISO2(i)=fISO2(i)-1;fISPD(i)=fISPD(i)+1; fRO2(i)=fRO2(i)+1;

%182
i=i+1;
Rnames{i} = 'ISO2 = 0.4HPLD + 0.1ISPD + 0.1GLY + 0.1GLYD + CO + 1.7OH + 0.35HO2';
k(:,i) = 3.30E+9.*exp(-8300./T);
Gstr{i,1} = 'ISO2';
fISO2(i)=fISO2(i)-1; fHPLD(i)=fHPLD(i)+0.4; fISPD(i)=fISPD(i)+0.1; fGLY(i)=fGLY(i)+0.1;
fGLYD(i)=fGLYD(i)+0.1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1.7; fHO2(i)=fHO2(i)+0.35;

%183
i=i+1;
Rnames{i} = 'ISOP + O3 = 0.8FORM + 0.5ISPD + 0.58FACD + 0.5CO + 0.28OH + 0.5HO2 + 0.4MEO2 + 0.4RO2';
k(:,i) = 1.030e-14.*exp(-1995./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'O3';
fISOP(i)=fISOP(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+0.8; fISPD(i)=fISPD(i)+0.5; 
fFACD(i)=fFACD(i)+0.58; fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+0.28; fHO2(i)=fHO2(i)+0.5; 
fMEO2(i)=fMEO2(i)+0.4; fRO2(i)=fRO2(i)+0.5; 

%184
i=i+1;
Rnames{i} = 'ISOP + NO3 = 0.25NO2 + 0.75NTR2 + 0.25FORM + 0.25ISPD + 0.25OH + 0.25XO2 + 0.25RO2';
k(:,i) = 2.95e-12.*exp(-450./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3';
fISOP(i)=fISOP(i)-1; fNO3(i)= -1; fNO2(i)=fNO2(i)+0.25; fNTR2(i)=fNTR2(i)+0.75; 
fFORM(i)=fFORM(i)+0.25; fISPD(i)=fISPD(i)+0.25; fXO2(i)=fXO2(i)+0.25; 
fRO2(i)=fRO2(i)+0.25; 

%185
i=i+1;
Rnames{i} = 'ISPD + OH = 0.4MGLY + 0.2GLYD + 0.1FORM + CO + 0.1OH + 0.1HO2 + 0.1OPO3 + 0.4C2O3';
k(:,i) = 7.00e-12.*exp(430./T);
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH';
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+0.4; fGLYD(i)=fGLYD(i)+0.2;  
fFORM(i)=fFORM(i)+0.1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+0.1; fOPO3(i)=fOPO3(i)+0.1;  
fC2O3(i)=fC2O3(i)+0.4;

%186
i=i+1;
Rnames{i} = 'ISPD + NO3 = 0.9NTR2 + 0.1HNO3 + 0.1CO + 0.1C2O3';
k(:,i) = 3.94e-14.*exp(475./T);
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3';
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fNTR2(i)=fNTR2(i)+0.9; fHNO3(i)=fHNO3(i)+0.1;
fCO(i)=fCO(i)+0.1; fC2O3(i)=fC2O3(i)+0.1;

%187
i=i+1;
Rnames{i} = 'ISPD = 0.8ISPD + 0.15MGLY + 0.1GLYD + 0.1FORM + 0.2OH';
k(:,i) = JACRO .* (0.0036./0.0065); %QY scaling based on CB6 documentation (Yarwood 2010) and JPL 2016
Gstr{i,1} = 'ISPD';
fISPD(i)=fISPD(i)-1; fISPD(i)=fISPD(i)+0.8; fMGLY(i)=fMGLY(i)+0.15; fGLYD(i)=fGLYD(i)+0.1; 
fFORM(i)=fFORM(i)+0.1; fOH(i)=fOH(i)+0.2;


%188
i=i+1;
Rnames{i} = 'ISPX + OH = 0.6EPOX + 0.2MGLY + 0.2FORM + 0.2ROOH + OH + 0.5HO2';
k(:,i) = 2.8e-11.*exp(370./T);
Gstr{i,1} = 'ISPX'; Gstr{i,2} = 'OH';
fISPX(i)=fISPX(i)-1; fOH(i)=fOH(i)-1; fEPOX(i)=fEPOX(i)+0.6; fMGLY(i)=fMGLY(i)+0.2;
fFORM(i)=fFORM(i)+0.2; fROOH(i)=fROOH(i)+0.2; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+0.5;

%189
i=i+1;
Rnames{i} = 'HPLD = 0.6HPLD + 0.3ISPD + 1.65OH + 0.2HO2 + 0.8CO';
k(:,i) = JNO2.*0.07;
Gstr{i,1} = 'HPLD';
fHPLD(i)=fHPLD(i)-1; fHPLD(i)=fHPLD(i)+0.6; fISPD(i)=fISPD(i)+0.3; fOH(i)=fOH(i)+1.65;
fHO2(i)=fHO2(i)+0.2; fCO(i)=fCO(i)+0.8;

%190
i=i+1;
Rnames{i} = 'HPLD + OH = ISPD + 0.2FORM + 0.5CO + 1.1OH';
k(:,i) = 1.17e-11.*exp(450./T);
Gstr{i,1} = 'HPLD'; Gstr{i,2} = 'OH';
fHPLD(i)=fHPLD(i)-1; fOH(i)=fOH(i)-1; fISPD(i)=fISPD(i)+1; fFORM(i)=fFORM(i)+0.2;
fCO(i)=fCO(i)+0.5; fOH(i)=fOH(i)+1.1;

%191
i=i+1;
Rnames{i} = 'EPOX + OH = 0.2ISPD + 0.2HO2 + 0.8EPX2 + 0.8RO2';
k(:,i) = 5.438e-11.*exp(-450./T);
Gstr{i,1} = 'EPOX'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fEPOX(i)=fEPOX(i)-1; fISPD(i)=fISPD(i)+0.2; 
fHO2(i)=fHO2(i)+0.2; fEPX2(i)=fEPX2(i)+0.8; fRO2(i)=fRO2(i)+0.8;

%192
i=i+1;
Rnames{i} = 'EPX2 + NO = 0.98NO2 + 0.02NTR2 + 0.7MGLY + 0.7GLYD + 0.2GLY + 0.2CO + 0.2ISPD + 0.7OH + HO2';
k(:,i) = 2.70e-12.*exp(360./T);
Gstr{i,1} = 'EPX2'; Gstr{i,2} = 'NO';
fNO(i)=fNO(i)-1; fEPX2(i)=fEPX2(i)-1; fNO2(i)=fNO2(i)+0.98; fNTR2(i)=fNTR2(i)+0.02; 
fMGLY(i)=fMGLY(i)+0.7; fGLYD(i)=fGLYD(i)+0.7; fGLY(i)=fGLY(i)+0.2; fCO(i)=fCO(i)+0.2;
fISPD(i)=fISPD(i)+0.2; fOH(i)=fOH(i)+1.7; fHO2(i)=fHO2(i)+1;

%193
i=i+1;
Rnames{i} = 'EPX2 + HO2 = 0.3ISPD + 0.3MGLY + 0.1GLY + 0.2GLYD + 1.5FORM + ROOH + 0.2CO + 1.7OH + HO2';
k(:,i) = 2.38e-13.*exp(1300./T);
Gstr{i,1} = 'EPX2' ; Gstr{i,2} = 'HO2';
fEPX2(i)=fEPX2(i)-1; fHO2(i)=fHO2(i)-1; fISPD(i)=fISPD(i)+0.3; fMGLY(i)=fMGLY(i)+0.3; 
fGLY(i)=fGLY(i)+0.1; fGLYD(i)=fGLYD(i)+0.2; fFORM(i)=fFORM(i)+1.5; fROOH(i)=fROOH(i)+1;
fCO(i)=fCO(i)+0.2; fOH(i)=fOH(i)+1.7; fHO2(i)=fHO2(i)+1;

%194
i=i+1;
Rnames{i} = 'EPX2 + RO2 = 0.6MGLY + 0.5GLY + 0.5FORM + 0.3GLYD + 0.1ISPD + 0.2CO + 0.85OH + HO2 + RO2';
k(:,i) = 1.55e-13.*exp(350./T) .*2;
Gstr{i,1} = 'EPX2'; Gstr{i,2} = 'RO2';
fRO2(i)=fRO2(i)-1; fEPX2(i)=fEPX2(i)-1; fMGLY(i)=fMGLY(i)+0.6; fGLY(i)=fGLY(i)+0.5; fFORM(i)=fFORM(i)+0.5; 
fGLYD(i)=fGLYD(i)+0.3; fCO(i)=fCO(i)+0.2; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+1; fRO2(i)=fRO2(i)+1;

%195
i=i+1;
Rnames{i} = 'INTR + OH = 0.5NO2 + 0.4NTR2 + 0.1INTR + 0.4ISPD + 0.1EPOX';
k(:,i) = 1.34e-11 .*exp(410./T);
Gstr{i,1} = 'INTR'; Gstr{i,2} = 'OH';
fINTR(i)=fINTR(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+0.5; fNTR2(i)=fNTR2(i)+0.4;
fINTR(i)=fINTR(i)+0.1; fISPD(i)=fISPD(i)+0.4; fEPOX(i)=fEPOX(i)+0.1;

%196
i=i+1;
Rnames{i} = 'APIN + OH = APO2';
k(:,i) = 1.00e-11 .*exp(300./T);
Gstr{i,1} = 'APIN'; Gstr{i,2} = 'OH';
fAPIN(i)=fAPIN(i)-1; fOH(i)=fOH(i)-1; fAPO2(i)=fAPO2(i)+1; 

%197
i=i+1;
Rnames{i} = 'APO2 + NO = 0.77NO2 + 0.23NTR2 +0.21FORM + 0.09ACET + 0.62ISPD + 0.77HO2 + 0.11ROOH + 0.19XO2N + 0.19RO2';
k(:,i) = 2.70e-12 .*exp(360./T);
Gstr{i,1} = 'APO2'; Gstr{i,2} = 'NO';
fAPO2(i)=fAPO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.77; fNTR2(i)=fNTR2(i)+0.23;
fFORM(i)=fFORM(i)+0.21; fACET(i)=fACET(i)+0.09; fISPD(i)=fISPD(i)+0.62; fHO2(i)=fHO2(i)+0.77;
fROOH(i)=fROOH(i)+0.11; fXO2N(i)=fXO2N(i)+0.19; fRO2(i)=fRO2(i)+0.19;

%198
i=i+1;
Rnames{i} = 'APO2 + HO2 = 0.08FORM + 0.06ACET+ 0.35ISPD + 0.48HO2 + 0.35OH + 0.65ROOH';
k(:,i) = 2.60e-13 .*exp(1300./T);
Gstr{i,1} = 'APO2'; Gstr{i,2} = 'HO2';
fAPO2(i)=fAPO2(i)-1; fHO2(i)=fHO2(i)-1; fFORM(i)=fFORM(i)+0.08; fACET(i)=fACET(i)+0.06; 
fISPD(i)=fISPD(i)+0.35; fHO2(i)=fHO2(i)+0.48; fOH(i)=fOH(i)+0.35; fROOH(i)=fROOH(i)+0.65;

%199
i=i+1;
Rnames{i} = 'APO2 + RO2 = 0.06ACET + 0.87ISPD + 0.5HO2 + 0.13ROOH + RO2';
k(:,i) = 1.55e-13.*exp(350./T) .*2;
Gstr{i,1} = 'APO2'; Gstr{i,2} = 'RO2';
fAPO2(i)=fAPO2(i)-1; fRO2(i)=fRO2(i)-1; fACET(i)=fACET(i)+0.06; fISPD(i)=fISPD(i)+0.87; 
fHO2(i)=fHO2(i)+0.5; fROOH(i)=fROOH(i)+0.13; fRO2(i)=fRO2(i)+1;

%200
i=i+1;
Rnames{i} = 'APIN + O3 = 0.27FORM + 0.22ISPD + 0.22H2O2 + 0.17CO + 0.77OH + 0.17HO2 + 0.33XO2 + 0.07XO2N + 0.27OPO3 + 0.4RO2';
k(:,i) = 8.22e-16 .*exp(-640./T);
Gstr{i,1} = 'APIN'; Gstr{i,2} = 'O3';
fAPIN(i)=fAPIN(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+0.27; fISPD(i)=fISPD(i)+0.22; 
fH2O2(i)=fH2O2(i)+0.22; fCO(i)=fCO(i)+0.17; fOH(i)=fOH(i)+0.77; fHO2(i)=fHO2(i)+0.17;
fXO2(i)=fXO2(i)+0.33; fXO2N(i)=fXO2N(i)+0.07; fOPO3(i)=fOPO3(i)+0.27; fRO2(i)=fRO2(i)+0.4;

%201
i=i+1;
Rnames{i} = 'APIN + NO3 = 0.7NO2 + 0.3NTR2 + 0.7ISPD + 0.7OH + 0.7HO2';
k(:,i) = 1.20e-12 .*exp(490./T);
Gstr{i,1} = 'APIN'; Gstr{i,2} = 'NO3';
fAPIN(i)=fAPIN(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.7; fNTR2(i)=fNTR2(i)+0.3; 
fISPD(i)=fISPD(i)+0.7; fOH(i)=fOH(i)+0.7; fHO2(i)=fHO2(i)+0.7;

%202
i=i+1;
Rnames{i} = 'TERP + OH = TPFO2';
k(:,i) = 4.07E-11.*exp(350./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH';
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fTPO2(i)=fTPO2(i)+1;

%203
i=i+1;
Rnames{i} = 'TPO2 + NO = 0.75NO2 + 0.26NTR2 + 0.43FORM + 0.12ACET + 0.63ISPD + 0.75HO2 + 0.19XO2N + 0.19RO2';
k(:,i) = 2.7E-12.*exp(360./T);
Gstr{i,1} = 'TPO2'; Gstr{i,2} = 'NO';
fTPO2(i)=fTPO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.75; fNTR2(i)=fNTR2(i)+0.26; 
fFORM(i)=fFORM(i)+0.43; fACET(i)=fACET(i)+0.12; fISPD(i)=fISPD(i)+0.63; 
fHO2(i)=fHO2(i)+0.75; fXO2N(i)=fXO2N(i)+0.19; fRO2(i)=fRO2(i)+0.19;

%204
i=i+1;
Rnames{i} = 'TPO2 + HO2 =  0.04FORM + 0.01ACET + 0.07ISPD + 0.07HO2 + 0.07OH + 0.94ROOH';
k(:,i) = 2.6E-13.*exp(1300./T);
Gstr{i,1} = 'TPO2'; Gstr{i,2} = 'HO2';
fTPO2(i)=fTPO2(i)-1; fHO2(i)=fHO2(i)-1; fFORM(i)=fFORM(i)+0.04; fACET(i)=fACET(i)+0.01; 
fISPD(i)=fISPD(i)+0.07; fHO2(i)=fHO2(i)+0.07; fOH(i)=fOH(i)+0.07; 
fROOH(i)=fROOH(i)+0.94;

%205
i=i+1;
Rnames{i} = 'TPO2 + RO2 =  0.27FORM + 0.04ACET + ISPD + 0.5HO2 + RO2';
k(:,i) = 1.55E-13.*exp(350./T) .*2 ;
Gstr{i,1} = 'TPO2'; Gstr{i,2} = 'RO2';
fTPO2(i)=fTPO2(i)-1; fRO2(i)=fRO2(i)-1; fFORM(i)=fFORM(i)+0.27; fACET(i)=fACET(i)+0.04; 
fISPD(i)=fISPD(i); fHO2(i)=fHO2(i)+0.5; fRO2(i)=fRO2(i)+1;

%206
i=i+1;
Rnames{i} = 'TERP + O3 =  0.59FORM + 0.06ACET + 0.05HACT + 0.25ISPD + 0.24H2O2 + 0.47OH + 0.16HO2 + 0.04FACD + 0.06XO2 + 0.07XO2N + 0.25C2O3 + 0.4OPO3 + 0.13RO2';
k(:,i) = 4.46E-15.*exp(-960./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3';
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+0.59; fACET(i)=fACET(i)+0.06; 
fHACT(i)=fHACT(i)+0.05; fISPD(i)=fISPD(i)+0.25; fH2O2(i)=fH2O2(i)+0.24; fOH(i)=fOH(i)+0.47; 
fHO2(i)=fHO2(i)+0.16; fFACD(i)=fFACD(i)+0.04; fXO2(i)=fXO2(i)+0.06; fC2O3(i)=fC2O3(i)+0.25;
fOPO3(i)=fOPO3(i)+0.4; fRO2(i)=fRO2(i)+0.13;

%207
i=i+1;
Rnames{i} = 'TERP + NO3 = 0.3NO2 + 0.7NTR2 + 0.12ACET + 0.3ISPD + 0.48OH + 0.3HO2';
k(:,i) = 7.0E-12;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3';
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.3; fNTR2(i)=fNTR2(i)+0.7; 
fACET(i)=fACET(i)+0.12; fISPD(i)=fISPD(i)+0.3; fOH(i)=fOH(i)+0.48; fHO2(i)=fHO2(i)+0.3;

%208
i=i+1;
Rnames{i} = 'SQT + OH = SQO2';
k(:,i) = 2.0E-10;
Gstr{i,1} = 'SQT'; Gstr{i,2} = 'OH';
fSQT(i)=fSQT(i)-1; fOH(i)=fOH(i)-1; fSQO2(i)=fSQO2(i)+1;

%209
i=i+1;
Rnames{i} = 'SQO2 + NO = 0.6NO2 + 0.4NTR2 + 0.6ISPD + 0.6HO2 + 0.18XO2N + 0.18RO2';
k(:,i) = 2.7E-12 .*exp(360./T);
Gstr{i,1} = 'SQO2'; Gstr{i,2} = 'NO';
fSQO2(i)=fSQO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.6; fNTR2(i)=fNTR2(i)+0.4; 
fISPD(i)=fISPD(i)+0.6; fXO2N(i)=fXO2N(i)+0.18; fRO2(i)=fRO2(i)+0.18;

%210
i=i+1;
Rnames{i} = 'SQO2 + HO2 = 0.1ISPD + 0.1HO2 + 0.1OH + 0.9ROOH';
k(:,i) = 2.6E-13 .*exp(1300./T);
Gstr{i,1} = 'SQO2'; Gstr{i,2} = 'HO2';
fSQO2(i)=fSQO2(i)-1; fHO2(i)=fHO2(i)-1; fISPD(i)=fISPD(i)+0.1; fHO2(i)=fHO2(i)+0.1; 
fOH(i)=fOH(i)+0.1; fROOH(i)=fROOH(i)+0.9;

%211
i=i+1;
Rnames{i} = 'SQO2 + RO2 = ISPD + 0.5HO2 + RO2';
k(:,i) = 1.55E-13 .*exp(1300./T) .*2 ;
Gstr{i,1} = 'SQO2'; Gstr{i,2} = 'RO2';
fSQO2(i)=fSQO2(i)-1; fRO2(i)=fRO2(i)-1; fISPD(i)=fISPD(i)+1; fHO2(i)=fHO2(i)+0.5; 
fRO2(i)=fRO2(i)+1;

%212
i=i+1;
Rnames{i} = 'SQT + O3 = 0.08FORM + 0.87ISPD + 0.17H2O2 + 0.08OH + 0.08HO2 + 0.26XO2N + 0.26RO2';
k(:,i) = 1.2E-14;
Gstr{i,1} = 'SQT'; Gstr{i,2} = 'O3';
fSQT(i)=fSQT(i)-1; fO3(i)=fO3(i)-1; fFORM(i)=fFORM(i)+0.08; fISPD(i)=fISPD(i)+0.87; 
fH2O2(i)=fH2O2(i)+0.17; fOH(i)=fOH(i)+0.08; fHO2(i)=fHO2(i)+0.08; fXO2N(i)=fXO2N(i)+0.26;
fRO2(i)=fRO2(i)+0.26;

%213
i=i+1;
Rnames{i} = 'SQT + NO3 = 0.24NO2 + 0.76NTR2 + 0.24ISPD + 0.47OH';
k(:,i) = 1.9E-11;
Gstr{i,1} = 'SQT'; Gstr{i,2} = 'NO3';
fSQT(i)=fSQT(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+0.24; fNTR2(i)=fNTR2(i)+0.76; 
fISPD(i)=fISPD(i)+0.24; fOH(i)=fOH(i)+0.47;

%214
i=i+1;
Rnames{i} = 'I2 = 2I';
k(:,i) = JNO3_NO .* 0.922;
Gstr{i,1} = 'I2';
fI2(i)=fI2(i)-1; fI(i)=fI(i)-2;

%215
i=i+1;
Rnames{i} = 'HOI = I + OH';
k(:,i) = JNO2.*10.1;
Gstr{i,1} = 'HOI';
fHOI(i)=fHOI(i)-1; fI(i)=fI(i)+1; fOH(i)=fOH(i)+1;

%216
i=i+1;
Rnames{i} = 'I + O3 = IO';
k(:,i) = 2.1E-11 .*exp(-830./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'O3';
fI(i)=fI(i)-1; fO3(i)=fO3(i)-1; fIO(i)=fIO(i)+1;

%217
i=i+1;
Rnames{i} = 'IO = I + O';
k(:,i) = JNO2.*18.7;
Gstr{i,1} = 'IO';
fIO(i)=fIO(i)-1; fI(i)=fI(i)+1; fO(i)=fO(i)+1;

%218
i=i+1;
Rnames{i} = 'IO + IO = 0.4I + 0.4OIO + 0.6I2O2';
k(:,i) = 5.4E-11 .*exp(180./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'IO';
fIO(i)=fIO(i)-1; fIO(i)=fIO(i)-1; fI(i)=fI(i)+0.4; fOIO(i)=fOIO(i)+0.4; fI2O2(i)=fI2O2(i)+0.6;

%219
i=i+1;
Rnames{i} = 'IO + HO2 = HOI';
k(:,i) = 1.4E-11 .*exp(540./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'HO2';
fIO(i)=fIO(i)-1; fHO2(i)=fHO2(i)-1; fHOI(i)=fHOI(i)+1; 

%220
i=i+1;
Rnames{i} = 'IO + NO = I + NO2';
k(:,i) = 7.15E-12 .*exp(300./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO';
fIO(i)=fIO(i)-1; fNO(i)=fNO(i)-1; fI(i)=fI(i)+1; fNO2(i)=fNO2(i)+1;

%221
i=i+1;
Rnames{i} = 'IO + NO2 = INO3';
k(:,i) = K_IO_NO2;
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO2';
fIO(i)=fIO(i)-1; fNO2(i)=fNO2(i)-1; fINO3(i)=fINO3(i)+1;

%222
i=i+1;
Rnames{i} = 'OIO = I';
k(:,i) =  JNO3_NO.*0.908 ;
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'I';
fOIO(i)=fOIO(i)-1; fI(i)=fI(i)-1; 

%223
i=i+1;
Rnames{i} = 'OIO + OH = 0.5IXOY';
k(:,i) = K_OIO_OH;
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'OH';
fOIO(i)=fOIO(i)-1; fOH(i)=fOH(i)-1; fIXOY(i)=fIXOY(i)+0.5;

%224
i=i+1;
Rnames{i} = 'OIO + IO = IXOY';
k(:,i) = 1E-10;
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'IO';
fOIO(i)=fOIO(i)-1; fIO(i)=fIO(i)-1; fIXOY(i)=fIXOY(i)+1;

%225
i=i+1;
Rnames{i} = 'OIO + NO = IO + NO2';
k(:,i) = 1E-12 .*exp(542./T);
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'NO';
fOIO(i)=fOIO(i)-1; fNO(i)=fNO(i)-1; fIO(i)=fIO(i)+1; fNO2(i)=fNO2(i)+1;

%226
i=i+1;
Rnames{i} = 'I2O2 = I + OIO';
k(:,i) = 1;
Gstr{i,1} = 'I2O2';
fI2O2(i)=fI2O2(i)-1; fI(i)=fI(i)+1; fOIO(i)=fOIO(i)+1;

%227
i=i+1;
Rnames{i} = 'I2O2 = IXOY';
k(:,i) = 3;
Gstr{i,1} = 'I2O2';
fI2O2(i)=fI2O2(i)-1; fIXOY(i)=fIXOY(i)+1;

%228
i=i+1;
Rnames{i} = 'INO3 = I + NO3';
k(:,i) = JHCHO_R.*463  ;
Gstr{i,1} = 'INO3';
fINO3(i)=fINO3(i)-1; fI(i)=fI(i)+1; fNO3(i)=fNO3(i)+1;

%229
i=i+1;
Rnames{i} = 'INO3 + H2O = HOI + HNO3';
k(:,i) = 2.5e-22 .*H2O;
Gstr{i,1} = 'INO3';
fINO3(i)=fINO3(i)-1; fHOI(i)=fHOI(i)+1; fHNO3(i)=fHNO3(i)+1;


% END OF REACTION LIST


