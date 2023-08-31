% Halogens_MECCA.m
% Includes a subset of BR and CL reactions from the CABBA-MECCA mechanism.
% Designed to be used with MCMv3.2 and possibly later versions.
% Source code is in the file "gas.eqn", generously provided by Rolf Sander.
% Note that this NOT the full halogen mechanism and is missing het chem, iodide, etc.
% Chemistry was selected specifically for modeling the tropical Western Pacific.
% 
% 20150928 DA
% 20160307 GMW  Changed J-values names, added comments.
% 20230705 GMW	Fixed CLNO2 photolysis frequency from J82 to Jn23.
%				Added k_CLO_CLO rate constant.
%               Fixed goofy 3-body reactions for C2H4 + BR/CL (removed O2 as explicit reactant)

SpeciesToAdd = {...
'BR'; 'BR2'; 'BRCL'; 'BRNO3'; 'BRNO2'; 'BRO'; 'C2H2'; 'C2H4'; 'C2H6'; 'CCL4'; 'CF2CL2'; ...
'CFCL3'; 'CH2BR2'; 'CH2CLBR'; 'CH3BR'; 'CH3CCL3'; 'CH3CHO'; 'CH3CO3'; 'CH3CL'; 'CH3O2'; 'CH3OOH'; ...
'CH4'; 'CHBR3'; 'CHCL2BR'; 'CHCLBR2'; 'CO'; 'CL'; 'CL2'; 'CL2O2'; 'CLNO3'; 'CLNO2'; 'CLO'; ...
'H'; 'H2'; 'H2O'; 'H2O2'; 'HBR'; 'HCHO'; 'HCL'; 'HO2'; 'HOBR'; 'HOCH2CH2O2'; ...
'HOCL'; 'NO'; 'NO2'; 'NO3'; 'O1D'; 'O3'; 'O'; 'OCLO'; ...
'OH'; };

RO2ToAdd = {'CH3O2'; 'RO2'; 'CH3CO3';'HOCH2CH2O2';};

AddSpecies

% get a few extra rate constants
k_BRO_NO2 = k_3rd_iupac(T,M,4.7e-31,3.1,1.8e-11,0,.4);
k_CLO_CLO = ((2.0e-32.*(T/300).^-4).*M.*(1.0e-11))./((2.0e-32.*(T/300).^-4).*M+(1.0e-11)).*10.^(log10(0.45)./(1+(log10((2.0e-32.*(T/300).^-4).*M./(1.0e-11))./(0.75-1.27*log10(0.45))).^2)); %IUPAC
G7402a_yield = 0.8; %BRO + CH3O2 BRanching; Uncertainty: 0.8 +/- 10%

%start reactions
i=i+1;
Rnames{i} = 'CL + O3 = CLO + O2';
k(:,i) = 2.8E-11.*exp(-250./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'O3'; 
fCL(i)=fCL(i)-1; fO3(i)=fO3(i)-1; fCLO(i)=fCLO(i)+1; 

i=i+1;
Rnames{i} = 'CLO + O = CL + O2';
k(:,i) = 2.5E-11.*exp(110./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'O'; 
fCLO(i)=fCLO(i)-1; fO(i)=fO(i)-1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CLO + CLO = CL2 + O2';
k(:,i) = 1.0E-12.*exp(-1590./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO'; 
fCLO(i)=fCLO(i)-1; fCLO(i)=fCLO(i)-1; fCL2(i)=fCL2(i)+1; 

i=i+1;
Rnames{i} = 'CLO + CLO = 2CL + O2';
k(:,i) = 3.0E-11.*exp(-2450./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO'; 
fCLO(i)=fCLO(i)-1; fCLO(i)=fCLO(i)-1; fCL(i)=fCL(i)+2;  

i=i+1;
Rnames{i} = 'CLO + CLO = CL + OCLO';
k(:,i) = 3.5E-13.*exp(-1370./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO'; 
fCLO(i)=fCLO(i)-1; fCLO(i)=fCLO(i)-1; fCL(i)=fCL(i)+1; fOCLO(i)=fOCLO(i)+1; 

i=i+1;
Rnames{i} = 'CLO + CLO + M = CL2O2';
k(:,i) = k_CLO_CLO;
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CLO'; 
fCLO(i)=fCLO(i)-1; fCLO(i)=fCLO(i)-1; fCL2O2(i)=fCL2O2(i)+1; 

i=i+1;
Rnames{i} = 'CL2O2 + M = CLO + CLO';
k(:,i) = k_CLO_CLO./(9.3E-28.*exp(8835./T));
Gstr{i,1} = 'CL2O2'; 
fCL2O2(i)=fCL2O2(i)-1; fCLO(i)=fCLO(i)+1; fCLO(i)=fCLO(i)+1; 

i=i+1;
Rnames{i} = 'CL + H2 = HCL + H';
k(:,i) = 3.9E-11.*exp(-2310./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'H2'; 
fCL(i)=fCL(i)-1; fH2(i)=fH2(i)-1; fHCL(i)=fHCL(i)+1; fH(i)=fH(i)+1; 

i=i+1;
Rnames{i} = 'CL + HO2 = HCL + O2';
k(:,i) = 4.4E-11-7.5E-11.*exp(-620./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2'; 
fCL(i)=fCL(i)-1; fHO2(i)=fHO2(i)-1; fHCL(i)=fHCL(i)+1;  

i=i+1;
Rnames{i} = 'CL + HO2 = CLO + OH';
k(:,i) = 7.5E-11.*exp(-620./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HO2'; 
fCL(i)=fCL(i)-1; fHO2(i)=fHO2(i)-1; fCLO(i)=fCLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CL + H2O2 = HCL + HO2';
k(:,i) = 1.1E-11.*exp(-980./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'H2O2'; 
fCL(i)=fCL(i)-1; fH2O2(i)=fH2O2(i)-1; fHCL(i)=fHCL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CLO + OH = 0.94CL + 0.94HO2 + .06HCL + .06O2';
k(:,i) = 7.3E-12.*exp(300./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'OH'; 
fCLO(i)=fCLO(i)-1; fOH(i)=fOH(i)-1; fCL(i)=fCL(i)+0.94; fHO2(i)=fHO2(i)+0.94; fHCL(i)=fHCL(i)+0.06;  

i=i+1;
Rnames{i} = 'CLO + HO2 = HOCL + O2';
k(:,i) = 2.2E-12.*exp(340./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'HO2'; 
fCLO(i)=fCLO(i)-1; fHO2(i)=fHO2(i)-1; fHOCL(i)=fHOCL(i)+1;  

i=i+1;
Rnames{i} = 'HCL + OH = CL + H2O';
k(:,i) = 1.7E-12.*exp(-230./T);
Gstr{i,1} = 'HCL'; Gstr{i,2} = 'OH'; 
fHCL(i)=fHCL(i)-1; fOH(i)=fOH(i)-1; fCL(i)=fCL(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOCL + OH = CLO + H2O';
k(:,i) = 3.0E-12.*exp(-500./T);
Gstr{i,1} = 'HOCL'; Gstr{i,2} = 'OH'; 
fHOCL(i)=fHOCL(i)-1; fOH(i)=fOH(i)-1; fCLO(i)=fCLO(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'CLO + NO = NO2 + CL';
k(:,i) = 6.2E-12.*exp(295./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO'; 
fCLO(i)=fCLO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CLO + NO2 + M = CLNO3';
k(:,i) = k_3rd_iupac(T,M,1.6E-31,3.4,7.E-11,0.,0.4);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'NO2'; 
fCLO(i)=fCLO(i)-1; fNO2(i)=fNO2(i)-1; fCLNO3(i)=fCLNO3(i)+1; 

i=i+1;
Rnames{i} = 'CLNO3 = CLO + NO2';
k(:,i) = 6.918E-7.*exp(-10909./T).*M;
Gstr{i,1} = 'CLNO3'; 
fCLNO3(i)=fCLNO3(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CLNO3 + O = CLO + NO3';
k(:,i) = 4.5E-12.*exp(-900./T);
Gstr{i,1} = 'CLNO3'; Gstr{i,2} = 'O'; 
fCLNO3(i)=fCLNO3(i)-1; fO(i)=fO(i)-1; fCLO(i)=fCLO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CLNO3 + CL = CL2 + NO3';
k(:,i) = 6.2E-12.*exp(145./T);
Gstr{i,1} = 'CLNO3'; Gstr{i,2} = 'CL'; 
fCLNO3(i)=fCLNO3(i)-1; fCL(i)=fCL(i)-1; fCL2(i)=fCL2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH4 = HCL + CH3O2';
k(:,i) = 6.6E-12.*exp(-1240./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH4'; 
fCL(i)=fCL(i)-1; fCH4(i)=fCH4(i)-1; fHCL(i)=fHCL(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CL + HCHO = HCL + CO + HO2';
k(:,i) = 8.1E-11.*exp(-34./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'HCHO'; 
fCL(i)=fCL(i)-1; fHCHO(i)=fHCHO(i)-1; fHCL(i)=fHCL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH3OOH = HCHO + HCL + OH';
k(:,i) = 5.9E-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3OOH'; 
fCL(i)=fCL(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHCL(i)=fHCL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CLO + CH3O2 = HO2 + CL + HCHO';
k(:,i) = 3.3E-12.*exp(-115./T);
Gstr{i,1} = 'CLO'; Gstr{i,2} = 'CH3O2'; 
fCLO(i)=fCLO(i)-1; fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)+1; fCL(i)=fCL(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CCL4 + O1D = CLO + 3CL';
k(:,i) = 3.3E-10;
Gstr{i,1} = 'CCL4'; Gstr{i,2} = 'O1D'; 
fCCL4(i)=fCCL4(i)-1; fO1D(i)=fO1D(i)-1; fCLO(i)=fCLO(i)+1; fCL(i)=fCL(i)+3; 

i=i+1;
Rnames{i} = 'CH3CL + O1D = OH + CL';
k(:,i) = 1.65E-10;
Gstr{i,1} = 'CH3CL'; Gstr{i,2} = 'O1D'; 
fCH3CL(i)=fCH3CL(i)-1; fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CH3CL + OH = H2O + CL';
k(:,i) = 2.4E-12.*exp(-1250./T);
Gstr{i,1} = 'CH3CL'; Gstr{i,2} = 'OH'; 
fCH3CL(i)=fCH3CL(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CH3CCL3 + O1D = OH + 3CL';
k(:,i) = 3.E-10;
Gstr{i,1} = 'CH3CCL3'; Gstr{i,2} = 'O1D'; 
fCH3CCL3(i)=fCH3CCL3(i)-1; fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fCL(i)=fCL(i)+3; 

i=i+1;
Rnames{i} = 'CH3CCL3 + OH = H2O + 3CL';
k(:,i) = 1.64E-12.*exp(-1520./T);
Gstr{i,1} = 'CH3CCL3'; Gstr{i,2} = 'OH'; 
fCH3CCL3(i)=fCH3CCL3(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fCL(i)=fCL(i)+3; 

i=i+1;
Rnames{i} = 'CL + C2H4 = HOCH2CH2O2 + HCL';
k(:,i) = k_3rd_iupac(T,M,1.85E-29,3.3,6.0E-10,0.0,0.4);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'C2H4'; 
fCL(i)=fCL(i)-1; fC2H4(i)=fC2H4(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHCL(i)=fHCL(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH3CHO = HCL + CH3CO3';
k(:,i) = 8.0e-11;
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH3CHO'; 
fCL(i)=fCL(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHCL(i)=fHCL(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H2 + CL = CH3O2 + HCL';
k(:,i) = k_3rd_iupac(T,M,6.1e-30,3.0,2.0e-10,0.,0.6);
Gstr{i,1} = 'C2H2'; Gstr{i,2} = 'CL'; 
fC2H2(i)=fC2H2(i)-1; fCL(i)=fCL(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHCL(i)=fHCL(i)+1; 

i=i+1;
Rnames{i} = 'C2H6 + CL = CH3O2 + HCL';
k(:,i) = 8.3E-11.*exp(-100./T);
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'CL'; 
fC2H6(i)=fC2H6(i)-1; fCL(i)=fCL(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHCL(i)=fHCL(i)+1; 

i=i+1;
Rnames{i} = 'CF2CL2 + O1D = CLO + CL';
k(:,i) = 1.4E-10;
Gstr{i,1} = 'CF2CL2'; Gstr{i,2} = 'O1D'; 
fCF2CL2(i)=fCF2CL2(i)-1; fO1D(i)=fO1D(i)-1; fCLO(i)=fCLO(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'CFCL3 + O1D = CLO + 2CL';
k(:,i) = 2.3E-10;
Gstr{i,1} = 'CFCL3'; Gstr{i,2} = 'O1D'; 
fCFCL3(i)=fCFCL3(i)-1; fO1D(i)=fO1D(i)-1; fCLO(i)=fCLO(i)+1; fCL(i)=fCL(i)+2; 

i=i+1;
Rnames{i} = 'BR + O3 = BRO + O2';
k(:,i) = 1.7E-11.*exp(-800./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'O3'; 
fBR(i)=fBR(i)-1; fO3(i)=fO3(i)-1; fBRO(i)=fBRO(i)+1;  

i=i+1;
Rnames{i} = 'BRO + O = BR + O2';
k(:,i) = 1.9E-11.*exp(230./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'O'; 
fBRO(i)=fBRO(i)-1; fO(i)=fO(i)-1; fBR(i)=fBR(i)+1;  

i=i+1;
Rnames{i} = 'BRO + BRO = 2BR + O2';
k(:,i) = 2.7E-12;
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'BRO'; 
fBRO(i)=fBRO(i)-1; fBRO(i)=fBRO(i)-1; fBR(i)=fBR(i)+2;  

i=i+1;
Rnames{i} = 'BRO + BRO = BR2 + O2';
k(:,i) = 2.9E-14.*exp(840./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'BRO'; 
fBRO(i)=fBRO(i)-1; fBRO(i)=fBRO(i)-1; fBR2(i)=fBR2(i)+1;  

i=i+1;
Rnames{i} = 'BR + HO2 = HBR + O2';
k(:,i) = 7.7E-12.*exp(-450./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'HO2'; 
fBR(i)=fBR(i)-1; fHO2(i)=fHO2(i)-1; fHBR(i)=fHBR(i)+1;  

i=i+1;
Rnames{i} = 'BRO + HO2 = HOBR + O2';
k(:,i) = 4.5E-12.*exp(500./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'HO2'; 
fBRO(i)=fBRO(i)-1; fHO2(i)=fHO2(i)-1; fHOBR(i)=fHOBR(i)+1;  

i=i+1;
Rnames{i} = 'HBR + OH = BR + H2O';
k(:,i) = 6.7E-12.*exp(155./T);
Gstr{i,1} = 'HBR'; Gstr{i,2} = 'OH'; 
fHBR(i)=fHBR(i)-1; fOH(i)=fOH(i)-1; fBR(i)=fBR(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOBR + O = OH + BRO';
k(:,i) = 1.2E-10.*exp(-430./T);
Gstr{i,1} = 'HOBR'; Gstr{i,2} = 'O'; 
fHOBR(i)=fHOBR(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; fBRO(i)=fBRO(i)+1; 

i=i+1;
Rnames{i} = 'BR2 + OH = HOBR + BR';
k(:,i) = 2.0E-11.*exp(240./T);
Gstr{i,1} = 'BR2'; Gstr{i,2} = 'OH'; 
fBR2(i)=fBR2(i)-1; fOH(i)=fOH(i)-1; fHOBR(i)=fHOBR(i)+1; fBR(i)=fBR(i)+1; 

i=i+1;
Rnames{i} = 'BR + BRNO3 = BR2 + NO3';
k(:,i) = 4.9E-11;
Gstr{i,1} = 'BR'; Gstr{i,2} = 'BRNO3'; 
fBR(i)=fBR(i)-1; fBRNO3(i)=fBRNO3(i)-1; fBR2(i)=fBR2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'BRO + NO = BR + NO2';
k(:,i) = 8.7E-12.*exp(260./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'NO'; 
fBRO(i)=fBRO(i)-1; fNO(i)=fNO(i)-1; fBR(i)=fBR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BRO + NO2 + M = BRNO3';
k(:,i) = k_BRO_NO2;
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'NO2';  
fBRO(i)=fBRO(i)-1; fNO2(i)=fNO2(i)-1; fBRNO3(i)=fBRNO3(i)+1; 

i=i+1;
Rnames{i} = 'BRNO3 = BRO + NO2';
k(:,i) = k_BRO_NO2./(5.44E-9.*exp(14192./T).*1.E6.*8.314409.*T./(101325.*6.022045e23));
Gstr{i,1} = 'BRNO3'; 
fBRNO3(i)=fBRNO3(i)-1; fBRO(i)=fBRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BR + HCHO = HBR + CO + HO2';
k(:,i) = 7.7E-12.*exp(-580./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'HCHO'; 
fBR(i)=fBR(i)-1; fHCHO(i)=fHCHO(i)-1; fHBR(i)=fHBR(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BR + CH3OOH = CH3O2 + HBR';
k(:,i) = 2.6E-12.*exp(-1600./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'CH3OOH'; 
fBR(i)=fBR(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHBR(i)=fHBR(i)+1; 

i=i+1;
Rnames{i} = 'BRO + CH3O2 = HOBR + HCHO';
k(:,i) = G7402a_yield.*5.7E-12;
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'CH3O2'; 
fBRO(i)=fBRO(i)-1; fCH3O2(i)=fCH3O2(i)-1; fHOBR(i)=fHOBR(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'BRO + CH3O2 = BR + HCHO + HO2';
k(:,i) = (1.-G7402a_yield).*5.7E-12;
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'CH3O2'; 
fBRO(i)=fBRO(i)-1; fCH3O2(i)=fCH3O2(i)-1; fBR(i)=fBR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3BR + OH = H2O + BR';
k(:,i) = 2.35E-12.*exp(-1300./T);
Gstr{i,1} = 'CH3BR'; Gstr{i,2} = 'OH'; 
fCH3BR(i)=fCH3BR(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+1; 

i=i+1;
Rnames{i} = 'BR + C2H4 = HOCH2CH2O2 + HBR';
k(:,i) = 2.8E-13.*exp(224./T)./(1.+1.13E24.*exp(-3200./T)).*0.21.*M;
Gstr{i,1} = 'BR'; Gstr{i,2} = 'C2H4';
fBR(i)=fBR(i)-1; fC2H4(i)=fC2H4(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; fHBR(i)=fHBR(i)+1; 

i=i+1;
Rnames{i} = 'BR + CH3CHO = HBR + CH3CO3';
k(:,i) = 1.8e-11.*exp(-460./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'CH3CHO'; 
fBR(i)=fBR(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHBR(i)=fHBR(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'BR + C2H2 = CH3O2 + HBR';
k(:,i) = 6.35e-15.*exp(440./T);
Gstr{i,1} = 'BR'; Gstr{i,2} = 'C2H2'; 
fBR(i)=fBR(i)-1; fC2H2(i)=fC2H2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHBR(i)=fHBR(i)+1; 

i=i+1;
Rnames{i} = 'CHBR3 + OH = H2O + 3BR';
k(:,i) = 1.35E-12.*exp(-600./T);
Gstr{i,1} = 'CHBR3'; Gstr{i,2} = 'OH'; 
fCHBR3(i)=fCHBR3(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+3; 

i=i+1;
Rnames{i} = 'CH2BR2 + OH = H2O + 2BR';
k(:,i) = 2.0E-12.*exp(-840./T);
Gstr{i,1} = 'CH2BR2'; Gstr{i,2} = 'OH'; 
fCH2BR2(i)=fCH2BR2(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+2; 

i=i+1;
Rnames{i} = 'BR + BRCL = BR2 + CL';
k(:,i) = 3.32E-15;
Gstr{i,1} = 'BR'; Gstr{i,2} = 'BRCL'; 
fBR(i)=fBR(i)-1; fBRCL(i)=fBRCL(i)-1; fBR2(i)=fBR2(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'BR + CL2 = BRCL + CL';
k(:,i) = 1.10E-15;
Gstr{i,1} = 'BR'; Gstr{i,2} = 'CL2'; 
fBR(i)=fBR(i)-1; fCL2(i)=fCL2(i)-1; fBRCL(i)=fBRCL(i)+1; fCL(i)=fCL(i)+1; 

i=i+1;
Rnames{i} = 'BR2 + CL = BRCL + BR';
k(:,i) = 2.3E-10.*exp(135./T);
Gstr{i,1} = 'BR2'; Gstr{i,2} = 'CL'; 
fBR2(i)=fBR2(i)-1; fCL(i)=fCL(i)-1; fBRCL(i)=fBRCL(i)+1; fBR(i)=fBR(i)+1; 

i=i+1;
Rnames{i} = 'BRO + CLO = BR + OCLO';
k(:,i) = 1.6E-12.*exp(430./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'CLO'; 
fBRO(i)=fBRO(i)-1; fCLO(i)=fCLO(i)-1; fBR(i)=fBR(i)+1; fOCLO(i)=fOCLO(i)+1; 

i=i+1;
Rnames{i} = 'BRO + CLO = BR + CL + O2';
k(:,i) = 2.9E-12.*exp(220./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'CLO'; 
fBRO(i)=fBRO(i)-1; fCLO(i)=fCLO(i)-1; fBR(i)=fBR(i)+1; fCL(i)=fCL(i)+1;  

i=i+1;
Rnames{i} = 'BRO + CLO = BRCL + O2';
k(:,i) = 5.8E-13.*exp(170./T);
Gstr{i,1} = 'BRO'; Gstr{i,2} = 'CLO'; 
fBRO(i)=fBRO(i)-1; fCLO(i)=fCLO(i)-1; fBRCL(i)=fBRCL(i)+1;  

i=i+1;
Rnames{i} = 'BRCL + CL = BR + CL2';
k(:,i) = 1.45E-11;
Gstr{i,1} = 'BRCL'; Gstr{i,2} = 'CL'; 
fBRCL(i)=fBRCL(i)-1; fCL(i)=fCL(i)-1; fBR(i)=fBR(i)+1; fCL2(i)=fCL2(i)+1; 

i=i+1;
Rnames{i} = 'CHCL2BR + OH = H2O + BR + CH3O2';
k(:,i) = 2.0E-12.*exp(-840./T);
Gstr{i,1} = 'CHCL2BR'; Gstr{i,2} = 'OH'; 
fCHCL2BR(i)=fCHCL2BR(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CHCLBR2 + OH = H2O + 2BR + CH3O2';
k(:,i) = 2.0E-12.*exp(-840./T);
Gstr{i,1} = 'CHCLBR2'; Gstr{i,2} = 'OH'; 
fCHCLBR2(i)=fCHCLBR2(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+2; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CLBR + OH = H2O + BR + CH3O2';
k(:,i) = 2.4E-12.*exp(-920./T);
Gstr{i,1} = 'CH2CLBR'; Gstr{i,2} = 'OH'; 
fCH2CLBR(i)=fCH2CLBR(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fBR(i)=fBR(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

%% PHOTOLYSIS
i=i+1;
Rnames{i} = 'BR2 + hv = BR + BR';
k(:,i) = Jn24;
Gstr{i,1} = 'BR2';
fBR2(i)=fBR2(i)-1; fBR(i)=fBR(i)+1; fBR(i)=fBR(i)+1;

i=i+1;
Rnames{i} = 'BRO+ hv = BR + O';
k(:,i) = Jn25;
Gstr{i,1} = 'BRO';
fBRO(i)=fBRO(i)-1; fBR(i)=fBR(i)+1; fO(i)=fO(i)+1;

i=i+1;
Rnames{i} = 'HOBR + hv = BR + OH';
k(:,i) = Jn26;
Gstr{i,1} = 'HOBR';
fHOBR(i)=fHOBR(i)-1; fBR(i)=fBR(i)+1; fOH(i)=fOH(i)+1;

i=i+1;
Rnames{i} = 'BRNO2 + hv = BR + NO2';
k(:,i) = Jn27;
Gstr{i,1} = 'BRNO2';
fBRNO2(i)=fBRNO2(i)-1; fBR(i)=fBR(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i} = 'BRNO3 + hv = BRO + NO2';
k(:,i) = Jn29;
Gstr{i,1} = 'BRNO3';
fBRNO3(i)=fBRNO3(i)-1; fBRO(i)=fBRO(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i} = 'BRNO3 + hv = BR + NO3';
k(:,i) = Jn28;
Gstr{i,1} = 'BRNO3';
fBRNO3(i)=fBRNO3(i)-1; fBR(i)=fBR(i)+1; fNO3(i)=fNO3(i)+1;

i=i+1;
Rnames{i} = 'CHBR3 + hv = 3BR + CH3O2';
k(:,i) = Jn30;
Gstr{i,1} = 'CHBR3';
fCHBR3(i)=fCHBR3(i)-1; fBR(i)=fBR(i)+1; fBR(i)=fBR(i)+1; fBR(i)=fBR(i)+1;
fCH3O2(i)=fCH3O2(i)+1;

i=i+1;
Rnames{i} = 'BRCL + hv = BR + CL';
k(:,i) = Jn31;
Gstr{i,1} = 'BRCL';
fBRCL(i)=fBRCL(i)-1; fBR(i)=fBR(i)+1; fCL(i)=fCL(i)+1;

i=i+1;
Rnames{i} = 'CL2 + hv = CL + CL';
k(:,i) = J32;
Gstr{i,1} = 'CL2';
fCL2(i)=fCL2(i)-1; fCL(i)=fCL(i)+1; fCL(i)=fCL(i)+1;

i=i+1;
Rnames{i} = 'CLO + hv = CL + O';
k(:,i) = J33;
Gstr{i,1} = 'CLO';
fCLO(i)=fCLO(i)-1; fCL(i)=fCL(i)+1; fO(i)=fO(i)+1;

i=i+1;
Rnames{i} = 'CLNO2 + hv = CL + NO2';
k(:,i) = Jn23;
Gstr{i,1} = 'CLNO2';
fCLNO2(i)=fCLNO2(i)-1; fCL(i)=fCL(i)+1; fNO2(i)=fNO2(i)+1;

i=i+1;
Rnames{i} = 'CLNO3 + hv = CL + NO3';
k(:,i) = Jn34;
Gstr{i,1} = 'CLNO3';
fCLNO3(i)=fCLNO3(i)-1; fCL(i)=fCL(i)+1; fNO3(i)=fNO3(i)+1;

i=i+1;
Rnames{i} = 'CLNO3 + hv = CLO + NO2';
k(:,i)= Jn35;
Gstr{i,1} = 'CLNO3';
fCLNO3(i)=fCLNO3(i)-1; fCLO(i)=fCLO(i)+1; fNO2(i)=fNO2(i)+1;

% END OF REACTION LIST


