% GEOSCHEM_HO2H2O_Li2014.m
% Experimental reactions following formation of the HO2.H2O adduct as described in the HONO paper by
% Li et al., Science (2014). Note that this chemistry has since been debunked (see online comments
% on that same paper).
%
% Meant to be used as a sub-mechanism for GEOS-CHEM.
%
% 20151110 KRT
% 20160225 GMW  Moved to sub-mechanism.

SpeciesToAdd = {'HO2H2O'};
AddSpecies

i=i+1;
Rnames{i}='HO2 + H2O = HO2H2O';
k(:,i) = 1.00E-13.*H2O;
Gstr{i,1} = 'HO2';
fHO2(i)=fHO2(i)-1; fHO2H2O(i)=fHO2H2O(i)+1; 

i=i+1;
Rnames{i}='HO2H2O = HO2 + H2O';
k(:,i) = K_HO2H2O;
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = '';
fHO2H2O(i)=fHO2H2O(i)-1; fHO2(i)=fHO2(i)+1;  

i=i+1;
Rnames{i}='HO2H2O + NO2 = HNO2 + H2O';
k(:,i) = K_HO2H2O_NO2;
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'NO2';
fHO2H2O(i)=fHO2H2O(i)-1; fNO2(i)=fNO2(i)-1; fHNO2(i)=fHNO2(i)+1;   

i=i+1;
Rnames{i}='HO2H2O + NO = NO2 + OH + H2O';
k(:,i) = 3.70E-12*exp(250./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'NO';
fHO2H2O(i)=fHO2H2O(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1;  

i=i+1;
Rnames{i}='HO2H2O + HO2 = H2O2 + O2 + H2O';
k(:,i) = 5.40E-11*exp(-410./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'HO2';
fHO2H2O(i)=fHO2H2O(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1;   

i=i+1;
Rnames{i}='HO2H2O + HO2 = O3 + 2.000H2O';
k(:,i) = 1.30E-11*exp(-100./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'HO2';
fHO2H2O(i)=fHO2H2O(i)-1; fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)+1;

i=i+1;
Rnames{i}='HO2H2O + HO2H2O = H2O2 + 2.000H2O';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'HO2H2O';
fHO2H2O(i)=fHO2H2O(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='HO2H2O + O3 = H2O + 2.000O2 + OH';
k(:,i) = 1.10E-14*exp(-500./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'O3';
fHO2H2O(i)=fHO2H2O(i)-1; fO3(i)=fO3(i)-1;  fO2(i)=fO2(i)+2.00; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='HO2H2O + OH = O2 + 2.000H2O';
k(:,i) = 4.80E-11*exp(250./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'OH';
fHO2H2O(i)=fHO2H2O(i)-1; fOH(i)=fOH(i)-1;

i=i+1;
Rnames{i}='HO2H2O + NO3 = 0.300HNO3 + 0.700NO2 + 0.700OH + O2 + H2O';
k(:,i) = 3.50E-12;
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'NO3';
fHO2H2O(i)=fHO2H2O(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+0.30; fNO2(i)=fNO2(i)+0.70; fOH(i)=fOH(i)+0.70;   

i=i+1;
Rnames{i}='ATO2 + HO2H2O = 0.150MCO3 + 0.150OH + 0.150CH2O + 0.850ATOOH';
k(:,i) = 8.60E-13*exp(700./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'HO2H2O';
fATO2(i)=fATO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fMCO3(i)=fMCO3(i)+0.15; fOH(i)=fOH(i)+0.15; fCH2O(i)=fCH2O(i)+0.15; fATOOH(i)=fATOOH(i)+0.85; 

i=i+1;
Rnames{i}='KO2 + HO2H2O = 0.150OH + 0.150ALD2 + 0.150MCO3 + 0.850ATOOH';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'HO2H2O';
fKO2(i)=fKO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fOH(i)=fOH(i)+0.15; fALD2(i)=fALD2(i)+0.15; fMCO3(i)=fMCO3(i)+0.15; fATOOH(i)=fATOOH(i)+0.85; 

i=i+1;
Rnames{i}='RIO2 + HO2H2O = 0.937RIP + 0.063OH + 0.025MACR + 0.038MVK + 0.063HO2 + 0.063CH2O';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'HO2H2O';
fRIO2(i)=fRIO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fRIP(i)=fRIP(i)+0.93; fOH(i)=fOH(i)+0.06; fMACR(i)=fMACR(i)+0.02; fMVK(i)=fMVK(i)+0.03; fHO2(i)=fHO2(i)+0.06; fCH2O(i)=fCH2O(i)+0.06; 

i=i+1;
Rnames{i}='VRO2 + HO2H2O = 0.100VRP + 0.680OH + 0.578GLYC + 0.578MCO3 + 0.187MEK + 0.102HO2 + 0.102CH2O + 0.102MGLY + 0.033RCHO';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'HO2H2O';
fVRO2(i)=fVRO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fVRP(i)=fVRP(i)+0.10; fOH(i)=fOH(i)+0.68; fGLYC(i)=fGLYC(i)+0.57; fMCO3(i)=fMCO3(i)+0.57; fMEK(i)=fMEK(i)+0.18; fHO2(i)=fHO2(i)+0.10; fCH2O(i)=fCH2O(i)+0.10; fMGLY(i)=fMGLY(i)+0.10; fRCHO(i)=fRCHO(i)+0.03; 

i=i+1;
Rnames{i}='MRO2 + HO2H2O = MRP + H2O';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'HO2H2O';
fMRO2(i)=fMRO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fMRP(i)=fMRP(i)+1;  

i=i+1;
Rnames{i}='MAN2 + HO2H2O = 0.075PROPNN + 0.075CO + 0.075HO2 + 0.075MGLY + 0.075CH2O + 0.075NO2 + 0.150OH + 0.850ISNP';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'HO2H2O';
fMAN2(i)=fMAN2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fPROPNN(i)=fPROPNN(i)+0.07; fCO(i)=fCO(i)+0.07; fHO2(i)=fHO2(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fCH2O(i)=fCH2O(i)+0.07; fNO2(i)=fNO2(i)+0.07; fOH(i)=fOH(i)+0.15; fISNP(i)=fISNP(i)+0.85; 

i=i+1;
Rnames{i}='B3O2 + HO2H2O = RB3P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'HO2H2O';
fB3O2(i)=fB3O2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fRB3P(i)=fRB3P(i)+1; 

i=i+1;
Rnames{i}='INO2 + HO2H2O = INPN';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'HO2H2O';
fINO2(i)=fINO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i}='PRN1 + HO2H2O = PRPN';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'HO2H2O';
fPRN1(i)=fPRN1(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fPRPN(i)=fPRPN(i)+1; 

i=i+1;
Rnames{i}='HO2H2O + ETO2 = ETP + H2O';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'ETO2';
fHO2H2O(i)=fHO2H2O(i)-1; fETO2(i)=fETO2(i)-1; fETP(i)=fETP(i)+1;  

i=i+1;
Rnames{i}='A3O2 + HO2H2O = RA3P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'HO2H2O';
fA3O2(i)=fA3O2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fRA3P(i)=fRA3P(i)+1; 

i=i+1;
Rnames{i}='PO2 + HO2H2O = PP + H2O';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'HO2H2O';
fPO2(i)=fPO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fPP(i)=fPP(i)+1;  

i=i+1;
Rnames{i}='MAO3 + HO2H2O = 0.440OH + 0.150O3 + 0.590CH2O + 0.390MO2 + 0.410MAOP + 0.390CO';
k(:,i) = 4.30E-13*exp(1040./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'HO2H2O';
fMAO3(i)=fMAO3(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fOH(i)=fOH(i)+0.44; fO3(i)=fO3(i)+0.15; fCH2O(i)=fCH2O(i)+0.59; fMO2(i)=fMO2(i)+0.39; fMAOP(i)=fMAOP(i)+0.41; fCO(i)=fCO(i)+0.39; 

i=i+1;
Rnames{i}='IEPOXOO + HO2H2O = 0.085HAC + 0.025GLYC + 0.085GLYX + 0.085MGLY + 1.125OH + 0.825HO2 + 1.100CO2 + 0.375CH2O + 0.278HCOOH + 0.600CO + 0.440HC187';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'IEPOXOO'; Gstr{i,2} = 'HO2H2O';
fIEPOXOO(i)=fIEPOXOO(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fHAC(i)=fHAC(i)+0.08; fGLYC(i)=fGLYC(i)+0.02; fGLYX(i)=fGLYX(i)+0.08; fMGLY(i)=fMGLY(i)+0.08; fOH(i)=fOH(i)+1.12; fHO2(i)=fHO2(i)+0.82; fCO2(i)=fCO2(i)+1.10; fCH2O(i)=fCH2O(i)+0.37; fHCOOH(i)=fHCOOH(i)+0.27; fCO(i)=fCO(i)+0.60; fHC187(i)=fHC187(i)+0.44; 

i=i+1;
Rnames{i}='MAOPO2 + HO2H2O = HAC + CO2 + 2.000OH';
k(:,i) = 2.91E-13*exp(1300./T) *fcro2ho2(4.);
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'HO2H2O';
fMAOPO2(i)=fMAOPO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fHAC(i)=fHAC(i)+1;  fOH(i)=fOH(i)+2.00; 

i=i+1;
Rnames{i}='HC5OO + HO2H2O = 0.100IAP + 0.900OH + 0.900MGLY + 0.900GLYC + 0.900HO2';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'HO2H2O';
fHC5OO(i)=fHC5OO(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fIAP(i)=fIAP(i)+0.10; fOH(i)=fOH(i)+0.90; fMGLY(i)=fMGLY(i)+0.90; fGLYC(i)=fGLYC(i)+0.90; fHO2(i)=fHO2(i)+0.90; 

i=i+1;
Rnames{i}='MACRNO2 + HO2H2O = 0.080ACTA + 0.080CH2O + 0.150NO3 + 0.070HCOOH + 0.070MGLY + 0.850HAC + 0.850NO2 + 0.930CO2 + OH';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'HO2H2O';
fMACRNO2(i)=fMACRNO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fACTA(i)=fACTA(i)+0.08; fCH2O(i)=fCH2O(i)+0.08; fNO3(i)=fNO3(i)+0.15; fHCOOH(i)=fHCOOH(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fHAC(i)=fHAC(i)+0.85; fNO2(i)=fNO2(i)+0.85; fCO2(i)=fCO2(i)+0.93; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='DIBOO + HO2H2O = 0.150HO2 + 0.150OH + 0.078GLYC + 0.078MGLY + 0.072HAC + 0.072GLYX + 0.850R4P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'HO2H2O';
fDIBOO(i)=fDIBOO(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fHO2(i)=fHO2(i)+0.15; fOH(i)=fOH(i)+0.15; fGLYC(i)=fGLYC(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fHAC(i)=fHAC(i)+0.07; fGLYX(i)=fGLYX(i)+0.07; fR4P(i)=fR4P(i)+0.85; 

i=i+1;
Rnames{i}='MOBAOO + HO2H2O = 0.500OH + 0.500HO2 + 0.500RCHO + 0.500CO2 + 0.500R4P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'HO2H2O';
fMOBAOO(i)=fMOBAOO(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fOH(i)=fOH(i)+0.50; fHO2(i)=fHO2(i)+0.50; fRCHO(i)=fRCHO(i)+0.50; fCO2(i)=fCO2(i)+0.50; fR4P(i)=fR4P(i)+0.50; 

i=i+1;
Rnames{i}='HO2H2O + MCO3 = 0.410MAP + 0.150ACTA + 0.150O3 + 0.440OH + 0.440MO2';
k(:,i) = 5.20E-13*exp(980./T);
Gstr{i,1} = 'HO2H2O'; Gstr{i,2} = 'MCO3';
fHO2H2O(i)=fHO2H2O(i)-1; fMCO3(i)=fMCO3(i)-1; fMAP(i)=fMAP(i)+0.41; fACTA(i)=fACTA(i)+0.15; fO3(i)=fO3(i)+0.15; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44; 

i=i+1;
Rnames{i}='RCO3 + HO2H2O = 0.410RP + 0.150RCOOH + 0.150O3 + 0.440OH + 0.440ETO2';
k(:,i) = 4.30E-13*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2H2O';
fRCO3(i)=fRCO3(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fRP(i)=fRP(i)+0.41; fRCOOH(i)=fRCOOH(i)+0.15; fO3(i)=fO3(i)+0.15; fOH(i)=fOH(i)+0.44; fETO2(i)=fETO2(i)+0.44; 

i=i+1;
Rnames{i}='MO2 + HO2H2O = MP + H2O';
k(:,i) = 4.10E-13*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2H2O';
fMO2(i)=fMO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fMP(i)=fMP(i)+1; 

i=i+1;
Rnames{i}='ISNOOB + HO2H2O = INPN';
k(:,i) = 2.06E-13*exp(1300./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'HO2H2O';
fISNOOB(i)=fISNOOB(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i}='ISOPNDO2 + HO2H2O = 0.010MACRN + 0.200HAC + 0.200ETHLN + 0.070CH2O + 0.230GLYC + 0.230PROPNN + 0.500HO2 + 0.500OH + 0.060MVKN + 0.500ISNP';
k(:,i) = 8.70E-14*exp(1650./T);
Gstr{i,1} = 'ISOPNDO2'; Gstr{i,2} = 'HO2H2O';
fISOPNDO2(i)=fISOPNDO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fMACRN(i)=fMACRN(i)+0.01; fHAC(i)=fHAC(i)+0.20; fETHLN(i)=fETHLN(i)+0.20; fCH2O(i)=fCH2O(i)+0.07; fGLYC(i)=fGLYC(i)+0.23; fPROPNN(i)=fPROPNN(i)+0.23; fHO2(i)=fHO2(i)+0.50; fOH(i)=fOH(i)+0.50; fMVKN(i)=fMVKN(i)+0.06; fISNP(i)=fISNP(i)+0.50; 
i=i+1;
Rnames{i}='ISOPNBO2 + HO2H2O = 0.060GLYC + 0.060HAC + 0.440CH2O + 0.280MACRN + 0.160MVKN + 0.060NO2 + 0.440HO2 + 0.500OH + 0.500ISNP';
k(:,i) = 8.70E-14*exp(1650./T);
Gstr{i,1} = 'ISOPNBO2'; Gstr{i,2} = 'HO2H2O';
fISOPNBO2(i)=fISOPNBO2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fGLYC(i)=fGLYC(i)+0.06; fHAC(i)=fHAC(i)+0.06; fCH2O(i)=fCH2O(i)+0.44; fMACRN(i)=fMACRN(i)+0.28; fMVKN(i)=fMVKN(i)+0.16; fNO2(i)=fNO2(i)+0.06; fHO2(i)=fHO2(i)+0.44; fOH(i)=fOH(i)+0.50; fISNP(i)=fISNP(i)+0.50; 
i=i+1;
Rnames{i}='ISNOOA + HO2H2O = 0.750RP + 0.250RCOOH + 0.250O3';
k(:,i) = 5.20E-13*exp(980./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'HO2H2O';
fISNOOA(i)=fISNOOA(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fRP(i)=fRP(i)+0.75; fRCOOH(i)=fRCOOH(i)+0.25; fO3(i)=fO3(i)+0.25; 

i=i+1;
Rnames{i}='R4N1 + HO2H2O = R4N2';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'HO2H2O';
fR4N1(i)=fR4N1(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fR4N2(i)=fR4N2(i)+1; 

i=i+1;
Rnames{i}='R4O2 + HO2H2O = R4P + H2O';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'HO2H2O';
fR4O2(i)=fR4O2(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fR4P(i)=fR4P(i)+1; 

% i=i+1;
% Rnames{i}='Br + HO2H2O = HBr';
% k(:,i) = 4.80E-12*exp(-310./T);
% Gstr{i,1} = 'Br'; Gstr{i,2} = 'HO2H2O';
% fBr(i)=fBr(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fHBr(i)=fHBr(i)+1; 

i=i+1;
Rnames{i}='BrO + HO2H2O = HOBr';
k(:,i) = 4.50E-12*exp(460./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'HO2H2O';
fBrO(i)=fBrO(i)-1; fHO2H2O(i)=fHO2H2O(i)-1; fHOBr(i)=fHOBr(i)+1;  

