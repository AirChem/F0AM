% GEOSCHEM_HetRxns.m
% Wet (aerosol) deposition reactions for GEOSCHEM mechanism.
% This is a skeleton based on reactions in globchem.dat.
% Lots of work is needed to get the full and correct mechanism in here.
% Designed to be use as a sub-mechanism with AllRxns.
% 
% 20151108 KRT
% 20160225 GMW  Moved to sub-mechanism.

Species2Add = {'SOAGX';'SOAMG';'SOAGC';'AITET';'INDIOL';'ONITAam';'ONITApm';};
AddSpecies

i=i+1;
Rnames{i}='HO2 = 0.500H2O2';
% k(:,i) = 3.30E+01; %that's actually molar mass...
Gstr{i,1} = 'HO2'; Gstr{i,2} = '';
fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+0.50; 

i=i+1;
Rnames{i}='NO2 = 0.500HNO3 + 0.500HNO2';
% k(:,i) = 4.60E+01;
Gstr{i,1} = 'NO2'; Gstr{i,2} = '';
fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+0.50; fHNO2(i)=fHNO2(i)+0.50; 

i=i+1;
Rnames{i}='NO3 = HNO3';
% k(:,i) = 6.20E+01;
Gstr{i,1} = 'NO3'; Gstr{i,2} = '';
fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='N2O5 = 2.000HNO3'; %MIMICS CB05 coarse treatment
% k(:,i) = 2.5e-22.*H2O       ;
Gstr{i,1} = 'N2O5'; Gstr{i,2} = '';
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+2.00; 

i=i+1;
Rnames{i} = 'N2O5 = HNO3 + HNO3';
% k(:,i) = 1.8e-39.*H2O.^2       ;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fHNO3(i)=fHNO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='GLYX = SOAGX';
% k(:,i) = 5.80E+01;
Gstr{i,1} = 'GLYX'; Gstr{i,2} = '';
fGLYX(i)=fGLYX(i)-1; fSOAGX(i)=fSOAGX(i)+1; 

i=i+1;
Rnames{i}='MGLY = SOAMG';
% k(:,i) = 7.20E+01;
Gstr{i,1} = 'MGLY'; Gstr{i,2} = '';
fMGLY(i)=fMGLY(i)-1; fSOAMG(i)=fSOAMG(i)+1; 

i=i+1;
Rnames{i}='GLYC = SOAGC';
% k(:,i) = 5.90E+01;
Gstr{i,1} = 'GLYC'; Gstr{i,2} = '';
fGLYC(i)=fGLYC(i)-1; fSOAGC(i)=fSOAGC(i)+1; 

i=i+1;
Rnames{i}='IEPOX = AITET';
% k(:,i) = 1.18E+02;
Gstr{i,1} = 'IEPOX'; Gstr{i,2} = '';
fIEPOX(i)=fIEPOX(i)-1; fAITET(i)=fAITET(i)+1; 

i=i+1;
Rnames{i}='ISOPNB = ONITAam';
% k(:,i) = 1.47E+02;
Gstr{i,1} = 'ISOPNB'; Gstr{i,2} = '';
fISOPNB(i)=fISOPNB(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='ISOPND = ONITAam';
% k(:,i) = 1.47E+02;
Gstr{i,1} = 'ISOPND'; Gstr{i,2} = '';
fISOPND(i)=fISOPND(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='MACRN = ONITAam';
% k(:,i) = 1.49E+02;
Gstr{i,1} = 'MACRN'; Gstr{i,2} = '';
fMACRN(i)=fMACRN(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='MVKN = ONITAam';
% k(:,i) = 1.49E+02;
Gstr{i,1} = 'MVKN'; Gstr{i,2} = '';
fMVKN(i)=fMVKN(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='PROPNN = ONITAam';
% k(:,i) = 1.19E+02;
Gstr{i,1} = 'PROPNN'; Gstr{i,2} = '';
fPROPNN(i)=fPROPNN(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='ETHLN = ONITAam';
% k(:,i) = 1.05E+02;
Gstr{i,1} = 'ETHLN'; Gstr{i,2} = '';
fETHLN(i)=fETHLN(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='R4N2 = ONITAam';
% k(:,i) = 1.19E+02;
Gstr{i,1} = 'R4N2'; Gstr{i,2} = '';
fR4N2(i)=fR4N2(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='ISN1 = ONITAam';
% k(:,i) = 1.47E+02;
Gstr{i,1} = 'ISN1'; Gstr{i,2} = '';
fISN1(i)=fISN1(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='DHDN = ONITAam';
% k(:,i) = 2.26E+02;
Gstr{i,1} = 'DHDN'; Gstr{i,2} = '';
fDHDN(i)=fDHDN(i)-1; fONITAam(i)=fONITAam(i)+1; 

i=i+1;
Rnames{i}='MONITS = ONITApm';
% k(:,i) = 2.15E+02;
Gstr{i,1} = 'MONITS'; Gstr{i,2} = '';
fMONITS(i)=fMONITS(i)-1; fONITApm(i)=fONITApm(i)+1; 

i=i+1;
Rnames{i}='MONITU = ONITApm';
% k(:,i) = 2.15E+02;
Gstr{i,1} = 'MONITU'; Gstr{i,2} = '';
fMONITU(i)=fMONITU(i)-1; fONITApm(i)=fONITApm(i)+1; 

i=i+1;
Rnames{i}='HONIT = ONITApm';
% k(:,i) = 2.15E+02;
Gstr{i,1} = 'HONIT'; Gstr{i,2} = '';
fHONIT(i)=fHONIT(i)-1; fONITApm(i)=fONITApm(i)+1; 

i=i+1;
Rnames{i}='ONITAam = INDIOL + HNO3';
% k(:,i) = 2.78E-04;
Gstr{i,1} = 'ONITAam';
fONITAam(i)=fONITAam(i)-1;fINDIOL(i)=fINDIOL(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='ONITApm = INDIOL + HNO3';
% k(:,i) = 2.78E-04;
Gstr{i,1} = 'ONITApm';
fONITApm(i)=fONITApm(i)-1;fINDIOL(i)=fINDIOL(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='BrNO3 = HOBr + HNO3';
% k(:,i) = 1.42E+02;
Gstr{i,1} = 'BrNO3'; Gstr{i,2} = '';
fBrNO3(i)=fBrNO3(i)-1; fHOBr(i)=fHOBr(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='HOBr = 0.500Br2 + H2O';
% k(:,i) = 0.97E+02;
Gstr{i,1} = 'HOBr'; Gstr{i,2} = '';
fHOBr(i)=fHOBr(i)-1; fBr2(i)=fBr2(i)+0.50;  

i=i+1;
Rnames{i}='HBr = 0.500Br2';
% k(:,i) = 0.81E+02;
Gstr{i,1} = 'HBr'; Gstr{i,2} = '';
fHBr(i)=fHBr(i)-1; fBr2(i)=fBr2(i)+0.50; 

i=i+1;
Rnames{i}='HOBr = 0.500Br2 + H2O';
% k(:,i) = 0.97E+02;
Gstr{i,1} = 'HOBr'; Gstr{i,2} = '';
fHOBr(i)=fHOBr(i)-1; fBr2(i)=fBr2(i)+0.50;  

i=i+1;
Rnames{i}='HBr = 0.500Br2';
% k(:,i) = 0.81E+02;
Gstr{i,1} = 'HBr'; Gstr{i,2} = '';
fHBr(i)=fHBr(i)-1; fBr2(i)=fBr2(i)+0.50; 

