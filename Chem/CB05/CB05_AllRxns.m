% CB05_AllRxns.m
% generated from CB05_AllRxns.txt
% # of species = 53
% # of reactions = 156
% For more information, please see CB05 Final Report (Yarwood et al.)
% or CAMx User's Guide, Appendix C.
% NOTE: CB05 species "O" renamed "O3P"
%
% 20150618 MM   First build.
% 20160131 GMW  Checked against documentation, condensed multi-product reactions.

SpeciesToAdd = {...
'NO'; 'NO2'; 'NO3'; 'N2O5'; 'HNO3'; 'HONO'; 'PNA'; 'O3P'; 'O1D'; 'O3'; ...
'OH'; 'HO2'; 'H2'; 'CO'; 'CH4'; 'MEO2'; 'FORM'; 'NTR'; 'ALD2'; 'ALDX'; ...
'PAR'; 'ROOH'; 'XO2'; 'MEPX'; 'MEOH'; 'C2O3'; 'CXO3'; 'PAN'; 'PANX'; 'PACD'; ...
'AACD'; 'FACD'; 'XO2N'; 'ROR'; 'ETH'; 'OLE'; 'IOLE'; 'ISOP'; 'ISPD'; ...
'MGLY'; 'TOL'; 'CRES'; 'TO2'; 'OPEN'; 'CRO'; 'XYL'; 'TERP'; 'ETOH'; ...
'ETHA'; 'H2O2'; 'HCO3'; 'SO2'; 'SULF';};

AddSpecies 

i=i+1; %R1
Rnames{i} = 'NO2 = NO + O3P';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1; %R2
Rnames{i} = 'O3P = O3';
k(:,i) = 6.00e-34.*((T./300).^-2.4).*M.^2.*0.21   ;
Gstr{i,1} = 'O3P'; 
fO3P(i)=fO3P(i)-1; fO3(i)=fO3(i)+1; 

i=i+1; %R3
Rnames{i} = 'O3 + NO = NO2';
k(:,i) = 3.0e-12.*exp(-1500./T)    ;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R4
Rnames{i} = 'O3P + NO2 = NO';
k(:,i) = 5.6e-12.*exp(180./T)       ;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2';
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1;

i=i+1; %R5
Rnames{i} = 'O3P + NO2 = NO3';
k(:,i) = K_O3P_NO2;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO2'; 
fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %R6
Rnames{i} = 'O3P + NO =  NO2';
k(:,i) = K_O3P_NO;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'NO'; 
fO3P(i)=fO3P(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R7
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.2E-13.*exp(-2450./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1; %R8
Rnames{i} = 'O3 = O3P';
k(:,i) = JO3P;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO3P(i)=fO3P(i)+1; 

i=i+1; %R9
Rnames{i} = 'O3 = O1D';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1; %R10
Rnames{i} = 'O1D = O3P';
k(:,i) = 2.1e-11.*exp(102./T).*M;
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fO3P(i)=fO3P(i)+1;

i=i+1; %R11
Rnames{i} = 'O1D = OH + OH ';
k(:,i) = 2.2e-10.*H2O   ;
Gstr{i,1} = 'O1D';
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+2;

i=i+1; %R12
Rnames{i} = 'O3 + OH = HO2 ';
k(:,i) = 1.7e-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R13
Rnames{i} = 'O3 + HO2 = OH ';
k(:,i) = 1.0e-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;

i=i+1; %R14
Rnames{i} = 'NO3 = NO';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1; %R15
Rnames{i} = 'NO3 = NO2 + O3P';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO3P(i)=fO3P(i)+1; 

i=i+1; %R16
Rnames{i} = 'NO3 + NO = NO2 + NO2';
k(:,i) = 1.5e-11.*exp(170./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2;

i=i+1; %R17
Rnames{i} = 'NO3 + NO2 = NO + NO2';
k(:,i) = 4.5e-14.*exp(-1260./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R18
Rnames{i} = 'NO3 + NO2 = N2O5 ';
k(:,i) = K_NO3_NO2;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO2'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1; %R19
Rnames{i} = 'N2O5 = HNO3 + HNO3';
k(:,i) = 2.5e-22.*H2O;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2;

i=i+1; %R20
Rnames{i} = 'N2O5 = HNO3 + HNO3';
k(:,i) = 1.8e-39.*H2O.^2;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2; 

i=i+1; %R21
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = K_N2O5;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %R22
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3E-39.*exp(530./T).*0.21.*M  ;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-2; fNO2(i)=fNO2(i)+2; 

i=i+1; %R23
Rnames{i} = 'NO + NO2 = HONO + HONO ';
k(:,i) = 5.0e-40.*H2O       ;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO2'; 
fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)-1; fHONO(i)=fHONO(i)+2;

i=i+1; %R24
Rnames{i} = 'OH + NO = HONO ';
k(:,i) = K_OH_NO       ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1; %R25
Rnames{i} = 'HONO = OH + NO ';
k(:,i) = JHONO       ;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1; %R26
Rnames{i} = 'OH + HONO = NO2 ';
k(:,i) = 1.8e-11.*exp(-390./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R27
Rnames{i} = 'HONO + HONO = NO + NO2 ';
k(:,i) = 1.0e-20       ;
Gstr{i,1} = 'HONO'; Gstr{i,2} = 'HONO'; 
fHONO(i)=fHONO(i)-2; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %R28
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R29
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1;

i=i+1; %R30
Rnames{i} = 'HO2 + NO = OH + NO2 ';
k(:,i) = 3.5e-12.*exp(250./T)   ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R31
Rnames{i} = 'HO2 + NO2 = PNA ';
k(:,i) = K_HO2_NO2           ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fPNA(i)=fPNA(i)+1; 

i=i+1; %R32
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = K_PNA  ;
Gstr{i,1} = 'PNA'; 
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R33
Rnames{i} = 'OH + PNA = NO2';
k(:,i) = 1.3e-12.*exp(380./T)   ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PNA'; 
fOH(i)=fOH(i)-1; fPNA(i)=fPNA(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R34
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.3e-13.*exp(600./T)+1.7e-33.*exp(1000./T).*M;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1; 

i=i+1; %R35
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = (3.22e-34.*exp(2800./T)+2.38e-54.*exp(3200./T).*M).*H2O;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-2; fH2O2(i)=fH2O2(i)+1; 

i=i+1; %R36
Rnames{i} = 'H2O2 = OH + OH ';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+2; 

i=i+1; %R37
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R38
Rnames{i} = 'O1D + H2 = OH + HO2';
k(:,i) = 1.1E-10   ;
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H2'; 
fO1D(i)=fO1D(i)-1; fH2(i)=fH2(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R39
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 5.5E-12.*exp(-2000./T) ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R40
Rnames{i} = 'OH + O3P = HO2';
k(:,i) = 2.2E-11.*exp(120./T)   ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3P'; 
fOH(i)=fOH(i)-1; fO3P(i)=fO3P(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R41
Rnames{i} = 'OH + OH = O3P';
k(:,i) = 4.2E-12.*exp(-240./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-2; fO3P(i)=fO3P(i)+1; 

i=i+1; %R42
Rnames{i} = 'OH + OH = H2O2';
k(:,i) = K_OH_OH  ;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-2; fH2O2(i)=fH2O2(i)+1;

i=i+1; %R43
Rnames{i} = 'OH + HO2 = ';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1; %R44
Rnames{i} = 'HO2 + O3P = OH';
k(:,i) = 3.0E-11.*exp(200./T)   ;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3P'; 
fHO2(i)=fHO2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; 

i=i+1; %R45
Rnames{i} = 'H2O2 + O3P = OH + HO2';
k(:,i) = 1.4E-12.*exp(-2000./T)   ;
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'O3P'; 
fH2O2(i)=fH2O2(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %R46
Rnames{i} = 'NO3 + O3P = NO2';
k(:,i) = 1.0E-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3P'; 
fNO3(i)=fNO3(i)-1; fO3P(i)=fO3P(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R47
Rnames{i} = 'NO3 + OH = NO2 + HO2';
k(:,i) = 2.2e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OH'; 
fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R48
Rnames{i} = 'NO3 + HO2 = HNO3';
k(:,i) = 3.5e-12;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HO2'; 
fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R49
Rnames{i} = 'NO3 + O3 = NO2';
k(:,i) = 1.0E-17;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O3'; 
fNO3(i)=fNO3(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R50
Rnames{i} = 'NO3 + NO3 = NO2 + NO2';
k(:,i) = 8.5e-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
fNO3(i)=fNO3(i)-2; fNO2(i)=fNO2(i)+2;

i=i+1; %R51
Rnames{i} = 'PNA = HO2 + NO2';
k(:,i) = JHO2NO2;
Gstr{i,1} = 'PNA'; 
fPNA(i)=fPNA(i)-1; fHO2(i)=fHO2(i)+0.61; fNO2(i)=fNO2(i)+0.61; 
fOH(i)=fOH(i)+0.39; fNO3(i)=fNO3(i)+0.39; 

i=i+1; %R52
Rnames{i} = 'HNO3 = OH + NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R53
Rnames{i} = 'N2O5 = NO3 + NO2';
k(:,i) = JN2O5;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1; %R54
Rnames{i} = 'XO2 + NO = NO2';
k(:,i) = 2.6E-12.*exp(365./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'NO';
fXO2(i)=fXO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;

i=i+1; %R55
Rnames{i} = 'XO2N + NO = NTR';
k(:,i) = 2.6E-12.*exp(365./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'NO';
fXO2N(i)=fXO2N(i)-1; fNO(i)=fNO(i)-1; fNTR(i)=fNTR(i)+1;

i=i+1; %R56
Rnames{i} = 'XO2 + HO2 = ROOH';
k(:,i) = 7.5E-13.*exp(700./T);
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'HO2';
fXO2(i)=fXO2(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

i=i+1; %R57
Rnames{i} = 'XO2N + HO2 = ROOH';
k(:,i) = 7.5E-13.*exp(700./T);
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'HO2';
fXO2N(i)=fXO2N(i)-1; fHO2(i)=fHO2(i)-1; fROOH(i)=fROOH(i)+1;

i=i+1; %R58
Rnames{i} = 'XO2 + XO2 = ';
k(:,i) = 6.8E-14;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2';
fXO2(i)=fXO2(i)-2; 

i=i+1; %R59
Rnames{i} = 'XO2N + XO2N = ';
k(:,i) = 6.8E-14;
Gstr{i,1} = 'XO2N'; Gstr{i,2} = 'XO2N';
fXO2N(i)=fXO2N(i)-2;

i=i+1; %R60
Rnames{i} = 'XO2 + XO2N = ';
k(:,i) = 6.8E-14;
Gstr{i,1} = 'XO2'; Gstr{i,2} = 'XO2N';
fXO2(i)=fXO2(i)-1; fXO2N(i)=fXO2N(i)-1;

i=i+1; %R61
Rnames{i} = 'NTR + OH = HNO3 + HO2 + 0.33FORM + 0.33ALD2 + 0.33ALDX - 0.66PAR';
k(:,i) = 5.9E-13.*exp(-360./T);
Gstr{i,1} = 'NTR'; Gstr{i,2} = 'OH'; 
fNTR(i)=fNTR(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; 
fFORM(i)=fFORM(i)+0.33; fALD2(i)=fALD2(i)+0.33; fALDX(i)=fALDX(i)+0.33; fPAR(i)=fPAR(i)-0.66;

i=i+1; %R62
Rnames{i} = 'NTR = NO2 + HO2 + 0.33FORM + 0.33ALD2 + 0.33ALDX - 0.66PAR';
k(:,i) = JNTR;
Gstr{i,1} = 'NTR'; 
fNTR(i)=fNTR(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1;
fFORM(i)=fFORM(i)+0.33; fALD2(i)=fALD2(i)+0.33; fALDX(i)=fALDX(i)+0.33; fPAR(i)=fPAR(i)-0.66;

i=i+1; %R63
Rnames{i} = 'ROOH + OH = XO2 + 0.5ALD2 + 0.5ALDX';
k(:,i) = 3.01E-12.*exp(190./T);
Gstr{i,1} = 'ROOH'; Gstr{i,2} = 'OH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fALD2(i)=0.5; fALDX(i)=0.5; 

i=i+1; %R64
Rnames{i} = 'ROOH = OH + HO2 + 0.5ALD2 + 0.5ALDX';
k(:,i) = JCOOH;
Gstr{i,1} = 'ROOH'; 
fROOH(i)=fROOH(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=0.5; fALDX(i)=0.5;

i=i+1; %R65
Rnames{i} = 'OH + CO = HO2 ';
k(:,i) = 1.44E-13+3.43E-33.*M;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R66
Rnames{i} = 'OH + CH4 = MEO2';
k(:,i) = 2.45e-12.*exp(-1775./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMEO2(i)=fMEO2(i)+1;

i=i+1; %R67
Rnames{i} = 'MEO2 + NO = FORM + HO2 + NO2';
k(:,i) = 2.8E-12.*exp(300./T)      ;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'NO'; 
fMEO2(i)=fMEO2(i)-1; fNO(i)=fNO(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R68
Rnames{i} = 'MEO2 + HO2 = MEPX';
k(:,i) = 4.1E-13.*exp(750./T)      ;
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'HO2'; 
fMEO2(i)=fMEO2(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+1; 

i=i+1; %R69
Rnames{i} = 'MEO2 + MEO2 = 1.37FORM + 0.74HO2 + 0.63ME0H';
k(:,i) = 9.5E-14.*exp(390./T);
Gstr{i,1} = 'MEO2'; Gstr{i,2} = 'MEO2'; 
fMEO2(i)=fMEO2(i)-2; fFORM(i)=fFORM(i)+1.37; fHO2(i)=fHO2(i)+0.74; fMEOH(i)=fMEOH(i)+0.63;

i=i+1; %R70
Rnames{i} = 'MEPX + OH = 0.7MEO2 0.3XO2 + 0.3HO2';
k(:,i) = 3.8E-12.*exp(200./T);
Gstr{i,1} = 'MEPX'; Gstr{i,2} = 'OH'; 
fMEPX(i)=fMEPX(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+0.7; fXO2(i)=fXO2(i)+0.3; fHO2(i)=0.3; 

i=i+1; %R71
Rnames{i} = 'MEPX = FORM + HO2 + OH';
k(:,i) = JMEPX;
Gstr{i,1} = 'MEPX'; 
fMEPX(i)=fMEPX(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %R72
Rnames{i} = 'MEOH + OH = FORM + HO2';
k(:,i) = 7.3E-12.*exp(-620./T);
Gstr{i,1} = 'MEOH'; Gstr{i,2} = 'OH'; 
fMEOH(i)=fMEOH(i)-1; fOH(i)=fOH(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R73
Rnames{i} = 'FORM + OH = HO2 + CO ';
k(:,i) = 9.0E-12;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'OH'; 
fFORM(i)=fFORM(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R74
Rnames{i} = 'FORM = HO2 + HO2 + CO ';
k(:,i) = JHCHO_R;
Gstr{i,1} = 'FORM'; 
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)+2; fCO(i)=fCO(i)+1; 

i=i+1; %R75
Rnames{i} = 'FORM = CO';
k(:,i) = JHCHO_M;
Gstr{i,1} = 'FORM'; 
fFORM(i)=fFORM(i)-1; fCO(i)=fCO(i)+1;

i=i+1; %R76
Rnames{i} = 'FORM + O3P = OH  + HO2 + CO ';
k(:,i) = 3.4e-11.*exp(-1600./T)   ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'O3P'; 
fFORM(i)=fFORM(i)-1; fO3P(i)=fO3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R77
Rnames{i} = 'FORM + NO3 = HNO3 + HO2 + CO ';
k(:,i) = 5.8E-16   ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'NO3'; 
fFORM(i)=fFORM(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R78
Rnames{i} = 'FORM + HO2 = HCO3';
k(:,i) = 9.7E-15.*exp(625./T)           ;
Gstr{i,1} = 'FORM'; Gstr{i,2} = 'HO2'; 
fFORM(i)=fFORM(i)-1; fHO2(i)=fHO2(i)-1; fHCO3(i)=fHCO3(i)+1; 

i=i+1; %R79
Rnames{i} = 'HCO3 = FORM + HO2';
k(:,i) = 2.4E+12.*exp(-7000./T)        ;
Gstr{i,1} = 'HCO3'; 
fHCO3(i)=fHCO3(i)-1; fFORM(i)=fFORM(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R80
Rnames{i} = 'HCO3 + NO = FACD + NO2 + HO2';
k(:,i) = 5.6E-12    ;
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'NO'; 
fHCO3(i)=fHCO3(i)-1; fNO(i)=fNO(i)-1; fFACD(i)=fFACD(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R81
Rnames{i} = 'HCO3 + HO2 = MEPX';
k(:,i) = 5.6E-15.*exp(2300./T)         ;
Gstr{i,1} = 'HCO3'; Gstr{i,2} = 'HO2'; 
fHCO3(i)=fHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMEPX(i)=fMEPX(i)+1; 

i=i+1; %R82
Rnames{i} = 'FACD + OH = HO2';
k(:,i) = 4.0E-13 ;
Gstr{i,1} = 'FACD'; Gstr{i,2} = 'OH'; 
fFACD(i)=fFACD(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R83
Rnames{i} = 'ALD2 + O3P = C2O3 + OH';
k(:,i) = 1.8E-11.*exp(-1100./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'O3P'; 
fALD2(i)=fALD2(i)-1; fO3P(i)=fO3P(i)-1; fC2O3(i)=fC2O3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %R84
Rnames{i} = 'ALD2 + OH = C2O3';
k(:,i) = 5.6E-12.*exp(270./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH'; 
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1; 

i=i+1; %R85
Rnames{i} = 'ALD2 + NO3 = C2O3 + HNO3';
k(:,i) = 1.4E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3'; 
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fC2O3(i)=fC2O3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R86
Rnames{i} = 'ALD2 = MEO2 + CO + HO2';
k(:,i) = JCCHO_R;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R87
Rnames{i} = 'C2O3 + NO = NO2 + MEO2';
k(:,i) = 8.1E-12.*exp(270./T)  ;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO'; 
fC2O3(i)=fC2O3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fMEO2(i)=fMEO2(i)+1; 

i=i+1; %R88
Rnames{i} = 'C2O3 + NO2 = PAN ';
k(:,i) = K_C2O3_NO2;
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'NO2'; 
fC2O3(i)=fC2O3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1; %R89
Rnames{i} = 'PAN = C2O3 + NO2 ';
k(:,i) = K_PAN            ;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R90
Rnames{i} = 'PAN = C2O3 + NO2';
k(:,i) = JPAN  ;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fC2O3(i)=fC2O3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R91
Rnames{i} = 'C2O3 + HO2  = 0.8PACD + 0.2AACD + 0.2O3';
k(:,i) = 4.3e-13.*exp(1040./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'HO2'; 
fC2O3(i)=fC2O3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.8; fO3(i)=fO3(i)+0.2; fAACD(i)=0.2; 

i=i+1; %R92
Rnames{i} = 'C2O3 + MEO2 = FORM + 0.9MEO2 + 0.9HO2 + 0.1AACD';
k(:,i) = 2.0E-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'MEO2'; 
fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)-1; fFORM(i)=fFORM(i)+1; fMEO2(i)=fMEO2(i)+0.9;
fHO2(i)=fHO2(i)+0.9; fAACD(i)=fAACD(i)+0.1;

i=i+1; %R93
Rnames{i} = 'C2O3 + XO2 = 0.9MEO2 + 0.1AACD';
k(:,i) = 4.4E-13.*exp(1070./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'XO2'; 
fC2O3(i)=fC2O3(i)-1; fXO2(i)=fXO2(i)-1; fMEO2(i)=fMEO2(i)+0.9; fAACD(i)=fAACD(i)+0.1; 

i=i+1; %R94
Rnames{i} = 'C2O3 + C2O3 = MEO2 + MEO2';
k(:,i) = 2.9e-12.*exp(500./T);
Gstr{i,1} = 'C2O3'; Gstr{i,2} = 'C2O3'; 
fC2O3(i)=fC2O3(i)-2; fMEO2(i)=fMEO2(i)+2; 

i=i+1; %R95
Rnames{i} = 'PACD + OH = C2O3';
k(:,i) = 4.0E-13.*exp(200./T);
Gstr{i,1} = 'PACD'; Gstr{i,2} = 'OH'; 
fPACD(i)=fPACD(i)-1; fOH(i)=fOH(i)-1; fC2O3(i)=fC2O3(i)+1; 

i=i+1; %R96
Rnames{i} = 'PACD = MEO2 + OH';
k(:,i) = 0*JCOOH; %believe it or not, this is correct
Gstr{i,1} = 'PACD'; 
fPACD(i)=fPACD(i)-1; fMEO2(i)=fMEO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %R97
Rnames{i} = 'AACD + OH = MEO2';
k(:,i) = 4.0E-13.*exp(200./T);
Gstr{i,1} = 'AACD'; Gstr{i,2} = 'OH'; 
fAACD(i)=fAACD(i)-1; fOH(i)=fOH(i)-1; fMEO2(i)=fMEO2(i)+1; 

i=i+1; %R98
Rnames{i} = 'ALDX + O3P = CXO3 + OH';
k(:,i) = 1.3E-11.*exp(-870./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'O3P'; 
fALDX(i)=fALDX(i)-1; fO3P(i)=fO3P(i)-1; fCXO3(i)=fCXO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1; %R99
Rnames{i} = 'ALDX + OH = CXO3';
k(:,i) = 5.1E-12.*exp(405./T);
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'OH'; 
fALDX(i)=fALDX(i)-1; fOH(i)=fOH(i)-1; fCXO3(i)=fCXO3(i)+1; 

i=i+1; %R100
Rnames{i} = 'ALDX + NO3 = CXO3 + HNO3';
k(:,i) = 6.5E-15;
Gstr{i,1} = 'ALDX'; Gstr{i,2} = 'NO3'; 
fALDX(i)=fALDX(i)-1; fNO3(i)=fNO3(i)-1; fCXO3(i)=fCXO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R101
Rnames{i} = 'ALDX = MEO2 + CO + HO2';
k(:,i) = JC2CHO;
Gstr{i,1} = 'ALDX'; 
fALDX(i)=fALDX(i)-1; fMEO2(i)=fMEO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R102
Rnames{i} = 'CXO3 + NO = ALD2 + NO2 + HO2 + XO2';
k(:,i) = 6.7E-12.*exp(340./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO'; 
fCXO3(i)=fCXO3(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=1; fHO2(i)=1; fXO2(i)=1; 

i=i+1; %R103
Rnames{i} = 'CXO3 + NO2 = PANX';
k(:,i) = K_CXO3_NO2;
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'NO2'; 
fCXO3(i)=fCXO3(i)-1; fNO2(i)=fNO2(i)-1; fPANX(i)=fPANX(i)+1; 

i=i+1; %R104
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = K_PANX;
Gstr{i,1} = 'PANX'; 
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R105
Rnames{i} = 'PANX = CXO3 + NO2';
k(:,i) = JPAN;
Gstr{i,1} = 'PANX'; 
fPANX(i)=fPANX(i)-1; fCXO3(i)=fCXO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R106
Rnames{i} = 'PANX + OH = ALD2 + NO2';
k(:,i) = 3.0E-13 ;
Gstr{i,1} = 'PANX'; Gstr{i,2} = 'OH'; 
fPANX(i)=fPANX(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1; %R107
Rnames{i} = 'CXO3 + HO2 = 0.8PACD + 0.2AACD + 0.2O3';
k(:,i) = 4.3E-13.*exp(1040./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'HO2'; 
fCXO3(i)=fCXO3(i)-1; fHO2(i)=fHO2(i)-1; fPACD(i)=fPACD(i)+0.8; fAACD(i)=0.2; fO3(i)=0.2; 

i=i+1; %R108
Rnames{i} = 'CXO3 + MEO2 = 0.9ALD2 + 0.9XO2 + HO2 + 0.1AACD + 0.1FORM';
k(:,i) = 2.0E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'MEO2'; 
fCXO3(i)=fCXO3(i)-1; fMEO2(i)=fMEO2(i)-1; fALD2(i)=fALD2(i)+0.9; fXO2(i)=fXO2(i)+0.9;
fHO2(i)=fHO2(i)+1; fAACD(i)=fAACD(i)+0.1; fFORM(i)=fFORM(i)+0.1;

i=i+1; %R109
Rnames{i} = 'CXO3 + XO2 = 0.9ALD2 + 0.1AACD';
k(:,i) = 4.4E-13.*exp(1070./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'XO2'; 
fCXO3(i)=fCXO3(i)-1; fXO2(i)=fXO2(i)-1; fALD2(i)=fALD2(i)+0.9; fAACD(i)=fAACD(i)+0.1; 

i=i+1; %R110
Rnames{i} = 'CXO3 + CXO3 = 2ALD2 + 2XO2 + 2HO2';
k(:,i) = 2.9E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'CXO3'; 
fCXO3(i)=fCXO3(i)-2; fALD2(i)=fALD2(i)+2; fXO2(i)=fXO2(i)+2; fHO2(i)=fHO2(i)+2;

i=i+1; %R111
Rnames{i} = 'CXO3 + C2O3 = MEO2 + XO2 + HO2 + ALD2';
k(:,i) = 2.9E-12.*exp(500./T);
Gstr{i,1} = 'CXO3'; Gstr{i,2} = 'C2O3'; 
fCXO3(i)=fCXO3(i)-1; fC2O3(i)=fC2O3(i)-1; fMEO2(i)=fMEO2(i)+1; fXO2(i)=1; fHO2(i)=1; fALD2(i)=1; 

i=i+1; %R112
Rnames{i} = 'OH + PAR = 0.11HO2 + 0.87XO2 + 0.13XO2N + 0.76ROR + 0.06ALD2 + 0.05ALDX - 0.11PAR';
k(:,i) = 8.1e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'PAR'; 
fOH(i)=fOH(i)-1; fPAR(i)=fPAR(i)-1.11; fHO2(i)=fHO2(i)+0.11; fXO2(i)=fXO2(i)+0.87; 
fXO2N(i)=fXO2N(i)+0.13; fROR(i)=fROR(i)+0.76; fALD2(i)=fALD2(i)+0.06; fALDX(i)=fALDX(i)+0.05; 

i=i+1; %R113
Rnames{i} = 'ROR = 0.96XO2 + 0.6ALD2 + 0.94HO2 - 2.1PAR + 0.04XO2N + 0.02ROR + 0.5ALDX';
k(:,i) = 1.0D15.*exp(-8000./T);
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-0.98; fXO2(i)=fXO2(i)+0.96; fXO2N(i)=fXO2N(i)+0.04;
fHO2(i)=fHO2(i)+0.94; fALD2(i)=fALD2(i)+0.6; fALDX(i)=fALDX(i)+0.5; fPAR(i)=fPAR(i)-2.1;

i=i+1; %R114
Rnames{i} = 'ROR = HO2';
k(:,i) = 1.6D3;
Gstr{i,1} = 'ROR'; 
fROR(i)=fROR(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1; %R115
Rnames{i} = '   ROR + NO2 = NTR ';
k(:,i) = 1.5e-11;
Gstr{i,1} = 'ROR'; Gstr{i,2} = 'NO2'; 
fROR(i)=fROR(i)-1; fNO2(i)=fNO2(i)-1; fNTR(i)=fNTR(i)+1; 

i=i+1; %R116
Rnames{i} = 'O3P + OLE = 0.2ALD2 + 0.3ALDX + 0.3HO2 + 0.2XO2 + 0.2CO + 0.2FORM + 0.01XO2N + 0.2PAR + 0.1OH';
k(:,i) = 1.0e-11.*exp(-280./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'OLE'; 
fO3P(i)=fO3P(i)-1; fOLE(i)=fOLE(i)-1; fALD2(i)=fALD2(i)+0.2; fXO2(i)=fXO2(i)+0.2; fCO(i)=fCO(i)+0.2; 
fFORM(i)=fFORM(i)+0.2; fPAR(i)=fPAR(i)+0.2; fXO2N(i)=fXO2N(i)+0.01; fALDX(i)=fALDX(i)+0.3; 
fHO2(i)=fHO2(i)+0.3; fOH(i)=fOH(i)+0.1; 

i=i+1; %R117
Rnames{i} = 'OH + OLE = 0.8FORM + 0.33ALD2 + 0.62ALDX + 0.8XO2 + 0.95HO2 - 0.7PAR';
k(:,i) = 3.2e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OLE'; 
fOH(i)=fOH(i)-1; fOLE(i)=fOLE(i)-1; 
fFORM(i)=fFORM(i)+0.8; fALDX(i)=fALDX(i)+0.62; fXO2(i)=fXO2(i)+0.8; fHO2(i)=fHO2(i)+0.95; 
fALD2(i)=fALD2(i)+0.33; fPAR(i)=fPAR(i)-0.7;

i=i+1; %R118
Rnames{i} = 'O3 + OLE = 0.18ALD2 + 0.74FORM + 0.32ALDX + 0.22XO2 + 0.1OH + 0.33CO + 0.44HO2 - PAR';
k(:,i) = 6.5e-15.*exp(-1900./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OLE'; 
fO3(i)=fO3(i)-1; fOLE(i)=fOLE(i)-1; 
fFORM(i)=fFORM(i)+0.74; fALDX(i)=fALDX(i)+0.32; fXO2(i)=fXO2(i)+0.22; fCO(i)=fCO(i)+0.33; 
fHO2(i)=fHO2(i)+0.44; fALD2(i)=fALD2(i)+0.18; fOH(i)=fOH(i)+0.1; fPAR(i)=fPAR(i)-1;

i=i+1; %R119
Rnames{i} = 'NO3 + OLE = NO2 + FORM + 0.91XO2 + 0.09XO2N + 0.56ALDX + 0.35ALD2 - PAR';
k(:,i) = 7e-13.*exp(-2160./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'OLE'; 
fNO3(i)=fNO3(i)-1; fOLE(i)=fOLE(i)-1; fNO2(i)=fNO2(i)+1; fFORM(i)=1;  
fXO2(i)=0.91; fXO2N(i)=0.09; fALDX(i)=0.56; fALD2(i)=0.35; fPAR(i)=-1;

i=i+1; %R120
Rnames{i} = 'O3P + ETH = FORM + 1.7HO2 + CO + 0.7XO2 + 0.3OH';
k(:,i) = 1.04e-11.*exp(-792./T);
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ETH'; 
fO3P(i)=fO3P(i)-1; fETH(i)=fETH(i)-1; fFORM(i)=fFORM(i)+1; fXO2(i)=fXO2(i)+0.7; fCO(i)=fCO(i)+1; 
fHO2(i)=fHO2(i)+1.7; fOH(i)=0.3;

i=i+1; %R121
Rnames{i} = 'OH + ETH = XO2 + 1.56FORM + 0.22ALDX + HO2';
k(:,i) = K_OH_ETH;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETH'; 
fOH(i)=fOH(i)-1; fETH(i)=fETH(i)-1; fXO2(i)=fXO2(i)+1; fHO2(i)=fHO2(i)+1; fALDX(i)=fALDX(i)+0.22; fFORM(i)=fFORM(i)+1.56;

i=i+1; %R122
Rnames{i} = 'O3 + ETH = FORM + 0.63CO + 0.13HO2 + 0.13OH + 0.37FACD';
k(:,i) = 1.2e-14.*exp(-2630./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ETH'; 
fO3(i)=fO3(i)-1; fETH(i)=fETH(i)-1; fOH(i)=fOH(i)+0.13; fHO2(i)=fHO2(i)+0.13; fFORM(i)=fFORM(i)+1; 
fCO(i)=fCO(i)+0.63; fFACD(i)=0.37;

i=i+1; %R123
Rnames{i} = 'NO3 + ETH = NO2 + XO2 + 2FORM';
k(:,i) = 3.3E-12.*exp(-2880./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ETH'; 
fNO3(i)=fNO3(i)-1; fETH(i)=fETH(i)-1; fNO2(i)=fNO2(i)+1; fXO2(i)=fXO2(i)+1; fFORM(i)=2;

i=i+1; %R124
Rnames{i} = 'IOLE + O3P = 1.24ALD2 + 0.66ALDX + 0.1HO2 + 0.1XO2 + 0.1CO + 0.1PAR';
k(:,i) = 2.3E-11;
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3P'; 
fIOLE(i)=fIOLE(i)-1; fO3P(i)=fO3P(i)-1; fALD2(i)=fALD2(i)+1.24;
fALDX(i)=0.66; fHO2(i)=0.1; fXO2(i)=0.1; fCO(i)=0.1; fPAR(i)=0.1;

i=i+1; %R125
Rnames{i} = 'IOLE + OH = 1.3ALD2 + 0.7ALDX + HO2 + XO2';
k(:,i) = 1.0E-11.*exp(550./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'OH'; 
fIOLE(i)=fIOLE(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=1.3; fALDX(i)=0.7; fHO2(i)=1; fXO2(i)=1;

i=i+1; %R126
Rnames{i} = 'IOLE + O3 = 0.65ALD2 + 0.35ALDX + 0.25FORM + 0.25CO + 0.5O3P + 0.5OH + 0.5HO2';
k(:,i) = 8.4E-15.*exp(-1100./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'O3'; 
fIOLE(i)=fIOLE(i)-1; fO3(i)=fO3(i)-1;
fALD2(i)=0.65; fALDX(i)=0.35; fFORM(i)=0.25; fCO(i)=0.25; fO3P(i)=0.5; fOH(i)=0.5; fHO2(i)=0.5; 

i=i+1; %R127
Rnames{i} = 'IOLE + NO3 = 1.18ALD2 + 0.64ALDX + HO2 + NO2';
k(:,i) = 9.6E-13.*exp(-270./T);
Gstr{i,1} = 'IOLE'; Gstr{i,2} = 'NO3'; 
fIOLE(i)=fIOLE(i)-1; fNO3(i)=fNO3(i)-1; fALD2(i)=1.18; fALDX(i)=0.64; fHO2(i)=1; fNO2(i)=1; 

i=i+1; %R128
Rnames{i} = 'OH + TOL = 0.44HO2 + 0.08XO2 + 0.36CRES + 0.56TO2';
k(:,i) = 1.8e-12.*exp(355./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'TOL'; 
fOH(i)=fOH(i)-1; fTOL(i)=fTOL(i)-1; fXO2(i)=0.08; fHO2(i)=0.44; fCRES(i)=0.36; fTO2(i)=0.56;

i=i+1; %R129
Rnames{i} = 'TO2 + NO = 0.9NO2 + 0.9HO2 + 0.9OPEN + 0.1NTR';
k(:,i) = 8.1e-12;
Gstr{i,1} = 'TO2'; Gstr{i,2} = 'NO'; 
fTO2(i)=fTO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=0.9; fHO2(i)=0.9; fOPEN(i)=0.9; fNTR(i)=0.1; 

i=i+1; %R130
Rnames{i} = 'TO2 = CRES + HO2';
k(:,i) = 4.2;
Gstr{i,1} = 'TO2'; 
fTO2(i)=fTO2(i)-1; fCRES(i)=fCRES(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1; %R131
Rnames{i} = 'OH + CRES = 0.4CRO + 0.6XO2 + 0.6HO2 + 0.3OPEN';
k(:,i) = 4.1e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CRES'; 
fOH(i)=fOH(i)-1; fCRES(i)=fCRES(i)-1; fCRO(i)=0.4; fXO2(i)=0.6; fHO2(i)=0.6; fOPEN(i)=0.3; 

i=i+1; %R132
Rnames{i} = 'NO3 + CRES = CRO + HNO3';
k(:,i) = 2.2e-11;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CRES'; 
fNO3(i)=fNO3(i)-1; fCRES(i)=fCRES(i)-1; fCRO(i)=fCRO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1; %R133
Rnames{i} = 'CRO + NO2 = NTR';
k(:,i) = 1.4e-11;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'NO2'; 
fCRO(i)=fCRO(i)-1; fNO2(i)=fNO2(i)-1; fNTR(i)=fNTR(i)+1; 

i=i+1; %R134
Rnames{i} = 'CRO + HO2 = CRES';
k(:,i) = 5.5E-12;
Gstr{i,1} = 'CRO'; Gstr{i,2} = 'HO2'; 
fCRO(i)=fCRO(i)-1; fHO2(i)=fHO2(i)-1; fCRES(i)=fCRES(i)+1; 

i=i+1; %R135
Rnames{i} = 'OPEN = C2O3 + HO2 + CO ';
k(:,i) = 9.0.*JHCHO_R;
Gstr{i,1} = 'OPEN'; 
fOPEN(i)=fOPEN(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R136 (note: missing from Yarwood Table 2-2, see CAMx Appendix D R139)
Rnames{i} = 'OPEN + OH = XO2 + 2CO + 2HO2 + C2O3 + FORM ';
k(:,i) = 3.0e-11;
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'OH';
fOPEN(i)=fOPEN(i)-1; fOH(i)=fOH(i)-1; fXO2(i)=fXO2(i)+1; fCO(i)=2; fHO2(i)=2; fC2O3(i)=fC2O3(i)+1; 
fFORM(i)=fFORM(i)+1;

i=i+1; %R137
Rnames{i} = 'OPEN + O3 = 0.03ALDX + 0.62C2O3 + 0.7FORM + 0.03XO2 + 0.69CO + 0.08OH + 0.76HO2 + 0.2MGLY';
k(:,i) = 5.4e-17.*exp(-500./T);
Gstr{i,1} = 'OPEN'; Gstr{i,2} = 'O3'; 
fOPEN(i)=fOPEN(i)-1; fO3(i)=fO3(i)-1; fALDX(i)=0.03; fC2O3(i)=0.62; fFORM(i)=0.7; fXO2(i)=0.03; 
fCO(i)=0.69; fOH(i)=0.08; fHO2(i)=0.76; fMGLY(i)=0.2;

i=i+1; %R138
Rnames{i} = 'OH + XYL = 0.7HO2 + 0.5XO2 + 0.2CRES + 0.8MGLY + 1.1PAR + 0.3TO2';
k(:,i) = 1.7e-11.*exp(116./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'XYL'; 
fOH(i)=fOH(i)-1; fXYL(i)=fXYL(i)-1; fHO2(i)=0.7; fPAR(i)=1.1; fXO2(i)=0.5; fCRES(i)=0.2; 
fMGLY(i)=0.8; fTO2(i)=0.3;

i=i+1; %R139
Rnames{i} = 'OH + MGLY = XO2 + C2O3';
k(:,i) = 1.7e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLY'; 
fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)-1; fXO2(i)=fXO2(i)+1; fC2O3(i)=fC2O3(i)+1; 

i=i+1; %R140
Rnames{i} = 'MGLY = C2O3 + HO2 + CO';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fC2O3(i)=fC2O3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1; %R141
Rnames{i} = 'O3P + ISOP = 0.75ISPD + 0.5FORM + 0.25XO2 + 0.25HO2 + 0.25CXO3 + 0.25PAR';
k(:,i) = 3.60e-11;
Gstr{i,1} = 'O3P'; Gstr{i,2} = 'ISOP'; 
fO3P(i)=fO3P(i)-1; fISOP(i)=fISOP(i)-1;
fISPD(i)=0.75; fFORM(i)=0.5; fXO2(i)=0.25; fHO2(i)=0.25; fCXO3(i)=0.25; fPAR(i)=0.25;
 
i=i+1; %R142
Rnames{i} = 'OH + ISOP = 0.912ISPD + 0.629FORM + 0.991XO2 + 0.912HO2 + 0.088XO2N';
k(:,i) = 2.54e-11.*exp(407.6./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOP'; 
fOH(i)=fOH(i)-1; fISOP(i)=fISOP(i)-1; 
fISPD(i)=0.912; fFORM(i)=0.629; fXO2(i)=0.991; fHO2(i)=0.912; fXO2N(i)=0.088;

i=i+1; %R143
Rnames{i} = 'O3 + ISOP = 0.65ISPD + 0.6FORM + 0.2XO2 + 0.066HO2 + 0.266OH + 0.2CXO3 + 0.15ALDX + 0.35PAR + 0.066CO';
k(:,i) = 7.86e-15.*exp(-1912./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP'; 
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fISPD(i)=0.65; fFORM(i)=0.6; fXO2(i)=0.2; fHO2(i)=0.066; 
fOH(i)=0.266; fCXO3(i)=0.2;  fALDX(i)=0.15; fPAR(i)=0.35; fCO(i)=0.066;

i=i+1; %R144
Rnames{i} = 'NO3 + ISOP = 0.2ISPD + 0.8NTR + XO2 + 0.8HO2 + 0.2NO2 + 0.8ALDX + 2.4PAR';
k(:,i) = 3.03e-12.*exp(-448./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'ISOP'; 
fNO3(i)=fNO3(i)-1; fISOP(i)=fISOP(i)-1;
fISPD(i)=0.2; fNTR(i)=0.8; fXO2(i)=1; fHO2(i)=0.8; fNO2(i)=0.2; fALDX(i)=0.8; fPAR(i)=2.4;

i=i+1; %R145
Rnames{i} = 'ISPD + OH = 1.565PAR + 0.167FORM + 0.713XO2 + 0.503HO2 +0.334CO + 0.168MGLY + 0.252ALD2 + 0.21C2O3 + 0.25CXO3 + 0.12ALDX';
k(:,i) = 3.36e-11;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'OH'; 
fISPD(i)=fISPD(i)-1; fOH(i)=fOH(i)-1; fPAR(i)=1.565; fFORM(i)=0.167; fXO2(i)=0.713; fHO2(i)=0.503;
fCO(i)=0.334; fMGLY(i)=0.168; fALD2(i)=0.252; fC2O3(i)=0.21; fCXO3(i)=0.25; fALDX(i)=0.12;

i=i+1; %R146
Rnames{i} = 'ISPD + O3 = 0.114C2O3 + 0.15FORM + 0.85MGLY + 0.154HO2 + 0.268OH + 0.064XO2 + 0.02ALD2 + 0.36PAR + 0.225CO';
k(:,i) = 7.1e-18;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'O3'; 
fISPD(i)=fISPD(i)-1; fO3(i)=fO3(i)-1; fC2O3(i)=0.114; fFORM(i)=0.15; fMGLY(i)=0.85; 
fHO2(i)=0.154; fOH(i)=0.268; fXO2(i)=0.064; fALD2(i)=0.02; fPAR(i)=0.36; fCO(i)=0.225;

i=i+1; %R147
Rnames{i} = 'ISPD + NO3 = 0.357ALDX + 0.282FORM + 1.282PAR + 0.925HO2 + 0.643CO + 0.85NTR + 0.05CXO3 + 0.075XO2 + 0.15HNO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'ISPD'; Gstr{i,2} = 'NO3'; 
fISPD(i)=fISPD(i)-1; fNO3(i)=fNO3(i)-1; fALDX(i)=0.357; fFORM(i)=0.282; fPAR(i)=1.282; 
fHO2(i)=0.925; fCO(i)=0.643; fNTR(i)=0.85; fCXO3(i)=0.05; fXO2(i)=0.075; fHNO3(i)=0.15;

i=i+1; %R148
Rnames{i} = 'ISPD = 0.333CO + 0.067ALD2 + 0.9FORM + 0.832PAR + 1.033HO2 + 0.7XO2 + O.967C2O3';
k(:,i) = 0.0036.*JACRO;
Gstr{i,1} = 'ISPD'; 
fISPD(i)=fISPD(i)-1; fCO(i)=0.333; fALD2(i)=0.067; fFORM(i)=0.9; fPAR(i)=0.832; 
fHO2(i)=1.033; fXO2(i)=0.7; fC2O3(i)=0.967;

i=i+1; %R149
Rnames{i} = 'TERP + O3P = 0.15ALDX + 5.12PAR';
k(:,i) = 3.6E-11;
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3P'; 
fTERP(i)=fTERP(i)-1; fO3P(i)=fO3P(i)-1; fALDX(i)=0.15; fPAR(i)=5.12;

i=i+1; %R150
Rnames{i} = 'TERP + OH = 0.75HO2 + 1.25XO2 + 0.25XO2N + 0.28FORM + 1.66PAR + 0.47ALDX';
k(:,i) = 1.5E-11.*exp(449./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'OH'; 
fTERP(i)=fTERP(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=0.75; fXO2(i)=1.25; fXO2N(i)=0.25; 
fFORM(i)=0.28; fPAR(i)=1.66; fALDX(i)=0.47;

i=i+1; %R151
Rnames{i} = 'TERP + O3 = 0.57OH + 0.07HO2 + 0.76XO2 + 0.18XO2N + 0.24FORM + 0.001CO + 7PAR + 0.21ALDX + 0.39CXO3;';
k(:,i) = 1.2E-15.*exp(-821./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'O3'; 
fTERP(i)=fTERP(i)-1; fO3(i)=fO3(i)-1; fOH(i)=0.57; fHO2(i)=0.07; fXO2(i)=0.76; 
fXO2N(i)=0.18; fFORM(i)=0.24; fCO(i)=0.001; fPAR(i)=7; fALDX(i)=0.21; fCXO3(i)=0.39;

i=i+1; %R152
Rnames{i} = 'TERP + NO3 = 0.47NO2 + 0.28HO2 + 1.03XO2 + 0.25XO2N + 0.47ALDX + 0.53NTR';
k(:,i) = 3.7E-12.*exp(175./T);
Gstr{i,1} = 'TERP'; Gstr{i,2} = 'NO3'; 
fTERP(i)=fTERP(i)-1; fNO3(i)=fNO3(i)-1; fXO2(i)=1.03; fNO2(i)=0.47; fALDX(i)=0.47; 
fHO2(i)=0.28; fXO2N(i)=0.25; fNTR(i)=0.53;

i=i+1; %R153
Rnames{i} = 'SO2 + OH = SULF + HO2';
k(:,i) = K_SO2_OH;
Gstr{i,1} = 'SO2'; Gstr{i,2} = 'OH';
fSO2(i)=fSO2(i)-1; fOH(i)=fOH(i)-1; fSULF(i)=fSULF(i)+1; fHO2(i)=fHO2(i)+1;

i=i+1; %R154
Rnames{i} = ' ETOH + OH = HO2 + 0.9ALD2 + 0.05ALDX + 0.1FORM + 0.1XO2';
k(:,i) = 6.9e-12.*exp(-230./T);
Gstr{i,1} = 'ETOH'; Gstr{i,2} = 'OH'; 
fETOH(i)=fETOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=1; fALD2(i)=0.9; fALDX(i)=0.05; 
fFORM(i)=0.1; fXO2(i)=0.1; 

i=i+1; %R155
Rnames{i} = ' OH + ETHA = 0.991ALD2 + 0.991XO2 + 0.009XO2N + HO2';
k(:,i) = 8.7E-12.*exp(-1070./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ETHA'; 
fOH(i)=fOH(i)-1; fETHA(i)=fETHA(i)-1; fHO2(i)=1; fALD2(i)=0.991; fXO2(i)=0.991; fXO2N(i)=0.009;

i=i+1; %R156
Rnames{i} = 'NO2 + ISOP = 0.2ISPD + 0.8NTR + XO2 + 0.8HO2 + 0.2NO + 0.8ALDX + 2.4PAR';
k(:,i) = 1.5e-19;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'ISOP'; 
fNO2(i)=fNO2(i)-1; fISOP(i)=fISOP(i)-1; fISPD(i)=0.2; fNTR(i)=0.8; fXO2(i)=1; 
fHO2(i)=0.8; fNO(i)=0.2; fALDX(i)=0.8; fPAR(i)=2.4; 

% END OF REACTION LIST


