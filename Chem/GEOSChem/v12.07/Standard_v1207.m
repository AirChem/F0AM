% Standard_v1207.m
% generated from Standard_v1207.eqn
% 20200421
% # of species = 247
% # of reactions = 622

SpeciesToAdd = {...
'A3O2'; 'ACET'; 'ACTA'; 'AERI'; 'ALD2'; 'ALK4'; 'ATO2'; 'ATOOH'; 'B3O2'; 'BENZ'; ...
'Br'; 'Br2'; 'BrCl'; 'BrO'; 'BRO2'; 'BrNO2'; 'BrNO3'; 'BrSALA'; 'BrSALC'; 'C2H4'; ...
'C2H6'; 'C3H8'; 'CCl4'; 'CFC11'; 'CFC12'; 'CFC113'; 'CFC114'; 'CFC115'; 'CH2Br2'; 'CH2Cl2'; ...
'CH2I2'; 'CH2ICl'; 'CH2IBr'; 'CH2O'; 'CH2OO'; 'CH3Br'; 'CH3CHOO'; 'CH3CCl3'; 'CH3Cl'; 'CH3I'; ...
'CH4'; 'CHBr3'; 'CHCl3'; 'Cl'; 'Cl2'; 'Cl2O2'; 'ClNO2'; 'ClNO3'; 'ClO'; 'ClOO'; ...
'CO'; 'CO2'; 'DHDN'; 'DHDC'; 'DHMOB'; 'DHPCARP'; 'DIBOO'; 'DMS'; 'EOH'; 'ETHLN'; ...
'ETNO3'; 'ETO2'; 'ETP'; 'GAOO'; 'GLYC'; 'GLYX'; 'H'; 'H1211'; 'H1301'; 'H2402'; ...
'H2O'; 'H2O2'; 'HAC'; 'HBr'; 'HC187'; 'HC5'; 'HC5OO'; 'HCFC123'; 'HCFC141b'; 'HCFC142b'; ...
'HCFC22'; 'HCl'; 'HCOOH'; 'HI'; 'HNO2'; 'HNO3'; 'HNO4'; 'HO2'; 'HOBr'; 'HOCl'; ...
'HOI'; 'HONIT'; 'HPALD'; 'HPC52O2'; 'I'; 'I2'; 'I2O2'; 'I2O3'; 'I2O4'; 'IAP'; ...
'IBr'; 'ICl'; 'IEPOXA'; 'IEPOXB'; 'IEPOXD'; 'IEPOXOO'; 'IMAE'; 'IMAO3'; 'INDIOL'; 'INO2'; ...
'INPN'; 'INO'; 'IO'; 'IONO'; 'IONO2'; 'IONITA'; 'IPMN'; 'IPRNO3'; 'ISALA'; 'ISALC'; ...
'ISN1'; 'ISN1OA'; 'ISN1OG'; 'ISNOOA'; 'ISNOOB'; 'ISNOHOO'; 'ISNP'; 'ISOP'; 'ISOPNB'; 'ISOPNBO2'; ...
'ISOPND'; 'ISOPNDO2'; 'KO2'; 'LBRO2H'; 'LBRO2N'; 'LIMO'; 'LIMO2'; 'LISOPOH'; 'LISOPNO3'; 'LTRO2H'; ...
'LTRO2N'; 'LVOC'; 'LVOCOA'; 'LXRO2H'; 'LXRO2N'; 'MACR'; 'MACRN'; 'MACRNO2'; 'MACROO'; 'MAN2'; ...
'MAOP'; 'MAOPO2'; 'MAP'; 'MBO'; 'MBOOO'; 'MCO3'; 'MEK'; 'MENO3'; 'MGLOO'; 'MGLY'; ...
'MGLYOO'; 'MO2'; 'MOBA'; 'MOBAOO'; 'MOH'; 'MONITA'; 'MONITS'; 'MONITU'; 'MP'; 'MPN'; ...
'MRO2'; 'MRP'; 'MSA'; 'MTPA'; 'MTPO'; 'MVK'; 'MVKN'; 'MVKOO'; 'N'; 'N2O'; ...
'N2O5'; 'NITs'; 'NIT'; 'NMAO3'; 'NO'; 'NO2'; 'NO3'; 'NPMN'; 'NPRNO3'; 'O'; ...
'O1D'; 'O3'; 'OClO'; 'OCS'; 'OH'; 'OIO'; 'OLND'; 'OLNN'; 'ONIT'; 'OTHRO2'; ...
'PAN'; 'PIO2'; 'PIP'; 'PMNN'; 'PMNO2'; 'PO2'; 'PP'; 'PPN'; 'PRN1'; 'PRPE'; ...
'PRPN'; 'PROPNN'; 'PYAC'; 'R4N1'; 'R4N2'; 'R4O2'; 'R4P'; 'RA3P'; 'RB3P'; 'RCHO'; ...
'RCO3'; 'RIO2'; 'RIPA'; 'RIPB'; 'RIPD'; 'ROH'; 'RP'; 'SO2'; 'SO4'; 'SO4H1'; ...
'SO4H2'; 'SOAGX'; 'SOAIE'; 'SOAME'; 'SOAMG'; 'TOLU'; 'TRO2'; 'VRO2'; 'VRP'; 'XYLE'; ...
'XRO2'; 'H2'; 'N2'; 'NH2'; 'NH3'; 'O2'; 'RCOOH'; };

AddSpecies

i=i+1;
Rnames{i} = 'O3 + NO = NO2 + O2';
k(:,i) = 3.00E-12.*exp(-1500./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO'; 
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + OH = HO2 + O2';
k(:,i) = 1.70E-12.*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH'; 
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HO2 = OH + O2 + O2';
k(:,i) = 1.00E-14.*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2'; 
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NO2 = O2 + NO3';
k(:,i) = 1.20E-13.*exp(-2450./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO2'; 
fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MO2 = CH2O + HO2 + O2';
k(:,i) = 2.90E-16.*exp(-1000./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MO2'; 
fO3(i)=fO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + OH = H2O + O';
k(:,i) = 1.80E-12.*exp(0./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'OH + OH {+M} = H2O2';
k(:,i) = 6.9e-31.*exp(0./T).*(300./T).^(1).*M.*0.6.^(1./(1+(log10(2.6538e-20.*exp(0./T).*(300./T).^(1).*M)).*(log10(2.6538e-20.*exp(0./T).*(300./T).^(1).*M))))./(1+2.6538e-20.*exp(0./T).*(300./T).^(1).*M);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH'; 
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2 = H2O + O2';
k(:,i) = 4.80E-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2O2 = H2O + HO2';
k(:,i) = 1.80E-12.*exp(0./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fH2O(i)=fH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO = OH + NO2';
k(:,i) = 3.30E-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2 + O2';
k(:,i) = K_HO2_HO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO = HO2 + CO2';
k(:,i) = K_OH_CO;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH4 = MO2 + H2O';
k(:,i) = 2.45E-12.*exp(-1775./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + NO = CH2O + HO2 + NO2';
k(:,i) = 2.8e-12.*exp(300./T).*(300./T).^(0).*(1-0.0003);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + NO = MENO3';
k(:,i) = 2.8e-12.*exp(300./T).*(300./T).^(0).*0.0003;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO'; 
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fMENO3(i)=fMENO3(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + HO2 = MP + O2';
k(:,i) = 4.10E-13.*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2'; 
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fMP(i)=fMP(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + MO2 = MOH + CH2O + O2';
k(:,i) = 9.5e-14.*exp(390./T).*(300./T).^(0)./(1+26.2.*exp(-1130./T).*(300./T).^(0));
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fMOH(i)=fMOH(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + MO2 = 2.000CH2O + 2.000HO2';
k(:,i) = 9.5e-14.*exp(390./T).*(300./T).^(0)./(1+0.04.*exp(1130./T).*(300./T).^(0));
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2'; 
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+2.000; fHO2(i)=fHO2(i)+2.000; 

i=i+1;
Rnames{i} = 'MP + OH = MO2 + H2O';
k(:,i) = 2.66E-12.*exp(200./T);
Gstr{i,1} = 'MP'; Gstr{i,2} = 'OH'; 
fMP(i)=fMP(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'MP + OH = CH2O + OH + H2O';
k(:,i) = 1.14E-12.*exp(200./T);
Gstr{i,1} = 'MP'; Gstr{i,2} = 'OH'; 
fMP(i)=fMP(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+1; fOH(i)=fOH(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'ATOOH + OH = ATO2 + H2O';
k(:,i) = 2.66E-12.*exp(200./T);
Gstr{i,1} = 'ATOOH'; Gstr{i,2} = 'OH'; 
fATOOH(i)=fATOOH(i)-1; fOH(i)=fOH(i)-1; fATO2(i)=fATO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'ATOOH + OH = MGLY + OH + H2O';
k(:,i) = 1.14E-12.*exp(200./T);
Gstr{i,1} = 'ATOOH'; Gstr{i,2} = 'OH'; 
fATOOH(i)=fATOOH(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fOH(i)=fOH(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH2O + OH = CO + HO2 + H2O';
k(:,i) = 5.50E-12.*exp(125./T);
Gstr{i,1} = 'CH2O'; Gstr{i,2} = 'OH'; 
fCH2O(i)=fCH2O(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + OH {+M} = HNO3 {+M}';
k(:,i) = 1.8e-30.*exp(0./T).*(300./T).^(3).*M.*0.6.^(1./(1+(log10(6.4286e-20.*exp(0./T).*(300./T).^(3).*M)).*(log10(6.4286e-20.*exp(0./T).*(300./T).^(3).*M))))./(1+6.4286e-20.*exp(0./T).*(300./T).^(3).*M);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'OH'; 
fNO2(i)=fNO2(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + OH = H2O + NO3';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HNO3'; Gstr{i,2} = 'OH'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + OH {+M} = HNO2 {+M}';
k(:,i) = 7e-31.*exp(0./T).*(300./T).^(2.6).*M.*0.6.^(1./(1+(log10(1.9444e-20.*exp(0./T).*(300./T).^(2.5).*M)).*(log10(1.9444e-20.*exp(0./T).*(300./T).^(2.5).*M))))./(1+1.9444e-20.*exp(0./T).*(300./T).^(2.5).*M);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH'; 
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHNO2(i)=fHNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO2 + OH = H2O + NO2';
k(:,i) = 1.80E-11.*exp(-390./T);
Gstr{i,1} = 'HNO2'; Gstr{i,2} = 'OH'; 
fHNO2(i)=fHNO2(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO2 {+M} = HNO4 {+M}';
k(:,i) = 1.9e-31.*exp(0./T).*(300./T).^(3.4).*M.*0.6.^(1./(1+(log10(4.75e-20.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(4.75e-20.*exp(0./T).*(300./T).^(3.1).*M))))./(1+4.75e-20.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHNO4(i)=fHNO4(i)+1; 

i=i+1;
Rnames{i} = 'HNO4 {+M} = HO2 + NO2';
k(:,i) = 9.05e-05.*exp(-10900./T).*(300./T).^(3.4).*M.*0.6.^(1./(1+(log10(4.7632e-20.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(4.7632e-20.*exp(0./T).*(300./T).^(3.1).*M))))./(1+4.7632e-20.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO4 + OH = H2O + NO2 + O2';
k(:,i) = 1.30E-12.*exp(380./T);
Gstr{i,1} = 'HNO4'; Gstr{i,2} = 'OH'; 
fHNO4(i)=fHNO4(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3 = OH + NO2 + O2';
k(:,i) = 3.50E-12.*exp(0./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3 = 2.000NO2';
k(:,i) = 1.50E-11.*exp(170./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.000; 

i=i+1;
Rnames{i} = 'OH + NO3 = HO2 + NO2';
k(:,i) = 2.20E-11.*exp(0./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 {+M} = N2O5 {+M}';
k(:,i) = 2.4e-30.*exp(0./T).*(300./T).^(3).*M.*0.6.^(1./(1+(log10(1.5e-18.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(1.5e-18.*exp(0./T).*(300./T).^(3.1).*M))))./(1+1.5e-18.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 {+M} = NO2 + NO3';
k(:,i) = 0.000414.*exp(-10840./T).*(300./T).^(3).*M.*0.6.^(1./(1+(log10(1.5e-18.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(1.5e-18.*exp(0./T).*(300./T).^(3.1).*M))))./(1+1.5e-18.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = H2O + CO2 + HO2';
k(:,i) = 4.00E-13.*exp(0./T);
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fCO2(i)=fCO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MOH + OH = HO2 + CH2O';
k(:,i) = 2.90E-12.*exp(-345./T);
Gstr{i,1} = 'MOH'; Gstr{i,2} = 'OH'; 
fMOH(i)=fMOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = NO + NO2 + O2';
k(:,i) = 4.50E-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CH2O = HNO3 + HO2 + CO';
k(:,i) = 5.80E-16.*exp(0./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CH2O'; 
fNO3(i)=fNO3(i)-1; fCH2O(i)=fCH2O(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + OH = 0.950MCO3 + 0.050CH2O + 0.050CO + 0.050HO2 + H2O';
k(:,i) = 4.63E-12.*exp(350./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH'; 
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+0.950; fCH2O(i)=fCH2O(i)+0.050; fCO(i)=fCO(i)+0.050; fHO2(i)=fHO2(i)+0.050; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + NO3 = HNO3 + MCO3';
k(:,i) = 1.40E-12.*exp(-1900./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3'; 
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + NO2 {+M} = PAN';
k(:,i) = 9.7e-29.*exp(0./T).*(300./T).^(5.6).*M.*0.6.^(1./(1+(log10(1.043e-17.*exp(0./T).*(300./T).^(4.1).*M)).*(log10(1.043e-17.*exp(0./T).*(300./T).^(4.1).*M))))./(1+1.043e-17.*exp(0./T).*(300./T).^(4.1).*M);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'NO2'; 
fMCO3(i)=fMCO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'PAN = MCO3 + NO2';
k(:,i) = 9.7e-29.*exp(0./T).*(300./T).^(5.6).*M.*0.6.^(1./(1+(log10(1.043e-17.*exp(0./T).*(300./T).^(4.1).*M)).*(log10(1.043e-17.*exp(0./T).*(300./T).^(4.1).*M))))./(1+1.043e-17.*exp(0./T).*(300./T).^(4.1).*M)./(9.3e-29.*exp(14000./T).*(300./T).^(0));
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMCO3(i)=fMCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + NO = MO2 + NO2 + CO2';
k(:,i) = 8.10E-12.*exp(270./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'NO'; 
fMCO3(i)=fMCO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H6 + OH = ETO2 + H2O';
k(:,i) = 7.66E-12.*exp(-1020./T);
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'OH'; 
fC2H6(i)=fC2H6(i)-1; fOH(i)=fOH(i)-1; fETO2(i)=fETO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'ETO2 + NO = ALD2 + NO2 + HO2';
k(:,i) = 2.6e-12.*exp(365./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'NO'; 
fETO2(i)=fETO2(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETO2 + NO = ETNO3';
k(:,i) = 2.6e-12.*exp(365./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*2.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'NO'; 
fETO2(i)=fETO2(i)-1; fNO(i)=fNO(i)-1; fETNO3(i)=fETNO3(i)+1; 

i=i+1;
Rnames{i} = 'OTHRO2 + NO = ALD2 + NO2 + HO2';
k(:,i) = 2.60E-12.*exp(365./T);
Gstr{i,1} = 'OTHRO2'; Gstr{i,2} = 'NO'; 
fOTHRO2(i)=fOTHRO2(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3H8 + OH = B3O2';
k(:,i) = 7.6e-12.*exp(-585./T).*(300./T).^(0)./(1+5.87.*exp(-816./T).*(300./T).^(0.64));
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH'; 
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fB3O2(i)=fB3O2(i)+1; 

i=i+1;
Rnames{i} = 'C3H8 + OH = A3O2';
k(:,i) = 7.6e-12.*exp(-585./T).*(300./T).^(0)./(1+0.17.*exp(816./T).*(300./T).^(-0.64));
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH'; 
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fA3O2(i)=fA3O2(i)+1; 

i=i+1;
Rnames{i} = 'A3O2 + NO = NO2 + HO2 + RCHO';
k(:,i) = 2.9e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'NO'; 
fA3O2(i)=fA3O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i} = 'A3O2 + NO = NPRNO3';
k(:,i) = 2.9e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'NO'; 
fA3O2(i)=fA3O2(i)-1; fNO(i)=fNO(i)-1; fNPRNO3(i)=fNPRNO3(i)+1; 

i=i+1;
Rnames{i} = 'PO2 + NO = NO2 + HO2 + CH2O + ALD2';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'NO'; 
fPO2(i)=fPO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ALK4 + OH = R4O2';
k(:,i) = 9.10E-12.*exp(-405./T);
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'OH'; 
fALK4(i)=fALK4(i)-1; fOH(i)=fOH(i)-1; fR4O2(i)=fR4O2(i)+1; 

i=i+1;
Rnames{i} = 'R4O2 + NO = NO2 + 0.320ACET + 0.190MEK + 0.190MO2 + 0.270HO2 + 0.320ALD2 + 0.140RCHO + 0.050A3O2 + 0.180B3O2 + 0.320OTHRO2';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'NO'; 
fR4O2(i)=fR4O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fACET(i)=fACET(i)+0.320; fMEK(i)=fMEK(i)+0.190; fMO2(i)=fMO2(i)+0.190; fHO2(i)=fHO2(i)+0.270; fALD2(i)=fALD2(i)+0.320; fRCHO(i)=fRCHO(i)+0.140; fA3O2(i)=fA3O2(i)+0.050; fB3O2(i)=fB3O2(i)+0.180; fOTHRO2(i)=fOTHRO2(i)+0.320; 

i=i+1;
Rnames{i} = 'R4O2 + NO = R4N2';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'NO'; 
fR4O2(i)=fR4O2(i)-1; fNO(i)=fNO(i)-1; fR4N2(i)=fR4N2(i)+1; 

i=i+1;
Rnames{i} = 'R4N1 + NO = 2.000NO2 + 0.570RCHO + 0.860ALD2 + 0.570CH2O';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'NO'; 
fR4N1(i)=fR4N1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.000; fRCHO(i)=fRCHO(i)+0.570; fALD2(i)=fALD2(i)+0.860; fCH2O(i)=fCH2O(i)+0.570; 

i=i+1;
Rnames{i} = 'ATO2 + NO = NO2 + CH2O + MCO3';
k(:,i) = 2.80E-12.*exp(300./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'NO'; 
fATO2(i)=fATO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'KO2 + NO = 0.930NO2 + 0.930ALD2 + 0.930MCO3 + 0.070R4N2';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'NO'; 
fKO2(i)=fKO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.930; fALD2(i)=fALD2(i)+0.930; fMCO3(i)=fMCO3(i)+0.930; fR4N2(i)=fR4N2(i)+0.070; 

i=i+1;
Rnames{i} = 'RIO2 + NO = 0.910NO2 + 0.820HO2 + 0.820CH2O + 0.476MVK + 0.344MACR + 0.058HC5 + 0.030DIBOO + 0.009ISOPND + 0.081ISOPNB';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'NO'; 
fRIO2(i)=fRIO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.910; fHO2(i)=fHO2(i)+0.820; fCH2O(i)=fCH2O(i)+0.820; fMVK(i)=fMVK(i)+0.476; fMACR(i)=fMACR(i)+0.344; fHC5(i)=fHC5(i)+0.058; fDIBOO(i)=fDIBOO(i)+0.030; fISOPND(i)=fISOPND(i)+0.009; fISOPNB(i)=fISOPNB(i)+0.081; 

i=i+1;
Rnames{i} = 'RIO2 = 0.500HPALD + 0.500DHPCARP';
k(:,i) = 4.07E+08.*exp(-7694./T);
Gstr{i,1} = 'RIO2'; 
fRIO2(i)=fRIO2(i)-1; fHPALD(i)=fHPALD(i)+0.500; fDHPCARP(i)=fDHPCARP(i)+0.500; 

i=i+1;
Rnames{i} = 'VRO2 + NO = 0.880NO2 + 0.350HO2 + 0.350CH2O + 0.530MCO3 + 0.530GLYC + 0.350MGLY + 0.120MVKN';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'NO'; 
fVRO2(i)=fVRO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.880; fHO2(i)=fHO2(i)+0.350; fCH2O(i)=fCH2O(i)+0.350; fMCO3(i)=fMCO3(i)+0.530; fGLYC(i)=fGLYC(i)+0.530; fMGLY(i)=fMGLY(i)+0.350; fMVKN(i)=fMVKN(i)+0.120; 

i=i+1;
Rnames{i} = 'MRO2 + NO = 0.850NO2 + 0.850HO2 + 0.122MGLY + 0.728HAC + 0.728CO + 0.122CH2O + 0.150MACRN';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'NO'; 
fMRO2(i)=fMRO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.850; fHO2(i)=fHO2(i)+0.850; fMGLY(i)=fMGLY(i)+0.122; fHAC(i)=fHAC(i)+0.728; fCO(i)=fCO(i)+0.728; fCH2O(i)=fCH2O(i)+0.122; fMACRN(i)=fMACRN(i)+0.150; 

i=i+1;
Rnames{i} = 'MRO2 = CO + HAC + OH';
k(:,i) = 2.90E+07.*exp(-5297./T);
Gstr{i,1} = 'MRO2'; 
fMRO2(i)=fMRO2(i)-1; fCO(i)=fCO(i)+1; fHAC(i)=fHAC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MAN2 + NO = 1.500NO2 + 0.500CH2O + 0.500MGLY + 0.500PROPNN + 0.500CO + 0.500OH';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'NO'; 
fMAN2(i)=fMAN2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1.500; fCH2O(i)=fCH2O(i)+0.500; fMGLY(i)=fMGLY(i)+0.500; fPROPNN(i)=fPROPNN(i)+0.500; fCO(i)=fCO(i)+0.500; fOH(i)=fOH(i)+0.500; 

i=i+1;
Rnames{i} = 'B3O2 + NO = NO2 + HO2 + ACET';
k(:,i) = 2.7e-12.*exp(360./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'NO'; 
fB3O2(i)=fB3O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i} = 'B3O2 + NO = IPRNO3';
k(:,i) = 2.7e-12.*exp(360./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*3.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'NO'; 
fB3O2(i)=fB3O2(i)-1; fNO(i)=fNO(i)-1; fIPRNO3(i)=fIPRNO3(i)+1; 

i=i+1;
Rnames{i} = 'INO2 + NO = 1.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'NO'; 
fINO2(i)=fINO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1.300; fHO2(i)=fHO2(i)+0.800; fISN1(i)=fISN1(i)+0.700; fHC5(i)=fHC5(i)+0.230; fMACR(i)=fMACR(i)+0.035; fCH2O(i)=fCH2O(i)+0.070; fMVK(i)=fMVK(i)+0.035; 

i=i+1;
Rnames{i} = 'INO2 + NO3 = 1.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK';
k(:,i) = 2.30E-12.*exp(0./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'NO3'; 
fINO2(i)=fINO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1.300; fHO2(i)=fHO2(i)+0.800; fISN1(i)=fISN1(i)+0.700; fHC5(i)=fHC5(i)+0.230; fMACR(i)=fMACR(i)+0.035; fCH2O(i)=fCH2O(i)+0.070; fMVK(i)=fMVK(i)+0.035; 

i=i+1;
Rnames{i} = 'ISN1 + NO3 = 0.600ISNOOA + 0.400ISNOOB + 0.600HNO3';
k(:,i) = 3.15E-13.*exp(-448./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'NO3'; 
fISN1(i)=fISN1(i)-1; fNO3(i)=fNO3(i)-1; fISNOOA(i)=fISNOOA(i)+0.600; fISNOOB(i)=fISNOOB(i)+0.400; fHNO3(i)=fHNO3(i)+0.600; 

i=i+1;
Rnames{i} = 'ISNOOA + NO3 = NO2 + 0.960PROPNN + CO + HO2 + 0.040ISN1OG';
k(:,i) = 4.00E-12.*exp(0./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO3'; 
fISNOOA(i)=fISNOOA(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fPROPNN(i)=fPROPNN(i)+0.960; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOA + NO = NO2 + 0.960PROPNN + CO + HO2 + 0.040ISN1OG';
k(:,i) = 6.70E-12.*exp(340./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO'; 
fISNOOA(i)=fISNOOA(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fPROPNN(i)=fPROPNN(i)+0.960; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOA + NO2 {+M} = 0.960IPMN + 0.040ISN1OG';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO2'; 
fISNOOA(i)=fISNOOA(i)-1; fNO2(i)=fNO2(i)-1; fIPMN(i)=fIPMN(i)+0.960; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOA + HO2 = 0.750RP + 0.250RCOOH + 0.250O3 + 0.960NO2 + 0.040ISN1OG';
k(:,i) = 5.20E-13.*exp(980./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'HO2'; 
fISNOOA(i)=fISNOOA(i)-1; fHO2(i)=fHO2(i)-1; fRP(i)=fRP(i)+0.750; fRCOOH(i)=fRCOOH(i)+0.250; fO3(i)=fO3(i)+0.250; fNO2(i)=fNO2(i)+0.960; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOB + NO3 = 0.940PROPNN + GLYX + 2.000NO2 + 0.040ISN1OG';
k(:,i) = 2.30E-12.*exp(0./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'NO3'; 
fISNOOB(i)=fISNOOB(i)-1; fNO3(i)=fNO3(i)-1; fPROPNN(i)=fPROPNN(i)+0.940; fGLYX(i)=fGLYX(i)+1; fNO2(i)=fNO2(i)+2.000; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOB + NO = 0.900PROPNN + 0.940GLYX + 1.880NO2 + 0.040ISN1OG';
k(:,i) = 2.60E-12.*exp(380./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'NO'; 
fISNOOB(i)=fISNOOB(i)-1; fNO(i)=fNO(i)-1; fPROPNN(i)=fPROPNN(i)+0.900; fGLYX(i)=fGLYX(i)+0.940; fNO2(i)=fNO2(i)+1.880; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOB + HO2 = 0.960INPN + 0.040ISN1OG';
k(:,i) = 2.06E-13.*exp(1300./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'HO2'; 
fISNOOB(i)=fISNOOB(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+0.960; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOOB + MO2 = 0.660PROPNN + 0.700GLYX + 0.700NO2 + 0.750CH2O + 0.250MOH + 0.500HO2 + 0.040ISN1OG';
k(:,i) = 2.00E-13.*exp(0./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'MO2'; 
fISNOOB(i)=fISNOOB(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.660; fGLYX(i)=fGLYX(i)+0.700; fNO2(i)=fNO2(i)+0.700; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fHO2(i)=fHO2(i)+0.500; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISN1 + O3 = 0.300PROPNN + 0.700GLYX + 0.700NO2 + 0.250CH2O + 0.250MOH + 0.500HO2 + 0.500CH2O';
k(:,i) = 4.15E-15.*exp(-1520./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'O3'; 
fISN1(i)=fISN1(i)-1; fO3(i)=fO3(i)-1; fPROPNN(i)=fPROPNN(i)+0.300; fGLYX(i)=fGLYX(i)+0.700; fNO2(i)=fNO2(i)+0.700; fCH2O(i)=fCH2O(i)+0.250; fMOH(i)=fMOH(i)+0.250; fHO2(i)=fHO2(i)+0.500; fCH2O(i)=fCH2O(i)+0.500; 

i=i+1;
Rnames{i} = 'ISN1 + OH = 0.345ISNOOA + 0.655ISNOHOO';
k(:,i) = 7.48E-12.*exp(410./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'OH'; 
fISN1(i)=fISN1(i)-1; fOH(i)=fOH(i)-1; fISNOOA(i)=fISNOOA(i)+0.345; fISNOHOO(i)=fISNOHOO(i)+0.655; 

i=i+1;
Rnames{i} = 'ISNOHOO + NO = 0.894PROPNN + 0.934HO2 + 0.919GLYX + 0.0400ISN1OG';
k(:,i) = 2.60E-12.*exp(380./T);
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'NO'; 
fISNOHOO(i)=fISNOHOO(i)-1; fNO(i)=fNO(i)-1; fPROPNN(i)=fPROPNN(i)+0.894; fHO2(i)=fHO2(i)+0.934; fGLYX(i)=fGLYX(i)+0.919; fISN1OG(i)=fISN1OG(i)+0.0400; 

i=i+1;
Rnames{i} = 'ISNOHOO + HO2 = 0.960INPN + 0.040ISN1OG';
k(:,i) = 2.06E-13.*exp(1300./T);
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'HO2'; 
fISNOHOO(i)=fISNOHOO(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+0.960; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'ISNOHOO + MO2 = 0.660PROPNN + 0.700GLYX + 1.200HO2 + 0.750CH2O + 0.250MOH + 0.040ISN1OG';
k(:,i) = 2.06E-13.*exp(0./T);
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'MO2'; 
fISNOHOO(i)=fISNOHOO(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.660; fGLYX(i)=fGLYX(i)+0.700; fHO2(i)=fHO2(i)+1.200; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fISN1OG(i)=fISN1OG(i)+0.040; 

i=i+1;
Rnames{i} = 'INO2 + INO2 = 0.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK + 0.500ISN1 + 0.500ISOPND';
k(:,i) = 1.20E-12.*exp(0./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'INO2'; 
fINO2(i)=fINO2(i)-1; fINO2(i)=fINO2(i)-1; fNO2(i)=fNO2(i)+0.300; fHO2(i)=fHO2(i)+0.800; fISN1(i)=fISN1(i)+0.700; fHC5(i)=fHC5(i)+0.230; fMACR(i)=fMACR(i)+0.035; fCH2O(i)=fCH2O(i)+0.070; fMVK(i)=fMVK(i)+0.035; fISN1(i)=fISN1(i)+0.500; fISOPND(i)=fISOPND(i)+0.500; 

i=i+1;
Rnames{i} = 'PRN1 + NO = 2.000NO2 + CH2O + ALD2';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'NO'; 
fPRN1(i)=fPRN1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.000; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ALK4 + NO3 = HNO3 + R4O2';
k(:,i) = 2.80E-12.*exp(-3280./T);
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'NO3'; 
fALK4(i)=fALK4(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fR4O2(i)=fR4O2(i)+1; 

i=i+1;
Rnames{i} = 'R4N2 + OH = R4N1 + H2O';
k(:,i) = 1.60E-12.*exp(0./T);
Gstr{i,1} = 'R4N2'; Gstr{i,2} = 'OH'; 
fR4N2(i)=fR4N2(i)-1; fOH(i)=fOH(i)-1; fR4N1(i)=fR4N1(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'ACTA + OH = MO2 + CO2 + H2O';
k(:,i) = 3.15E-14.*exp(920./T);
Gstr{i,1} = 'ACTA'; Gstr{i,2} = 'OH'; 
fACTA(i)=fACTA(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + RCHO = RCO3 + H2O';
k(:,i) = 6.00E-12.*exp(410./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RCHO'; 
fOH(i)=fOH(i)-1; fRCHO(i)=fRCHO(i)-1; fRCO3(i)=fRCO3(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 + NO2 {+M} = PPN';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2'; 
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i} = 'PPN = RCO3 + NO2';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)./(9e-29.*exp(14000./T).*(300./T).^(0));
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IMAO3 + NO2 {+M} = IPMN';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M);
Gstr{i,1} = 'IMAO3'; Gstr{i,2} = 'NO2'; 
fIMAO3(i)=fIMAO3(i)-1; fNO2(i)=fNO2(i)-1; fIPMN(i)=fIPMN(i)+1; 

i=i+1;
Rnames{i} = 'NMAO3 + NO2 {+M} = NPMN';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'NO2'; 
fNMAO3(i)=fNMAO3(i)-1; fNO2(i)=fNO2(i)-1; fNPMN(i)=fNPMN(i)+1; 

i=i+1;
Rnames{i} = 'IPMN = IMAO3 + NO2';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)./(9e-29.*exp(14000./T).*(300./T).^(0));
Gstr{i,1} = 'IPMN'; 
fIPMN(i)=fIPMN(i)-1; fIMAO3(i)=fIMAO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPMN = NMAO3 + NO2';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)./(9e-29.*exp(14000./T).*(300./T).^(0));
Gstr{i,1} = 'NPMN'; 
fNPMN(i)=fNPMN(i)-1; fNMAO3(i)=fNMAO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 + NO = NO2 + 0.500OTHRO2 + 0.070A3O2 + 0.270B3O2';
k(:,i) = 6.70E-12.*exp(340./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO'; 
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fOTHRO2(i)=fOTHRO2(i)+0.500; fA3O2(i)=fA3O2(i)+0.070; fB3O2(i)=fB3O2(i)+0.270; 

i=i+1;
Rnames{i} = 'NMAO3 + NO = NO2 + 0.500CH2O + 0.500CO + CO2 + 0.500MO2 + 0.500MCO3';
k(:,i) = 6.70E-12.*exp(340./T);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'NO'; 
fNMAO3(i)=fNMAO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.500; fCO(i)=fCO(i)+0.500; fCO2(i)=fCO2(i)+1; fMO2(i)=fMO2(i)+0.500; fMCO3(i)=fMCO3(i)+0.500; 

i=i+1;
Rnames{i} = 'RCHO + NO3 = HNO3 + RCO3';
k(:,i) = 6.50E-15.*exp(0./T);
Gstr{i,1} = 'RCHO'; Gstr{i,2} = 'NO3'; 
fRCHO(i)=fRCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'ACET + OH = ATO2 + H2O';
k(:,i) = 1.33E-13+3.82E-11*exp(-2000.0./T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH'; 
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fATO2(i)=fATO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'A3O2 + MO2 = HO2 + 0.750CH2O + 0.750RCHO + 0.250MOH + 0.250ROH';
k(:,i) = 5.92E-13.*exp(0./T);
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'MO2'; 
fA3O2(i)=fA3O2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+0.750; fRCHO(i)=fRCHO(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1;
Rnames{i} = 'PO2 + MO2 = HO2 + 0.500ALD2 + 1.250CH2O + 0.160HAC + 0.090RCHO + 0.250MOH + 0.250ROH';
k(:,i) = 5.92E-13.*exp(0./T);
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'MO2'; 
fPO2(i)=fPO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+0.500; fCH2O(i)=fCH2O(i)+1.250; fHAC(i)=fHAC(i)+0.160; fRCHO(i)=fRCHO(i)+0.090; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1;
Rnames{i} = 'R4O2 + HO2 = R4P';
k(:,i) = 7.40E-13.*exp(700./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'HO2'; 
fR4O2(i)=fR4O2(i)-1; fHO2(i)=fHO2(i)-1; fR4P(i)=fR4P(i)+1; 

i=i+1;
Rnames{i} = 'R4N1 + HO2 = R4N2';
k(:,i) = 7.40E-13.*exp(700./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'HO2'; 
fR4N1(i)=fR4N1(i)-1; fHO2(i)=fHO2(i)-1; fR4N2(i)=fR4N2(i)+1; 

i=i+1;
Rnames{i} = 'ATO2 + HO2 = 0.150MCO3 + 0.150OH + 0.150CH2O + 0.850ATOOH';
k(:,i) = 8.60E-13.*exp(700./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'HO2'; 
fATO2(i)=fATO2(i)-1; fHO2(i)=fHO2(i)-1; fMCO3(i)=fMCO3(i)+0.150; fOH(i)=fOH(i)+0.150; fCH2O(i)=fCH2O(i)+0.150; fATOOH(i)=fATOOH(i)+0.850; 

i=i+1;
Rnames{i} = 'KO2 + HO2 = 0.150OH + 0.150ALD2 + 0.150MCO3 + 0.850ATOOH';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'HO2'; 
fKO2(i)=fKO2(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.150; fALD2(i)=fALD2(i)+0.150; fMCO3(i)=fMCO3(i)+0.150; fATOOH(i)=fATOOH(i)+0.850; 

i=i+1;
Rnames{i} = 'RIO2 + HO2 = 0.628RIPA + 0.272RIPB + 0.037RIPD + 0.063OH + 0.063CH2O + 0.063HO2 + 0.038MVK + 0.025MACR';
k(:,i) = 2.06E-13.*exp(1300./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'HO2'; 
fRIO2(i)=fRIO2(i)-1; fHO2(i)=fHO2(i)-1; fRIPA(i)=fRIPA(i)+0.628; fRIPB(i)=fRIPB(i)+0.272; fRIPD(i)=fRIPD(i)+0.037; fOH(i)=fOH(i)+0.063; fCH2O(i)=fCH2O(i)+0.063; fHO2(i)=fHO2(i)+0.063; fMVK(i)=fMVK(i)+0.038; fMACR(i)=fMACR(i)+0.025; 

i=i+1;
Rnames{i} = 'VRO2 + HO2 = 0.100VRP + 0.680OH + 0.578GLYC + 0.578MCO3 + 0.187MEK + 0.102HO2 + 0.102CH2O + 0.102MGLY + 0.033RCHO';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'HO2'; 
fVRO2(i)=fVRO2(i)-1; fHO2(i)=fHO2(i)-1; fVRP(i)=fVRP(i)+0.100; fOH(i)=fOH(i)+0.680; fGLYC(i)=fGLYC(i)+0.578; fMCO3(i)=fMCO3(i)+0.578; fMEK(i)=fMEK(i)+0.187; fHO2(i)=fHO2(i)+0.102; fCH2O(i)=fCH2O(i)+0.102; fMGLY(i)=fMGLY(i)+0.102; fRCHO(i)=fRCHO(i)+0.033; 

i=i+1;
Rnames{i} = 'MRO2 + HO2 = MRP';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'HO2'; 
fMRO2(i)=fMRO2(i)-1; fHO2(i)=fHO2(i)-1; fMRP(i)=fMRP(i)+1; 

i=i+1;
Rnames{i} = 'MAN2 + HO2 = 0.075PROPNN + 0.075CO + 0.075HO2 + 0.075MGLY + 0.075CH2O + 0.075NO2 + 0.150OH + 0.850MAOP + 0.85NO2';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'HO2'; 
fMAN2(i)=fMAN2(i)-1; fHO2(i)=fHO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.075; fCO(i)=fCO(i)+0.075; fHO2(i)=fHO2(i)+0.075; fMGLY(i)=fMGLY(i)+0.075; fCH2O(i)=fCH2O(i)+0.075; fNO2(i)=fNO2(i)+0.075; fOH(i)=fOH(i)+0.150; fMAOP(i)=fMAOP(i)+0.850; fNO2(i)=fNO2(i)+0.85; 

i=i+1;
Rnames{i} = 'B3O2 + HO2 = RB3P';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*3.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'HO2'; 
fB3O2(i)=fB3O2(i)-1; fHO2(i)=fHO2(i)-1; fRB3P(i)=fRB3P(i)+1; 

i=i+1;
Rnames{i} = 'INO2 + HO2 = INPN';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*5.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'HO2'; 
fINO2(i)=fINO2(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i} = 'PRN1 + HO2 = PRPN';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*3.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'HO2'; 
fPRN1(i)=fPRN1(i)-1; fHO2(i)=fHO2(i)-1; fPRPN(i)=fPRPN(i)+1; 

i=i+1;
Rnames{i} = 'MEK + OH = KO2 + H2O';
k(:,i) = 1.30E-12.*exp(-25./T);
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH'; 
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fKO2(i)=fKO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + ETO2 = 0.750CH2O + 0.750ALD2 + HO2 + 0.250MOH + 0.250EOH';
k(:,i) = 3.00E-13.*exp(0./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'ETO2'; 
fMO2(i)=fMO2(i)-1; fETO2(i)=fETO2(i)-1; fCH2O(i)=fCH2O(i)+0.750; fALD2(i)=fALD2(i)+0.750; fHO2(i)=fHO2(i)+1; fMOH(i)=fMOH(i)+0.250; fEOH(i)=fEOH(i)+0.250; 

i=i+1;
Rnames{i} = 'MO2 + OTHRO2 = 0.750CH2O + 0.750ALD2 +  HO2 + 0.250MOH + 0.250EOH';
k(:,i) = 3.00E-13.*exp(0./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'OTHRO2'; 
fMO2(i)=fMO2(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fCH2O(i)=fCH2O(i)+0.750; fALD2(i)=fALD2(i)+0.750; fHO2(i)=fHO2(i)+1; fMOH(i)=fMOH(i)+0.250; fEOH(i)=fEOH(i)+0.250; 

i=i+1;
Rnames{i} = 'MEK + NO3 = HNO3 + KO2';
k(:,i) = 8.00E-16.*exp(0./T);
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'NO3'; 
fMEK(i)=fMEK(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fKO2(i)=fKO2(i)+1; 

i=i+1;
Rnames{i} = 'R4O2 + MO2 = 0.160ACET + 0.100MEK + 0.090MO2 + 0.140HO2 + 0.160ALD2 + 0.070RCHO + 0.030A3O2 + 0.090B3O2 + 0.160OTHRO2 + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MO2'; 
fR4O2(i)=fR4O2(i)-1; fMO2(i)=fMO2(i)-1; fACET(i)=fACET(i)+0.160; fMEK(i)=fMEK(i)+0.100; fMO2(i)=fMO2(i)+0.090; fHO2(i)=fHO2(i)+0.140; fALD2(i)=fALD2(i)+0.160; fRCHO(i)=fRCHO(i)+0.070; fA3O2(i)=fA3O2(i)+0.030; fB3O2(i)=fB3O2(i)+0.090; fOTHRO2(i)=fOTHRO2(i)+0.160; fMEK(i)=fMEK(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'R4N1 + MO2 = NO2 + 0.200CH2O + 0.380ALD2 + 0.290RCHO + 0.150R4O2 + 0.250RCHO + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MO2'; 
fR4N1(i)=fR4N1(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.200; fALD2(i)=fALD2(i)+0.380; fRCHO(i)=fRCHO(i)+0.290; fR4O2(i)=fR4O2(i)+0.150; fRCHO(i)=fRCHO(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'ATO2 + MO2 = 0.300HO2 + 0.300CH2O + 0.300MCO3 + 0.200HAC + 0.200CH2O + 0.500MGLY + 0.500MOH';
k(:,i) = 7.50E-13.*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MO2'; 
fATO2(i)=fATO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.300; fCH2O(i)=fCH2O(i)+0.300; fMCO3(i)=fMCO3(i)+0.300; fHAC(i)=fHAC(i)+0.200; fCH2O(i)=fCH2O(i)+0.200; fMGLY(i)=fMGLY(i)+0.500; fMOH(i)=fMOH(i)+0.500; 

i=i+1;
Rnames{i} = 'KO2 + MO2 = 0.500ALD2 + 0.500MCO3 + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MO2'; 
fKO2(i)=fKO2(i)-1; fMO2(i)=fMO2(i)-1; fALD2(i)=fALD2(i)+0.500; fMCO3(i)=fMCO3(i)+0.500; fMEK(i)=fMEK(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'RIO2 + MO2 = 1.100HO2 + 1.220CH2O + 0.280MVK + 0.180MACR + 0.300HC5 + 0.240MOH + 0.240ROH';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MO2'; 
fRIO2(i)=fRIO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1.100; fCH2O(i)=fCH2O(i)+1.220; fMVK(i)=fMVK(i)+0.280; fMACR(i)=fMACR(i)+0.180; fHC5(i)=fHC5(i)+0.300; fMOH(i)=fMOH(i)+0.240; fROH(i)=fROH(i)+0.240; 

i=i+1;
Rnames{i} = 'RIO2 + RIO2 = 0.910HO2 + 0.750CH2O + 0.450MVK + 0.290MACR + 0.090DIBOO + 1.110HC5 + 0.290CO';
k(:,i) = 2.30E-12.*exp(0./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'RIO2'; 
fRIO2(i)=fRIO2(i)-1; fRIO2(i)=fRIO2(i)-1; fHO2(i)=fHO2(i)+0.910; fCH2O(i)=fCH2O(i)+0.750; fMVK(i)=fMVK(i)+0.450; fMACR(i)=fMACR(i)+0.290; fDIBOO(i)=fDIBOO(i)+0.090; fHC5(i)=fHC5(i)+1.110; fCO(i)=fCO(i)+0.290; 

i=i+1;
Rnames{i} = 'HC5OO + MO2 = 0.500HO2 + 0.330CO + 0.090H2 + 0.180HAC + 0.130GLYC + 0.290MGLY + 0.250MEK + 0.950CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MO2'; 
fHC5OO(i)=fHC5OO(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.500; fCO(i)=fCO(i)+0.330; fH2(i)=fH2(i)+0.090; fHAC(i)=fHAC(i)+0.180; fGLYC(i)=fGLYC(i)+0.130; fMGLY(i)=fMGLY(i)+0.290; fMEK(i)=fMEK(i)+0.250; fCH2O(i)=fCH2O(i)+0.950; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'VRO2 + MO2 = 0.140HO2 + 0.140CH2O + 0.360MCO3 + 0.360GLYC + 0.140MGLY + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MO2'; 
fVRO2(i)=fVRO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.140; fCH2O(i)=fCH2O(i)+0.140; fMCO3(i)=fMCO3(i)+0.360; fGLYC(i)=fGLYC(i)+0.360; fMGLY(i)=fMGLY(i)+0.140; fMEK(i)=fMEK(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'MRO2 + MO2 = 0.595HAC + 0.255MGLY + 0.595CO + 1.255CH2O + 1.700HO2 + 0.150ROH';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MO2'; 
fMRO2(i)=fMRO2(i)-1; fMO2(i)=fMO2(i)-1; fHAC(i)=fHAC(i)+0.595; fMGLY(i)=fMGLY(i)+0.255; fCO(i)=fCO(i)+0.595; fCH2O(i)=fCH2O(i)+1.255; fHO2(i)=fHO2(i)+1.700; fROH(i)=fROH(i)+0.150; 

i=i+1;
Rnames{i} = 'MAN2 + MO2 = 0.375PROPNN + 0.375CO + 0.375HO2 + 0.375MGLY + 0.375CH2O + 0.375NO2 + 0.250CH2O + 0.250R4N2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MO2'; 
fMAN2(i)=fMAN2(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.375; fCO(i)=fCO(i)+0.375; fHO2(i)=fHO2(i)+0.375; fMGLY(i)=fMGLY(i)+0.375; fCH2O(i)=fCH2O(i)+0.375; fNO2(i)=fNO2(i)+0.375; fCH2O(i)=fCH2O(i)+0.250; fR4N2(i)=fR4N2(i)+0.250; 

i=i+1;
Rnames{i} = 'B3O2 + MO2 = 0.500HO2 + 0.500ACET + 0.250ACET + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MO2'; 
fB3O2(i)=fB3O2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.500; fACET(i)=fACET(i)+0.500; fACET(i)=fACET(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'INO2 + MO2 = 0.150NO2 + 0.400HO2 + 0.350ISN1 + 0.035CH2O + 0.018MACR + 0.018MVK + 0.115HC5 + 0.250ISN1 + 0.250ISOPND + 0.500CH2O + 0.500HO2 + 0.250CH2O + 0.250MOH';
k(:,i) = 1.30E-12.*exp(0./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MO2'; 
fINO2(i)=fINO2(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+0.150; fHO2(i)=fHO2(i)+0.400; fISN1(i)=fISN1(i)+0.350; fCH2O(i)=fCH2O(i)+0.035; fMACR(i)=fMACR(i)+0.018; fMVK(i)=fMVK(i)+0.018; fHC5(i)=fHC5(i)+0.115; fISN1(i)=fISN1(i)+0.250; fISOPND(i)=fISOPND(i)+0.250; fCH2O(i)=fCH2O(i)+0.500; fHO2(i)=fHO2(i)+0.500; fCH2O(i)=fCH2O(i)+0.250; fMOH(i)=fMOH(i)+0.250; 

i=i+1;
Rnames{i} = 'PRN1 + MO2 = NO2 + 0.500CH2O + 0.500ALD2 + 0.250RCHO + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MO2'; 
fPRN1(i)=fPRN1(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.500; fALD2(i)=fALD2(i)+0.500; fRCHO(i)=fRCHO(i)+0.250; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fHO2(i)=fHO2(i)+0.500; 

i=i+1;
Rnames{i} = 'EOH + OH = HO2 + ALD2';
k(:,i) = 3.35E-12.*exp(0./T);
Gstr{i,1} = 'EOH'; Gstr{i,2} = 'OH'; 
fEOH(i)=fEOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'ROH + OH = HO2 + RCHO';
k(:,i) = 4.60E-12.*exp(70./T);
Gstr{i,1} = 'ROH'; Gstr{i,2} = 'OH'; 
fROH(i)=fROH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i} = 'ETO2 + ETO2 = 2.000ALD2 + 2.000HO2';
k(:,i) = 4.10E-14.*exp(0./T);
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'ETO2'; 
fETO2(i)=fETO2(i)-1; fETO2(i)=fETO2(i)-1; fALD2(i)=fALD2(i)+2.000; fHO2(i)=fHO2(i)+2.000; 

i=i+1;
Rnames{i} = 'OTHRO2 + OTHRO2 = 2.000ALD2 + 2.000HO2';
k(:,i) = 4.10E-14.*exp(0./T);
Gstr{i,1} = 'OTHRO2'; Gstr{i,2} = 'OTHRO2'; 
fOTHRO2(i)=fOTHRO2(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fALD2(i)=fALD2(i)+2.000; fHO2(i)=fHO2(i)+2.000; 

i=i+1;
Rnames{i} = 'ETO2 + ETO2 = EOH + ALD2';
k(:,i) = 2.70E-14.*exp(0./T);
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'ETO2'; 
fETO2(i)=fETO2(i)-1; fETO2(i)=fETO2(i)-1; fEOH(i)=fEOH(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'OTHRO2 + OTHRO2 = EOH + ALD2';
k(:,i) = 2.70E-14.*exp(0./T);
Gstr{i,1} = 'OTHRO2'; Gstr{i,2} = 'OTHRO2'; 
fOTHRO2(i)=fOTHRO2(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fEOH(i)=fEOH(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + ETO2 = ETP';
k(:,i) = 7.40E-13.*exp(700./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ETO2'; 
fHO2(i)=fHO2(i)-1; fETO2(i)=fETO2(i)-1; fETP(i)=fETP(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + OTHRO2 = ETP';
k(:,i) = 7.40E-13.*exp(700./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'OTHRO2'; 
fHO2(i)=fHO2(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fETP(i)=fETP(i)+1; 

i=i+1;
Rnames{i} = 'A3O2 + HO2 = RA3P';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*3.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'HO2'; 
fA3O2(i)=fA3O2(i)-1; fHO2(i)=fHO2(i)-1; fRA3P(i)=fRA3P(i)+1; 

i=i+1;
Rnames{i} = 'PO2 + HO2 = PP';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*3.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'HO2'; 
fPO2(i)=fPO2(i)-1; fHO2(i)=fHO2(i)-1; fPP(i)=fPP(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + MCO3 = 0.410MAP + 0.150ACTA + 0.150O3 + 0.440OH + 0.440MO2';
k(:,i) = 5.20E-13.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MCO3'; 
fHO2(i)=fHO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMAP(i)=fMAP(i)+0.410; fACTA(i)=fACTA(i)+0.150; fO3(i)=fO3(i)+0.150; fOH(i)=fOH(i)+0.440; fMO2(i)=fMO2(i)+0.440; 

i=i+1;
Rnames{i} = 'RCO3 + HO2 = 0.410RP + 0.150RCOOH + 0.150O3 + 0.440OH + 0.220OTHRO2 + 0.030A3O2 + 0.120B3O2';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2'; 
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1; fRP(i)=fRP(i)+0.410; fRCOOH(i)=fRCOOH(i)+0.150; fO3(i)=fO3(i)+0.150; fOH(i)=fOH(i)+0.440; fOTHRO2(i)=fOTHRO2(i)+0.220; fA3O2(i)=fA3O2(i)+0.030; fB3O2(i)=fB3O2(i)+0.120; 

i=i+1;
Rnames{i} = 'NMAO3 + HO2 = 0.440OH + 0.150O3 + 0.590CH2O + 0.390MO2 + 0.410MAOP + 0.390CO';
k(:,i) = 4.30E-13.*exp(1040./T);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'HO2'; 
fNMAO3(i)=fNMAO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.440; fO3(i)=fO3(i)+0.150; fCH2O(i)=fCH2O(i)+0.590; fMO2(i)=fMO2(i)+0.390; fMAOP(i)=fMAOP(i)+0.410; fCO(i)=fCO(i)+0.390; 

i=i+1;
Rnames{i} = 'PRPE + OH {+M} = PO2';
k(:,i) = 4.6e-27.*exp(0./T).*(300./T).^(4).*M.*0.5.^(1./(1+(log10(1.7692e-16.*exp(0./T).*(300./T).^(2.7).*M)).*(log10(1.7692e-16.*exp(0./T).*(300./T).^(2.7).*M))))./(1+1.7692e-16.*exp(0./T).*(300./T).^(2.7).*M);
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'OH'; 
fPRPE(i)=fPRPE(i)-1; fOH(i)=fOH(i)-1; fPO2(i)=fPO2(i)+1; 

i=i+1;
Rnames{i} = 'PRPE + O3 = 0.500ALD2 + 0.500CH2O + 0.120CH3CHOO + 0.100CH4 + 0.120CH2OO + 0.280MO2 + 0.560CO + 0.280HO2 + 0.360OH';
k(:,i) = 5.50E-15.*exp(-1880./T);
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'O3'; 
fPRPE(i)=fPRPE(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+0.500; fCH2O(i)=fCH2O(i)+0.500; fCH3CHOO(i)=fCH3CHOO(i)+0.120; fCH4(i)=fCH4(i)+0.100; fCH2OO(i)=fCH2OO(i)+0.120; fMO2(i)=fMO2(i)+0.280; fCO(i)=fCO(i)+0.560; fHO2(i)=fHO2(i)+0.280; fOH(i)=fOH(i)+0.360; 

i=i+1;
Rnames{i} = 'NPMN + OH = HAC + CO + NO2';
k(:,i) = 2.90E-11.*exp(0./T);
Gstr{i,1} = 'NPMN'; Gstr{i,2} = 'OH'; 
fNPMN(i)=fNPMN(i)-1; fOH(i)=fOH(i)-1; fHAC(i)=fHAC(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPMN + OH = 0.030HAC + 0.030CO + 0.810NO3 + 0.781IMAE + 0.190PAN + 0.190CH2O + 0.190HO2';
k(:,i) = 3.00E-11.*exp(0./T);
Gstr{i,1} = 'IPMN'; Gstr{i,2} = 'OH'; 
fIPMN(i)=fIPMN(i)-1; fOH(i)=fOH(i)-1; fHAC(i)=fHAC(i)+0.030; fCO(i)=fCO(i)+0.030; fNO3(i)=fNO3(i)+0.810; fIMAE(i)=fIMAE(i)+0.781; fPAN(i)=fPAN(i)+0.190; fCH2O(i)=fCH2O(i)+0.190; fHO2(i)=fHO2(i)+0.190; 

i=i+1;
Rnames{i} = 'NPMN + O3 = CH2O + MCO3 + NO3';
k(:,i) = 8.20E-18.*exp(0./T);
Gstr{i,1} = 'NPMN'; Gstr{i,2} = 'O3'; 
fNPMN(i)=fNPMN(i)-1; fO3(i)=fO3(i)-1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'IMAE + OH = OH';
k(:,i) = 3.48E-12.*exp(0./T);
Gstr{i,1} = 'IMAE'; Gstr{i,2} = 'OH'; 
fIMAE(i)=fIMAE(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'GLYC + OH = 0.732CH2O + 0.361CO2 + 0.505CO + 0.227OH + 0.773HO2 + 0.134GLYX + 0.134HCOOH';
k(:,i) = 8e-12.*exp(0./T).*(300./T).^(0).*(1-11.0729*exp((-1/73).*T));
Gstr{i,1} = 'GLYC'; Gstr{i,2} = 'OH'; 
fGLYC(i)=fGLYC(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+0.732; fCO2(i)=fCO2(i)+0.361; fCO(i)=fCO(i)+0.505; fOH(i)=fOH(i)+0.227; fHO2(i)=fHO2(i)+0.773; fGLYX(i)=fGLYX(i)+0.134; fHCOOH(i)=fHCOOH(i)+0.134; 

i=i+1;
Rnames{i} = 'GLYC + OH = HCOOH + OH + CO';
k(:,i) = 8e-12.*exp(0./T).*(300./T).^(0).*(1-(1-11.0729.*exp((-1/73).*T)));
Gstr{i,1} = 'GLYC'; Gstr{i,2} = 'OH'; 
fGLYC(i)=fGLYC(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PRPE + NO3 = PRN1';
k(:,i) = 4.59E-13.*exp(-1156./T);
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'NO3'; 
fPRPE(i)=fPRPE(i)-1; fNO3(i)=fNO3(i)-1; fPRN1(i)=fPRN1(i)+1; 

i=i+1;
Rnames{i} = 'GLYX + OH = HO2 + 2.000CO';
k(:,i) = 3.10E-12.*exp(340./T);
Gstr{i,1} = 'GLYX'; Gstr{i,2} = 'OH'; 
fGLYX(i)=fGLYX(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+2.000; 

i=i+1;
Rnames{i} = 'MGLY + OH = MCO3 + CO';
k(:,i) = 1.50E-11.*exp(0./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH'; 
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYX + NO3 = HNO3 + HO2 + 2.000CO';
k(:,i) = 1.4e-12.*exp(-1860./T).*(300./T).^(0).*(0.2095.*M+3.5e18)./(2.*0.2095.*M+3.5e18);
Gstr{i,1} = 'GLYX'; Gstr{i,2} = 'NO3'; 
fGLYX(i)=fGLYX(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+2.000; 

i=i+1;
Rnames{i} = 'MGLY + NO3 = HNO3 + CO + MCO3';
k(:,i) = 3.36E-12.*exp(-1860./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3'; 
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOP + OH = RIO2 + LISOPOH';
k(:,i) = 3.00E-11.*exp(360./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'OH'; 
fISOP(i)=fISOP(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+1; fLISOPOH(i)=fLISOPOH(i)+1; 

i=i+1;
Rnames{i} = 'MVK + OH = VRO2';
k(:,i) = 2.70E-12.*exp(580./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'OH'; 
fMVK(i)=fMVK(i)-1; fOH(i)=fOH(i)-1; fVRO2(i)=fVRO2(i)+1; 

i=i+1;
Rnames{i} = 'MACR + OH = 0.530IMAO3 + 0.470MRO2';
k(:,i) = 9.60E-12.*exp(360./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'OH'; 
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)-1; fIMAO3(i)=fIMAO3(i)+0.530; fMRO2(i)=fMRO2(i)+0.470; 

i=i+1;
Rnames{i} = 'HAC + OH = MGLY + HO2';
k(:,i) = 2.15e-12.*exp(305./T).*(300./T).^(0).*(1-23.7.*exp((-1/60).*T));
Gstr{i,1} = 'HAC'; Gstr{i,2} = 'OH'; 
fHAC(i)=fHAC(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HAC + OH = 0.500HCOOH + OH + 0.500ACTA + 0.500CO2 + 0.500CO + 0.500MO2';
k(:,i) = 2.15e-12.*exp(305./T).*(300./T).^(0).*(1-(1-23.7.*exp((-1/60).*T)));
Gstr{i,1} = 'HAC'; Gstr{i,2} = 'OH'; 
fHAC(i)=fHAC(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+0.500; fOH(i)=fOH(i)+1; fACTA(i)=fACTA(i)+0.500; fCO2(i)=fCO2(i)+0.500; fCO(i)=fCO(i)+0.500; fMO2(i)=fMO2(i)+0.500; 

i=i+1;
Rnames{i} = 'MCO3 + A3O2 = MO2 + RCHO + HO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'A3O2'; 
fMCO3(i)=fMCO3(i)-1; fA3O2(i)=fA3O2(i)-1; fMO2(i)=fMO2(i)+1; fRCHO(i)=fRCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + PO2 = MO2 + ALD2 + CH2O + HO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'PO2'; 
fMCO3(i)=fMCO3(i)-1; fPO2(i)=fPO2(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + A3O2 = ACTA + RCHO';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'A3O2'; 
fMCO3(i)=fMCO3(i)-1; fA3O2(i)=fA3O2(i)-1; fACTA(i)=fACTA(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + PO2 = ACTA + 0.350RCHO + 0.650HAC';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'PO2'; 
fMCO3(i)=fMCO3(i)-1; fPO2(i)=fPO2(i)-1; fACTA(i)=fACTA(i)+1; fRCHO(i)=fRCHO(i)+0.350; fHAC(i)=fHAC(i)+0.650; 

i=i+1;
Rnames{i} = 'ISOP + O3 = 0.200MVK + 0.300MACR + 0.456CH2O + 0.110CH2OO + 0.495CO + 0.044MVKOO + 0.105MCO3 + 0.237HO2 + 0.243OH + 0.102PRPE + 0.051MO2 + 0.044MACROO + 0.054VRO2';
k(:,i) = 1.00E-14.*exp(-1970./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'O3'; 
fISOP(i)=fISOP(i)-1; fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)+0.200; fMACR(i)=fMACR(i)+0.300; fCH2O(i)=fCH2O(i)+0.456; fCH2OO(i)=fCH2OO(i)+0.110; fCO(i)=fCO(i)+0.495; fMVKOO(i)=fMVKOO(i)+0.044; fMCO3(i)=fMCO3(i)+0.105; fHO2(i)=fHO2(i)+0.237; fOH(i)=fOH(i)+0.243; fPRPE(i)=fPRPE(i)+0.102; fMO2(i)=fMO2(i)+0.051; fMACROO(i)=fMACROO(i)+0.044; fVRO2(i)=fVRO2(i)+0.054; 

i=i+1;
Rnames{i} = 'MVK + O3 = 0.360OH + 0.280HO2 + 0.560CO + 0.120MGLOO + 0.100ALD2 + 0.500MGLY + 0.600CH2O + 0.280MCO3 + 0.120CH2OO';
k(:,i) = 8.5E-16.*exp(-1520./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'O3'; 
fMVK(i)=fMVK(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.360; fHO2(i)=fHO2(i)+0.280; fCO(i)=fCO(i)+0.560; fMGLOO(i)=fMGLOO(i)+0.120; fALD2(i)=fALD2(i)+0.100; fMGLY(i)=fMGLY(i)+0.500; fCH2O(i)=fCH2O(i)+0.600; fMCO3(i)=fMCO3(i)+0.280; fCH2OO(i)=fCH2OO(i)+0.120; 

i=i+1;
Rnames{i} = 'MACR + O3 = 0.239OH + 0.141HO2 + 0.625CO + 0.326CH2OO + 0.880MGLY + 0.120CH2O + 0.022MGLYOO + 0.098MCO3';
k(:,i) = 1.50E-15.*exp(-2110./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'O3'; 
fMACR(i)=fMACR(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.239; fHO2(i)=fHO2(i)+0.141; fCO(i)=fCO(i)+0.625; fCH2OO(i)=fCH2OO(i)+0.326; fMGLY(i)=fMGLY(i)+0.880; fCH2O(i)=fCH2O(i)+0.120; fMGLYOO(i)=fMGLYOO(i)+0.022; fMCO3(i)=fMCO3(i)+0.098; 

i=i+1;
Rnames{i} = 'ISOP + NO3 = INO2 + LISOPNO3';
k(:,i) = 3.50E-12.*exp(-450./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3'; 
fISOP(i)=fISOP(i)-1; fNO3(i)=fNO3(i)-1; fINO2(i)=fINO2(i)+1; fLISOPNO3(i)=fLISOPNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACR + NO3 = MAN2';
k(:,i) = 3.40E-15.*exp(0./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3'; 
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMAN2(i)=fMAN2(i)+1; 

i=i+1;
Rnames{i} = 'MACR + NO3 = 0.500IMAO3 + 0.500HNO3 + 0.500MRO2 + 0.500HO2 + 0.500CO + 0.500MAOP';
k(:,i) = 1.50E-12.*exp(-1815./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3'; 
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fIMAO3(i)=fIMAO3(i)+0.500; fHNO3(i)=fHNO3(i)+0.500; fMRO2(i)=fMRO2(i)+0.500; fHO2(i)=fHO2(i)+0.500; fCO(i)=fCO(i)+0.500; fMAOP(i)=fMAOP(i)+0.500; 

i=i+1;
Rnames{i} = 'RCO3 + MO2 = CH2O + HO2 + 0.500OTHRO2 + 0.070A3O2 + 0.270B3O2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
fRCO3(i)=fRCO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fOTHRO2(i)=fOTHRO2(i)+0.500; fA3O2(i)=fA3O2(i)+0.070; fB3O2(i)=fB3O2(i)+0.270; 

i=i+1;
Rnames{i} = 'NMAO3 + MO2 = CH2O + HO2 + CH2O + MCO3';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'MO2'; 
fNMAO3(i)=fNMAO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 + MO2 = RCOOH + CH2O';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2'; 
fRCO3(i)=fRCO3(i)-1; fMO2(i)=fMO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'NMAO3 + MO2 = RCOOH + CH2O';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'MO2'; 
fNMAO3(i)=fNMAO3(i)-1; fMO2(i)=fMO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'INPN + OH = OH + NO2 + MEK';
k(:,i) = 1.90E-11.*exp(390./T);
Gstr{i,1} = 'INPN'; Gstr{i,2} = 'OH'; 
fINPN(i)=fINPN(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i} = 'INPN + OH = 0.360INO2 + 0.640R4N2 + 0.640OH';
k(:,i) = 5.18E-12.*exp(200./T);
Gstr{i,1} = 'INPN'; Gstr{i,2} = 'OH'; 
fINPN(i)=fINPN(i)-1; fOH(i)=fOH(i)-1; fINO2(i)=fINO2(i)+0.360; fR4N2(i)=fR4N2(i)+0.640; fOH(i)=fOH(i)+0.640; 

i=i+1;
Rnames{i} = 'PRPN + OH = 0.209PRN1 + 0.791OH + 0.791PROPNN';
k(:,i) = 8.78E-12.*exp(200./T);
Gstr{i,1} = 'PRPN'; Gstr{i,2} = 'OH'; 
fPRPN(i)=fPRPN(i)-1; fOH(i)=fOH(i)-1; fPRN1(i)=fPRN1(i)+0.209; fOH(i)=fOH(i)+0.791; fPROPNN(i)=fPROPNN(i)+0.791; 

i=i+1;
Rnames{i} = 'ETP + OH = 0.640OH + 0.360OTHRO2 +  0.640ALD2';
k(:,i) = 5.18E-12.*exp(200./T);
Gstr{i,1} = 'ETP'; Gstr{i,2} = 'OH'; 
fETP(i)=fETP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.640; fOTHRO2(i)=fOTHRO2(i)+0.360; fALD2(i)=fALD2(i)+0.640; 

i=i+1;
Rnames{i} = 'RA3P + OH = 0.640OH + 0.360A3O2 + 0.640RCHO';
k(:,i) = 5.18E-12.*exp(200./T);
Gstr{i,1} = 'RA3P'; Gstr{i,2} = 'OH'; 
fRA3P(i)=fRA3P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.640; fA3O2(i)=fA3O2(i)+0.360; fRCHO(i)=fRCHO(i)+0.640; 

i=i+1;
Rnames{i} = 'RB3P + OH = 0.791OH + 0.209B3O2 + 0.791ACET';
k(:,i) = 8.78E-12.*exp(200./T);
Gstr{i,1} = 'RB3P'; Gstr{i,2} = 'OH'; 
fRB3P(i)=fRB3P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.791; fB3O2(i)=fB3O2(i)+0.209; fACET(i)=fACET(i)+0.791; 

i=i+1;
Rnames{i} = 'R4P + OH = 0.791OH + 0.209R4O2 + 0.791RCHO';
k(:,i) = 8.78E-12.*exp(200./T);
Gstr{i,1} = 'R4P'; Gstr{i,2} = 'OH'; 
fR4P(i)=fR4P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.791; fR4O2(i)=fR4O2(i)+0.209; fRCHO(i)=fRCHO(i)+0.791; 

i=i+1;
Rnames{i} = 'RP + OH = RCO3';
k(:,i) = 6.13E-13.*exp(200./T);
Gstr{i,1} = 'RP'; Gstr{i,2} = 'OH'; 
fRP(i)=fRP(i)-1; fOH(i)=fOH(i)-1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'PP + OH = 0.791OH + 0.209PO2 + 0.791HAC';
k(:,i) = 8.78E-12.*exp(200./T);
Gstr{i,1} = 'PP'; Gstr{i,2} = 'OH'; 
fPP(i)=fPP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.791; fPO2(i)=fPO2(i)+0.209; fHAC(i)=fHAC(i)+0.791; 

i=i+1;
Rnames{i} = 'RIPA + OH = 0.750RIO2 + 0.243HC5 + 0.125OH + 0.125H2O + 0.007LVOC';
k(:,i) = 6.13E-12.*exp(200./T);
Gstr{i,1} = 'RIPA'; Gstr{i,2} = 'OH'; 
fRIPA(i)=fRIPA(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+0.750; fHC5(i)=fHC5(i)+0.243; fOH(i)=fOH(i)+0.125; fH2O(i)=fH2O(i)+0.125; fLVOC(i)=fLVOC(i)+0.007; 

i=i+1;
Rnames{i} = 'RIPB + OH = 0.480RIO2 + 0.513HC5 + 0.260OH + 0.260H2O + 0.007LVOC';
k(:,i) = 4.14E-12.*exp(200./T);
Gstr{i,1} = 'RIPB'; Gstr{i,2} = 'OH'; 
fRIPB(i)=fRIPB(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+0.480; fHC5(i)=fHC5(i)+0.513; fOH(i)=fOH(i)+0.260; fH2O(i)=fH2O(i)+0.260; fLVOC(i)=fLVOC(i)+0.007; 

i=i+1;
Rnames{i} = 'RIPD + OH = 0.250RIO2 + 0.743HC5 + 0.375OH + 0.375H2O + 0.007LVOC';
k(:,i) = 5.11E-12.*exp(200./T);
Gstr{i,1} = 'RIPD'; Gstr{i,2} = 'OH'; 
fRIPD(i)=fRIPD(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+0.250; fHC5(i)=fHC5(i)+0.743; fOH(i)=fOH(i)+0.375; fH2O(i)=fH2O(i)+0.375; fLVOC(i)=fLVOC(i)+0.007; 

i=i+1;
Rnames{i} = 'RIPA + OH = 0.850OH + 0.578IEPOXA + 0.272IEPOXB + 0.143HC5OO + 0.007LVOC';
k(:,i) = 1.70E-11.*exp(390./T);
Gstr{i,1} = 'RIPA'; Gstr{i,2} = 'OH'; 
fRIPA(i)=fRIPA(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.850; fIEPOXA(i)=fIEPOXA(i)+0.578; fIEPOXB(i)=fIEPOXB(i)+0.272; fHC5OO(i)=fHC5OO(i)+0.143; fLVOC(i)=fLVOC(i)+0.007; 

i=i+1;
Rnames{i} = 'RIPB + OH = OH + 0.680IEPOXA + 0.320IEPOXB';
k(:,i) = 2.97E-11.*exp(390./T);
Gstr{i,1} = 'RIPB'; Gstr{i,2} = 'OH'; 
fRIPB(i)=fRIPB(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; fIEPOXA(i)=fIEPOXA(i)+0.680; fIEPOXB(i)=fIEPOXB(i)+0.320; 

i=i+1;
Rnames{i} = 'RIPD + OH = 0.500OH + 0.500IEPOXD + 0.493HC5OO + 0.007LVOC';
k(:,i) = 2.92E-11.*exp(390./T);
Gstr{i,1} = 'RIPD'; Gstr{i,2} = 'OH'; 
fRIPD(i)=fRIPD(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.500; fIEPOXD(i)=fIEPOXD(i)+0.500; fHC5OO(i)=fHC5OO(i)+0.493; fLVOC(i)=fLVOC(i)+0.007; 

i=i+1;
Rnames{i} = 'LVOC + OH = OH';
k(:,i) = 4.82E-11.*exp(-400./T);
Gstr{i,1} = 'LVOC'; Gstr{i,2} = 'OH'; 
fLVOC(i)=fLVOC(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXA + OH = IEPOXOO';
k(:,i) = 3.73E-11.*exp(-400./T);
Gstr{i,1} = 'IEPOXA'; Gstr{i,2} = 'OH'; 
fIEPOXA(i)=fIEPOXA(i)-1; fOH(i)=fOH(i)-1; fIEPOXOO(i)=fIEPOXOO(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXB + OH = IEPOXOO';
k(:,i) = 5.79E-11.*exp(-400./T);
Gstr{i,1} = 'IEPOXB'; Gstr{i,2} = 'OH'; 
fIEPOXB(i)=fIEPOXB(i)-1; fOH(i)=fOH(i)-1; fIEPOXOO(i)=fIEPOXOO(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXD + OH = IEPOXOO';
k(:,i) = 3.20E-11.*exp(-400./T);
Gstr{i,1} = 'IEPOXD'; Gstr{i,2} = 'OH'; 
fIEPOXD(i)=fIEPOXD(i)-1; fOH(i)=fOH(i)-1; fIEPOXOO(i)=fIEPOXOO(i)+1; 

i=i+1;
Rnames{i} = 'IEPOXOO + HO2 = 0.085HAC + 0.025GLYC + 0.085GLYX + 0.085MGLY + 1.125OH + 0.825HO2 + 1.100CO2 + 0.375CH2O + 0.278HCOOH + 0.600CO + 0.440HC187 + 0.072CO2';
k(:,i) = 2.06E-13.*exp(1300./T);
Gstr{i,1} = 'IEPOXOO'; Gstr{i,2} = 'HO2'; 
fIEPOXOO(i)=fIEPOXOO(i)-1; fHO2(i)=fHO2(i)-1; fHAC(i)=fHAC(i)+0.085; fGLYC(i)=fGLYC(i)+0.025; fGLYX(i)=fGLYX(i)+0.085; fMGLY(i)=fMGLY(i)+0.085; fOH(i)=fOH(i)+1.125; fHO2(i)=fHO2(i)+0.825; fCO2(i)=fCO2(i)+1.100; fCH2O(i)=fCH2O(i)+0.375; fHCOOH(i)=fHCOOH(i)+0.278; fCO(i)=fCO(i)+0.600; fHC187(i)=fHC187(i)+0.440; fCO2(i)=fCO2(i)+0.072; 

i=i+1;
Rnames{i} = 'IEPOXOO + NO = 0.117HAC + 0.088GLYC + 0.088GLYX + 0.088MGLY + 0.125OH + 0.825HO2 + 0.800CO2 + 0.375CH2O + 0.142HCOOH + 0.678CO + NO2 + 0.473HC187 + 0.058CO2';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'IEPOXOO'; Gstr{i,2} = 'NO'; 
fIEPOXOO(i)=fIEPOXOO(i)-1; fNO(i)=fNO(i)-1; fHAC(i)=fHAC(i)+0.117; fGLYC(i)=fGLYC(i)+0.088; fGLYX(i)=fGLYX(i)+0.088; fMGLY(i)=fMGLY(i)+0.088; fOH(i)=fOH(i)+0.125; fHO2(i)=fHO2(i)+0.825; fCO2(i)=fCO2(i)+0.800; fCH2O(i)=fCH2O(i)+0.375; fHCOOH(i)=fHCOOH(i)+0.142; fCO(i)=fCO(i)+0.678; fNO2(i)=fNO2(i)+1; fHC187(i)=fHC187(i)+0.473; fCO2(i)=fCO2(i)+0.058; 

i=i+1;
Rnames{i} = 'IAP + OH = 0.654OH + 0.654DHMOB + 0.346HC5OO';
k(:,i) = 5.31E-12.*exp(200./T);
Gstr{i,1} = 'IAP'; Gstr{i,2} = 'OH'; 
fIAP(i)=fIAP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.654; fDHMOB(i)=fDHMOB(i)+0.654; fHC5OO(i)=fHC5OO(i)+0.346; 

i=i+1;
Rnames{i} = 'VRP + OH = 0.791OH + 0.791MEK + 0.209VRO2';
k(:,i) = 8.78E-12.*exp(200./T);
Gstr{i,1} = 'VRP'; Gstr{i,2} = 'OH'; 
fVRP(i)=fVRP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.791; fMEK(i)=fMEK(i)+0.791; fVRO2(i)=fVRO2(i)+0.209; 

i=i+1;
Rnames{i} = 'MRP + OH = MRO2';
k(:,i) = 1.84E-12.*exp(200./T);
Gstr{i,1} = 'MRP'; Gstr{i,2} = 'OH'; 
fMRP(i)=fMRP(i)-1; fOH(i)=fOH(i)-1; fMRO2(i)=fMRO2(i)+1; 

i=i+1;
Rnames{i} = 'MRP + OH = CO2 + HAC + OH';
k(:,i) = 4.40E-12.*exp(380./T);
Gstr{i,1} = 'MRP'; Gstr{i,2} = 'OH'; 
fMRP(i)=fMRP(i)-1; fOH(i)=fOH(i)-1; fCO2(i)=fCO2(i)+1; fHAC(i)=fHAC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MAOP + OH = NMAO3';
k(:,i) = 6.13E-13.*exp(200./T);
Gstr{i,1} = 'MAOP'; Gstr{i,2} = 'OH'; 
fMAOP(i)=fMAOP(i)-1; fOH(i)=fOH(i)-1; fNMAO3(i)=fNMAO3(i)+1; 

i=i+1;
Rnames{i} = 'MAOP + OH = MAOPO2';
k(:,i) = 3.60E-12.*exp(380./T);
Gstr{i,1} = 'MAOP'; Gstr{i,2} = 'OH'; 
fMAOP(i)=fMAOP(i)-1; fOH(i)=fOH(i)-1; fMAOPO2(i)=fMAOPO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + MAOPO2 = HAC + 2.000CO2 + OH + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MAOPO2'; 
fMCO3(i)=fMCO3(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fHAC(i)=fHAC(i)+1; fCO2(i)=fCO2(i)+2.000; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + MAOPO2 = ACTA + MEK';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MAOPO2'; 
fMCO3(i)=fMCO3(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fACTA(i)=fACTA(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i} = 'MAOPO2 + MO2 = 0.700HAC + 0.700CO2 + 0.700OH + CH2O + 0.700HO2 + 0.300ROH';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'MO2'; 
fMAOPO2(i)=fMAOPO2(i)-1; fMO2(i)=fMO2(i)-1; fHAC(i)=fHAC(i)+0.700; fCO2(i)=fCO2(i)+0.700; fOH(i)=fOH(i)+0.700; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+0.700; fROH(i)=fROH(i)+0.300; 

i=i+1;
Rnames{i} = 'MAOPO2 + MAOPO2 = 2.000HAC + 2.000CO2 + 2.000OH';
k(:,i) = 8.37E-14.*exp(0./T);
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'MAOPO2'; 
fMAOPO2(i)=fMAOPO2(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fHAC(i)=fHAC(i)+2.000; fCO2(i)=fCO2(i)+2.000; fOH(i)=fOH(i)+2.000; 

i=i+1;
Rnames{i} = 'MAOPO2 + HO2 = HAC + CO2 + 2.000OH';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'HO2'; 
fMAOPO2(i)=fMAOPO2(i)-1; fHO2(i)=fHO2(i)-1; fHAC(i)=fHAC(i)+1; fCO2(i)=fCO2(i)+1; fOH(i)=fOH(i)+2.000; 

i=i+1;
Rnames{i} = 'MAOPO2 + NO = HAC + CO2 + OH + NO2';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'NO'; 
fMAOPO2(i)=fMAOPO2(i)-1; fNO(i)=fNO(i)-1; fHAC(i)=fHAC(i)+1; fCO2(i)=fCO2(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MAOPO2 + NO = HNO3';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*4.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'NO'; 
fMAOPO2(i)=fMAOPO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MAP = MCO3';
k(:,i) = 6.13E-13.*exp(200./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MAP'; 
fOH(i)=fOH(i)-1; fMAP(i)=fMAP(i)-1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H6 + NO3 = ETO2 + HNO3';
k(:,i) = 1.40E-18.*exp(0./T);
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'NO3'; 
fC2H6(i)=fC2H6(i)-1; fNO3(i)=fNO3(i)-1; fETO2(i)=fETO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HC5 + O3 = 0.500GLYC + 0.500MGLY + 0.055MGLYOO + 0.890CO + 0.445MCO3 + 0.055GAOO + 0.445HO2 + 0.445CH2O + 0.890OH';
k(:,i) = 6.16E-15.*exp(-1814./T);
Gstr{i,1} = 'HC5'; Gstr{i,2} = 'O3'; 
fHC5(i)=fHC5(i)-1; fO3(i)=fO3(i)-1; fGLYC(i)=fGLYC(i)+0.500; fMGLY(i)=fMGLY(i)+0.500; fMGLYOO(i)=fMGLYOO(i)+0.055; fCO(i)=fCO(i)+0.890; fMCO3(i)=fMCO3(i)+0.445; fGAOO(i)=fGAOO(i)+0.055; fHO2(i)=fHO2(i)+0.445; fCH2O(i)=fCH2O(i)+0.445; fOH(i)=fOH(i)+0.890; 

i=i+1;
Rnames{i} = 'MCO3 + MCO3 = 2.000MO2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MCO3'; 
fMCO3(i)=fMCO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+2.000; 

i=i+1;
Rnames{i} = 'MCO3 + MO2 = CH2O + MO2 + HO2';
k(:,i) = 1.80E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MO2'; 
fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + MO2 = ACTA + CH2O';
k(:,i) = 2.00E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MO2'; 
fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)-1; fACTA(i)=fACTA(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'R4O2 + MCO3 = MO2 + 0.320ACET + 0.190MEK + 0.270HO2 + 0.320ALD2 + 0.130RCHO + 0.050A3O2 + 0.180B3O2 + 0.320OTHRO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MCO3'; 
fR4O2(i)=fR4O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fACET(i)=fACET(i)+0.320; fMEK(i)=fMEK(i)+0.190; fHO2(i)=fHO2(i)+0.270; fALD2(i)=fALD2(i)+0.320; fRCHO(i)=fRCHO(i)+0.130; fA3O2(i)=fA3O2(i)+0.050; fB3O2(i)=fB3O2(i)+0.180; fOTHRO2(i)=fOTHRO2(i)+0.320; 

i=i+1;
Rnames{i} = 'ATO2 + MCO3 = MO2 + MCO3 + CH2O';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MCO3'; 
fATO2(i)=fATO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'KO2 + MCO3 = MO2 + ALD2 + MCO3';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MCO3'; 
fKO2(i)=fKO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'RIO2 + MCO3 = 0.887HO2 + 0.747CH2O + 0.453MVK + 0.294MACR + 0.140HC5 + 0.113DIBOO + CO2 + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MCO3'; 
fRIO2(i)=fRIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.887; fCH2O(i)=fCH2O(i)+0.747; fMVK(i)=fMVK(i)+0.453; fMACR(i)=fMACR(i)+0.294; fHC5(i)=fHC5(i)+0.140; fDIBOO(i)=fDIBOO(i)+0.113; fCO2(i)=fCO2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'HC5OO + MCO3 = 0.216GLYX + 0.234MGLY + 0.234GLYC + 0.216HAC + 0.290DHMOB + 0.170MOBA + 0.090RCHO + HO2 + 0.090CO + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MCO3'; 
fHC5OO(i)=fHC5OO(i)-1; fMCO3(i)=fMCO3(i)-1; fGLYX(i)=fGLYX(i)+0.216; fMGLY(i)=fMGLY(i)+0.234; fGLYC(i)=fGLYC(i)+0.234; fHAC(i)=fHAC(i)+0.216; fDHMOB(i)=fDHMOB(i)+0.290; fMOBA(i)=fMOBA(i)+0.170; fRCHO(i)=fRCHO(i)+0.090; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.090; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'VRO2 + MCO3 = 0.400HO2 + 0.400CH2O + 0.600MCO3 + 0.600GLYC + 0.400MGLY + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MCO3'; 
fVRO2(i)=fVRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.400; fCH2O(i)=fCH2O(i)+0.400; fMCO3(i)=fMCO3(i)+0.600; fGLYC(i)=fGLYC(i)+0.600; fMGLY(i)=fMGLY(i)+0.400; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'MRO2 + MCO3 = 0.850HO2 + 0.143MGLY + 0.857HAC + 0.857CO + 0.143CH2O + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MCO3'; 
fMRO2(i)=fMRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.850; fMGLY(i)=fMGLY(i)+0.143; fHAC(i)=fHAC(i)+0.857; fCO(i)=fCO(i)+0.857; fCH2O(i)=fCH2O(i)+0.143; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'B3O2 + MCO3 = MO2 + HO2 + ACET';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MCO3'; 
fB3O2(i)=fB3O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i} = 'R4N1 + MCO3 = MO2 + NO2 + 0.390CH2O + 0.750ALD2 + 0.570RCHO + 0.300R4O2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MCO3'; 
fR4N1(i)=fR4N1(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.390; fALD2(i)=fALD2(i)+0.750; fRCHO(i)=fRCHO(i)+0.570; fR4O2(i)=fR4O2(i)+0.300; 

i=i+1;
Rnames{i} = 'MAN2 + MCO3 = 0.500PROPNN + 0.500CO + 0.500HO2 + 0.500MGLY + 0.500CH2O + 0.500NO2 + CO2 + MO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MCO3'; 
fMAN2(i)=fMAN2(i)-1; fMCO3(i)=fMCO3(i)-1; fPROPNN(i)=fPROPNN(i)+0.500; fCO(i)=fCO(i)+0.500; fHO2(i)=fHO2(i)+0.500; fMGLY(i)=fMGLY(i)+0.500; fCH2O(i)=fCH2O(i)+0.500; fNO2(i)=fNO2(i)+0.500; fCO2(i)=fCO2(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'INO2 + MCO3 = MO2 + 0.700ISN1 + 0.800HO2 + 0.035MVK + 0.035MACR + 0.070CH2O + 0.300NO2 + 0.230HC5';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MCO3'; 
fINO2(i)=fINO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fISN1(i)=fISN1(i)+0.700; fHO2(i)=fHO2(i)+0.800; fMVK(i)=fMVK(i)+0.035; fMACR(i)=fMACR(i)+0.035; fCH2O(i)=fCH2O(i)+0.070; fNO2(i)=fNO2(i)+0.300; fHC5(i)=fHC5(i)+0.230; 

i=i+1;
Rnames{i} = 'PRN1 + MCO3 = MO2 + NO2 + CH2O + ALD2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MCO3'; 
fPRN1(i)=fPRN1(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'R4O2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MCO3'; 
fR4O2(i)=fR4O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'ATO2 + MCO3 = MGLY + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MCO3'; 
fATO2(i)=fATO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMGLY(i)=fMGLY(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'KO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MCO3'; 
fKO2(i)=fKO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'RIO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MCO3'; 
fRIO2(i)=fRIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'HC5OO + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MCO3'; 
fHC5OO(i)=fHC5OO(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'VRO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MCO3'; 
fVRO2(i)=fVRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'MRO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MCO3'; 
fMRO2(i)=fMRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'R4N1 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MCO3'; 
fR4N1(i)=fR4N1(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MAN2 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MCO3'; 
fMAN2(i)=fMAN2(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INO2 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MCO3'; 
fINO2(i)=fINO2(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRN1 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MCO3'; 
fPRN1(i)=fPRN1(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'B3O2 + MCO3 = ACET + ACTA';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MCO3'; 
fB3O2(i)=fB3O2(i)-1; fMCO3(i)=fMCO3(i)-1; fACET(i)=fACET(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + ETO2 = MO2 + ALD2 + HO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'ETO2'; 
fMCO3(i)=fMCO3(i)-1; fETO2(i)=fETO2(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + OTHRO2 = MO2 + ALD2 + HO2';
k(:,i) = 1.68E-12.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'OTHRO2'; 
fMCO3(i)=fMCO3(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + ETO2 = ACTA + ALD2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'ETO2'; 
fMCO3(i)=fMCO3(i)-1; fETO2(i)=fETO2(i)-1; fACTA(i)=fACTA(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'MCO3 + OTHRO2 = ACTA + ALD2';
k(:,i) = 1.87E-13.*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'OTHRO2'; 
fMCO3(i)=fMCO3(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fACTA(i)=fACTA(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'RCO3 + MCO3 = MO2 + 0.500OTHRO2 + 0.070A3O2 + 0.270B3O2';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MCO3'; 
fRCO3(i)=fRCO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fOTHRO2(i)=fOTHRO2(i)+0.500; fA3O2(i)=fA3O2(i)+0.070; fB3O2(i)=fB3O2(i)+0.270; 

i=i+1;
Rnames{i} = 'NMAO3 + MCO3 = MO2 + CH2O + MCO3';
k(:,i) = 2.50E-12.*exp(500./T);
Gstr{i,1} = 'NMAO3'; Gstr{i,2} = 'MCO3'; 
fNMAO3(i)=fNMAO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NO3 = 2.000NO2 + O2';
k(:,i) = 8.50E-13.*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.000; 

i=i+1;
Rnames{i} = 'MO2 + NO2 {+M} = MPN {+M}';
k(:,i) = 1e-30.*exp(0./T).*(300./T).^(4.8).*M.*0.6.^(1./(1+(log10(1.3889e-19.*exp(0./T).*(300./T).^(2.7).*M)).*(log10(1.3889e-19.*exp(0./T).*(300./T).^(2.7).*M))))./(1+1.3889e-19.*exp(0./T).*(300./T).^(2.7).*M);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO2'; 
fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)-1; fMPN(i)=fMPN(i)+1; 

i=i+1;
Rnames{i} = 'MPN {+M} = MO2 + NO2';
k(:,i) = 0.0105.*exp(-11234./T).*(300./T).^(4.8).*M.*0.6.^(1./(1+(log10(1.3852e-19.*exp(0./T).*(300./T).^(2.7).*M)).*(log10(1.3852e-19.*exp(0./T).*(300./T).^(2.7).*M))))./(1+1.3852e-19.*exp(0./T).*(300./T).^(2.7).*M);
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPNB + O3 =  0.050HO2 + 0.110MVKN + 0.320MACRN + 0.160HCOOH + 0.050OH + 0.620CH2O + 0.360CO2 + 0.210CO + 0.060PROPNN + 0.360PROPNN + 0.100MVKN + 0.410HNO3';
k(:,i) = 3.70E-19.*exp(0./T);
Gstr{i,1} = 'ISOPNB'; Gstr{i,2} = 'O3'; 
fISOPNB(i)=fISOPNB(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+0.050; fMVKN(i)=fMVKN(i)+0.110; fMACRN(i)=fMACRN(i)+0.320; fHCOOH(i)=fHCOOH(i)+0.160; fOH(i)=fOH(i)+0.050; fCH2O(i)=fCH2O(i)+0.620; fCO2(i)=fCO2(i)+0.360; fCO(i)=fCO(i)+0.210; fPROPNN(i)=fPROPNN(i)+0.060; fPROPNN(i)=fPROPNN(i)+0.360; fMVKN(i)=fMVKN(i)+0.100; fHNO3(i)=fHNO3(i)+0.410; 

i=i+1;
Rnames{i} = 'ISOPND + O3 = 0.060NO2 + 0.240PROPNN + 0.260ETHLN + 0.370OH + 0.240GLYC + 0.260HAC + 0.630CO2 + 0.240MOH + 0.09EOH + 0.200CH2O + 0.100MCO3 + 0.060GLYX + 0.160HAC + 0.140PROPNN + 0.300HNO3';
k(:,i) = 2.90E-17.*exp(0./T);
Gstr{i,1} = 'ISOPND'; Gstr{i,2} = 'O3'; 
fISOPND(i)=fISOPND(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+0.060; fPROPNN(i)=fPROPNN(i)+0.240; fETHLN(i)=fETHLN(i)+0.260; fOH(i)=fOH(i)+0.370; fGLYC(i)=fGLYC(i)+0.240; fHAC(i)=fHAC(i)+0.260; fCO2(i)=fCO2(i)+0.630; fMOH(i)=fMOH(i)+0.240; fEOH(i)=fEOH(i)+0.09; fCH2O(i)=fCH2O(i)+0.200; fMCO3(i)=fMCO3(i)+0.100; fGLYX(i)=fGLYX(i)+0.060; fHAC(i)=fHAC(i)+0.160; fPROPNN(i)=fPROPNN(i)+0.140; fHNO3(i)=fHNO3(i)+0.300; 

i=i+1;
Rnames{i} = 'DMS + OH = SO2 + MO2 + CH2O';
k(:,i) = 1.20E-11.*exp(-280./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH'; 
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)+1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'DMS + OH = 0.750SO2 + 0.250MSA + MO2';
k(:,i) = (M.*0.2095.*8.2e-39.*exp(5376./T).*(300./T).^(0))./(1+0.2095.*1.05e-05.*exp(3644./T).*(300./T).^(0));
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH'; 
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)+0.750; fMSA(i)=fMSA(i)+0.250; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'DMS + NO3 = SO2 + HNO3 + MO2 + CH2O';
k(:,i) = 1.90E-13.*exp(530./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'NO3'; 
fDMS(i)=fDMS(i)-1; fNO3(i)=fNO3(i)-1; fSO2(i)=fSO2(i)+1; fHNO3(i)=fHNO3(i)+1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'SO2 + OH {+M} = SO4 + HO2';
k(:,i) = 3.3e-31.*exp(0./T).*(300./T).^(4.3).*M.*0.6.^(1./(1+(log10(2.0625e-19.*exp(0./T).*(300./T).^(4.3).*M)).*(log10(2.0625e-19.*exp(0./T).*(300./T).^(4.3).*M))))./(1+2.0625e-19.*exp(0./T).*(300./T).^(4.3).*M);
Gstr{i,1} = 'SO2'; Gstr{i,2} = 'OH'; 
fSO2(i)=fSO2(i)-1; fOH(i)=fOH(i)-1; fSO4(i)=fSO4(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + O3 = BrO + O2';
k(:,i) = 1.60E-11.*exp(-780./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'O3'; 
fBr(i)=fBr(i)-1; fO3(i)=fO3(i)-1; fBrO(i)=fBrO(i)+1; 

i=i+1;
Rnames{i} = 'BrO + HO2 = HOBr + O2';
k(:,i) = 4.50E-12.*exp(460./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'HO2'; 
fBrO(i)=fBrO(i)-1; fHO2(i)=fHO2(i)-1; fHOBr(i)=fHOBr(i)+1; 

i=i+1;
Rnames{i} = 'Br + HO2 = HBr + O2';
k(:,i) = 4.80E-12.*exp(-310./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'HO2'; 
fBr(i)=fBr(i)-1; fHO2(i)=fHO2(i)-1; fHBr(i)=fHBr(i)+1; 

i=i+1;
Rnames{i} = 'HBr + OH = Br + H2O';
k(:,i) = 5.50E-12.*exp(200./T);
Gstr{i,1} = 'HBr'; Gstr{i,2} = 'OH'; 
fHBr(i)=fHBr(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'BrO + BrO = 2.000Br + O2';
k(:,i) = 2.40E-12.*exp(40./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO'; 
fBrO(i)=fBrO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+2.000; 

i=i+1;
Rnames{i} = 'BrO + BrO = Br2 + O2';
k(:,i) = 2.80E-14.*exp(860./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO'; 
fBrO(i)=fBrO(i)-1; fBrO(i)=fBrO(i)-1; fBr2(i)=fBr2(i)+1; 

i=i+1;
Rnames{i} = 'BrO + NO = Br + NO2';
k(:,i) = 8.80E-12.*exp(260./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO'; 
fBrO(i)=fBrO(i)-1; fNO(i)=fNO(i)-1; fBr(i)=fBr(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + BrNO3 = Br2 + NO3';
k(:,i) = 4.90E-11.*exp(0./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'BrNO3'; 
fBr(i)=fBr(i)-1; fBrNO3(i)=fBrNO3(i)-1; fBr2(i)=fBr2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'Br2 + OH = HOBr + Br';
k(:,i) = 2.10E-11.*exp(240./T);
Gstr{i,1} = 'Br2'; Gstr{i,2} = 'OH'; 
fBr2(i)=fBr2(i)-1; fOH(i)=fOH(i)-1; fHOBr(i)=fHOBr(i)+1; fBr(i)=fBr(i)+1; 

i=i+1;
Rnames{i} = 'HOBr + O = OH + BrO';
k(:,i) = 1.20E-10.*exp(-430./T);
Gstr{i,1} = 'HOBr'; Gstr{i,2} = 'O'; 
fHOBr(i)=fHOBr(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; fBrO(i)=fBrO(i)+1; 

i=i+1;
Rnames{i} = 'HBr + O = OH + Br';
k(:,i) = 5.80E-12.*exp(-1500./T);
Gstr{i,1} = 'HBr'; Gstr{i,2} = 'O'; 
fHBr(i)=fHBr(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; fBr(i)=fBr(i)+1; 

i=i+1;
Rnames{i} = 'BrO + OH = Br + HO2';
k(:,i) = 1.70E-11.*exp(250./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'OH'; 
fBrO(i)=fBrO(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + NO3 = BrO + NO2';
k(:,i) = 1.60E-11.*exp(0./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO3'; 
fBr(i)=fBr(i)-1; fNO3(i)=fNO3(i)-1; fBrO(i)=fBrO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + CH2O = HBr + HO2 + CO';
k(:,i) = 1.70E-11.*exp(-800./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'CH2O'; 
fBr(i)=fBr(i)-1; fCH2O(i)=fCH2O(i)-1; fHBr(i)=fHBr(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'Br + ALD2 = HBr + MCO3';
k(:,i) = 1.80E-11.*exp(-460./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'ALD2'; 
fBr(i)=fBr(i)-1; fALD2(i)=fALD2(i)-1; fHBr(i)=fHBr(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'Br + ACET = HBr + ATO2';
k(:,i) = 1.66E-10.*exp(-7000./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'ACET'; 
fBr(i)=fBr(i)-1; fACET(i)=fACET(i)-1; fHBr(i)=fHBr(i)+1; fATO2(i)=fATO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + C2H6 = HBr + ETO2';
k(:,i) = 2.36E-10.*exp(-6411./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C2H6'; 
fBr(i)=fBr(i)-1; fC2H6(i)=fC2H6(i)-1; fHBr(i)=fHBr(i)+1; fETO2(i)=fETO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + C3H8 = HBr + A3O2';
k(:,i) = 8.77E-11.*exp(-4330./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C3H8'; 
fBr(i)=fBr(i)-1; fC3H8(i)=fC3H8(i)-1; fHBr(i)=fHBr(i)+1; fA3O2(i)=fA3O2(i)+1; 

i=i+1;
Rnames{i} = 'Br + NO2 {+M} = BrNO2 {+M}';
k(:,i) = 4.2e-31.*exp(0./T).*(300./T).^(2.4).*M.*0.6.^(1./(1+(log10(1.5556e-20.*exp(0./T).*(300./T).^(2.4).*M)).*(log10(1.5556e-20.*exp(0./T).*(300./T).^(2.4).*M))))./(1+1.5556e-20.*exp(0./T).*(300./T).^(2.4).*M);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO2'; 
fBr(i)=fBr(i)-1; fNO2(i)=fNO2(i)-1; fBrNO2(i)=fBrNO2(i)+1; 

i=i+1;
Rnames{i} = 'BrO + NO2 {+M} = BrNO3 {+M}';
k(:,i) = 5.4e-31.*exp(0./T).*(300./T).^(3.1).*M.*0.6.^(1./(1+(log10(8.3077e-20.*exp(0./T).*(300./T).^(0.2).*M)).*(log10(8.3077e-20.*exp(0./T).*(300./T).^(0.2).*M))))./(1+8.3077e-20.*exp(0./T).*(300./T).^(0.2).*M);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO2'; 
fBrO(i)=fBrO(i)-1; fNO2(i)=fNO2(i)-1; fBrNO3(i)=fBrNO3(i)+1; 

i=i+1;
Rnames{i} = 'CHBr3 + OH = 3.000Br';
k(:,i) = 9.00E-13.*exp(-360./T);
Gstr{i,1} = 'CHBr3'; Gstr{i,2} = 'OH'; 
fCHBr3(i)=fCHBr3(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+3.000; 

i=i+1;
Rnames{i} = 'CH2Br2 + OH = 2.000Br';
k(:,i) = 2.00E-12.*exp(-840./T);
Gstr{i,1} = 'CH2Br2'; Gstr{i,2} = 'OH'; 
fCH2Br2(i)=fCH2Br2(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+2.000; 

i=i+1;
Rnames{i} = 'CH3Br + OH = Br + H2O + HO2';
k(:,i) = 1.42E-12.*exp(-1150./T);
Gstr{i,1} = 'CH3Br'; Gstr{i,2} = 'OH'; 
fCH3Br(i)=fCH3Br(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1; fH2O(i)=fH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O1D + H2O = 2.000OH';
k(:,i) = 1.63E-10.*exp(60./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H2O'; 
fO1D(i)=fO1D(i)-1; fH2O(i)=fH2O(i)-1; fOH(i)=fOH(i)+2.000; 

i=i+1;
Rnames{i} = 'O1D + N2 = O + N2';
k(:,i) = 2.15E-11.*exp(110./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'N2'; 
fO1D(i)=fO1D(i)-1; fN2(i)=fN2(i)-1; fO(i)=fO(i)+1; fN2(i)=fN2(i)+1; 

i=i+1;
Rnames{i} = 'O1D + O2 = O + O2';
k(:,i) = 3.30E-11.*exp(55./T);
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'O1D + H2 = H + OH';
k(:,i) = 1.20E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H2'; 
fO1D(i)=fO1D(i)-1; fH2(i)=fH2(i)-1; fH(i)=fH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O1D + N2O = N2 + O2';
k(:,i) = 4.63E-11.*exp(20./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'N2O'; 
fO1D(i)=fO1D(i)-1; fN2O(i)=fN2O(i)-1; fN2(i)=fN2(i)+1; 

i=i+1;
Rnames{i} = 'O1D + N2O = 2.000NO';
k(:,i) = 7.25E-11.*exp(20./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'N2O'; 
fO1D(i)=fO1D(i)-1; fN2O(i)=fN2O(i)-1; fNO(i)=fNO(i)+2.000; 

i=i+1;
Rnames{i} = 'O1D + CH4 = MO2 + OH';
k(:,i) = 1.31E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CH4'; 
fO1D(i)=fO1D(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O1D + CH4 = CH2O + H2';
k(:,i) = 0.09E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CH4'; 
fO1D(i)=fO1D(i)-1; fCH4(i)=fCH4(i)-1; fCH2O(i)=fCH2O(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'O1D + CH4 = CH2O + H + HO2';
k(:,i) = 0.35E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CH4'; 
fO1D(i)=fO1D(i)-1; fCH4(i)=fCH4(i)-1; fCH2O(i)=fCH2O(i)+1; fH(i)=fH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O + O2 {+M} = O3 {+M}';
k(:,i) = 6.00E-34.*exp(0../T).*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O + O3 = 2.000O2';
k(:,i) = 8.00E-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'OH + H2 = H2O + H';
k(:,i) = 2.80E-12.*exp(-1800./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fH2O(i)=fH2O(i)+1; fH(i)=fH(i)+1; 

i=i+1;
Rnames{i} = 'O + OH = O2 + H';
k(:,i) = 1.80E-11.*exp(180./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'OH'; 
fO(i)=fO(i)-1; fOH(i)=fOH(i)-1; fH(i)=fH(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O = OH + O2';
k(:,i) = 3.00E-11.*exp(200./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O'; 
fHO2(i)=fHO2(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O1D + O3 = 2.000O2';
k(:,i) = 1.20E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'O3'; 
fO1D(i)=fO1D(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'O1D + O3 = 2.000O + O2';
k(:,i) = 1.20E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'O3'; 
fO1D(i)=fO1D(i)-1; fO3(i)=fO3(i)-1; fO(i)=fO(i)+2.000; 

i=i+1;
Rnames{i} = 'OCS + O = CO + SO2';
k(:,i) = 2.10E-11.*exp(-2200./T);
Gstr{i,1} = 'OCS'; Gstr{i,2} = 'O'; 
fOCS(i)=fOCS(i)-1; fO(i)=fO(i)-1; fCO(i)=fCO(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'OCS + OH = CO2 + SO2';
k(:,i) = 1.10E-13.*exp(-1200./T);
Gstr{i,1} = 'OCS'; Gstr{i,2} = 'OH'; 
fOCS(i)=fOCS(i)-1; fOH(i)=fOH(i)-1; fCO2(i)=fCO2(i)+1; fSO2(i)=fSO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O = NO + O2';
k(:,i) = 5.10E-12.*exp(210./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + O = NO2 + O2';
k(:,i) = 1.00E-11.*exp(0./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'O'; 
fNO3(i)=fNO3(i)-1; fO(i)=fO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + O {+M} = NO2 {+M}';
k(:,i) = 9e-32.*exp(0./T).*(300./T).^(1.5).*M.*0.6.^(1./(1+(log10(3e-21.*exp(0./T).*(300./T).^(1.5).*M)).*(log10(3e-21.*exp(0./T).*(300./T).^(1.5).*M))))./(1+3e-21.*exp(0./T).*(300./T).^(1.5).*M);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O'; 
fNO(i)=fNO(i)-1; fO(i)=fO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O {+M} = NO3 {+M}';
k(:,i) = 2.5e-31.*exp(0./T).*(300./T).^(1.8).*M.*0.6.^(1./(1+(log10(1.1364e-20.*exp(0./T).*(300./T).^(1.1).*M)).*(log10(1.1364e-20.*exp(0./T).*(300./T).^(1.1).*M))))./(1+1.1364e-20.*exp(0./T).*(300./T).^(1.1).*M);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O'; 
fNO2(i)=fNO2(i)-1; fO(i)=fO(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + O = OH + HO2';
k(:,i) = 1.40E-12.*exp(-2000./T);
Gstr{i,1} = 'H2O2'; Gstr{i,2} = 'O'; 
fH2O2(i)=fH2O2(i)-1; fO(i)=fO(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H + O2 {+M} = HO2 {+M}';
k(:,i) = 4.4e-32.*exp(0./T).*(300./T).^(1.3).*M.*0.6.^(1./(1+(log10(5.8667e-22.*exp(0./T).*(300./T).^(1.5).*M)).*(log10(5.8667e-22.*exp(0./T).*(300./T).^(1.5).*M))))./(1+5.8667e-22.*exp(0./T).*(300./T).^(1.5).*M);
Gstr{i,1} = 'H'; 
fH(i)=fH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H + O3 = OH + O2';
k(:,i) = 1.40E-10.*exp(-470./T);
Gstr{i,1} = 'H'; Gstr{i,2} = 'O3'; 
fH(i)=fH(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H + HO2 = 2.000OH';
k(:,i) = 7.20E-11.*exp(0./T);
Gstr{i,1} = 'H'; Gstr{i,2} = 'HO2'; 
fH(i)=fH(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+2.000; 

i=i+1;
Rnames{i} = 'H + HO2 = O + H2O';
k(:,i) = 1.60E-12.*exp(0./T);
Gstr{i,1} = 'H'; Gstr{i,2} = 'HO2'; 
fH(i)=fH(i)-1; fHO2(i)=fHO2(i)-1; fO(i)=fO(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'H + HO2 = H2 + O2';
k(:,i) = 6.90E-12.*exp(0./T);
Gstr{i,1} = 'H'; Gstr{i,2} = 'HO2'; 
fH(i)=fH(i)-1; fHO2(i)=fHO2(i)-1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'N + O2 = NO + O';
k(:,i) = 1.50E-11.*exp(-3600./T);
Gstr{i,1} = 'N'; 
fN(i)=fN(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'N + NO = N2 + O';
k(:,i) = 2.10E-11.*exp(100./T);
Gstr{i,1} = 'N'; Gstr{i,2} = 'NO'; 
fN(i)=fN(i)-1; fNO(i)=fNO(i)-1; fN2(i)=fN2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'N + NO2 = N2O + O';
k(:,i) = 5.80E-12.*exp(220./T);
Gstr{i,1} = 'N'; Gstr{i,2} = 'NO2'; 
fN(i)=fN(i)-1; fNO2(i)=fNO2(i)-1; fN2O(i)=fN2O(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'BrO + O = Br + O2';
k(:,i) = 1.90E-11.*exp(230./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'O'; 
fBrO(i)=fBrO(i)-1; fO(i)=fO(i)-1; fBr(i)=fBr(i)+1; 

i=i+1;
Rnames{i} = 'CH2O + O = CO + HO2 + OH';
k(:,i) = 3.40E-11.*exp(-1600./T);
Gstr{i,1} = 'CH2O'; Gstr{i,2} = 'O'; 
fCH2O(i)=fCH2O(i)-1; fO(i)=fO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'O1D + HCl = 0.090O + 0.090HCl + 0.240H + 0.670Cl + 0.240ClO + 0.670OH';
k(:,i) = 1.50E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HCl'; 
fO1D(i)=fO1D(i)-1; fHCl(i)=fHCl(i)-1; fO(i)=fO(i)+0.090; fHCl(i)=fHCl(i)+0.090; fH(i)=fH(i)+0.240; fCl(i)=fCl(i)+0.670; fClO(i)=fClO(i)+0.240; fOH(i)=fOH(i)+0.670; 

i=i+1;
Rnames{i} = 'O1D + HBr = 0.200O + 0.200HBr + 0.150BrO + 0.650OH + 0.150H + 0.650Br';
k(:,i) = 1.50E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HBr'; 
fO1D(i)=fO1D(i)-1; fHBr(i)=fHBr(i)-1; fO(i)=fO(i)+0.200; fHBr(i)=fHBr(i)+0.200; fBrO(i)=fBrO(i)+0.150; fOH(i)=fOH(i)+0.650; fH(i)=fH(i)+0.150; fBr(i)=fBr(i)+0.650; 

i=i+1;
Rnames{i} = 'O1D + Cl2 = 0.250O + 0.250Cl2 + 0.750Cl + 0.750ClO';
k(:,i) = 2.70E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'Cl2'; 
fO1D(i)=fO1D(i)-1; fCl2(i)=fCl2(i)-1; fO(i)=fO(i)+0.250; fCl2(i)=fCl2(i)+0.250; fCl(i)=fCl(i)+0.750; fClO(i)=fClO(i)+0.750; 

i=i+1;
Rnames{i} = 'O1D + CCl4 = 0.140O + 0.140CCl4 + 0.860ClO + 2.580Cl';
k(:,i) = 3.30E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CCl4'; 
fO1D(i)=fO1D(i)-1; fCCl4(i)=fCCl4(i)-1; fO(i)=fO(i)+0.140; fCCl4(i)=fCCl4(i)+0.140; fClO(i)=fClO(i)+0.860; fCl(i)=fCl(i)+2.580; 

i=i+1;
Rnames{i} = 'O1D + CH3Br = 0.440BrO + MO2 + 0.560Br';
k(:,i) = 1.80E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CH3Br'; 
fO1D(i)=fO1D(i)-1; fCH3Br(i)=fCH3Br(i)-1; fBrO(i)=fBrO(i)+0.440; fMO2(i)=fMO2(i)+1; fBr(i)=fBr(i)+0.560; 

i=i+1;
Rnames{i} = 'O1D + CH2Br2 = 0.050O + 0.050CH2Br2 + 0.950BrO + 0.950Br';
k(:,i) = 2.70E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CH2Br2'; 
fO1D(i)=fO1D(i)-1; fCH2Br2(i)=fCH2Br2(i)-1; fO(i)=fO(i)+0.050; fCH2Br2(i)=fCH2Br2(i)+0.050; fBrO(i)=fBrO(i)+0.950; fBr(i)=fBr(i)+0.950; 

i=i+1;
Rnames{i} = 'O1D + CHBr3 = 0.320O + 0.320CHBr3 + 0.680BrO + 1.360Br';
k(:,i) = 6.60E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CHBr3'; 
fO1D(i)=fO1D(i)-1; fCHBr3(i)=fCHBr3(i)-1; fO(i)=fO(i)+0.320; fCHBr3(i)=fCHBr3(i)+0.320; fBrO(i)=fBrO(i)+0.680; fBr(i)=fBr(i)+1.360; 

i=i+1;
Rnames{i} = 'O1D + HCFC22 = 0.280O + 0.280HCFC22 + 0.550ClO + 0.170Cl';
k(:,i) = 1.02E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HCFC22'; 
fO1D(i)=fO1D(i)-1; fHCFC22(i)=fHCFC22(i)-1; fO(i)=fO(i)+0.280; fHCFC22(i)=fHCFC22(i)+0.280; fClO(i)=fClO(i)+0.550; fCl(i)=fCl(i)+0.170; 

i=i+1;
Rnames{i} = 'O1D + CFC11 = 0.120O + 0.120CFC11 + 0.880ClO + 1.760Cl';
k(:,i) = 2.30E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CFC11'; 
fO1D(i)=fO1D(i)-1; fCFC11(i)=fCFC11(i)-1; fO(i)=fO(i)+0.120; fCFC11(i)=fCFC11(i)+0.120; fClO(i)=fClO(i)+0.880; fCl(i)=fCl(i)+1.760; 

i=i+1;
Rnames{i} = 'O1D + CFC12 = 0.140O + 0.140CFC12 + 0.860ClO + 0.860Cl';
k(:,i) = 1.40E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CFC12'; 
fO1D(i)=fO1D(i)-1; fCFC12(i)=fCFC12(i)-1; fO(i)=fO(i)+0.140; fCFC12(i)=fCFC12(i)+0.140; fClO(i)=fClO(i)+0.860; fCl(i)=fCl(i)+0.860; 

i=i+1;
Rnames{i} = 'O1D + H1211 = 0.360O + 0.360H1211 + 0.310BrO + 0.310Cl + 0.330Br + 0.330ClO';
k(:,i) = 1.50E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H1211'; 
fO1D(i)=fO1D(i)-1; fH1211(i)=fH1211(i)-1; fO(i)=fO(i)+0.360; fH1211(i)=fH1211(i)+0.360; fBrO(i)=fBrO(i)+0.310; fCl(i)=fCl(i)+0.310; fBr(i)=fBr(i)+0.330; fClO(i)=fClO(i)+0.330; 

i=i+1;
Rnames{i} = 'O1D + H1301 = 0.590O + 0.590H1301 + 0.410BrO';
k(:,i) = 1.00E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H1301'; 
fO1D(i)=fO1D(i)-1; fH1301(i)=fH1301(i)-1; fO(i)=fO(i)+0.590; fH1301(i)=fH1301(i)+0.590; fBrO(i)=fBrO(i)+0.410; 

i=i+1;
Rnames{i} = 'O1D + HCFC141b = 0.310O + 0.310HCFC141b + 0.690ClO + 0.690Cl';
k(:,i) = 2.60E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HCFC141b'; 
fO1D(i)=fO1D(i)-1; fHCFC141b(i)=fHCFC141b(i)-1; fO(i)=fO(i)+0.310; fHCFC141b(i)=fHCFC141b(i)+0.310; fClO(i)=fClO(i)+0.690; fCl(i)=fCl(i)+0.690; 

i=i+1;
Rnames{i} = 'O1D + HCFC142b = 0.260O + 0.260HCFC142b + 0.740ClO';
k(:,i) = 2.00E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HCFC142b'; 
fO1D(i)=fO1D(i)-1; fHCFC142b(i)=fHCFC142b(i)-1; fO(i)=fO(i)+0.260; fHCFC142b(i)=fHCFC142b(i)+0.260; fClO(i)=fClO(i)+0.740; 

i=i+1;
Rnames{i} = 'O1D + HCFC123 = 0.210O + 0.210HCFC123 + 0.790Cl + 0.790ClO';
k(:,i) = 2.00E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'HCFC123'; 
fO1D(i)=fO1D(i)-1; fHCFC123(i)=fHCFC123(i)-1; fO(i)=fO(i)+0.210; fHCFC123(i)=fHCFC123(i)+0.210; fCl(i)=fCl(i)+0.790; fClO(i)=fClO(i)+0.790; 

i=i+1;
Rnames{i} = 'O1D + CFC113 = 0.250O + 0.250CFC113 + 1.500Cl + 0.750ClO';
k(:,i) = 2.32E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CFC113'; 
fO1D(i)=fO1D(i)-1; fCFC113(i)=fCFC113(i)-1; fO(i)=fO(i)+0.250; fCFC113(i)=fCFC113(i)+0.250; fCl(i)=fCl(i)+1.500; fClO(i)=fClO(i)+0.750; 

i=i+1;
Rnames{i} = 'O1D + CFC114 = 0.250O + 0.250CFC114 + 0.750Cl + 0.750ClO';
k(:,i) = 1.30E-10.*exp(-25./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CFC114'; 
fO1D(i)=fO1D(i)-1; fCFC114(i)=fCFC114(i)-1; fO(i)=fO(i)+0.250; fCFC114(i)=fCFC114(i)+0.250; fCl(i)=fCl(i)+0.750; fClO(i)=fClO(i)+0.750; 

i=i+1;
Rnames{i} = 'O1D + CFC115 = 0.700O + 0.700CFC115 + 0.300ClO';
k(:,i) = 5.40E-11.*exp(-30./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'CFC115'; 
fO1D(i)=fO1D(i)-1; fCFC115(i)=fCFC115(i)-1; fO(i)=fO(i)+0.700; fCFC115(i)=fCFC115(i)+0.700; fClO(i)=fClO(i)+0.300; 

i=i+1;
Rnames{i} = 'O1D + H2402 = 0.250O + 0.250H2402 + 0.750Br + 0.750BrO';
k(:,i) = 1.60E-10.*exp(0./T);
Gstr{i,1} = 'O1D'; Gstr{i,2} = 'H2402'; 
fO1D(i)=fO1D(i)-1; fH2402(i)=fH2402(i)-1; fO(i)=fO(i)+0.250; fH2402(i)=fH2402(i)+0.250; fBr(i)=fBr(i)+0.750; fBrO(i)=fBrO(i)+0.750; 

i=i+1;
Rnames{i} = 'OH + Cl2 = HOCl + Cl';
k(:,i) = 2.60E-12.*exp(-1100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'Cl2'; 
fOH(i)=fOH(i)-1; fCl2(i)=fCl2(i)-1; fHOCl(i)=fHOCl(i)+1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'MO2 + ClO = ClOO + HO2 + CH2O';
k(:,i) = 1.80E-11.*exp(-600./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'ClO'; 
fMO2(i)=fMO2(i)-1; fClO(i)=fClO(i)-1; fClOO(i)=fClOO(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + ClO = HO2 + Cl';
k(:,i) = 7.40E-12.*exp(270./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClO'; 
fOH(i)=fOH(i)-1; fClO(i)=fClO(i)-1; fHO2(i)=fHO2(i)+1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'OH + ClO = HCl + O2';
k(:,i) = 6.00E-13.*exp(230./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClO'; 
fOH(i)=fOH(i)-1; fClO(i)=fClO(i)-1; fHCl(i)=fHCl(i)+1; 

i=i+1;
Rnames{i} = 'OH + OClO = HOCl + O2';
k(:,i) = 1.40E-12.*exp(600./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OClO'; 
fOH(i)=fOH(i)-1; fOClO(i)=fOClO(i)-1; fHOCl(i)=fHOCl(i)+1; 

i=i+1;
Rnames{i} = 'OH + Cl2O2 = HOCl + ClOO';
k(:,i) = 6.00E-13.*exp(670./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'Cl2O2'; 
fOH(i)=fOH(i)-1; fCl2O2(i)=fCl2O2(i)-1; fHOCl(i)=fHOCl(i)+1; fClOO(i)=fClOO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCl = H2O + Cl';
k(:,i) = 1.80E-12.*exp(-250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCl'; 
fOH(i)=fOH(i)-1; fHCl(i)=fHCl(i)-1; fH2O(i)=fH2O(i)+1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOCl = H2O + ClO';
k(:,i) = 3.00E-12.*exp(-500./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOCl'; 
fOH(i)=fOH(i)-1; fHOCl(i)=fHOCl(i)-1; fH2O(i)=fH2O(i)+1; fClO(i)=fClO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ClNO2 = HOCl + NO2';
k(:,i) = 2.40E-12.*exp(-1250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClNO2'; 
fOH(i)=fOH(i)-1; fClNO2(i)=fClNO2(i)-1; fHOCl(i)=fHOCl(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ClNO3 = HOCl + NO3';
k(:,i) = 1.20E-12.*exp(-330./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ClNO3'; 
fOH(i)=fOH(i)-1; fClNO3(i)=fClNO3(i)-1; fHOCl(i)=fHOCl(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3Cl = Cl + HO2 + H2O';
k(:,i) = 1.96E-12.*exp(-1200./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3Cl'; 
fOH(i)=fOH(i)-1; fCH3Cl(i)=fCH3Cl(i)-1; fCl(i)=fCl(i)+1; fHO2(i)=fHO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH2Cl2 = 2.000Cl + HO2';
k(:,i) = 2.61E-12.*exp(-944./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH2Cl2'; 
fOH(i)=fOH(i)-1; fCH2Cl2(i)=fCH2Cl2(i)-1; fCl(i)=fCl(i)+2.000; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CHCl3 = 3.000Cl + HO2';
k(:,i) = 4.69E-12.*exp(-1134./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CHCl3'; 
fOH(i)=fOH(i)-1; fCHCl3(i)=fCHCl3(i)-1; fCl(i)=fCl(i)+3.000; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CCl3 = 3.000Cl + H2O';
k(:,i) = 1.64E-12.*exp(-1520./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CCl3'; 
fOH(i)=fOH(i)-1; fCH3CCl3(i)=fCH3CCl3(i)-1; fCl(i)=fCl(i)+3.000; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCFC22 = Cl + H2O';
k(:,i) = 9.20E-13.*exp(-1560./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCFC22'; 
fOH(i)=fOH(i)-1; fHCFC22(i)=fHCFC22(i)-1; fCl(i)=fCl(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCFC141b = 2.000Cl + H2O';
k(:,i) = 1.25E-12.*exp(-1600./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCFC141b'; 
fOH(i)=fOH(i)-1; fHCFC141b(i)=fHCFC141b(i)-1; fCl(i)=fCl(i)+2.000; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCFC142b = Cl + H2O';
k(:,i) = 1.30E-12.*exp(-1770./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCFC142b'; 
fOH(i)=fOH(i)-1; fHCFC142b(i)=fHCFC142b(i)-1; fCl(i)=fCl(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCFC123 = 2.000Cl + H2O';
k(:,i) = 7.40E-13.*exp(-900./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCFC123'; 
fOH(i)=fOH(i)-1; fHCFC123(i)=fHCFC123(i)-1; fCl(i)=fCl(i)+2.000; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH4 + Cl = HCl + MO2';
k(:,i) = 7.10E-12.*exp(-1270./T);
Gstr{i,1} = 'CH4'; Gstr{i,2} = 'Cl'; 
fCH4(i)=fCH4(i)-1; fCl(i)=fCl(i)-1; fHCl(i)=fHCl(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2O + Cl = CO + HCl + HO2';
k(:,i) = 7.32E-11.*exp(-30./T);
Gstr{i,1} = 'CH2O'; Gstr{i,2} = 'Cl'; 
fCH2O(i)=fCH2O(i)-1; fCl(i)=fCl(i)-1; fCO(i)=fCO(i)+1; fHCl(i)=fHCl(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + O3 = ClO + O2';
k(:,i) = 2.30E-11.*exp(-200./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'O3'; 
fCl(i)=fCl(i)-1; fO3(i)=fO3(i)-1; fClO(i)=fClO(i)+1; 

i=i+1;
Rnames{i} = 'Cl + H2 = H + HCl';
k(:,i) = 3.05E-11.*exp(-2270./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'H2'; 
fCl(i)=fCl(i)-1; fH2(i)=fH2(i)-1; fH(i)=fH(i)+1; fHCl(i)=fHCl(i)+1; 

i=i+1;
Rnames{i} = 'Cl + H2O2 = HO2 + HCl';
k(:,i) = 1.10E-11.*exp(-980./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'H2O2'; 
fCl(i)=fCl(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; fHCl(i)=fHCl(i)+1; 

i=i+1;
Rnames{i} = 'Cl + HO2 = O2 + HCl';
k(:,i) = 1.40E-11.*exp(270./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HO2'; 
fCl(i)=fCl(i)-1; fHO2(i)=fHO2(i)-1; fHCl(i)=fHCl(i)+1; 

i=i+1;
Rnames{i} = 'Cl + HO2 = OH + ClO';
k(:,i) = 3.60E-11.*exp(-375./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HO2'; 
fCl(i)=fCl(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1; fClO(i)=fClO(i)+1; 

i=i+1;
Rnames{i} = 'ClO + O = Cl + O2';
k(:,i) = 2.80E-11.*exp(85./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'O'; 
fClO(i)=fClO(i)-1; fO(i)=fO(i)-1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'ClO + HO2 = O2 + HOCl';
k(:,i) = 2.60E-12.*exp(290./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'HO2'; 
fClO(i)=fClO(i)-1; fHO2(i)=fHO2(i)-1; fHOCl(i)=fHOCl(i)+1; 

i=i+1;
Rnames{i} = 'ClO + NO = Cl + NO2';
k(:,i) = 6.40E-12.*exp(290./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'NO'; 
fClO(i)=fClO(i)-1; fNO(i)=fNO(i)-1; fCl(i)=fCl(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ClO + NO2 {+M} = ClNO3 {+M}';
k(:,i) = 1.8e-31.*exp(0./T).*(300./T).^(3.4).*M.*0.6.^(1./(1+(log10(1.2e-20.*exp(0./T).*(300./T).^(1.5).*M)).*(log10(1.2e-20.*exp(0./T).*(300./T).^(1.5).*M))))./(1+1.2e-20.*exp(0./T).*(300./T).^(1.5).*M);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'NO2'; 
fClO(i)=fClO(i)-1; fNO2(i)=fNO2(i)-1; fClNO3(i)=fClNO3(i)+1; 

i=i+1;
Rnames{i} = 'ClO + ClO = Cl2 + O2';
k(:,i) = 1.00E-12.*exp(-1590./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO'; 
fClO(i)=fClO(i)-1; fClO(i)=fClO(i)-1; fCl2(i)=fCl2(i)+1; 

i=i+1;
Rnames{i} = 'ClO + ClO = Cl + ClOO';
k(:,i) = 3.00E-11.*exp(-2450./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO'; 
fClO(i)=fClO(i)-1; fClO(i)=fClO(i)-1; fCl(i)=fCl(i)+1; fClOO(i)=fClOO(i)+1; 

i=i+1;
Rnames{i} = 'ClO + ClO = OClO + Cl';
k(:,i) = 3.50E-13.*exp(-1370./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO'; 
fClO(i)=fClO(i)-1; fClO(i)=fClO(i)-1; fOClO(i)=fOClO(i)+1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'Cl + O2 {+M} = ClOO {+M}';
k(:,i) = 2.2e-33.*exp(0./T).*(300./T).^(3.1).*M.*0.6.^(1./(1+(log10(1.2222e-23.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(1.2222e-23.*exp(0./T).*(300./T).^(3.1).*M))))./(1+1.2222e-23.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'Cl'; 
fCl(i)=fCl(i)-1; fClOO(i)=fClOO(i)+1; 

i=i+1;
Rnames{i} = 'ClOO {+M} = Cl + O2 {+M}';
k(:,i) = 3.33e-09.*exp(-2502./T).*(300./T).^(3.1).*M.*0.6.^(1./(1+(log10(1.2198e-23.*exp(0./T).*(300./T).^(3.1).*M)).*(log10(1.2198e-23.*exp(0./T).*(300./T).^(3.1).*M))))./(1+1.2198e-23.*exp(0./T).*(300./T).^(3.1).*M);
Gstr{i,1} = 'ClOO'; 
fClOO(i)=fClOO(i)-1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'ClO + ClO {+M} = Cl2O2 {+M}';
k(:,i) = 1.9e-32.*exp(0./T).*(300./T).^(3.6).*M.*0.6.^(1./(1+(log10(5.1351e-21.*exp(0./T).*(300./T).^(2).*M)).*(log10(5.1351e-21.*exp(0./T).*(300./T).^(2).*M))))./(1+5.1351e-21.*exp(0./T).*(300./T).^(2).*M);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'ClO'; 
fClO(i)=fClO(i)-1; fClO(i)=fClO(i)-1; fCl2O2(i)=fCl2O2(i)+1; 

i=i+1;
Rnames{i} = 'Cl2O2 {+M} = 2.000ClO {+M}';
k(:,i) = 9.3e-06.*exp(-8649./T).*(300./T).^(4.5).*M.*0.6.^(1./(1+(log10(5.3448e-21.*exp(0./T).*(300./T).^(2.5).*M)).*(log10(5.3448e-21.*exp(0./T).*(300./T).^(2.5).*M))))./(1+5.3448e-21.*exp(0./T).*(300./T).^(2.5).*M);
Gstr{i,1} = 'Cl2O2'; 
fCl2O2(i)=fCl2O2(i)-1; fClO(i)=fClO(i)+2.000; 

i=i+1;
Rnames{i} = 'ClOO + Cl = Cl2 + O2';
k(:,i) = 2.30E-10.*exp(0./T);
Gstr{i,1} = 'ClOO'; Gstr{i,2} = 'Cl'; 
fClOO(i)=fClOO(i)-1; fCl(i)=fCl(i)-1; fCl2(i)=fCl2(i)+1; 

i=i+1;
Rnames{i} = 'ClOO + Cl = 2.000ClO';
k(:,i) = 1.20E-11.*exp(0./T);
Gstr{i,1} = 'ClOO'; Gstr{i,2} = 'Cl'; 
fClOO(i)=fClOO(i)-1; fCl(i)=fCl(i)-1; fClO(i)=fClO(i)+2.000; 

i=i+1;
Rnames{i} = 'ClO + BrO = Br + OClO';
k(:,i) = 9.50E-13.*exp(550./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'BrO'; 
fClO(i)=fClO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+1; fOClO(i)=fOClO(i)+1; 

i=i+1;
Rnames{i} = 'ClO + BrO = Br + ClOO';
k(:,i) = 2.30E-12.*exp(260./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'BrO'; 
fClO(i)=fClO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+1; fClOO(i)=fClOO(i)+1; 

i=i+1;
Rnames{i} = 'ClO + BrO = BrCl + O2';
k(:,i) = 4.10E-13.*exp(290./T);
Gstr{i,1} = 'ClO'; Gstr{i,2} = 'BrO'; 
fClO(i)=fClO(i)-1; fBrO(i)=fBrO(i)-1; fBrCl(i)=fBrCl(i)+1; 

i=i+1;
Rnames{i} = 'ClNO3 + O = ClO + NO3';
k(:,i) = 3.60E-12.*exp(-840./T);
Gstr{i,1} = 'ClNO3'; Gstr{i,2} = 'O'; 
fClNO3(i)=fClNO3(i)-1; fO(i)=fO(i)-1; fClO(i)=fClO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'ClNO3 + Cl = Cl2 + NO3';
k(:,i) = 6.50E-12.*exp(135./T);
Gstr{i,1} = 'ClNO3'; Gstr{i,2} = 'Cl'; 
fClNO3(i)=fClNO3(i)-1; fCl(i)=fCl(i)-1; fCl2(i)=fCl2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3Cl + Cl = CO + 2.000HCl + HO2';
k(:,i) = 2.17E-11.*exp(-1130./T);
Gstr{i,1} = 'CH3Cl'; Gstr{i,2} = 'Cl'; 
fCH3Cl(i)=fCH3Cl(i)-1; fCl(i)=fCl(i)-1; fCO(i)=fCO(i)+1; fHCl(i)=fHCl(i)+2.000; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2Cl2 + Cl = CO + HCl + 2.000Cl + HO2';
k(:,i) = 1.24E-12.*exp(-1070./T);
Gstr{i,1} = 'CH2Cl2'; Gstr{i,2} = 'Cl'; 
fCH2Cl2(i)=fCH2Cl2(i)-1; fCl(i)=fCl(i)-1; fCO(i)=fCO(i)+1; fHCl(i)=fHCl(i)+1; fCl(i)=fCl(i)+2.000; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHCl3 + Cl = CO + HCl + 3.000Cl + HO2';
k(:,i) = 3.77E-12.*exp(-1011./T);
Gstr{i,1} = 'CHCl3'; Gstr{i,2} = 'Cl'; 
fCHCl3(i)=fCHCl3(i)-1; fCl(i)=fCl(i)-1; fCO(i)=fCO(i)+1; fHCl(i)=fHCl(i)+1; fCl(i)=fCl(i)+3.000; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + HCOOH = HCl + CO2 + H2O';
k(:,i) = 2.00E-13.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'HCOOH'; 
fCl(i)=fCl(i)-1; fHCOOH(i)=fHCOOH(i)-1; fHCl(i)=fHCl(i)+1; fCO2(i)=fCO2(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'Cl + MO2 = ClO + CH2O + HO2';
k(:,i) = 1.60E-10.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'MO2'; 
fCl(i)=fCl(i)-1; fMO2(i)=fMO2(i)-1; fClO(i)=fClO(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + MP = HCl + MO2';
k(:,i) = 5.7E-11.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'MP'; 
fCl(i)=fCl(i)-1; fMP(i)=fMP(i)-1; fHCl(i)=fHCl(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + C2H6 = HCl + ETO2';
k(:,i) = 7.2E-11.*exp(-70./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C2H6'; 
fCl(i)=fCl(i)-1; fC2H6(i)=fC2H6(i)-1; fHCl(i)=fHCl(i)+1; fETO2(i)=fETO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + ETO2 = ClO + HO2 + ALD2';
k(:,i) = 7.4E-11.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ETO2'; 
fCl(i)=fCl(i)-1; fETO2(i)=fETO2(i)-1; fClO(i)=fClO(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + OTHRO2 = ClO + HO2 + ALD2';
k(:,i) = 7.4E-11.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'OTHRO2'; 
fCl(i)=fCl(i)-1; fOTHRO2(i)=fOTHRO2(i)-1; fClO(i)=fClO(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + MOH = HCl + CH2O + HO2';
k(:,i) = 5.5E-11.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'MOH'; 
fCl(i)=fCl(i)-1; fMOH(i)=fMOH(i)-1; fHCl(i)=fHCl(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + EOH = HCl + ALD2';
k(:,i) = 9.6E-11.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'EOH'; 
fCl(i)=fCl(i)-1; fEOH(i)=fEOH(i)-1; fHCl(i)=fHCl(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + ACTA = HCl + MO2 + CO2';
k(:,i) = 2.8E-14.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ACTA'; 
fCl(i)=fCl(i)-1; fACTA(i)=fACTA(i)-1; fHCl(i)=fHCl(i)+1; fMO2(i)=fMO2(i)+1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + C3H8 = HCl + B3O2';
k(:,i) = 6.54E-11.*exp(60./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C3H8'; 
fCl(i)=fCl(i)-1; fC3H8(i)=fC3H8(i)-1; fHCl(i)=fHCl(i)+1; fB3O2(i)=fB3O2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + C3H8 = HCl + A3O2';
k(:,i) = 8.12E-11.*exp(-90./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'C3H8'; 
fCl(i)=fCl(i)-1; fC3H8(i)=fC3H8(i)-1; fHCl(i)=fHCl(i)+1; fA3O2(i)=fA3O2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + ACET = HCl + ATO2';
k(:,i) = 7.70E-11.*exp(-1000./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ACET'; 
fCl(i)=fCl(i)-1; fACET(i)=fACET(i)-1; fHCl(i)=fHCl(i)+1; fATO2(i)=fATO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + ISOP = HCl + RIO2';
k(:,i) = 7.60E-11.*exp(500./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ISOP'; 
fCl(i)=fCl(i)-1; fISOP(i)=fISOP(i)-1; fHCl(i)=fHCl(i)+1; fRIO2(i)=fRIO2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + ALK4 = HCl + R4O2';
k(:,i) = 2.05E-10.*exp(0./T);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'ALK4'; 
fCl(i)=fCl(i)-1; fALK4(i)=fALK4(i)-1; fHCl(i)=fHCl(i)+1; fR4O2(i)=fR4O2(i)+1; 

i=i+1;
Rnames{i} = 'Cl + PRPE {+M} = HCl + PO2 {+M}';
k(:,i) = 4e-28.*exp(0./T).*(300./T).^(0).*M.*0.6.^(1./(1+(log10(1.4286e-18.*exp(0./T).*(300./T).^(0).*M)).*(log10(1.4286e-18.*exp(0./T).*(300./T).^(0).*M))))./(1+1.4286e-18.*exp(0./T).*(300./T).^(0).*M);
Gstr{i,1} = 'Cl'; Gstr{i,2} = 'PRPE'; 
fCl(i)=fCl(i)-1; fPRPE(i)=fPRPE(i)-1; fHCl(i)=fHCl(i)+1; fPO2(i)=fPO2(i)+1; 

i=i+1;
Rnames{i} = 'Br + PRPE = HBr + PO2';
k(:,i) = 3.60E-12.*exp(0./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'PRPE'; 
fBr(i)=fBr(i)-1; fPRPE(i)=fPRPE(i)-1; fHBr(i)=fHBr(i)+1; fPO2(i)=fPO2(i)+1; 

i=i+1;
Rnames{i} = 'I + NO {+M} = INO {+M}';
k(:,i) = 1.8e-32.*exp(0./T).*(300./T).^(1).*M.*0.6.^(1./(1+(log10(1.0169e-21.*exp(0./T).*(300./T).^(1).*M)).*(log10(1.0169e-21.*exp(0./T).*(300./T).^(1).*M))))./(1+1.0169e-21.*exp(0./T).*(300./T).^(1).*M);
Gstr{i,1} = 'I'; Gstr{i,2} = 'NO'; 
fI(i)=fI(i)-1; fNO(i)=fNO(i)-1; fINO(i)=fINO(i)+1; 

i=i+1;
Rnames{i} = 'INO + INO = I2 + 2.000NO';
k(:,i) = 8.40E-11.*exp(-2620./T);
Gstr{i,1} = 'INO'; Gstr{i,2} = 'INO'; 
fINO(i)=fINO(i)-1; fINO(i)=fINO(i)-1; fI2(i)=fI2(i)+1; fNO(i)=fNO(i)+2.000; 

i=i+1;
Rnames{i} = 'I + NO2 {+M} = IONO {+M}';
k(:,i) = 3e-31.*exp(0./T).*(300./T).^(1).*M.*0.63.^(1./(1+(log10(4.5455e-21.*exp(0./T).*(300./T).^(1).*M)).*(log10(4.5455e-21.*exp(0./T).*(300./T).^(1).*M))))./(1+4.5455e-21.*exp(0./T).*(300./T).^(1).*M);
Gstr{i,1} = 'I'; Gstr{i,2} = 'NO2'; 
fI(i)=fI(i)-1; fNO2(i)=fNO2(i)-1; fIONO(i)=fIONO(i)+1; 

i=i+1;
Rnames{i} = 'IONO {+M} = I + NO2 {+M}';
k(:,i) = 9.94E+17.*exp(-11859./T);
Gstr{i,1} = 'IONO'; 
fIONO(i)=fIONO(i)-1; fI(i)=fI(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IONO + IONO = I2 + 2.000NO2';
k(:,i) = 2.90E-11.*exp(-2600./T);
Gstr{i,1} = 'IONO'; Gstr{i,2} = 'IONO'; 
fIONO(i)=fIONO(i)-1; fIONO(i)=fIONO(i)-1; fI2(i)=fI2(i)+1; fNO2(i)=fNO2(i)+2.000; 

i=i+1;
Rnames{i} = 'I2 + NO3 = I + IONO2';
k(:,i) = 1.50E-12.*exp(0./T);
Gstr{i,1} = 'I2'; Gstr{i,2} = 'NO3'; 
fI2(i)=fI2(i)-1; fNO3(i)=fNO3(i)-1; fI(i)=fI(i)+1; fIONO2(i)=fIONO2(i)+1; 

i=i+1;
Rnames{i} = 'IO + NO2 {+M} = IONO2 {+M}';
k(:,i) = 7.5e-31.*exp(0./T).*(300./T).^(3.5).*M.*0.6.^(1./(1+(log10(9.8684e-20.*exp(0./T).*(300./T).^(2).*M)).*(log10(9.8684e-20.*exp(0./T).*(300./T).^(2).*M))))./(1+9.8684e-20.*exp(0./T).*(300./T).^(2).*M);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO2'; 
fIO(i)=fIO(i)-1; fNO2(i)=fNO2(i)-1; fIONO2(i)=fIONO2(i)+1; 

i=i+1;
Rnames{i} = 'IONO2 {+M} = IO + NO2 {+M}';
k(:,i) = 2.10E+15.*exp(-13670./T);
Gstr{i,1} = 'IONO2'; 
fIONO2(i)=fIONO2(i)-1; fIO(i)=fIO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IONO2 + I = I2 + NO3';
k(:,i) = 9.10E-11.*exp(-146./T);
Gstr{i,1} = 'IONO2'; Gstr{i,2} = 'I'; 
fIONO2(i)=fIONO2(i)-1; fI(i)=fI(i)-1; fI2(i)=fI2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'I + BrO = IO + Br';
k(:,i) = 1.20E-11.*exp(0./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'BrO'; 
fI(i)=fI(i)-1; fBrO(i)=fBrO(i)-1; fIO(i)=fIO(i)+1; fBr(i)=fBr(i)+1; 

i=i+1;
Rnames{i} = 'IO + BrO = Br + I + O2';
k(:,i) = 3.00E-12.*exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BrO'; 
fIO(i)=fIO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+1; fI(i)=fI(i)+1; 

i=i+1;
Rnames{i} = 'IO + BrO = Br + OIO';
k(:,i) = 1.20E-11.*exp(510./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'BrO'; 
fIO(i)=fIO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+1; fOIO(i)=fOIO(i)+1; 

i=i+1;
Rnames{i} = 'IO + OIO {+M} = I2O3 {+M}';
k(:,i) = 1.00E-10.*exp(0./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'OIO'; 
fIO(i)=fIO(i)-1; fOIO(i)=fOIO(i)-1; fI2O3(i)=fI2O3(i)+1; 

i=i+1;
Rnames{i} = 'OIO + OIO = I2O4';
k(:,i) = 1.50E-10.*exp(0./T);
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'OIO'; 
fOIO(i)=fOIO(i)-1; fOIO(i)=fOIO(i)-1; fI2O4(i)=fI2O4(i)+1; 

i=i+1;
Rnames{i} = 'I2O4 {+M} = 2.000OIO {+M}';
k(:,i) = 3.80E-02.*exp(0./T);
Gstr{i,1} = 'I2O4'; 
fI2O4(i)=fI2O4(i)-1; fOIO(i)=fOIO(i)+2.000; 

i=i+1;
Rnames{i} = 'OIO + NO = IO + NO2';
k(:,i) = 1.10E-12.*exp(542./T);
Gstr{i,1} = 'OIO'; Gstr{i,2} = 'NO'; 
fOIO(i)=fOIO(i)-1; fNO(i)=fNO(i)-1; fIO(i)=fIO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IO + ClO = I + OClO';
k(:,i) = 5.10E-12.*exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO'; 
fIO(i)=fIO(i)-1; fClO(i)=fClO(i)-1; fI(i)=fI(i)+1; fOClO(i)=fOClO(i)+1; 

i=i+1;
Rnames{i} = 'IO + ClO = I + Cl + O2';
k(:,i) = 2.81E-12.*exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO'; 
fIO(i)=fIO(i)-1; fClO(i)=fClO(i)-1; fI(i)=fI(i)+1; fCl(i)=fCl(i)+1; 

i=i+1;
Rnames{i} = 'IO + ClO = ICl + O2';
k(:,i) = 1.02E-12.*exp(280./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'ClO'; 
fIO(i)=fIO(i)-1; fClO(i)=fClO(i)-1; fICl(i)=fICl(i)+1; 

i=i+1;
Rnames{i} = 'I + O3 = IO + O2';
k(:,i) = 2.30E-11.*exp(-870./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'O3'; 
fI(i)=fI(i)-1; fO3(i)=fO3(i)-1; fIO(i)=fIO(i)+1; 

i=i+1;
Rnames{i} = 'I + HO2 = HI + O2';
k(:,i) = 1.50E-11.*exp(-1090./T);
Gstr{i,1} = 'I'; Gstr{i,2} = 'HO2'; 
fI(i)=fI(i)-1; fHO2(i)=fHO2(i)-1; fHI(i)=fHI(i)+1; 

i=i+1;
Rnames{i} = 'I2 + OH = HOI + I';
k(:,i) = 1.80E-10.*exp(0./T);
Gstr{i,1} = 'I2'; Gstr{i,2} = 'OH'; 
fI2(i)=fI2(i)-1; fOH(i)=fOH(i)-1; fHOI(i)=fHOI(i)+1; fI(i)=fI(i)+1; 

i=i+1;
Rnames{i} = 'HI + OH = I + H2O';
k(:,i) = 3.00E-11.*exp(0./T);
Gstr{i,1} = 'HI'; Gstr{i,2} = 'OH'; 
fHI(i)=fHI(i)-1; fOH(i)=fOH(i)-1; fI(i)=fI(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOI + OH = IO + H2O';
k(:,i) = 5.00E-12.*exp(0./T);
Gstr{i,1} = 'HOI'; Gstr{i,2} = 'OH'; 
fHOI(i)=fHOI(i)-1; fOH(i)=fOH(i)-1; fIO(i)=fIO(i)+1; fH2O(i)=fH2O(i)+1; 

i=i+1;
Rnames{i} = 'IO + HO2 = HOI + O2';
k(:,i) = 1.30E-11.*exp(570./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'HO2'; 
fIO(i)=fIO(i)-1; fHO2(i)=fHO2(i)-1; fHOI(i)=fHOI(i)+1; 

i=i+1;
Rnames{i} = 'IO + NO = I + NO2';
k(:,i) = 9.10E-12.*exp(240./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'NO'; 
fIO(i)=fIO(i)-1; fNO(i)=fNO(i)-1; fI(i)=fI(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IO + IO = I + OIO';
k(:,i) = 6.00E-12.*exp(500./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'IO'; 
fIO(i)=fIO(i)-1; fIO(i)=fIO(i)-1; fI(i)=fI(i)+1; fOIO(i)=fOIO(i)+1; 

i=i+1;
Rnames{i} = 'IO + IO {+M} = I2O2 {+M}';
k(:,i) = 9.00E-12.*exp(500./T);
Gstr{i,1} = 'IO'; Gstr{i,2} = 'IO'; 
fIO(i)=fIO(i)-1; fIO(i)=fIO(i)-1; fI2O2(i)=fI2O2(i)+1; 

i=i+1;
Rnames{i} = 'I2O2 {+M} = 2.000IO {+M}';
k(:,i) = 1.00E+12.*exp(-9770./T);
Gstr{i,1} = 'I2O2'; 
fI2O2(i)=fI2O2(i)-1; fIO(i)=fIO(i)+2.000; 

i=i+1;
Rnames{i} = 'I2O2 {+M} = OIO + I {+M}';
k(:,i) = 2.50E+14.*exp(-9770./T);
Gstr{i,1} = 'I2O2'; 
fI2O2(i)=fI2O2(i)-1; fOIO(i)=fOIO(i)+1; fI(i)=fI(i)+1; 

i=i+1;
Rnames{i} = 'CH3I + OH = H2O + I + MO2';
k(:,i) = 2.90E-12.*exp(-1100./T);
Gstr{i,1} = 'CH3I'; Gstr{i,2} = 'OH'; 
fCH3I(i)=fCH3I(i)-1; fOH(i)=fOH(i)-1; fH2O(i)=fH2O(i)+1; fI(i)=fI(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'HC5 + OH = HC5OO';
k(:,i) = 3.35E-11.*exp(380./T);
Gstr{i,1} = 'HC5'; Gstr{i,2} = 'OH'; 
fHC5(i)=fHC5(i)-1; fOH(i)=fOH(i)-1; fHC5OO(i)=fHC5OO(i)+1; 

i=i+1;
Rnames{i} = 'HC5OO + NO = NO2 + 0.216GLYX + 0.234MGLY + 0.234GLYC + 0.216HAC + 0.290DHMOB + 0.170MOBA + 0.090RCHO + HO2 + 0.090CO';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'NO'; 
fHC5OO(i)=fHC5OO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fGLYX(i)=fGLYX(i)+0.216; fMGLY(i)=fMGLY(i)+0.234; fGLYC(i)=fGLYC(i)+0.234; fHAC(i)=fHAC(i)+0.216; fDHMOB(i)=fDHMOB(i)+0.290; fMOBA(i)=fMOBA(i)+0.170; fRCHO(i)=fRCHO(i)+0.090; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.090; 

i=i+1;
Rnames{i} = 'HC5OO + NO = HNO3';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'NO'; 
fHC5OO(i)=fHC5OO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HC5OO + HO2 = 0.100IAP + 0.900OH + 0.900MGLY + 0.900GLYC + 0.900HO2';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*5.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'HO2'; 
fHC5OO(i)=fHC5OO(i)-1; fHO2(i)=fHO2(i)-1; fIAP(i)=fIAP(i)+0.100; fOH(i)=fOH(i)+0.900; fMGLY(i)=fMGLY(i)+0.900; fGLYC(i)=fGLYC(i)+0.900; fHO2(i)=fHO2(i)+0.900; 

i=i+1;
Rnames{i} = 'ISOPND + OH = 0.100IEPOXD + 0.900ISOPNDO2 + 0.100NO2';
k(:,i) = 1.20E-11.*exp(652./T);
Gstr{i,1} = 'ISOPND'; Gstr{i,2} = 'OH'; 
fISOPND(i)=fISOPND(i)-1; fOH(i)=fOH(i)-1; fIEPOXD(i)=fIEPOXD(i)+0.100; fISOPNDO2(i)=fISOPNDO2(i)+0.900; fNO2(i)=fNO2(i)+0.100; 

i=i+1;
Rnames{i} = 'ISOPNB + OH = 0.900ISOPNBO2 + 0.067IEPOXA + 0.033IEPOXB + 0.100NO2';
k(:,i) = 2.40E-12.*exp(745./T);
Gstr{i,1} = 'ISOPNB'; Gstr{i,2} = 'OH'; 
fISOPNB(i)=fISOPNB(i)-1; fOH(i)=fOH(i)-1; fISOPNBO2(i)=fISOPNBO2(i)+0.900; fIEPOXA(i)=fIEPOXA(i)+0.067; fIEPOXB(i)=fIEPOXB(i)+0.033; fNO2(i)=fNO2(i)+0.100; 

i=i+1;
Rnames{i} = 'ISOPNDO2 + NO = 0.019MACRN + 0.057HCOOH + 0.270HAC + 0.210ETHLN + 0.150CH2O + 0.790NO2 + 0.300GLYC + 0.300PROPNN + 0.610HO2 + 0.270DHDN + 0.075MVKN + 0.057ISOPNDO2';
k(:,i) = 2.40E-12.*exp(360./T);
Gstr{i,1} = 'ISOPNDO2'; Gstr{i,2} = 'NO'; 
fISOPNDO2(i)=fISOPNDO2(i)-1; fNO(i)=fNO(i)-1; fMACRN(i)=fMACRN(i)+0.019; fHCOOH(i)=fHCOOH(i)+0.057; fHAC(i)=fHAC(i)+0.270; fETHLN(i)=fETHLN(i)+0.210; fCH2O(i)=fCH2O(i)+0.150; fNO2(i)=fNO2(i)+0.790; fGLYC(i)=fGLYC(i)+0.300; fPROPNN(i)=fPROPNN(i)+0.300; fHO2(i)=fHO2(i)+0.610; fDHDN(i)=fDHDN(i)+0.270; fMVKN(i)=fMVKN(i)+0.075; fISOPNDO2(i)=fISOPNDO2(i)+0.057; 

i=i+1;
Rnames{i} = 'ISOPNDO2 + HO2 = 0.010MACRN + 0.200HAC + 0.200ETHLN +  0.070CH2O + 0.230GLYC + 0.230PROPNN + 0.500HO2 + 0.500OH + 0.060MVKN + 0.500ISNP';
k(:,i) = 8.70E-14.*exp(1650./T);
Gstr{i,1} = 'ISOPNDO2'; Gstr{i,2} = 'HO2'; 
fISOPNDO2(i)=fISOPNDO2(i)-1; fHO2(i)=fHO2(i)-1; fMACRN(i)=fMACRN(i)+0.010; fHAC(i)=fHAC(i)+0.200; fETHLN(i)=fETHLN(i)+0.200; fCH2O(i)=fCH2O(i)+0.070; fGLYC(i)=fGLYC(i)+0.230; fPROPNN(i)=fPROPNN(i)+0.230; fHO2(i)=fHO2(i)+0.500; fOH(i)=fOH(i)+0.500; fMVKN(i)=fMVKN(i)+0.060; fISNP(i)=fISNP(i)+0.500; 

i=i+1;
Rnames{i} = 'ISOPNBO2 + NO = 0.090GLYC + 0.090HAC + 0.700CH2O + 0.880NO2 + 0.440MACRN + 0.690HO2 + 0.260MVKN + 0.210DHDN';
k(:,i) = 2.40E-12.*exp(360./T);
Gstr{i,1} = 'ISOPNBO2'; Gstr{i,2} = 'NO'; 
fISOPNBO2(i)=fISOPNBO2(i)-1; fNO(i)=fNO(i)-1; fGLYC(i)=fGLYC(i)+0.090; fHAC(i)=fHAC(i)+0.090; fCH2O(i)=fCH2O(i)+0.700; fNO2(i)=fNO2(i)+0.880; fMACRN(i)=fMACRN(i)+0.440; fHO2(i)=fHO2(i)+0.690; fMVKN(i)=fMVKN(i)+0.260; fDHDN(i)=fDHDN(i)+0.210; 

i=i+1;
Rnames{i} = 'ISOPNBO2 + HO2 = 0.060GLYC + 0.060HAC + 0.440CH2O + 0.280MACRN + 0.160MVKN + 0.060NO2 + 0.440HO2 + 0.500OH + 0.510ISNP';
k(:,i) = 8.70E-14.*exp(1650./T);
Gstr{i,1} = 'ISOPNBO2'; Gstr{i,2} = 'HO2'; 
fISOPNBO2(i)=fISOPNBO2(i)-1; fHO2(i)=fHO2(i)-1; fGLYC(i)=fGLYC(i)+0.060; fHAC(i)=fHAC(i)+0.060; fCH2O(i)=fCH2O(i)+0.440; fMACRN(i)=fMACRN(i)+0.280; fMVKN(i)=fMVKN(i)+0.160; fNO2(i)=fNO2(i)+0.060; fHO2(i)=fHO2(i)+0.440; fOH(i)=fOH(i)+0.500; fISNP(i)=fISNP(i)+0.510; 

i=i+1;
Rnames{i} = 'ISNP + OH = 0.612OH + 0.612R4N1 + 0.193ISOPNBO2 + 0.193ISOPNDO2';
k(:,i) = 4.75E-12.*exp(200./T);
Gstr{i,1} = 'ISNP'; Gstr{i,2} = 'OH'; 
fISNP(i)=fISNP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.612; fR4N1(i)=fR4N1(i)+0.612; fISOPNBO2(i)=fISOPNBO2(i)+0.193; fISOPNDO2(i)=fISOPNDO2(i)+0.193; 

i=i+1;
Rnames{i} = 'MVKN + OH = 0.650HCOOH + NO3 + 0.650MGLY + 0.350CH2O + 0.350PYAC';
k(:,i) = 4.40E-13.*exp(380./T);
Gstr{i,1} = 'MVKN'; Gstr{i,2} = 'OH'; 
fMVKN(i)=fMVKN(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+0.650; fNO3(i)=fNO3(i)+1; fMGLY(i)=fMGLY(i)+0.650; fCH2O(i)=fCH2O(i)+0.350; fPYAC(i)=fPYAC(i)+0.350; 

i=i+1;
Rnames{i} = 'MACRN + OH = MACRNO2';
k(:,i) = 8.79E-13.*exp(380./T);
Gstr{i,1} = 'MACRN'; Gstr{i,2} = 'OH'; 
fMACRN(i)=fMACRN(i)-1; fOH(i)=fOH(i)-1; fMACRNO2(i)=fMACRNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO2 + NO = 0.080ACTA + 0.080CH2O + 0.150NO3 + 0.070HCOOH + 0.070MGLY + 0.850HAC + 0.850NO2 + 0.930CO2 + NO2';
k(:,i) = 2.70E-12.*exp(350./T);
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'NO'; 
fMACRNO2(i)=fMACRNO2(i)-1; fNO(i)=fNO(i)-1; fACTA(i)=fACTA(i)+0.080; fCH2O(i)=fCH2O(i)+0.080; fNO3(i)=fNO3(i)+0.150; fHCOOH(i)=fHCOOH(i)+0.070; fMGLY(i)=fMGLY(i)+0.070; fHAC(i)=fHAC(i)+0.850; fNO2(i)=fNO2(i)+0.850; fCO2(i)=fCO2(i)+0.930; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO2 + HO2 = 0.080ACTA + 0.080CH2O + 0.150NO3 + 0.070HCOOH + 0.070MGLY + 0.850HAC + 0.850NO2 + 0.930CO2 + OH';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'HO2'; 
fMACRNO2(i)=fMACRNO2(i)-1; fHO2(i)=fHO2(i)-1; fACTA(i)=fACTA(i)+0.080; fCH2O(i)=fCH2O(i)+0.080; fNO3(i)=fNO3(i)+0.150; fHCOOH(i)=fHCOOH(i)+0.070; fMGLY(i)=fMGLY(i)+0.070; fHAC(i)=fHAC(i)+0.850; fNO2(i)=fNO2(i)+0.850; fCO2(i)=fCO2(i)+0.930; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO2 + NO2 {+M} = PMNN';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M);
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'NO2'; 
fMACRNO2(i)=fMACRNO2(i)-1; fNO2(i)=fNO2(i)-1; fPMNN(i)=fPMNN(i)+1; 

i=i+1;
Rnames{i} = 'PMNN = MACRNO2 + NO2';
k(:,i) = 9e-28.*exp(0./T).*(300./T).^(8.9).*M.*0.6.^(1./(1+(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)).*(log10(1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M))))./(1+1.1688e-16.*exp(0./T).*(300./T).^(8.7).*M)./(9e-29.*exp(14000./T).*(300./T).^(0));
Gstr{i,1} = 'PMNN'; 
fPMNN(i)=fPMNN(i)-1; fMACRNO2(i)=fMACRNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DHMOB + OH = 1.500CO + HO2 + 0.500HAC + 0.500MEK';
k(:,i) = 2.52E-12.*exp(410./T);
Gstr{i,1} = 'DHMOB'; Gstr{i,2} = 'OH'; 
fDHMOB(i)=fDHMOB(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1.500; fHO2(i)=fHO2(i)+1; fHAC(i)=fHAC(i)+0.500; fMEK(i)=fMEK(i)+0.500; 

i=i+1;
Rnames{i} = 'DIBOO + NO = HO2 + NO2 + 0.520GLYC + 0.520MGLY + 0.480HAC + 0.480GLYX';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'NO'; 
fDIBOO(i)=fDIBOO(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLYC(i)=fGLYC(i)+0.520; fMGLY(i)=fMGLY(i)+0.520; fHAC(i)=fHAC(i)+0.480; fGLYX(i)=fGLYX(i)+0.480; 

i=i+1;
Rnames{i} = 'DIBOO + NO = HNO3';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'NO'; 
fDIBOO(i)=fDIBOO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'DIBOO + HO2 = 0.150HO2 + 0.150OH + 0.078GLYC + 0.078MGLY + 0.072HAC + 0.072GLYX + 0.850R4P';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*5.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'HO2'; 
fDIBOO(i)=fDIBOO(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+0.150; fOH(i)=fOH(i)+0.150; fGLYC(i)=fGLYC(i)+0.078; fMGLY(i)=fMGLY(i)+0.078; fHAC(i)=fHAC(i)+0.072; fGLYX(i)=fGLYX(i)+0.072; fR4P(i)=fR4P(i)+0.850; 

i=i+1;
Rnames{i} = 'MOBA + OH = MOBAOO';
k(:,i) = 2.79E-11.*exp(380./T);
Gstr{i,1} = 'MOBA'; Gstr{i,2} = 'OH'; 
fMOBA(i)=fMOBA(i)-1; fOH(i)=fOH(i)-1; fMOBAOO(i)=fMOBAOO(i)+1; 

i=i+1;
Rnames{i} = 'MOBAOO + NO = RCHO + CO2 + HO2 + NO2';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1-(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))));
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'NO'; 
fMOBAOO(i)=fMOBAOO(i)-1; fNO(i)=fNO(i)-1; fRCHO(i)=fRCHO(i)+1; fCO2(i)=fCO2(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MOBAOO + NO = HNO3';
k(:,i) = 2.7e-12.*exp(350./T).*(300./T).^(0).*(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2))./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(1+(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1)))).*0.411.^(1./(1+(log10(1.94e-22.*exp(0.97.*5.*exp(0./T).*(300./T).^(0)).*M./(0.826.*(300./T).^8.1))).^2)));
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'NO'; 
fMOBAOO(i)=fMOBAOO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MOBAOO + HO2 = 0.500OH + 0.500HO2 + 0.500RCHO + 0.500CO2 + 0.500R4P';
k(:,i) = 2.91e-13.*exp(1300./T).*(300./T).^(0).*(1-exp(-0.245.*4.*exp(0./T).*(300./T).^(0)));
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'HO2'; 
fMOBAOO(i)=fMOBAOO(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.500; fHO2(i)=fHO2(i)+0.500; fRCHO(i)=fRCHO(i)+0.500; fCO2(i)=fCO2(i)+0.500; fR4P(i)=fR4P(i)+0.500; 

i=i+1;
Rnames{i} = 'MOBA + O3 = OH + HO2 + CO2 + MEK';
k(:,i) = 2.00E-17.*exp(0./T);
Gstr{i,1} = 'MOBA'; Gstr{i,2} = 'O3'; 
fMOBA(i)=fMOBA(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO2(i)=fCO2(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i} = 'ETHLN + OH = CH2O + CO2 + NO2';
k(:,i) = 2.40E-12.*exp(0./T);
Gstr{i,1} = 'ETHLN'; Gstr{i,2} = 'OH'; 
fETHLN(i)=fETHLN(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+1; fCO2(i)=fCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPNN + OH = NO2 + MGLY';
k(:,i) = 6.70E-13.*exp(0./T);
Gstr{i,1} = 'PROPNN'; Gstr{i,2} = 'OH'; 
fPROPNN(i)=fPROPNN(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + CO = CH2O';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO'; 
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO = CH2O + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO'; 
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO2 = CH2O + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2'; 
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fCH2O(i)=fCH2O(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + SO2 = CH2O + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2'; 
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fCH2O(i)=fCH2O(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + H2O = CH2O + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'H2O'; 
fCH2OO(i)=fCH2OO(i)-1; fH2O(i)=fH2O(i)-1; fCH2O(i)=fCH2O(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + H2O = HCOOH';
k(:,i) = 1.00E-17.*exp(0./T);
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'H2O'; 
fCH2OO(i)=fCH2OO(i)-1; fH2O(i)=fH2O(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + CO = MACR';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'CO'; 
fMACROO(i)=fMACROO(i)-1; fCO(i)=fCO(i)-1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO = MACR + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO'; 
fMACROO(i)=fMACROO(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO2 = MACR + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO2'; 
fMACROO(i)=fMACROO(i)-1; fNO2(i)=fNO2(i)-1; fMACR(i)=fMACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + SO2 = MACR + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'SO2'; 
fMACROO(i)=fMACROO(i)-1; fSO2(i)=fSO2(i)-1; fMACR(i)=fMACR(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + H2O = MRP';
k(:,i) = 1.00E-17.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'H2O'; 
fMACROO(i)=fMACROO(i)-1; fH2O(i)=fH2O(i)-1; fMRP(i)=fMRP(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + H2O = MACR + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'H2O'; 
fMACROO(i)=fMACROO(i)-1; fH2O(i)=fH2O(i)-1; fMACR(i)=fMACR(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + CO = MVK';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'CO'; 
fMVKOO(i)=fMVKOO(i)-1; fCO(i)=fCO(i)-1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO = MVK + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO'; 
fMVKOO(i)=fMVKOO(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO2 = MVK + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO2'; 
fMVKOO(i)=fMVKOO(i)-1; fNO2(i)=fNO2(i)-1; fMVK(i)=fMVK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + SO2 = MVK + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'SO2'; 
fMVKOO(i)=fMVKOO(i)-1; fSO2(i)=fSO2(i)-1; fMVK(i)=fMVK(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + H2O = MVK + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'H2O'; 
fMVKOO(i)=fMVKOO(i)-1; fH2O(i)=fH2O(i)-1; fMVK(i)=fMVK(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + CO = MGLY';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'CO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fCO(i)=fCO(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO = MGLY + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO(i)=fNO(i)-1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO2 = MGLY + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLY(i)=fMGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + SO2 = MGLY + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'SO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLY(i)=fMGLY(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + H2O = MGLY + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'H2O'; 
fMGLYOO(i)=fMGLYOO(i)-1; fH2O(i)=fH2O(i)-1; fMGLY(i)=fMGLY(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + CO = MGLY';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'CO'; 
fMGLOO(i)=fMGLOO(i)-1; fCO(i)=fCO(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO = MGLY + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO'; 
fMGLOO(i)=fMGLOO(i)-1; fNO(i)=fNO(i)-1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO2 = MGLY + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO2'; 
fMGLOO(i)=fMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLY(i)=fMGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + SO2 = MGLY + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'SO2'; 
fMGLOO(i)=fMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLY(i)=fMGLY(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + H2O = MCO3 + MO2';
k(:,i) = 1.00E-17.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'H2O'; 
fMGLOO(i)=fMGLOO(i)-1; fH2O(i)=fH2O(i)-1; fMCO3(i)=fMCO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + H2O = MGLY + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'H2O'; 
fMGLOO(i)=fMGLOO(i)-1; fH2O(i)=fH2O(i)-1; fMGLY(i)=fMGLY(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + CO = ALD2';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'CO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCO(i)=fCO(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO = ALD2 + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO2 = ALD2 + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO2(i)=fNO2(i)-1; fALD2(i)=fALD2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + SO2 = ALD2 + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'SO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fSO2(i)=fSO2(i)-1; fALD2(i)=fALD2(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + H2O = ALD2 + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'H2O'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fH2O(i)=fH2O(i)-1; fALD2(i)=fALD2(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + H2O = ACTA';
k(:,i) = 1.00E-17.*exp(0./T);
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'H2O'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fH2O(i)=fH2O(i)-1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + CO = GLYC';
k(:,i) = 1.20E-15.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'CO'; 
fGAOO(i)=fGAOO(i)-1; fCO(i)=fCO(i)-1; fGLYC(i)=fGLYC(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO = GLYC + NO2';
k(:,i) = 1.00E-14.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO'; 
fGAOO(i)=fGAOO(i)-1; fNO(i)=fNO(i)-1; fGLYC(i)=fGLYC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO2 = GLYC + NO3';
k(:,i) = 1.00E-15.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO2'; 
fGAOO(i)=fGAOO(i)-1; fNO2(i)=fNO2(i)-1; fGLYC(i)=fGLYC(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + SO2 = GLYC + SO4';
k(:,i) = 7.00E-14.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'SO2'; 
fGAOO(i)=fGAOO(i)-1; fSO2(i)=fSO2(i)-1; fGLYC(i)=fGLYC(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + H2O = GLYC + H2O2';
k(:,i) = 6.00E-18.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'H2O'; 
fGAOO(i)=fGAOO(i)-1; fH2O(i)=fH2O(i)-1; fGLYC(i)=fGLYC(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + H2O = HAC';
k(:,i) = 1.00E-17.*exp(0./T);
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'H2O'; 
fGAOO(i)=fGAOO(i)-1; fH2O(i)=fH2O(i)-1; fHAC(i)=fHAC(i)+1; 

i=i+1;
Rnames{i} = 'BENZ + OH = BRO2 + 1.920CH2O + 0.252GLYX + OH';
k(:,i) = 2.33E-12.*exp(-193./T);
Gstr{i,1} = 'BENZ'; Gstr{i,2} = 'OH'; 
fBENZ(i)=fBENZ(i)-1; fOH(i)=fOH(i)-1; fBRO2(i)=fBRO2(i)+1; fCH2O(i)=fCH2O(i)+1.920; fGLYX(i)=fGLYX(i)+0.252; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'TOLU + OH = TRO2 + 1.920CH2O + 0.260GLYX + 0.215MGLY + OH';
k(:,i) = 1.81E-12.*exp(338./T);
Gstr{i,1} = 'TOLU'; Gstr{i,2} = 'OH'; 
fTOLU(i)=fTOLU(i)-1; fOH(i)=fOH(i)-1; fTRO2(i)=fTRO2(i)+1; fCH2O(i)=fCH2O(i)+1.920; fGLYX(i)=fGLYX(i)+0.260; fMGLY(i)=fMGLY(i)+0.215; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'XYLE + OH = XRO2 + 1.920CH2O + 0.268GLYX + 0.463MGLY + OH';
k(:,i) = 2.31E-11.*exp(0./T);
Gstr{i,1} = 'XYLE'; Gstr{i,2} = 'OH'; 
fXYLE(i)=fXYLE(i)-1; fOH(i)=fOH(i)-1; fXRO2(i)=fXRO2(i)+1; fCH2O(i)=fCH2O(i)+1.920; fGLYX(i)=fGLYX(i)+0.268; fMGLY(i)=fMGLY(i)+0.463; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'XYLE + NO3 = CO2';
k(:,i) = 2.60E-16.*exp(0./T);
Gstr{i,1} = 'XYLE'; Gstr{i,2} = 'NO3'; 
fXYLE(i)=fXYLE(i)-1; fNO3(i)=fNO3(i)-1; fCO2(i)=fCO2(i)+1; 

i=i+1;
Rnames{i} = 'BRO2 + HO2 = LBRO2H';
k(:,i) = 1.40E-12.*exp(700./T);
Gstr{i,1} = 'BRO2'; Gstr{i,2} = 'HO2'; 
fBRO2(i)=fBRO2(i)-1; fHO2(i)=fHO2(i)-1; fLBRO2H(i)=fLBRO2H(i)+1; 

i=i+1;
Rnames{i} = 'BRO2 + NO = LBRO2N';
k(:,i) = 2.60E-12.*exp(350./T);
Gstr{i,1} = 'BRO2'; Gstr{i,2} = 'NO'; 
fBRO2(i)=fBRO2(i)-1; fNO(i)=fNO(i)-1; fLBRO2N(i)=fLBRO2N(i)+1; 

i=i+1;
Rnames{i} = 'TRO2 + HO2 = LTRO2H';
k(:,i) = 1.40E-12.*exp(700./T);
Gstr{i,1} = 'TRO2'; Gstr{i,2} = 'HO2'; 
fTRO2(i)=fTRO2(i)-1; fHO2(i)=fHO2(i)-1; fLTRO2H(i)=fLTRO2H(i)+1; 

i=i+1;
Rnames{i} = 'TRO2 + NO = LTRO2N';
k(:,i) = 2.60E-12.*exp(350./T);
Gstr{i,1} = 'TRO2'; Gstr{i,2} = 'NO'; 
fTRO2(i)=fTRO2(i)-1; fNO(i)=fNO(i)-1; fLTRO2N(i)=fLTRO2N(i)+1; 

i=i+1;
Rnames{i} = 'XRO2 + HO2 = LXRO2H';
k(:,i) = 1.40E-12.*exp(700./T);
Gstr{i,1} = 'XRO2'; Gstr{i,2} = 'HO2'; 
fXRO2(i)=fXRO2(i)-1; fHO2(i)=fHO2(i)-1; fLXRO2H(i)=fLXRO2H(i)+1; 

i=i+1;
Rnames{i} = 'XRO2 + NO = LXRO2N';
k(:,i) = 2.60E-12.*exp(350./T);
Gstr{i,1} = 'XRO2'; Gstr{i,2} = 'NO'; 
fXRO2(i)=fXRO2(i)-1; fNO(i)=fNO(i)-1; fLXRO2N(i)=fLXRO2N(i)+1; 

i=i+1;
Rnames{i} = 'MTPA + OH = PIO2';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'MTPA'; Gstr{i,2} = 'OH'; 
fMTPA(i)=fMTPA(i)-1; fOH(i)=fOH(i)-1; fPIO2(i)=fPIO2(i)+1; 

i=i+1;
Rnames{i} = 'MTPO + OH = PIO2';
k(:,i) = 1.21E-11.*exp(440./T);
Gstr{i,1} = 'MTPO'; Gstr{i,2} = 'OH'; 
fMTPO(i)=fMTPO(i)-1; fOH(i)=fOH(i)-1; fPIO2(i)=fPIO2(i)+1; 

i=i+1;
Rnames{i} = 'PIO2 + NO = 0.820HO2 + 0.820NO2 + 0.230CH2O + 0.430RCHO + 0.110ACET + 0.440MEK + 0.070HCOOH + 0.120MONITS + 0.060MONITU';
k(:,i) = 4.00E-12.*exp(0./T);
Gstr{i,1} = 'PIO2'; Gstr{i,2} = 'NO'; 
fPIO2(i)=fPIO2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.820; fNO2(i)=fNO2(i)+0.820; fCH2O(i)=fCH2O(i)+0.230; fRCHO(i)=fRCHO(i)+0.430; fACET(i)=fACET(i)+0.110; fMEK(i)=fMEK(i)+0.440; fHCOOH(i)=fHCOOH(i)+0.070; fMONITS(i)=fMONITS(i)+0.120; fMONITU(i)=fMONITU(i)+0.060; 

i=i+1;
Rnames{i} = 'PIO2 + HO2 = PIP';
k(:,i) = 1.50E-11.*exp(0./T);
Gstr{i,1} = 'PIO2'; Gstr{i,2} = 'HO2'; 
fPIO2(i)=fPIO2(i)-1; fHO2(i)=fHO2(i)-1; fPIP(i)=fPIP(i)+1; 

i=i+1;
Rnames{i} = 'PIO2 + MO2 = HO2 + 0.750CH2O + 0.250MOH + 0.250ROH + 0.750RCHO + 0.750MEK';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'PIO2'; Gstr{i,2} = 'MO2'; 
fPIO2(i)=fPIO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+0.750; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fRCHO(i)=fRCHO(i)+0.750; fMEK(i)=fMEK(i)+0.750; 

i=i+1;
Rnames{i} = 'PIO2 + MCO3 = 0.500HO2 + 0.500MO2 + RCHO + MEK + RCOOH';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'PIO2'; Gstr{i,2} = 'MCO3'; 
fPIO2(i)=fPIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.500; fMO2(i)=fMO2(i)+0.500; fRCHO(i)=fRCHO(i)+1; fMEK(i)=fMEK(i)+1; fRCOOH(i)=fRCOOH(i)+1; 

i=i+1;
Rnames{i} = 'PIO2 + NO3 = HO2 + NO2 + RCHO + MEK';
k(:,i) = 1.20E-12.*exp(0./T);
Gstr{i,1} = 'PIO2'; Gstr{i,2} = 'NO3'; 
fPIO2(i)=fPIO2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fRCHO(i)=fRCHO(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i} = 'MTPA + O3 = 0.850OH + 0.100HO2 + 0.620KO2 + 0.140CO + 0.020H2O2 + 0.650RCHO + 0.530MEK';
k(:,i) = 5.00E-16.*exp(-530./T);
Gstr{i,1} = 'MTPA'; Gstr{i,2} = 'O3'; 
fMTPA(i)=fMTPA(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.850; fHO2(i)=fHO2(i)+0.100; fKO2(i)=fKO2(i)+0.620; fCO(i)=fCO(i)+0.140; fH2O2(i)=fH2O2(i)+0.020; fRCHO(i)=fRCHO(i)+0.650; fMEK(i)=fMEK(i)+0.530; 

i=i+1;
Rnames{i} = 'MTPO + O3 = 0.850OH + 0.100HO2 + 0.620KO2 + 0.140CO + 0.020H2O2 + 0.650RCHO + 0.530MEK';
k(:,i) = 5.00E-16.*exp(-530./T);
Gstr{i,1} = 'MTPO'; Gstr{i,2} = 'O3'; 
fMTPO(i)=fMTPO(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.850; fHO2(i)=fHO2(i)+0.100; fKO2(i)=fKO2(i)+0.620; fCO(i)=fCO(i)+0.140; fH2O2(i)=fH2O2(i)+0.020; fRCHO(i)=fRCHO(i)+0.650; fMEK(i)=fMEK(i)+0.530; 

i=i+1;
Rnames{i} = 'MTPA + NO3 = 0.100OLNN + 0.900OLND';
k(:,i) = 8.33E-13.*exp(490./T);
Gstr{i,1} = 'MTPA'; Gstr{i,2} = 'NO3'; 
fMTPA(i)=fMTPA(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.100; fOLND(i)=fOLND(i)+0.900; 

i=i+1;
Rnames{i} = 'MTPO + NO3 = 0.100OLNN + 0.900OLND';
k(:,i) = 8.33E-13.*exp(490./T);
Gstr{i,1} = 'MTPO'; Gstr{i,2} = 'NO3'; 
fMTPO(i)=fMTPO(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.100; fOLND(i)=fOLND(i)+0.900; 

i=i+1;
Rnames{i} = 'LIMO + OH = LIMO2';
k(:,i) = 4.20E-11.*exp(401./T);
Gstr{i,1} = 'LIMO'; Gstr{i,2} = 'OH'; 
fLIMO(i)=fLIMO(i)-1; fOH(i)=fOH(i)-1; fLIMO2(i)=fLIMO2(i)+1; 

i=i+1;
Rnames{i} = 'LIMO + O3 = 0.850OH + 0.100HO2 + 0.160OTHRO2 + 0.420KO2 + 0.020H2O2 + 0.140CO + 0.460PRPE + 0.040CH2O + 0.790MACR + 0.010HCOOH + 0.070RCOOH';
k(:,i) = 2.95E-15.*exp(-783./T);
Gstr{i,1} = 'LIMO'; Gstr{i,2} = 'O3'; 
fLIMO(i)=fLIMO(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.850; fHO2(i)=fHO2(i)+0.100; fOTHRO2(i)=fOTHRO2(i)+0.160; fKO2(i)=fKO2(i)+0.420; fH2O2(i)=fH2O2(i)+0.020; fCO(i)=fCO(i)+0.140; fPRPE(i)=fPRPE(i)+0.460; fCH2O(i)=fCH2O(i)+0.040; fMACR(i)=fMACR(i)+0.790; fHCOOH(i)=fHCOOH(i)+0.010; fRCOOH(i)=fRCOOH(i)+0.070; 

i=i+1;
Rnames{i} = 'LIMO + NO3 = 0.500OLNN + 0.500OLND';
k(:,i) = 1.22E-11.*exp(0./T);
Gstr{i,1} = 'LIMO'; Gstr{i,2} = 'NO3'; 
fLIMO(i)=fLIMO(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.500; fOLND(i)=fOLND(i)+0.500; 

i=i+1;
Rnames{i} = 'LIMO2 + NO = 0.686HO2 + 0.780NO2 + 0.220MONITU + 0.289PRPE + 0.231CH2O + 0.491RCHO + 0.058HAC + 0.289MEK';
k(:,i) = 4.00E-12.*exp(0./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'NO'; 
fLIMO2(i)=fLIMO2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.686; fNO2(i)=fNO2(i)+0.780; fMONITU(i)=fMONITU(i)+0.220; fPRPE(i)=fPRPE(i)+0.289; fCH2O(i)=fCH2O(i)+0.231; fRCHO(i)=fRCHO(i)+0.491; fHAC(i)=fHAC(i)+0.058; fMEK(i)=fMEK(i)+0.289; 

i=i+1;
Rnames{i} = 'LIMO2 + HO2 = PIP';
k(:,i) = 1.50E-11.*exp(0./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'HO2'; 
fLIMO2(i)=fLIMO2(i)-1; fHO2(i)=fHO2(i)-1; fPIP(i)=fPIP(i)+1; 

i=i+1;
Rnames{i} = 'LIMO2 + MO2 = HO2 + 0.192PRPE + 1.040CH2O + 0.308MACR + 0.250MOH + 0.250ROH';
k(:,i) = 3.56E-14.*exp(708./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'MO2'; 
fLIMO2(i)=fLIMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fPRPE(i)=fPRPE(i)+0.192; fCH2O(i)=fCH2O(i)+1.040; fMACR(i)=fMACR(i)+0.308; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; 

i=i+1;
Rnames{i} = 'LIMO2 + MCO3 = 0.500HO2 + 0.500MO2 + 0.192PRPE + 0.385CH2O + 0.308MACR + 0.500RCOOH';
k(:,i) = 7.40E-13.*exp(765./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'MCO3'; 
fLIMO2(i)=fLIMO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.500; fMO2(i)=fMO2(i)+0.500; fPRPE(i)=fPRPE(i)+0.192; fCH2O(i)=fCH2O(i)+0.385; fMACR(i)=fMACR(i)+0.308; fRCOOH(i)=fRCOOH(i)+0.500; 

i=i+1;
Rnames{i} = 'LIMO2 + NO3 = HO2 + NO2 + 0.385PRPE + 0.385CH2O + 0.615MACR';
k(:,i) = 1.20E-12.*exp(0./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'NO3'; 
fLIMO2(i)=fLIMO2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fPRPE(i)=fPRPE(i)+0.385; fCH2O(i)=fCH2O(i)+0.385; fMACR(i)=fMACR(i)+0.615; 

i=i+1;
Rnames{i} = 'PIP + OH = 0.490OH + 0.440R4O2 + 0.080RCHO + 0.410MEK';
k(:,i) = 3.40E-12.*exp(190./T);
Gstr{i,1} = 'PIP'; Gstr{i,2} = 'OH'; 
fPIP(i)=fPIP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.490; fR4O2(i)=fR4O2(i)+0.440; fRCHO(i)=fRCHO(i)+0.080; fMEK(i)=fMEK(i)+0.410; 

i=i+1;
Rnames{i} = 'OLNN + NO = HO2 + NO2 + MONITS';
k(:,i) = 4.00E-12.*exp(0./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO'; 
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fMONITS(i)=fMONITS(i)+1; 

i=i+1;
Rnames{i} = 'OLND + NO = 2.000NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK';
k(:,i) = 4.00E-12.*exp(0./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO'; 
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.000; fCH2O(i)=fCH2O(i)+0.287; fRCHO(i)=fRCHO(i)+1.240; fMEK(i)=fMEK(i)+0.464; 

i=i+1;
Rnames{i} = 'OLNN + HO2 = 0.700MONITS + 0.300MONITU';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2'; 
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'OLND + HO2 = 0.700MONITS + 0.300MONITU';
k(:,i) = 1.66E-13.*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2'; 
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'OLNN + MO2 = 2.000HO2 + CH2O + 0.700MONITS + 0.300MONITU';
k(:,i) = 1.60E-13.*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2'; 
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2.000; fCH2O(i)=fCH2O(i)+1; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'OLND + MO2 = 0.500HO2 + 0.500NO2 + 0.965CH2O + 0.930RCHO + 0.348MEK + 0.250MOH + 0.250ROH + 0.350MONITS + 0.150MONITU';
k(:,i) = 9.68E-14.*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2'; 
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.500; fNO2(i)=fNO2(i)+0.500; fCH2O(i)=fCH2O(i)+0.965; fRCHO(i)=fRCHO(i)+0.930; fMEK(i)=fMEK(i)+0.348; fMOH(i)=fMOH(i)+0.250; fROH(i)=fROH(i)+0.250; fMONITS(i)=fMONITS(i)+0.350; fMONITU(i)=fMONITU(i)+0.150; 

i=i+1;
Rnames{i} = 'OLNN + MCO3 = HO2 + MO2 + 0.700MONITS + 0.300MONITU';
k(:,i) = 8.85E-13.*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MCO3'; 
fOLNN(i)=fOLNN(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'OLND + MCO3 = 0.500MO2 + NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK + 0.500RCOOH';
k(:,i) = 5.37E-13.*exp(765./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MCO3'; 
fOLND(i)=fOLND(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+0.500; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.287; fRCHO(i)=fRCHO(i)+1.240; fMEK(i)=fMEK(i)+0.464; fRCOOH(i)=fRCOOH(i)+0.500; 

i=i+1;
Rnames{i} = 'OLNN + NO3 = HO2 + NO2 + 0.700MONITS + 0.300MONITU';
k(:,i) = 1.20E-12.*exp(0./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3'; 
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'OLND + NO3 = 2.000NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK';
k(:,i) = 1.20E-12.*exp(0./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3'; 
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.000; fCH2O(i)=fCH2O(i)+0.287; fRCHO(i)=fRCHO(i)+1.240; fMEK(i)=fMEK(i)+0.464; 

i=i+1;
Rnames{i} = 'OLNN + OLNN = HO2 + 1.400MONITS + 0.600MONITU';
k(:,i) = 7.00E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN'; 
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)+1; fMONITS(i)=fMONITS(i)+1.400; fMONITU(i)=fMONITU(i)+0.600; 

i=i+1;
Rnames{i} = 'OLNN + OLND = 0.500HO2 + 0.500NO2 + 0.202CH2O + 0.640RCHO + 0.149MEK + 1.050MONITS + 0.450MONITU';
k(:,i) = 4.25E-14.*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND'; 
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.500; fNO2(i)=fNO2(i)+0.500; fCH2O(i)=fCH2O(i)+0.202; fRCHO(i)=fRCHO(i)+0.640; fMEK(i)=fMEK(i)+0.149; fMONITS(i)=fMONITS(i)+1.050; fMONITU(i)=fMONITU(i)+0.450; 

i=i+1;
Rnames{i} = 'OLND + OLND = NO2 + 0.504CH2O + 1.210RCHO + 0.285MEK + 0.700MONITS + 0.300MONITU';
k(:,i) = 2.96E-14.*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND'; 
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.504; fRCHO(i)=fRCHO(i)+1.210; fMEK(i)=fMEK(i)+0.285; fMONITS(i)=fMONITS(i)+0.700; fMONITU(i)=fMONITU(i)+0.300; 

i=i+1;
Rnames{i} = 'MONITS + OH = HONIT';
k(:,i) = 4.80E-12.*exp(0./T);
Gstr{i,1} = 'MONITS'; Gstr{i,2} = 'OH'; 
fMONITS(i)=fMONITS(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i} = 'MONITU + OH = HONIT';
k(:,i) = 7.29E-11.*exp(0./T);
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'OH'; 
fMONITU(i)=fMONITU(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i} = 'MONITU + O3 = HONIT';
k(:,i) = 1.67E-16.*exp(0./T);
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'O3'; 
fMONITU(i)=fMONITU(i)-1; fO3(i)=fO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i} = 'MONITU + NO3 = HONIT';
k(:,i) = 3.15E-13.*exp(-448./T);
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'NO3'; 
fMONITU(i)=fMONITU(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i} = 'MONITS + NO3 = HONIT';
k(:,i) = 3.15E-13.*exp(-448./T);
Gstr{i,1} = 'MONITS'; Gstr{i,2} = 'NO3'; 
fMONITS(i)=fMONITS(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i} = 'IONITA = INDIOL + HNO3';
k(:,i) = 2.78E-04.*exp(0./T);
Gstr{i,1} = 'IONITA'; 
fIONITA(i)=fIONITA(i)-1; fINDIOL(i)=fINDIOL(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MONITA = INDIOL + HNO3';
k(:,i) = 2.78E-04.*exp(0./T);
Gstr{i,1} = 'MONITA'; 
fMONITA(i)=fMONITA(i)-1; fINDIOL(i)=fINDIOL(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HONIT + OH = NO3 + HAC';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HONIT'; Gstr{i,2} = 'OH'; 
fHONIT(i)=fHONIT(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHAC(i)=fHAC(i)+1; 

i=i+1;
Rnames{i} = 'HC187 + OH = 0.500MCO3 + 0.500MGLY + 0.500HO2 + 0.500CO + CH2O';
k(:,i) = 1.40E-11.*exp(0./T);
Gstr{i,1} = 'HC187'; Gstr{i,2} = 'OH'; 
fHC187(i)=fHC187(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+0.500; fMGLY(i)=fMGLY(i)+0.500; fHO2(i)=fHO2(i)+0.500; fCO(i)=fCO(i)+0.500; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HPALD + OH = 0.365HPC52O2 + 0.085GLYX + 0.085MCO3 + 0.550MGLY + 0.550CO + 0.550CH2O + 0.635OH + 0.085CO2';
k(:,i) = 5.10E-11.*exp(0./T);
Gstr{i,1} = 'HPALD'; Gstr{i,2} = 'OH'; 
fHPALD(i)=fHPALD(i)-1; fOH(i)=fOH(i)-1; fHPC52O2(i)=fHPC52O2(i)+0.365; fGLYX(i)=fGLYX(i)+0.085; fMCO3(i)=fMCO3(i)+0.085; fMGLY(i)=fMGLY(i)+0.550; fCO(i)=fCO(i)+0.550; fCH2O(i)=fCH2O(i)+0.550; fOH(i)=fOH(i)+0.635; fCO2(i)=fCO2(i)+0.085; 

i=i+1;
Rnames{i} = 'DHPCARP + NO = GLYX + MGLY + NO2 + OH';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'DHPCARP'; Gstr{i,2} = 'NO'; 
fDHPCARP(i)=fDHPCARP(i)-1; fNO(i)=fNO(i)-1; fGLYX(i)=fGLYX(i)+1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + NO = GLYX + MGLY + NO2 + OH';
k(:,i) = 2.70E-12.*exp(360./T);
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'NO'; 
fHPC52O2(i)=fHPC52O2(i)-1; fNO(i)=fNO(i)-1; fGLYX(i)=fGLYX(i)+1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARP + HO2 = RCOOH';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'DHPCARP'; Gstr{i,2} = 'HO2'; 
fDHPCARP(i)=fDHPCARP(i)-1; fHO2(i)=fHO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + HO2 = RCOOH';
k(:,i) = 2.05E-13.*exp(1300./T);
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'HO2'; 
fHPC52O2(i)=fHPC52O2(i)-1; fHO2(i)=fHO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARP = RCOOH + CO + OH';
k(:,i) = 2.90E+07.*exp(-5300./T);
Gstr{i,1} = 'DHPCARP'; 
fDHPCARP(i)=fDHPCARP(i)-1; fRCOOH(i)=fRCOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPCARP = DHDC';
k(:,i) = 1.28E+07.*exp(-5300./T);
Gstr{i,1} = 'DHPCARP'; 
fDHPCARP(i)=fDHPCARP(i)-1; fDHDC(i)=fDHDC(i)+1; 

i=i+1;
Rnames{i} = 'MENO3 + OH = CH2O + NO2';
k(:,i) = 8.00E-13.*exp(-1000./T);
Gstr{i,1} = 'MENO3'; Gstr{i,2} = 'OH'; 
fMENO3(i)=fMENO3(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETNO3 + OH = ALD2 + NO2';
k(:,i) = 1.00E-12.*exp(-490./T);
Gstr{i,1} = 'ETNO3'; Gstr{i,2} = 'OH'; 
fETNO3(i)=fETNO3(i)-1; fOH(i)=fOH(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRNO3 + OH = ACET + NO2';
k(:,i) = 1.20E-12.*exp(-320./T);
Gstr{i,1} = 'IPRNO3'; Gstr{i,2} = 'OH'; 
fIPRNO3(i)=fIPRNO3(i)-1; fOH(i)=fOH(i)-1; fACET(i)=fACET(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPRNO3 + OH = RCHO + NO2';
k(:,i) = 7.10E-13.*exp(0./T);
Gstr{i,1} = 'NPRNO3'; Gstr{i,2} = 'OH'; 
fNPRNO3(i)=fNPRNO3(i)-1; fOH(i)=fOH(i)-1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O1D + O2';
k(:,i) = JO1D;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MP + hv = CH2O + HO2 + OH';
k(:,i) = JMP;
Gstr{i,1} = 'MP'; 
fMP(i)=fMP(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2O + hv = HO2 + H + CO';
k(:,i) = JHCHO_HO2;
Gstr{i,1} = 'CH2O'; 
fCH2O(i)=fCH2O(i)-1; fHO2(i)=fHO2(i)+1; fH(i)=fH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2O + hv = H2 + CO';
k(:,i) = JHCHO_H2;
Gstr{i,1} = 'CH2O'; 
fCH2O(i)=fCH2O(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + hv = OH + NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNO2 + hv = OH + NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HNO2'; 
fHNO2(i)=fHNO2(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'HNO4 + hv = OH + NO3';
k(:,i) = JHNO4;
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO4 + hv = HO2 + NO2';
k(:,i) = JHNO4;
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO + O2';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 + hv = NO3 + NO2';
k(:,i) = JN2O5_NO2;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ALD2 + hv = 0.880MO2 + HO2 + 0.880CO + 0.120MCO3';
k(:,i) = JALD2a;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1; fMO2(i)=fMO2(i)+0.880; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.880; fMCO3(i)=fMCO3(i)+0.120; 

i=i+1;
Rnames{i} = 'ALD2 + hv = CH4 + CO';
k(:,i) = JALD2b;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1; fCH4(i)=fCH4(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PAN + hv = 0.700MCO3 + 0.700NO2 + 0.300MO2 + 0.300NO3';
k(:,i) = JPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fMCO3(i)=fMCO3(i)+0.700; fNO2(i)=fNO2(i)+0.700; fMO2(i)=fMO2(i)+0.300; fNO3(i)=fNO3(i)+0.300; 

i=i+1;
Rnames{i} = 'RCHO + hv = 0.500OTHRO2 + HO2 + CO + 0.070A3O2 + 0.270B3O2';
k(:,i) = JRCHO;
Gstr{i,1} = 'RCHO'; 
fRCHO(i)=fRCHO(i)-1; fOTHRO2(i)=fOTHRO2(i)+0.500; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fA3O2(i)=fA3O2(i)+0.070; fB3O2(i)=fB3O2(i)+0.270; 

i=i+1;
Rnames{i} = 'ACET + hv = MCO3 + MO2';
k(:,i) = JACETa;
Gstr{i,1} = 'ACET'; 
fACET(i)=fACET(i)-1; fMCO3(i)=fMCO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'ACET + hv = 2.000MO2 + CO';
k(:,i) = JACETb;
Gstr{i,1} = 'ACET'; 
fACET(i)=fACET(i)-1; fMO2(i)=fMO2(i)+2.000; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MEK + hv = 0.850MCO3 + 0.425OTHRO2 + 0.150MO2 + 0.150RCO3 + 0.060A3O2 + 0.230B3O2';
k(:,i) = JMEK;
Gstr{i,1} = 'MEK'; 
fMEK(i)=fMEK(i)-1; fMCO3(i)=fMCO3(i)+0.850; fOTHRO2(i)=fOTHRO2(i)+0.425; fMO2(i)=fMO2(i)+0.150; fRCO3(i)=fRCO3(i)+0.150; fA3O2(i)=fA3O2(i)+0.060; fB3O2(i)=fB3O2(i)+0.230; 

i=i+1;
Rnames{i} = 'GLYC + hv = 0.900CH2O + 1.730HO2 + CO + 0.070OH + 0.100MOH';
k(:,i) = JGLYC;
Gstr{i,1} = 'GLYC'; 
fGLYC(i)=fGLYC(i)-1; fCH2O(i)=fCH2O(i)+0.900; fHO2(i)=fHO2(i)+1.730; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+0.070; fMOH(i)=fMOH(i)+0.100; 

i=i+1;
Rnames{i} = 'GLYX + hv = 2.000HO2 + 2.000CO';
k(:,i) = JGLYXa;
Gstr{i,1} = 'GLYX'; 
fGLYX(i)=fGLYX(i)-1; fHO2(i)=fHO2(i)+2.000; fCO(i)=fCO(i)+2.000; 

i=i+1;
Rnames{i} = 'GLYX + hv = H2 + 2.000CO';
k(:,i) = JGLYXb;
Gstr{i,1} = 'GLYX'; 
fGLYX(i)=fGLYX(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+2.000; 

i=i+1;
Rnames{i} = 'GLYX + hv = CH2O + CO';
k(:,i) = JGLYXb;
Gstr{i,1} = 'GLYX'; 
fGLYX(i)=fGLYX(i)-1; fCH2O(i)=fCH2O(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MGLY + hv = MCO3 + CO + HO2';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1; fMCO3(i)=fMCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVK + hv = PRPE + CO';
k(:,i) = JMVK*0.6;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fPRPE(i)=fPRPE(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVK + hv = MCO3 + CH2O + CO + HO2';
k(:,i) = JMVK*0.2;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVK + hv = MO2 + RCO3';
k(:,i) = JMVK*0.2;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fMO2(i)=fMO2(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACR + hv = CO + HO2 + CH2O + MCO3';
k(:,i) = JMACR;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'HAC + hv = MCO3 + CH2O + HO2';
k(:,i) = JHAC;
Gstr{i,1} = 'HAC'; 
fHAC(i)=fHAC(i)-1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INPN + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'INPN'; 
fINPN(i)=fINPN(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRPN + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'PRPN'; 
fPRPN(i)=fPRPN(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETP + hv = OH + HO2 + ALD2';
k(:,i) = JMP;
Gstr{i,1} = 'ETP'; 
fETP(i)=fETP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'RA3P + hv = OH + HO2 + RCHO';
k(:,i) = JMP;
Gstr{i,1} = 'RA3P'; 
fRA3P(i)=fRA3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i} = 'RB3P + hv = OH + HO2 + ACET';
k(:,i) = JMP;
Gstr{i,1} = 'RB3P'; 
fRB3P(i)=fRB3P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i} = 'R4P + hv = OH + HO2 + RCHO';
k(:,i) = JMP;
Gstr{i,1} = 'R4P'; 
fR4P(i)=fR4P(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i} = 'PP + hv = OH + HO2 + ALD2 + CH2O';
k(:,i) = JMP;
Gstr{i,1} = 'PP'; 
fPP(i)=fPP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i} = 'RP + hv = OH + HO2 + ALD2';
k(:,i) = JMP;
Gstr{i,1} = 'RP'; 
fRP(i)=fRP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i} = 'RIPA + hv = 0.985OH + 0.985HO2 + 0.710CH2O + 0.425MVK + 0.285MACR + 0.275HC5 + 0.005LVOC';
k(:,i) = JMP;
Gstr{i,1} = 'RIPA'; 
fRIPA(i)=fRIPA(i)-1; fOH(i)=fOH(i)+0.985; fHO2(i)=fHO2(i)+0.985; fCH2O(i)=fCH2O(i)+0.710; fMVK(i)=fMVK(i)+0.425; fMACR(i)=fMACR(i)+0.285; fHC5(i)=fHC5(i)+0.275; fLVOC(i)=fLVOC(i)+0.005; 

i=i+1;
Rnames{i} = 'RIPB + hv = 0.985OH + 0.985HO2 + 0.710CH2O + 0.425MVK + 0.285MACR + 0.275HC5 + 0.005LVOC';
k(:,i) = JMP;
Gstr{i,1} = 'RIPB'; 
fRIPB(i)=fRIPB(i)-1; fOH(i)=fOH(i)+0.985; fHO2(i)=fHO2(i)+0.985; fCH2O(i)=fCH2O(i)+0.710; fMVK(i)=fMVK(i)+0.425; fMACR(i)=fMACR(i)+0.285; fHC5(i)=fHC5(i)+0.275; fLVOC(i)=fLVOC(i)+0.005; 

i=i+1;
Rnames{i} = 'RIPD + hv = 0.985OH + 0.985HO2 + 0.710CH2O + 0.425MVK + 0.285MACR + 0.275HC5 + 0.005LVOC';
k(:,i) = JMP;
Gstr{i,1} = 'RIPD'; 
fRIPD(i)=fRIPD(i)-1; fOH(i)=fOH(i)+0.985; fHO2(i)=fHO2(i)+0.985; fCH2O(i)=fCH2O(i)+0.710; fMVK(i)=fMVK(i)+0.425; fMACR(i)=fMACR(i)+0.285; fHC5(i)=fHC5(i)+0.275; fLVOC(i)=fLVOC(i)+0.005; 

i=i+1;
Rnames{i} = 'IAP + hv = OH + HO2 + 0.670CO + 0.190H2 + 0.360HAC + 0.260GLYC + 0.580MGLY';
k(:,i) = JMP;
Gstr{i,1} = 'IAP'; 
fIAP(i)=fIAP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.670; fH2(i)=fH2(i)+0.190; fHAC(i)=fHAC(i)+0.360; fGLYC(i)=fGLYC(i)+0.260; fMGLY(i)=fMGLY(i)+0.580; 

i=i+1;
Rnames{i} = 'ISNP + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'ISNP'; 
fISNP(i)=fISNP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'VRP + hv = OH + 0.300HO2 + 0.300CH2O + 0.700MCO3 + 0.700GLYC + 0.300MGLY';
k(:,i) = JMP;
Gstr{i,1} = 'VRP'; 
fVRP(i)=fVRP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+0.300; fCH2O(i)=fCH2O(i)+0.300; fMCO3(i)=fMCO3(i)+0.700; fGLYC(i)=fGLYC(i)+0.700; fMGLY(i)=fMGLY(i)+0.300; 

i=i+1;
Rnames{i} = 'MRP + hv = OH + HO2 + HAC + 0.500CO + 0.500CH2O';
k(:,i) = JMP;
Gstr{i,1} = 'MRP'; 
fMRP(i)=fMRP(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHAC(i)=fHAC(i)+1; fCO(i)=fCO(i)+0.500; fCH2O(i)=fCH2O(i)+0.500; 

i=i+1;
Rnames{i} = 'MAOP + hv = OH + CH2O + MCO3';
k(:,i) = JMP;
Gstr{i,1} = 'MAOP'; 
fMAOP(i)=fMAOP(i)-1; fOH(i)=fOH(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'R4N2 + hv = NO2 + 0.320ACET + 0.190MEK + 0.180MO2 + 0.270HO2 + 0.320ALD2 + 0.130RCHO + 0.050A3O2 + 0.180B3O2 + 0.320OTHRO2';
k(:,i) = JR4N2;
Gstr{i,1} = 'R4N2'; 
fR4N2(i)=fR4N2(i)-1; fNO2(i)=fNO2(i)+1; fACET(i)=fACET(i)+0.320; fMEK(i)=fMEK(i)+0.190; fMO2(i)=fMO2(i)+0.180; fHO2(i)=fHO2(i)+0.270; fALD2(i)=fALD2(i)+0.320; fRCHO(i)=fRCHO(i)+0.130; fA3O2(i)=fA3O2(i)+0.050; fB3O2(i)=fB3O2(i)+0.180; fOTHRO2(i)=fOTHRO2(i)+0.320; 

i=i+1;
Rnames{i} = 'MAP + hv = OH + MO2';
k(:,i) = JMP;
Gstr{i,1} = 'MAP'; 
fMAP(i)=fMAP(i)-1; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRN + hv = NO2 + HAC + MGLY + 0.500CH2O + HO2 + 0.500CO';
k(:,i) = JMACRN;
Gstr{i,1} = 'MACRN'; 
fMACRN(i)=fMACRN(i)-1; fNO2(i)=fNO2(i)+1; fHAC(i)=fHAC(i)+1; fMGLY(i)=fMGLY(i)+1; fCH2O(i)=fCH2O(i)+0.500; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.500; 

i=i+1;
Rnames{i} = 'MVKN + hv = GLYC + NO2 + MCO3';
k(:,i) = JMVKN;
Gstr{i,1} = 'MVKN'; 
fMVKN(i)=fMVKN(i)-1; fGLYC(i)=fGLYC(i)+1; fNO2(i)=fNO2(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPNB + hv = HC5 + NO2 + HO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'ISOPNB'; 
fISOPNB(i)=fISOPNB(i)-1; fHC5(i)=fHC5(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'Br2 + hv = 2.000Br';
k(:,i) = JBr2;
Gstr{i,1} = 'Br2'; 
fBr2(i)=fBr2(i)-1; fBr(i)=fBr(i)+2.000; 

i=i+1;
Rnames{i} = 'BrO + hv = Br + O';
k(:,i) = JBrO;
Gstr{i,1} = 'BrO'; 
fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'HOBr + hv = Br + OH';
k(:,i) = JHOBr;
Gstr{i,1} = 'HOBr'; 
fHOBr(i)=fHOBr(i)-1; fBr(i)=fBr(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BrNO3 + hv = Br + NO3';
k(:,i) = JBrNO3_Br;
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i)=fBrNO3(i)-1; fBr(i)=fBr(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'BrNO3 + hv = BrO + NO2';
k(:,i) = JBrNO3_BrO;
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i)=fBrNO3(i)-1; fBrO(i)=fBrO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BrNO2 + hv = Br + NO2';
k(:,i) = JBrNO2;
Gstr{i,1} = 'BrNO2'; 
fBrNO2(i)=fBrNO2(i)-1; fBr(i)=fBr(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHBr3 + hv = 3.000Br';
k(:,i) = JCHBr3;
Gstr{i,1} = 'CHBr3'; 
fCHBr3(i)=fCHBr3(i)-1; fBr(i)=fBr(i)+3.000; 

i=i+1;
Rnames{i} = 'MPN + hv = CH2O + NO3 + HO2';
k(:,i) = JMPN;
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fCH2O(i)=fCH2O(i)+1; fNO3(i)=fNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MPN + hv = MO2 + NO2';
k(:,i) = JMPN;
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPND + hv = HC5 + NO2 + HO2';
k(:,i) = JMP;
Gstr{i,1} = 'ISOPND'; 
fISOPND(i)=fISOPND(i)-1; fHC5(i)=fHC5(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPNN + hv = CH2O + NO2 + CO + MO2';
k(:,i) = JPROPNN;
Gstr{i,1} = 'PROPNN'; 
fPROPNN(i)=fPROPNN(i)-1; fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i} = 'ATOOH + hv = OH + CH2O + MCO3';
k(:,i) = JMP;
Gstr{i,1} = 'ATOOH'; 
fATOOH(i)=fATOOH(i)-1; fOH(i)=fOH(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i} = 'PIP + hv = RCHO + OH + HO2';
k(:,i) = JMP;
Gstr{i,1} = 'PIP'; 
fPIP(i)=fPIP(i)-1; fRCHO(i)=fRCHO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHLN + hv = NO2 + CH2O + CO + HO2';
k(:,i) = JETHLN;
Gstr{i,1} = 'ETHLN'; 
fETHLN(i)=fETHLN(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPALD + hv = 0.500MGLY + 0.390HAC + 0.110GLYC + 0.110MCO3 + 1.890CO + 0.890HO2 + 2.000OH';
k(:,i) = JHPALD;
Gstr{i,1} = 'HPALD'; 
fHPALD(i)=fHPALD(i)-1; fMGLY(i)=fMGLY(i)+0.500; fHAC(i)=fHAC(i)+0.390; fGLYC(i)=fGLYC(i)+0.110; fMCO3(i)=fMCO3(i)+0.110; fCO(i)=fCO(i)+1.890; fHO2(i)=fHO2(i)+0.890; fOH(i)=fOH(i)+2.000; 

i=i+1;
Rnames{i} = 'ISN1 + hv = NO2 + HO2 + 0.500GLYC + 0.250GLYX + 0.250MGLY + CH2O + 0.500HAC';
k(:,i) = JHPALD;
Gstr{i,1} = 'ISN1'; 
fISN1(i)=fISN1(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fGLYC(i)=fGLYC(i)+0.500; fGLYX(i)=fGLYX(i)+0.250; fMGLY(i)=fMGLY(i)+0.250; fCH2O(i)=fCH2O(i)+1; fHAC(i)=fHAC(i)+0.500; 

i=i+1;
Rnames{i} = 'MONITS + hv = MEK + NO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'MONITS'; 
fMONITS(i)=fMONITS(i)-1; fMEK(i)=fMEK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MONITU + hv = RCHO + NO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'MONITU'; 
fMONITU(i)=fMONITU(i)-1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HONIT + hv = HAC + NO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'HONIT'; 
fHONIT(i)=fHONIT(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; 

%END OF REACTION LIST


