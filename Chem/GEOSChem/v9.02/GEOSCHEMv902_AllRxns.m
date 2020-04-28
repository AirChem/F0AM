% GEOSCHEM_AllRxns.m
% generated from globchem.dat
% 20151107
% # of species = 171
% # of reactions = 505
% Base chemistry is described here: http://acmg.seas.harvard.edu/geos/wiki_docs/chemistry/chemistry_updates_v6.pdf
% Initial isoprene chemistry is described here: http://wiki.seas.harvard.edu/geos-chem/index.php/New_isoprene_scheme
% Additional updates described in globchem.dat header.
%
% 20151108 KRT
% 20160224 GMW Checked and cleaned.
% 20200424 GMW  Fixed GLYC + OH reactions to account for GLYC_FRAC. Thanks Xiangyu Liu.
%               Also, minor changes to accomodate changes to GEOSCHEM_J for v12.07.

SpeciesToAdd = {...
    'A3O2';'ACET';'ACTA';'ALD2';'ALK4';'ATO2';'B3O2';'C2H6';'C3H8';'CH2O'; ...
    'CH4';'CO';'CO2';'EOH';'ETO2';'ETP';'GLYC';'GLYX';'H';'H2';'H2O2';...
    'HAC';'HCOOH' ;'HNO2';'HNO3';'HNO4';'HO2';'IAP';'INO2';'INPN';'ISN1';...
    'ISNOOA';'ISNOOB';'ISNOHOO';'ISNP';'ISOP';'KO2';'M';'MACR';'MAN2';...
    'MAO3';'MAOP';'MAOPO2';'MAP';'MCO3';'MEK';'MGLY';'MNO3';'MO2';'MSA';...
    'MOH';'MONX';'MP';'MRO2';'MRP';'MVK';'N2';'N2O5';'NH2';'NH3';'NO';'NO2';...
    'NO3';'O' ;'O1D';'O2';'O3';'OH';'PAN';'PMN';'PO2';'PP';'PPN';'PRN1';'PRPE';'PRPN';...
    'R4N1';'R4N2';'R4O2';'R4P';'RA3P';'RB3P';'RCHO';'RCO3'; 'RCOOH';'DHDN';'RIO2';'RIP';...
    'HPALD';'ROH';'RP';'VRO2';'VRP';'DMS';'SO2';'SO4';'MS' ;'Br2';'Br';'BrO';...
    'HOBr';'HBr';'BrNO2';'BrNO3';'CHBr3';'CH2Br2';'CH3Br';'MPN';'ISOPND';'ISOPNB';'HC5';...
    'HC187';'DIBOO';'HC5OO';'DHMOB';'MOBA'; 'MOBAOO';'ISOPNBO2';'ISOPNDO2';'PROPNN';'ETHLN';...
    'MACRN';'MVKN';'PYAC';'IEPOX';'IEPOXOO';'ATOOH';'PMNN';'MACRNO2';'PMNO2';'IMAE';'ACLOOA';... 
    'CH2OOA';'CH2OOB';'CH2OOC';'CH3CHOOA';'GAOOB';'MACROOA';'MACRNOOA';'MVKOOA';'MGLOOA';'MGLYOOA';...
    'MGLYOOB';'NC2OOA';'NC3OOA';'NC4OOA';'ACLOO';'CH2OO';'CH2OO';'CH3CHOO';'GAOO';'MACROO';...
    'MACRNOO';'MVKOO';'MGLOO';'MGLYOO';'NC2OO';'NC3OO';'NC4OO';'OCPO';'BCPO';'C2H4';...
    'API';'APIO2';'LIM';'LIMO2';'OLNN';...
    'OLND';'PIP';'MONITS';'MONITU';'HONIT';};
AddSpecies

%% INORGANICS
i=i+1;
Rnames{i}='O3 + NO = NO2';
k(:,i) = 3.00E-12*exp(-1500./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO';
fO3(i)=fO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1;  

i=i+1;
Rnames{i}='O3 + OH = HO2';
k(:,i) = 1.70E-12*exp(-940./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'OH';
fO3(i)=fO3(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;  

i=i+1;
Rnames{i}='O3 + HO2 = OH';
k(:,i) = 1.00E-14*exp(-490./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HO2';
fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+1;   

i=i+1;
Rnames{i}='O3 + NO2 = O2 + NO3';
k(:,i) = 1.20E-13*exp(-2450./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NO2';
fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)-1;  fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='O3 + MO2 = CH2O + HO2';
k(:,i) = 2.90E-16*exp(-1000./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MO2';
fO3(i)=fO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='OH + OH = H2O + O3';
k(:,i) = 1.80E-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1;  fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i}='OH + OH = H2O2';
k(:,i) = K_OH_OH;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'OH';
fOH(i)=fOH(i)-1; fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='OH + HO2 = H2O';
k(:,i) = 4.80E-11*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2';
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1;   

i=i+1;
Rnames{i}='OH + H2O2 = H2O + HO2';
k(:,i) = 1.80E-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2';
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1;  fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='HO2 + NO = OH + NO2';
k(:,i) = 3.30E-12*exp(270./T); %JPL
% %k(:,i) = 3.45e-12.*exp(270./T); %IUPAC
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO';
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='HO2 + HO2 = H2O2';
k(:,i) = K_HO2_HO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2';
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='OH + H2 = H2O + HO2';
k(:,i) = 2.80E-12*exp(-1800./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2';
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 
 
i=i+1;
Rnames{i}='CO + OH = HO2 + CO2';
k(:,i) = K_OH_CO;
Gstr{i,1} = 'CO'; Gstr{i,2} = 'OH';
fCO(i)=fCO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1;

i=i+1;
Rnames{i}='NO2 + OH = HNO3';
k(:,i) = K_OH_NO2;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'OH';
fNO2(i)=fNO2(i)-1; fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)+1;  

i=i+1;
Rnames{i}='HNO3 + OH = H2O + NO3';
k(:,i) = K_OH_HNO3;
Gstr{i,1} = 'HNO3'; Gstr{i,2} = 'OH';
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)-1;  fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='NO + OH = HNO2';
k(:,i) = K_OH_NO;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'OH';
fNO(i)=fNO(i)-1; fOH(i)=fOH(i)-1; fHNO2(i)=fHNO2(i)+1;  

i=i+1;
Rnames{i}='HNO2 + OH = H2O + NO2';
k(:,i) = 1.80E-11*exp(-390./T);
Gstr{i,1} = 'HNO2'; Gstr{i,2} = 'OH';
fHNO2(i)=fHNO2(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='HO2 + NO2 = HNO4';
k(:,i) = K_HO2_NO2;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2';
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHNO4(i)=fHNO4(i)+1;  

i=i+1;
Rnames{i}='HNO4 = HO2 + NO2';
k(:,i) = K_HNO4_M;
Gstr{i,1} = 'HNO4';
fHNO4(i)=fHNO4(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='HNO4 + OH = H2O + NO2';
k(:,i) = 1.30E-12*exp(380./T);
Gstr{i,1} = 'HNO4'; Gstr{i,2} = 'OH';
fHNO4(i)=fHNO4(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1;  

i=i+1;
Rnames{i}='HO2 + NO3 = OH + NO2';
k(:,i) = 3.50E-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3';
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1;  

i=i+1;
Rnames{i}='NO + NO3 = 2NO2';
k(:,i) = 1.50E-11*exp(170./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3';
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.00; 

i=i+1;
Rnames{i}='OH + NO3 = HO2 + NO2';
k(:,i) = 2.20E-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3';
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='NO2 + NO3 = N2O5';
k(:,i) = K_NO2_NO3;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3';
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1;  

i=i+1;
Rnames{i}='N2O5 = NO2 + NO3';
k(:,i) = K_N2O5_M;
Gstr{i,1} = 'N2O5';
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

%% ORGANIC CHEMISTRY
i=i+1;
Rnames{i}='OH + CH4 = MO2 + H2O';
k(:,i) = 2.45E-12*exp(-1775./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4';
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='MO2 + NO = CH2O + HO2 + NO2';
k(:,i) = 2.80E-12*exp(300./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO';
fMO2(i)=fMO2(i)-1; fNO(i)=fNO(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MO2 + HO2 = MP';
k(:,i) = 4.10E-13*exp(750./T);
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'HO2';
fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)-1; fMP(i)=fMP(i)+1;  

i=i+1;
Rnames{i}='MO2 + OH = CH2OOA + H2O';
k(:,i) = 2.80E-10;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'OH';
fMO2(i)=fMO2(i)-1; fOH(i)=fOH(i)-1; fCH2OOA(i)=fCH2OOA(i)+1; 

i=i+1;
Rnames{i}='MO2 + MO2 = MOH + CH2O';
k(:,i) = K_MO2_MO2a;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2';
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fMOH(i)=fMOH(i)+1; fCH2O(i)=fCH2O(i)+1;  

i=i+1;
Rnames{i}='MO2 + MO2 = 2.0CH2O + 2.0HO2';
k(:,i) = K_MO2_MO2b;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'MO2';
fMO2(i)=fMO2(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+2.00; fHO2(i)=fHO2(i)+2.00; 

i=i+1;
Rnames{i}='MP + OH = MO2 + H2O';
k(:,i) = 2.66E-12*exp(200./T);
Gstr{i,1} = 'MP'; Gstr{i,2} = 'OH';
fMP(i)=fMP(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+1;

i=i+1;
Rnames{i}='MP + OH = CH2O + OH + H2O';
k(:,i) = 1.14E-12*exp(200./T);
Gstr{i,1} = 'MP'; Gstr{i,2} = 'OH';
fMP(i)=fMP(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='ATOOH + OH = ATO2 + H2O';
k(:,i) = 2.66E-12*exp(200./T);
Gstr{i,1} = 'ATOOH'; Gstr{i,2} = 'OH';
fATOOH(i)=fATOOH(i)-1; fOH(i)=fOH(i)-1; fATO2(i)=fATO2(i)+1; 

i=i+1;
Rnames{i}='ATOOH + OH = MGLY + OH + H2O';
k(:,i) = 1.14E-12*exp(200./T);
Gstr{i,1} = 'ATOOH'; Gstr{i,2} = 'OH';
fATOOH(i)=fATOOH(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fOH(i)=fOH(i)+1;

i=i+1;
Rnames{i}='CH2O + OH = CO + HO2 + H2O';
k(:,i) = 5.50E-12*exp(125./T);
Gstr{i,1} = 'CH2O'; Gstr{i,2} = 'OH';
fCH2O(i)=fCH2O(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1;  

i=i+1;
Rnames{i}='HCOOH + OH = H2O + CO2 + HO2';
k(:,i) = 4.00E-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH';
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1;  fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MOH + OH = HO2 + CH2O';
k(:,i) = 2.90E-12*exp(-345./T);
Gstr{i,1} = 'MOH'; Gstr{i,2} = 'OH';
fMOH(i)=fMOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='NO2 + NO3 = NO + NO2';
k(:,i) = 4.50E-14*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3';
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1;  

i=i+1;
Rnames{i}='NO3 + CH2O = HNO3 + HO2 + CO';
k(:,i) = 5.80E-16;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CH2O';
fNO3(i)=fNO3(i)-1; fCH2O(i)=fCH2O(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='ALD2 + OH = 0.950MCO3 + 0.050CH2O + 0.050CO + 0.050HO2';
k(:,i) = 4.63E-12*exp(350./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'OH';
fALD2(i)=fALD2(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+0.95; fCH2O(i)=fCH2O(i)+0.05; fCO(i)=fCO(i)+0.05; fHO2(i)=fHO2(i)+0.05; 

i=i+1;
Rnames{i}='ALD2 + NO3 = HNO3 + MCO3';
k(:,i) = 1.40E-12*exp(-1900./T);
Gstr{i,1} = 'ALD2'; Gstr{i,2} = 'NO3';
fALD2(i)=fALD2(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='MCO3 + NO2 = PAN';
k(:,i) = K_MCO3_NO2;
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'NO2';
fMCO3(i)=fMCO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i}='PAN = MCO3 + NO2';
k(:,i) = K_PAN;
Gstr{i,1} = 'PAN'; Gstr{i,2} = '';
fPAN(i)=fPAN(i)-1; fMCO3(i)=fMCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + NO = MO2 + NO2 + CO2';
k(:,i) = 8.10E-12*exp(270./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'NO';
fMCO3(i)=fMCO3(i)-1; fNO(i)=fNO(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1;  

i=i+1;
Rnames{i}='C2H6 + OH = ETO2 + H2O';
k(:,i) = 7.66E-12*exp(-1020./T);
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'OH';
fC2H6(i)=fC2H6(i)-1; fOH(i)=fOH(i)-1; fETO2(i)=fETO2(i)+1;  

i=i+1;
Rnames{i}='ETO2 + NO = ALD2 + NO2 + HO2';
k(:,i) = 2.60E-12*exp(365./T);
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'NO';
fETO2(i)=fETO2(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='C3H8 + OH = B3O2';
k(:,i) = K_C3H8_B3O2;
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH';
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fB3O2(i)=fB3O2(i)+1; 

i=i+1;
Rnames{i}='C3H8 + OH = A3O2';
k(:,i) = K_C3H8_A3O2;
Gstr{i,1} = 'C3H8'; Gstr{i,2} = 'OH';
fC3H8(i)=fC3H8(i)-1; fOH(i)=fOH(i)-1; fA3O2(i)=fA3O2(i)+1; 

i=i+1;
Rnames{i}='A3O2 + NO = NO2 + HO2 + RCHO';
k(:,i) = 2.90E-12*exp(350./T);
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'NO';
fA3O2(i)=fA3O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='PO2 + NO = NO2 + HO2 + CH2O + ALD2';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'NO';
fPO2(i)=fPO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='ALK4 + OH = R4O2';
k(:,i) = 9.10E-12*exp(-405./T);
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'OH';
fALK4(i)=fALK4(i)-1; fOH(i)=fOH(i)-1; fR4O2(i)=fR4O2(i)+1; 

i=i+1;
Rnames{i}='R4O2 + NO = NO2 + 0.320ACET + 0.190MEK + 0.180MO2 + 0.270HO2 + 0.320ALD2 + 0.130RCHO + 0.050A3O2 + 0.180B3O2 + 0.320ETO2';
k(:,i) = (1-fyrno3(4.5,M,T)).*(2.70E-12*exp(-350./T));
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'NO';
fR4O2(i)=fR4O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fACET(i)=fACET(i)+0.32; fMEK(i)=fMEK(i)+0.19; fMO2(i)=fMO2(i)+0.18; fHO2(i)=fHO2(i)+0.27; fALD2(i)=fALD2(i)+0.32; fRCHO(i)=fRCHO(i)+0.13; fA3O2(i)=fA3O2(i)+0.05; fB3O2(i)=fB3O2(i)+0.18; fETO2(i)=fETO2(i)+0.32; 

i=i+1;
Rnames{i}='R4O2 + NO = R4N2';
k(:,i) = fyrno3(4.5,M,T).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'NO';
fR4O2(i)=fR4O2(i)-1; fNO(i)=fNO(i)-1; fR4N2(i)=fR4N2(i)+1; 

i=i+1;
Rnames{i}='R4N1 + NO = 2.000NO2 + 0.390CH2O + 0.750ALD2 + 0.570RCHO + 0.300R4O2';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'NO';
fR4N1(i)=fR4N1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.00; fCH2O(i)=fCH2O(i)+0.39; fALD2(i)=fALD2(i)+0.75; fRCHO(i)=fRCHO(i)+0.57; fR4O2(i)=fR4O2(i)+0.30; 

i=i+1;
Rnames{i}='ATO2 + NO = 0.960NO2 + 0.960CH2O + 0.960MCO3 + 0.040R4N2';
k(:,i) = 2.80E-12*exp(300./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'NO';
fATO2(i)=fATO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.96; fCH2O(i)=fCH2O(i)+0.96; fMCO3(i)=fMCO3(i)+0.96; fR4N2(i)=fR4N2(i)+0.04; 

i=i+1;
Rnames{i}='KO2 + NO = 0.930NO2 + 0.930ALD2 + 0.930MCO3 + 0.070R4N2';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'NO';
fKO2(i)=fKO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.93; fALD2(i)=fALD2(i)+0.93; fMCO3(i)=fMCO3(i)+0.93; fR4N2(i)=fR4N2(i)+0.07; 

i=i+1;
Rnames{i}='RIO2 + NO = 0.910NO2 + 0.820HO2 + 0.820CH2O + 0.476MVK + 0.344MACR + 0.009ISOPND + 0.081ISOPNB + 0.058HC5 + 0.030DIBOO';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'NO';
fRIO2(i)=fRIO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.91; fHO2(i)=fHO2(i)+0.82; fCH2O(i)=fCH2O(i)+0.82; fMVK(i)=fMVK(i)+0.47; fMACR(i)=fMACR(i)+0.34; fISOPND(i)=fISOPND(i)+0.00; fISOPNB(i)=fISOPNB(i)+0.08; fHC5(i)=fHC5(i)+0.05; fDIBOO(i)=fDIBOO(i)+0.03; 

i=i+1;
Rnames{i}='RIO2 = HO2 + HPALD';
k(:,i) = 4.07E+08*exp(-7694./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = '';
fRIO2(i)=fRIO2(i)-1; fHO2(i)=fHO2(i)+1; fHPALD(i)=fHPALD(i)+1; 

i=i+1;
Rnames{i}='HPALD + OH = MGLY + CO + CH2O + OH';
k(:,i) = 5.10E-11;
Gstr{i,1} = 'HPALD'; Gstr{i,2} = 'OH';
fHPALD(i)=fHPALD(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fCO(i)=fCO(i)+1; fCH2O(i)=fCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='VRO2 + NO = 0.880NO2 + 0.350HO2 + 0.350CH2O + 0.530MCO3 + 0.530GLYC + 0.350MGLY + 0.120MVKN';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'NO';
fVRO2(i)=fVRO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.88; fHO2(i)=fHO2(i)+0.35; fCH2O(i)=fCH2O(i)+0.35; fMCO3(i)=fMCO3(i)+0.53; fGLYC(i)=fGLYC(i)+0.53; fMGLY(i)=fMGLY(i)+0.35; fMVKN(i)=fMVKN(i)+0.12; 

i=i+1;
Rnames{i}='MRO2 + NO = 0.850NO2 + 0.850HO2 + 0.122MGLY + 0.728HAC + 0.728CO + 0.122CH2O + 0.150MACRN';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'NO';
fMRO2(i)=fMRO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+0.85; fHO2(i)=fHO2(i)+0.85; fMGLY(i)=fMGLY(i)+0.12; fHAC(i)=fHAC(i)+0.72; fCO(i)=fCO(i)+0.72; fCH2O(i)=fCH2O(i)+0.12; fMACRN(i)=fMACRN(i)+0.15; 

i=i+1;
Rnames{i}='MRO2 = CO + HAC + OH';
k(:,i) = 2.90E+07*exp(-5297./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = '';
fMRO2(i)=fMRO2(i)-1; fCO(i)=fCO(i)+1; fHAC(i)=fHAC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='MAN2 + NO = 1.500NO2 + 0.500CH2O + 0.500MGLY + 0.500PROPNN + 0.500CO + 0.500OH';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'NO';
fMAN2(i)=fMAN2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1.50; fCH2O(i)=fCH2O(i)+0.50; fMGLY(i)=fMGLY(i)+0.50; fPROPNN(i)=fPROPNN(i)+0.50; fCO(i)=fCO(i)+0.50; fOH(i)=fOH(i)+0.50; 

i=i+1;
Rnames{i}='B3O2 + NO = NO2 + HO2 + ACET';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'NO';
fB3O2(i)=fB3O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i}='INO2 + NO = 1.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'NO';
fINO2(i)=fINO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1.30; fHO2(i)=fHO2(i)+0.80; fISN1(i)=fISN1(i)+0.70; fHC5(i)=fHC5(i)+0.23; fMACR(i)=fMACR(i)+0.03; fCH2O(i)=fCH2O(i)+0.07; fMVK(i)=fMVK(i)+0.03; 

i=i+1;
Rnames{i}='INO2 + NO3 = 1.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK';
k(:,i) = 2.30E-12;
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'NO3';
fINO2(i)=fINO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1.30; fHO2(i)=fHO2(i)+0.80; fISN1(i)=fISN1(i)+0.70; fHC5(i)=fHC5(i)+0.23; fMACR(i)=fMACR(i)+0.03; fCH2O(i)=fCH2O(i)+0.07; fMVK(i)=fMVK(i)+0.03; 

i=i+1;
Rnames{i}='ISN1 + NO3 = 0.600ISNOOA + 0.400ISNOOB + 0.600HNO3';
k(:,i) = 3.15E-13*exp(-448./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'NO3';
fISN1(i)=fISN1(i)-1; fNO3(i)=fNO3(i)-1; fISNOOA(i)=fISNOOA(i)+0.60; fISNOOB(i)=fISNOOB(i)+0.40; fHNO3(i)=fHNO3(i)+0.60; 

i=i+1;
Rnames{i}='ISNOOA + NO3 = NO2 + PROPNN + CO + HO2';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO3';
fISNOOA(i)=fISNOOA(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fPROPNN(i)=fPROPNN(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='ISNOOA + NO = NO2 + PROPNN + CO + HO2';
k(:,i) = 6.70E-12*exp(340./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO';
fISNOOA(i)=fISNOOA(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fPROPNN(i)=fPROPNN(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='ISNOOA + NO2 = PMN';
k(:,i) = K_ISNOOA_NO2;
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'NO2';
fISNOOA(i)=fISNOOA(i)-1; fNO2(i)=fNO2(i)-1; fPMN(i)=fPMN(i)+1; 

i=i+1;
Rnames{i}='ISNOOA + HO2 = 0.750RP + 0.250RCOOH + 0.250O3';
k(:,i) = 5.20E-13*exp(980./T);
Gstr{i,1} = 'ISNOOA'; Gstr{i,2} = 'HO2';
fISNOOA(i)=fISNOOA(i)-1; fHO2(i)=fHO2(i)-1; fRP(i)=fRP(i)+0.75; fRCOOH(i)=fRCOOH(i)+0.25; fO3(i)=fO3(i)+0.25; 

i=i+1;
Rnames{i}='ISNOOB + NO3 = PROPNN + GLYX + NO2 + NO2';
k(:,i) = 2.30E-12;
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'NO3';
fISNOOB(i)=fISNOOB(i)-1; fNO3(i)=fNO3(i)-1; fPROPNN(i)=fPROPNN(i)+1; fGLYX(i)=fGLYX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='ISNOOB + NO = 0.940PROPNN + 0.940GLYX + 0.940NO2 + 0.940NO2';
k(:,i) = 2.60E-12*exp(380./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'NO';
fISNOOB(i)=fISNOOB(i)-1; fNO(i)=fNO(i)-1; fPROPNN(i)=fPROPNN(i)+0.94; fGLYX(i)=fGLYX(i)+0.94; fNO2(i)=fNO2(i)+0.94; fNO2(i)=fNO2(i)+0.94; 

i=i+1;
Rnames{i}='ISNOOB + HO2 = INPN';
k(:,i) = 2.06E-13*exp(1300./T);
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'HO2';
fISNOOB(i)=fISNOOB(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i}='ISNOOB + MO2 = 0.700PROPNN + 0.700GLYX + 0.700NO2 + 0.250CH2O + 0.250MOH + 0.500HO2 + 0.500CH2O';
k(:,i) = 2.00E-13;
Gstr{i,1} = 'ISNOOB'; Gstr{i,2} = 'MO2';
fISNOOB(i)=fISNOOB(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.70; fGLYX(i)=fGLYX(i)+0.70; fNO2(i)=fNO2(i)+0.70; fCH2O(i)=fCH2O(i)+0.25; fMOH(i)=fMOH(i)+0.25; fHO2(i)=fHO2(i)+0.50; fCH2O(i)=fCH2O(i)+0.50; 

i=i+1;
Rnames{i}='ISN1 + O3 = 0.300PROPNN + 0.700GLYX + 0.700NO2 + 0.250CH2O + 0.250MOH + 0.500HO2 + 0.500CH2O';
k(:,i) = 4.15E-15*exp(-1520./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'O3';
fISN1(i)=fISN1(i)-1; fO3(i)=fO3(i)-1; fPROPNN(i)=fPROPNN(i)+0.30; fGLYX(i)=fGLYX(i)+0.70; fNO2(i)=fNO2(i)+0.70; fCH2O(i)=fCH2O(i)+0.25; fMOH(i)=fMOH(i)+0.25; fHO2(i)=fHO2(i)+0.50; fCH2O(i)=fCH2O(i)+0.50; 

i=i+1;
Rnames{i}='ISN1 + OH = 0.345ISNOOA + 0.655ISNOHOO';
k(:,i) = 7.48E-12*exp(410./T);
Gstr{i,1} = 'ISN1'; Gstr{i,2} = 'OH';
fISN1(i)=fISN1(i)-1; fOH(i)=fOH(i)-1; fISNOOA(i)=fISNOOA(i)+0.34; fISNOHOO(i)=fISNOHOO(i)+0.65; 

i=i+1;
Rnames{i}='ISNOHOO + NO = 0.934PROPNN + 0.934HO2 + 0.919GLYX';
k(:,i) = 2.60E-12*exp(380./T);
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'NO';
fISNOHOO(i)=fISNOHOO(i)-1; fNO(i)=fNO(i)-1; fPROPNN(i)=fPROPNN(i)+0.93; fHO2(i)=fHO2(i)+0.93; fGLYX(i)=fGLYX(i)+0.91; 

i=i+1;
Rnames{i}='ISNOHOO + HO2 = INPN';
k(:,i) = 2.06E-13*exp(1300./T);
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'HO2';
fISNOHOO(i)=fISNOHOO(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i}='ISNOHOO + MO2 = 0.700PROPNN + 0.700GLYX + 0.700HO2 + 0.250CH2O + 0.250MOH + 0.500CH2O + 0.500HO2';
k(:,i) = 2.06E-13;
Gstr{i,1} = 'ISNOHOO'; Gstr{i,2} = 'MO2';
fISNOHOO(i)=fISNOHOO(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.70; fGLYX(i)=fGLYX(i)+0.70; fHO2(i)=fHO2(i)+0.70; fCH2O(i)=fCH2O(i)+0.25; fMOH(i)=fMOH(i)+0.25; fCH2O(i)=fCH2O(i)+0.50; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='INO2 + INO2 = 0.300NO2 + 0.800HO2 + 0.700ISN1 + 0.230HC5 + 0.035MACR + 0.070CH2O + 0.035MVK + 0.500ISN1 + 0.500ISOPND';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'INO2';
fINO2(i)=fINO2(i)-1; fINO2(i)=fINO2(i)-1; fNO2(i)=fNO2(i)+0.30; fHO2(i)=fHO2(i)+0.80; fISN1(i)=fISN1(i)+0.70; fHC5(i)=fHC5(i)+0.23; fMACR(i)=fMACR(i)+0.03; fCH2O(i)=fCH2O(i)+0.07; fMVK(i)=fMVK(i)+0.03; fISN1(i)=fISN1(i)+0.50; fISOPND(i)=fISOPND(i)+0.50; 

i=i+1;
Rnames{i}='PRN1 + NO = 2.000NO2 + CH2O + ALD2';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'NO';
fPRN1(i)=fPRN1(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.00; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='ALK4 + NO3 = HNO3 + R4O2';
k(:,i) = 2.80E-12*exp(-3280./T);
Gstr{i,1} = 'ALK4'; Gstr{i,2} = 'NO3';
fALK4(i)=fALK4(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fR4O2(i)=fR4O2(i)+1; 

i=i+1;
Rnames{i}='R4N2 + OH = R4N1 + H2O';
k(:,i) = 1.60E-12;
Gstr{i,1} = 'R4N2'; Gstr{i,2} = 'OH';
fR4N2(i)=fR4N2(i)-1; fOH(i)=fOH(i)-1; fR4N1(i)=fR4N1(i)+1;  

i=i+1;
Rnames{i}='ACTA + OH = MO2 + CO2 + H2O';
k(:,i) = 3.15E-14*exp(920./T);
Gstr{i,1} = 'ACTA'; Gstr{i,2} = 'OH';
fACTA(i)=fACTA(i)-1; fOH(i)=fOH(i)-1; fMO2(i)=fMO2(i)+1;   

i=i+1;
Rnames{i}='OH + RCHO = RCO3 + H2O';
k(:,i) = 6.00E-12*exp(410./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'RCHO';
fOH(i)=fOH(i)-1; fRCHO(i)=fRCHO(i)-1; fRCO3(i)=fRCO3(i)+1;  

i=i+1;
Rnames{i}='RCO3 + NO2 = PPN';
k(:,i) = K_RCO3_NO2;
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO2';
fRCO3(i)=fRCO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i}='PPN = RCO3 + NO2';
k(:,i) = K_PPN;
Gstr{i,1} = 'PPN'; Gstr{i,2} = '';
fPPN(i)=fPPN(i)-1; fRCO3(i)=fRCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MAO3 + NO2 = PMN';
k(:,i) = K_MAO3_NO2;
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'NO2';
fMAO3(i)=fMAO3(i)-1; fNO2(i)=fNO2(i)-1; fPMN(i)=fPMN(i)+1; 

i=i+1;
Rnames{i}='PMN = MAO3 + NO2';
k(:,i) = K_PMN;
Gstr{i,1} = 'PMN'; Gstr{i,2} = '';
fPMN(i)=fPMN(i)-1; fMAO3(i)=fMAO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='RCO3 + NO = NO2 + ETO2';
k(:,i) = 6.70E-12*exp(340./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'NO';
fRCO3(i)=fRCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fETO2(i)=fETO2(i)+1; 

i=i+1;
Rnames{i}='MAO3 + NO = NO2 + 0.500CH2O + 0.500CO + CO2 + 0.500MO2 + 0.500MCO3';
k(:,i) = 6.70E-12*exp(340./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'NO';
fMAO3(i)=fMAO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.50; fCO(i)=fCO(i)+0.50;  fMO2(i)=fMO2(i)+0.50; fMCO3(i)=fMCO3(i)+0.50; 

i=i+1;
Rnames{i}='RCHO + NO3 = HNO3 + RCO3';
k(:,i) = 6.50E-15;
Gstr{i,1} = 'RCHO'; Gstr{i,2} = 'NO3';
fRCHO(i)=fRCHO(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i}='ACET + OH = ATO2 + H2O';
k(:,i) = 1.33E-13;
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH';
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fATO2(i)=fATO2(i)+1;  

i=i+1;
Rnames{i}='ACET + OH = ATO2 + H2O';
k(:,i) = 3.82E-11*exp(-2000./T);
Gstr{i,1} = 'ACET'; Gstr{i,2} = 'OH';
fACET(i)=fACET(i)-1; fOH(i)=fOH(i)-1; fATO2(i)=fATO2(i)+1;  

i=i+1;
Rnames{i}='A3O2 + MO2 = HO2 + 0.750CH2O + 0.750RCHO + 0.250MOH + 0.250ROH';
k(:,i) = 5.92E-13;
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'MO2';
fA3O2(i)=fA3O2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+0.75; fRCHO(i)=fRCHO(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1;
Rnames{i}='PO2 + MO2 = HO2 + 0.500ALD2 + 1.250CH2O + 0.160HAC + 0.090RCHO + 0.250MOH + 0.250ROH';
k(:,i) = 5.92E-13;
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'MO2';
fPO2(i)=fPO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+0.50; fCH2O(i)=fCH2O(i)+1.25; fHAC(i)=fHAC(i)+0.16; fRCHO(i)=fRCHO(i)+0.09; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1;
Rnames{i}='R4O2 + HO2 = R4P';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'HO2';
fR4O2(i)=fR4O2(i)-1; fHO2(i)=fHO2(i)-1; fR4P(i)=fR4P(i)+1; 

i=i+1;
Rnames{i}='R4N1 + HO2 = R4N2';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'HO2';
fR4N1(i)=fR4N1(i)-1; fHO2(i)=fHO2(i)-1; fR4N2(i)=fR4N2(i)+1; 

i=i+1;
Rnames{i}='ATO2 + HO2 = 0.150MCO3 + 0.150OH + 0.150CH2O + 0.850ATOOH';
k(:,i) = 8.60E-13*exp(700./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'HO2';
fATO2(i)=fATO2(i)-1; fHO2(i)=fHO2(i)-1; fMCO3(i)=fMCO3(i)+0.15; fOH(i)=fOH(i)+0.15; fCH2O(i)=fCH2O(i)+0.15; fATOOH(i)=fATOOH(i)+0.85; 

i=i+1;
Rnames{i}='KO2 + HO2 = 0.150OH + 0.150ALD2 + 0.150MCO3 + 0.850ATOOH';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'HO2';
fKO2(i)=fKO2(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.15; fALD2(i)=fALD2(i)+0.15; fMCO3(i)=fMCO3(i)+0.15; fATOOH(i)=fATOOH(i)+0.85; 

i=i+1;
Rnames{i}='RIO2 + HO2 = 0.937RIP + 0.063OH + 0.025MACR + 0.038MVK + 0.063HO2 + 0.063CH2O';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'HO2';
fRIO2(i)=fRIO2(i)-1; fHO2(i)=fHO2(i)-1; fRIP(i)=fRIP(i)+0.93; fOH(i)=fOH(i)+0.06; fMACR(i)=fMACR(i)+0.02; fMVK(i)=fMVK(i)+0.03; fHO2(i)=fHO2(i)+0.06; fCH2O(i)=fCH2O(i)+0.06; 

i=i+1;
Rnames{i}='VRO2 + HO2 = 0.100VRP + 0.680OH + 0.578GLYC + 0.578MCO3 + 0.187MEK + 0.102HO2 + 0.102CH2O + 0.102MGLY + 0.033RCHO';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'HO2';
fVRO2(i)=fVRO2(i)-1; fHO2(i)=fHO2(i)-1; fVRP(i)=fVRP(i)+0.10; fOH(i)=fOH(i)+0.68; fGLYC(i)=fGLYC(i)+0.57; fMCO3(i)=fMCO3(i)+0.57; fMEK(i)=fMEK(i)+0.18; fHO2(i)=fHO2(i)+0.10; fCH2O(i)=fCH2O(i)+0.10; fMGLY(i)=fMGLY(i)+0.10; fRCHO(i)=fRCHO(i)+0.03; 

i=i+1;
Rnames{i}='MRO2 + HO2 = MRP';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'HO2';
fMRO2(i)=fMRO2(i)-1; fHO2(i)=fHO2(i)-1; fMRP(i)=fMRP(i)+1; 

i=i+1;
Rnames{i}='MAN2 + HO2 = 0.075PROPNN + 0.075CO + 0.075HO2 + 0.075MGLY + 0.075CH2O + 0.075NO2 + 0.150OH + 0.850ISNP';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'HO2';
fMAN2(i)=fMAN2(i)-1; fHO2(i)=fHO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.07; fCO(i)=fCO(i)+0.07; fHO2(i)=fHO2(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fCH2O(i)=fCH2O(i)+0.07; fNO2(i)=fNO2(i)+0.07; fOH(i)=fOH(i)+0.15; fISNP(i)=fISNP(i)+0.85; 

i=i+1;
Rnames{i}='B3O2 + HO2 = RB3P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'HO2';
fB3O2(i)=fB3O2(i)-1; fHO2(i)=fHO2(i)-1; fRB3P(i)=fRB3P(i)+1; 

i=i+1;
Rnames{i}='INO2 + HO2 = INPN';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'HO2';
fINO2(i)=fINO2(i)-1; fHO2(i)=fHO2(i)-1; fINPN(i)=fINPN(i)+1; 

i=i+1;
Rnames{i}='PRN1 + HO2 = PRPN';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'HO2';
fPRN1(i)=fPRN1(i)-1; fHO2(i)=fHO2(i)-1; fPRPN(i)=fPRPN(i)+1; 

i=i+1;
Rnames{i}='MEK + OH = KO2 + H2O';
k(:,i) = 1.30E-12*exp(-25./T);
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'OH';
fMEK(i)=fMEK(i)-1; fOH(i)=fOH(i)-1; fKO2(i)=fKO2(i)+1;  

i=i+1;
Rnames{i}='MO2 + ETO2 = 0.750CH2O + 0.750ALD2 + HO2 + 0.250MOH + 0.250EOH';
k(:,i) = 3.00E-13;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'ETO2';
fMO2(i)=fMO2(i)-1; fETO2(i)=fETO2(i)-1; fCH2O(i)=fCH2O(i)+0.75; fALD2(i)=fALD2(i)+0.75; fHO2(i)=fHO2(i)+1; fMOH(i)=fMOH(i)+0.25; fEOH(i)=fEOH(i)+0.25; 

i=i+1;
Rnames{i}='MEK + NO3 = HNO3 + KO2';
k(:,i) = 8.00E-16;
Gstr{i,1} = 'MEK'; Gstr{i,2} = 'NO3';
fMEK(i)=fMEK(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fKO2(i)=fKO2(i)+1; 

i=i+1;
Rnames{i}='R4O2 + MO2 = 0.160ACET + 0.100MEK + 0.090MO2 + 0.140HO2 + 0.160ALD2 + 0.070RCHO + 0.030A3O2 + 0.090B3O2 + 0.160ETO2 + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MO2';
fR4O2(i)=fR4O2(i)-1; fMO2(i)=fMO2(i)-1; fACET(i)=fACET(i)+0.16; fMEK(i)=fMEK(i)+0.10; fMO2(i)=fMO2(i)+0.09; fHO2(i)=fHO2(i)+0.14; fALD2(i)=fALD2(i)+0.16; fRCHO(i)=fRCHO(i)+0.07; fA3O2(i)=fA3O2(i)+0.03; fB3O2(i)=fB3O2(i)+0.09; fETO2(i)=fETO2(i)+0.16; fMEK(i)=fMEK(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='R4N1 + MO2 = NO2 + 0.200CH2O + 0.380ALD2 + 0.290RCHO + 0.150R4O2 + 0.250RCHO + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MO2';
fR4N1(i)=fR4N1(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.20; fALD2(i)=fALD2(i)+0.38; fRCHO(i)=fRCHO(i)+0.29; fR4O2(i)=fR4O2(i)+0.15; fRCHO(i)=fRCHO(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='ATO2 + MO2 = 0.300HO2 + 0.300CH2O + 0.300MCO3 + 0.200HAC + 0.200CH2O + 0.500MGLY + 0.500MOH';
k(:,i) = 7.50E-13*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MO2';
fATO2(i)=fATO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.30; fCH2O(i)=fCH2O(i)+0.30; fMCO3(i)=fMCO3(i)+0.30; fHAC(i)=fHAC(i)+0.20; fCH2O(i)=fCH2O(i)+0.20; fMGLY(i)=fMGLY(i)+0.50; fMOH(i)=fMOH(i)+0.50; 

i=i+1;
Rnames{i}='KO2 + MO2 = 0.500ALD2 + 0.500MCO3 + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MO2';
fKO2(i)=fKO2(i)-1; fMO2(i)=fMO2(i)-1; fALD2(i)=fALD2(i)+0.50; fMCO3(i)=fMCO3(i)+0.50; fMEK(i)=fMEK(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='RIO2 + MO2 = 1.100HO2 + 1.220CH2O + 0.280MVK + 0.180MACR + 0.300HC5 + 0.240MOH + 0.240ROH';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MO2';
fRIO2(i)=fRIO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1.10; fCH2O(i)=fCH2O(i)+1.22; fMVK(i)=fMVK(i)+0.28; fMACR(i)=fMACR(i)+0.18; fHC5(i)=fHC5(i)+0.30; fMOH(i)=fMOH(i)+0.24; fROH(i)=fROH(i)+0.24; 

i=i+1;
Rnames{i}='RIO2 + RIO2 = 0.910HO2 + 0.750CH2O + 0.450MVK + 0.290MACR + 0.090DIBOO + 1.110HC5 + 0.290CO';
k(:,i) = 2.30E-12;
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'RIO2';
fRIO2(i)=fRIO2(i)-1; fRIO2(i)=fRIO2(i)-1; fHO2(i)=fHO2(i)+0.91; fCH2O(i)=fCH2O(i)+0.75; fMVK(i)=fMVK(i)+0.45; fMACR(i)=fMACR(i)+0.29; fDIBOO(i)=fDIBOO(i)+0.09; fHC5(i)=fHC5(i)+1.11; fCO(i)=fCO(i)+0.29; 

i=i+1;
Rnames{i}='HC5OO + MO2 = 0.500HO2 + 0.330CO + 0.090H2 + 0.180HAC + 0.130GLYC + 0.290MGLY + 0.250MEK + 0.950CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MO2';
fHC5OO(i)=fHC5OO(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fCO(i)=fCO(i)+0.33; fH2(i)=fH2(i)+0.09; fHAC(i)=fHAC(i)+0.18; fGLYC(i)=fGLYC(i)+0.13; fMGLY(i)=fMGLY(i)+0.29; fMEK(i)=fMEK(i)+0.25; fCH2O(i)=fCH2O(i)+0.95; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='VRO2 + MO2 = 0.140HO2 + 0.140CH2O + 0.360MCO3 + 0.360GLYC + 0.140MGLY + 0.250MEK + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MO2';
fVRO2(i)=fVRO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.14; fCH2O(i)=fCH2O(i)+0.14; fMCO3(i)=fMCO3(i)+0.36; fGLYC(i)=fGLYC(i)+0.36; fMGLY(i)=fMGLY(i)+0.14; fMEK(i)=fMEK(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='MRO2 + MO2 = 0.595HAC + 0.255MGLY + 0.595CO + 1.255CH2O + 1.700HO2 + 0.150ROH';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MO2';
fMRO2(i)=fMRO2(i)-1; fMO2(i)=fMO2(i)-1; fHAC(i)=fHAC(i)+0.59; fMGLY(i)=fMGLY(i)+0.25; fCO(i)=fCO(i)+0.59; fCH2O(i)=fCH2O(i)+1.25; fHO2(i)=fHO2(i)+1.70; fROH(i)=fROH(i)+0.15; 

i=i+1;
Rnames{i}='MAN2 + MO2 = 0.375PROPNN + 0.375CO + 0.375HO2 + 0.375MGLY + 0.375CH2O + 0.375NO2 + 0.250CH2O + 0.250R4N2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MO2';
fMAN2(i)=fMAN2(i)-1; fMO2(i)=fMO2(i)-1; fPROPNN(i)=fPROPNN(i)+0.37; fCO(i)=fCO(i)+0.37; fHO2(i)=fHO2(i)+0.37; fMGLY(i)=fMGLY(i)+0.37; fCH2O(i)=fCH2O(i)+0.37; fNO2(i)=fNO2(i)+0.37; fCH2O(i)=fCH2O(i)+0.25; fR4N2(i)=fR4N2(i)+0.25; 

i=i+1;
Rnames{i}='B3O2 + MO2 = 0.500HO2 + 0.500ACET + 0.250ACET + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MO2';
fB3O2(i)=fB3O2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fACET(i)=fACET(i)+0.50; fACET(i)=fACET(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='INO2 + MO2 = 0.150NO2 + 0.400HO2 + 0.350ISN1 + 0.035CH2O + 0.018MACR + 0.018MVK + 0.115HC5 + 0.250ISN1 + 0.250ISOPND + 0.500CH2O + 0.500HO2 + 0.250CH2O + 0.250MOH';
k(:,i) = 1.30E-12;
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MO2';
fINO2(i)=fINO2(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+0.15; fHO2(i)=fHO2(i)+0.40; fISN1(i)=fISN1(i)+0.35; fCH2O(i)=fCH2O(i)+0.03; fMACR(i)=fMACR(i)+0.01; fMVK(i)=fMVK(i)+0.01; fHC5(i)=fHC5(i)+0.11; fISN1(i)=fISN1(i)+0.25; fISOPND(i)=fISOPND(i)+0.25; fCH2O(i)=fCH2O(i)+0.50; fHO2(i)=fHO2(i)+0.50; fCH2O(i)=fCH2O(i)+0.25; fMOH(i)=fMOH(i)+0.25; 

i=i+1;
Rnames{i}='PRN1 + MO2 = NO2 + 0.500CH2O + 0.500ALD2 + 0.250RCHO + 0.750CH2O + 0.250MOH + 0.250ROH + 0.500HO2';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MO2';
fPRN1(i)=fPRN1(i)-1; fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.50; fALD2(i)=fALD2(i)+0.50; fRCHO(i)=fRCHO(i)+0.25; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fHO2(i)=fHO2(i)+0.50; 

i=i+1;
Rnames{i}='EOH + OH = HO2 + ALD2';
k(:,i) = 3.35E-12;
Gstr{i,1} = 'EOH'; Gstr{i,2} = 'OH';
fEOH(i)=fEOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='ROH + OH = HO2 + RCHO';
k(:,i) = 4.60E-12*exp(70./T);
Gstr{i,1} = 'ROH'; Gstr{i,2} = 'OH';
fROH(i)=fROH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='ETO2 + ETO2 = 2.000ALD2 + 2.000HO2';
k(:,i) = 4.10E-14;
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'ETO2';
fETO2(i)=fETO2(i)-1; fETO2(i)=fETO2(i)-1; fALD2(i)=fALD2(i)+2.00; fHO2(i)=fHO2(i)+2.00; 

i=i+1;
Rnames{i}='ETO2 + ETO2 = EOH + ALD2';
k(:,i) = 2.70E-14;
Gstr{i,1} = 'ETO2'; Gstr{i,2} = 'ETO2';
fETO2(i)=fETO2(i)-1; fETO2(i)=fETO2(i)-1; fEOH(i)=fEOH(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='HO2 + ETO2 = ETP';
k(:,i) = 7.40E-13*exp(700./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'ETO2';
fHO2(i)=fHO2(i)-1; fETO2(i)=fETO2(i)-1; fETP(i)=fETP(i)+1; 

i=i+1;
Rnames{i}='A3O2 + HO2 = RA3P';
k(:,i) = 2.91E-13*exp(1300./T) * fcro2ho2(3.);
Gstr{i,1} = 'A3O2'; Gstr{i,2} = 'HO2';
fA3O2(i)=fA3O2(i)-1; fHO2(i)=fHO2(i)-1; fRA3P(i)=fRA3P(i)+1; 

i=i+1;
Rnames{i}='PO2 + HO2 = PP';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(3.);
Gstr{i,1} = 'PO2'; Gstr{i,2} = 'HO2';
fPO2(i)=fPO2(i)-1; fHO2(i)=fHO2(i)-1; fPP(i)=fPP(i)+1; 

i=i+1;
Rnames{i}='HO2 + MCO3 = 0.410MAP + 0.150ACTA + 0.150O3 + 0.440OH + 0.440MO2';
k(:,i) = 5.20E-13*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'MCO3';
fHO2(i)=fHO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMAP(i)=fMAP(i)+0.41; fACTA(i)=fACTA(i)+0.15; fO3(i)=fO3(i)+0.15; fOH(i)=fOH(i)+0.44; fMO2(i)=fMO2(i)+0.44; 

i=i+1;
Rnames{i}='RCO3 + HO2 = 0.410RP + 0.150RCOOH + 0.150O3 + 0.440OH + 0.440ETO2';
k(:,i) = 4.30E-13*exp(1040./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'HO2';
fRCO3(i)=fRCO3(i)-1; fHO2(i)=fHO2(i)-1; fRP(i)=fRP(i)+0.41; fRCOOH(i)=fRCOOH(i)+0.15; fO3(i)=fO3(i)+0.15; fOH(i)=fOH(i)+0.44; fETO2(i)=fETO2(i)+0.44; 

i=i+1;
Rnames{i}='MAO3 + HO2 = 0.440OH + 0.150O3 + 0.590CH2O + 0.390MO2 + 0.410MAOP + 0.390CO';
k(:,i) = 4.30E-13*exp(1040./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'HO2';
fMAO3(i)=fMAO3(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.44; fO3(i)=fO3(i)+0.15; fCH2O(i)=fCH2O(i)+0.59; fMO2(i)=fMO2(i)+0.39; fMAOP(i)=fMAOP(i)+0.41; fCO(i)=fCO(i)+0.39; 

i=i+1;
Rnames{i}='PRPE + OH = PO2';
k(:,i) = K_PRPE_OH;
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'OH';
fPRPE(i)=fPRPE(i)-1; fOH(i)=fOH(i)-1; fPO2(i)=fPO2(i)+1; 

i=i+1;
Rnames{i}='PRPE + O3 = 0.400ALD2 + 0.244OH + 0.244HO2 + 0.420CO + 0.580CH2O + 0.148HCOOH + 0.096ACTA + 0.036MOH';
k(:,i) = 5.50E-15*exp(-1880./T);
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'O3';
fPRPE(i)=fPRPE(i)-1; fO3(i)=fO3(i)-1; fALD2(i)=fALD2(i)+0.40; fOH(i)=fOH(i)+0.24; fHO2(i)=fHO2(i)+0.24; fCO(i)=fCO(i)+0.42; fCH2O(i)=fCH2O(i)+0.58; fHCOOH(i)=fHCOOH(i)+0.14; fACTA(i)=fACTA(i)+0.09; fMOH(i)=fMOH(i)+0.03; 

i=i+1;
Rnames{i}='PMN + OH = 0.030HAC + 0.030CO + 0.810NO3 + 0.781IMAE + 0.190PAN + 0.190CH2O + 0.190HO2';
k(:,i) = 2.90E-11;
Gstr{i,1} = 'PMN'; Gstr{i,2} = 'OH';
fPMN(i)=fPMN(i)-1; fOH(i)=fOH(i)-1; fHAC(i)=fHAC(i)+0.03; fCO(i)=fCO(i)+0.03; fNO3(i)=fNO3(i)+0.81; fIMAE(i)=fIMAE(i)+0.78; fPAN(i)=fPAN(i)+0.19; fCH2O(i)=fCH2O(i)+0.19; fHO2(i)=fHO2(i)+0.19; 

i=i+1;
Rnames{i}='PMN + O3 = NO2 + 0.600CH2O + HO2';
k(:,i) = 8.20E-18;
Gstr{i,1} = 'PMN'; Gstr{i,2} = 'O3';
fPMN(i)=fPMN(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.60; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='GLYC + OH = 0.732CH2O + 0.361CO2 + 0.505CO + 0.227OH + 0.773HO2 + 0.134GLYX + 0.134HCOOH';
k(:,i) = 8.00E-12 * (11.0729.*exp(-T./73)); %corrected for GLYC_FRAC, 20200424. See calcrate.F line 909;
Gstr{i,1} = 'GLYC'; Gstr{i,2} = 'OH';
fGLYC(i)=fGLYC(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+0.73; fCO2(i)=fCO2(i)+0.36; fCO(i)=fCO(i)+0.50; fOH(i)=fOH(i)+0.22; fHO2(i)=fHO2(i)+0.77; fGLYX(i)=fGLYX(i)+0.13; fHCOOH(i)=fHCOOH(i)+0.13; 

i=i+1;
Rnames{i}='GLYC + OH = HCOOH + OH + CO';
k(:,i) = 8.00E-12 * (1-11.0729.*exp(-T./73)); %corrected for GLYC_FRAC, 20200424. See calcrate.F line 909
Gstr{i,1} = 'GLYC'; Gstr{i,2} = 'OH';
fGLYC(i)=fGLYC(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='PRPE + NO3 = PRN1';
k(:,i) = 4.59E-13*exp(-1156./T);
Gstr{i,1} = 'PRPE'; Gstr{i,2} = 'NO3';
fPRPE(i)=fPRPE(i)-1; fNO3(i)=fNO3(i)-1; fPRN1(i)=fPRN1(i)+1; 

i=i+1;
Rnames{i}='GLYX + OH = HO2 + 2.000CO';
k(:,i) = 3.10E-12*exp(340./T);
Gstr{i,1} = 'GLYX'; Gstr{i,2} = 'OH';
fGLYX(i)=fGLYX(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+2.00; 

i=i+1;
Rnames{i}='MGLY + OH = MCO3 + CO';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'OH';
fMGLY(i)=fMGLY(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='GLYX + NO3 = HNO3 + HO2 + 2.000CO';
k(:,i) = 1.40E-12.*exp(-1860./T).*(0.2.*M + 3.5E18)./(2*0.2.*M + 3.5E18);
Gstr{i,1} = 'GLYX'; Gstr{i,2} = 'NO3';
fGLYX(i)=fGLYX(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+2.00; 

i=i+1;
Rnames{i}='MGLY + NO3 = HNO3 + CO + MCO3';
k(:,i) = 3.36E-12*exp(-1860./T);
Gstr{i,1} = 'MGLY'; Gstr{i,2} = 'NO3';
fMGLY(i)=fMGLY(i)-1; fNO3(i)=fNO3(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='ISOP + OH = RIO2';
k(:,i) = 3.10E-11*exp(350./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'OH';
fISOP(i)=fISOP(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+1;

i=i+1;
Rnames{i}='MVK + OH = VRO2';
k(:,i) = 2.60E-12*exp(610./T);
Gstr{i,1} = 'MVK'; Gstr{i,2} = 'OH';
fMVK(i)=fMVK(i)-1; fOH(i)=fOH(i)-1; fVRO2(i)=fVRO2(i)+1; 

i=i+1;
Rnames{i}='MACR + OH = 0.530MAO3 + 0.470MRO2';
k(:,i) = 8.00E-12*exp(380./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'OH';
fMACR(i)=fMACR(i)-1; fOH(i)=fOH(i)-1; fMAO3(i)=fMAO3(i)+0.53; fMRO2(i)=fMRO2(i)+0.47; 

HAC_FRAC = 1.0 - 23.7*exp(-T/60); %T-dependent branching ratio
HAC_FRAC(HAC_FRAC<0) = 0; %lower than 190K (brrr!) 

i=i+1;
Rnames{i}='HAC + OH = MGLY + HO2';
k(:,i) = 2.15E-12.*exp(305./T) .* HAC_FRAC;
Gstr{i,1} = 'HAC'; Gstr{i,2} = 'OH';
fHAC(i)=fHAC(i)-1; fOH(i)=fOH(i)-1; fMGLY(i)=fMGLY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='HAC + OH = 0.500HCOOH + OH + 0.500ACTA + 0.500CO2 + 0.500CO + 0.500MO2';
k(:,i) = 2.15E-12.*exp(305./T) .* (1-HAC_FRAC);
Gstr{i,1} = 'HAC'; Gstr{i,2} = 'OH';
fHAC(i)=fHAC(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+0.50; fOH(i)=fOH(i)+1; 
fACTA(i)=fACTA(i)+0.50; fCO2(i)=fCO2(i)+0.50; fCO(i)=fCO(i)+0.50; fMO2(i)=fMO2(i)+0.50; 

i=i+1;
Rnames{i}='MCO3 + A3O2 = MO2 + RCHO + HO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'A3O2';
fMCO3(i)=fMCO3(i)-1; fA3O2(i)=fA3O2(i)-1; fMO2(i)=fMO2(i)+1; fRCHO(i)=fRCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + PO2 = MO2 + ALD2 + CH2O + HO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'PO2';
fMCO3(i)=fMCO3(i)-1; fPO2(i)=fPO2(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + A3O2 = ACTA + RCHO';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'A3O2';
fMCO3(i)=fMCO3(i)-1; fA3O2(i)=fA3O2(i)-1; fACTA(i)=fACTA(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='MCO3 + PO2 = ACTA + 0.350RCHO + 0.650HAC';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'PO2';
fMCO3(i)=fMCO3(i)-1; fPO2(i)=fPO2(i)-1; fACTA(i)=fACTA(i)+1; fRCHO(i)=fRCHO(i)+0.35; fHAC(i)=fHAC(i)+0.65; 

i=i+1;
Rnames{i}='O3 + ISOP = CH2OOB + MACR';
k(:,i) = 3.09E-15*exp(-1995./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP';
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i}='O3 + ISOP = CH2OOB + MVK';
k(:,i) = 2.06E-15*exp(-1995./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP';
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i}='O3 + ISOP = CH2O + MACROOA';
k(:,i) = 3.09E-15*exp(-1995./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP';
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fCH2O(i)=fCH2O(i)+1; fMACROOA(i)=fMACROOA(i)+1; 

i=i+1;
Rnames{i}='O3 + ISOP = CH2O + MVKOOA';
k(:,i) = 2.06E-15*exp(-1995./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP';
fO3(i)=fO3(i)-1; fISOP(i)=fISOP(i)-1; fCH2O(i)=fCH2O(i)+1; fMVKOOA(i)=fMVKOOA(i)+1; 

i=i+1;
Rnames{i}='O3 + MVK = MGLOOA + CH2O';
k(:,i) = 4.25E-16*exp(-1520./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK';
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fMGLOOA(i)=fMGLOOA(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='O3 + MVK = MGLY + CH2OOB';
k(:,i) = 4.25E-16*exp(-1520./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK';
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fMGLY(i)=fMGLY(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i}='O3+ MACR = CH2O + MGLYOOB';
k(:,i) = 1.68E-16*exp(-2100./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR';
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fCH2O(i)=fCH2O(i)+1; fMGLYOOB(i)=fMGLYOOB(i)+1; 

i=i+1;
Rnames{i}='O3 + MACR = MGLY + CH2OOB';
k(:,i) = 1.23E-15*exp(-2100./T);
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR';
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fMGLY(i)=fMGLY(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i}='ISOP + NO3 = INO2';
k(:,i) = 3.30E-12*exp(-450./T);
Gstr{i,1} = 'ISOP'; Gstr{i,2} = 'NO3';
fISOP(i)=fISOP(i)-1; fNO3(i)=fNO3(i)-1; fINO2(i)=fINO2(i)+1; 

i=i+1;
Rnames{i}='MACR + NO3 = MAN2';
k(:,i) = 2.30E-15;
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3';
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMAN2(i)=fMAN2(i)+1; 

i=i+1;
Rnames{i}='MACR + NO3 = 0.500MAO3 + 0.500HNO3 + 0.500MRO2 + 0.500HO2 + 0.500CO + 0.500MAOP';
k(:,i) = 1.50E-12*exp(-1815./T);
Gstr{i,1} = 'MACR'; Gstr{i,2} = 'NO3';
fMACR(i)=fMACR(i)-1; fNO3(i)=fNO3(i)-1; fMAO3(i)=fMAO3(i)+0.50; fHNO3(i)=fHNO3(i)+0.50; fMRO2(i)=fMRO2(i)+0.50; fHO2(i)=fHO2(i)+0.50; fCO(i)=fCO(i)+0.50; fMAOP(i)=fMAOP(i)+0.50; 

i=i+1;
Rnames{i}='RCO3 + MO2 = CH2O + HO2 + ETO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2';
fRCO3(i)=fRCO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fETO2(i)=fETO2(i)+1; 

i=i+1;
Rnames{i}='MAO3 + MO2 = CH2O + HO2 + CH2O + MCO3';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'MO2';
fMAO3(i)=fMAO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='RCO3 + MO2 = RCOOH + CH2O';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MO2';
fRCO3(i)=fRCO3(i)-1; fMO2(i)=fMO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='MAO3 + MO2 = RCOOH + CH2O';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'MO2';
fMAO3(i)=fMAO3(i)-1; fMO2(i)=fMO2(i)-1; fRCOOH(i)=fRCOOH(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='INPN + OH = OH + NO2 + MEK';
k(:,i) = 1.90E-11*exp(390./T);
Gstr{i,1} = 'INPN'; Gstr{i,2} = 'OH';
fINPN(i)=fINPN(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i}='INPN + OH = 0.360INO2 + 0.640R4N2 + 0.640OH';
k(:,i) = 5.18E-12*exp(200./T);
Gstr{i,1} = 'INPN'; Gstr{i,2} = 'OH';
fINPN(i)=fINPN(i)-1; fOH(i)=fOH(i)-1; fINO2(i)=fINO2(i)+0.36; fR4N2(i)=fR4N2(i)+0.64; fOH(i)=fOH(i)+0.64; 

i=i+1;
Rnames{i}='PRPN + OH = 0.209PRN1 + 0.791OH + 0.791PROPNN';
k(:,i) = 8.78E-12*exp(200./T);
Gstr{i,1} = 'PRPN'; Gstr{i,2} = 'OH';
fPRPN(i)=fPRPN(i)-1; fOH(i)=fOH(i)-1; fPRN1(i)=fPRN1(i)+0.20; fOH(i)=fOH(i)+0.79; fPROPNN(i)=fPROPNN(i)+0.79; 

i=i+1;
Rnames{i}='ETP + OH = 0.640OH + 0.360ETO2 + 0.640ALD2';
k(:,i) = 5.18E-12*exp(200./T);
Gstr{i,1} = 'ETP'; Gstr{i,2} = 'OH';
fETP(i)=fETP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.64; fETO2(i)=fETO2(i)+0.36; fALD2(i)=fALD2(i)+0.64; 

i=i+1;
Rnames{i}='RA3P + OH = 0.640OH + 0.360A3O2 + 0.640RCHO';
k(:,i) = 5.18E-12*exp(200./T);
Gstr{i,1} = 'RA3P'; Gstr{i,2} = 'OH';
fRA3P(i)=fRA3P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.64; fA3O2(i)=fA3O2(i)+0.36; fRCHO(i)=fRCHO(i)+0.64; 

i=i+1;
Rnames{i}='RB3P + OH = 0.791OH + 0.209B3O2 + 0.791ACET';
k(:,i) = 8.78E-12*exp(200./T);
Gstr{i,1} = 'RB3P'; Gstr{i,2} = 'OH';
fRB3P(i)=fRB3P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.79; fB3O2(i)=fB3O2(i)+0.20; fACET(i)=fACET(i)+0.79; 

i=i+1;
Rnames{i}='R4P + OH = 0.791OH + 0.209R4O2 + 0.791RCHO';
k(:,i) = 8.78E-12*exp(200./T);
Gstr{i,1} = 'R4P'; Gstr{i,2} = 'OH';
fR4P(i)=fR4P(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.79; fR4O2(i)=fR4O2(i)+0.20; fRCHO(i)=fRCHO(i)+0.79; 

i=i+1;
Rnames{i}='RP + OH = RCO3';
k(:,i) = 6.13E-13*exp(200./T);
Gstr{i,1} = 'RP'; Gstr{i,2} = 'OH';
fRP(i)=fRP(i)-1; fOH(i)=fOH(i)-1; fRCO3(i)=fRCO3(i)+1; 

i=i+1;
Rnames{i}='PP + OH = 0.791OH + 0.209PO2 + 0.791HAC';
k(:,i) = 8.78E-12*exp(200./T);
Gstr{i,1} = 'PP'; Gstr{i,2} = 'OH';
fPP(i)=fPP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.79; fPO2(i)=fPO2(i)+0.20; fHAC(i)=fHAC(i)+0.79; 

i=i+1;
Rnames{i}='RIP + OH = 0.387RIO2 + 0.613OH + 0.613HC5';
k(:,i) = 4.75E-12*exp(200./T);
Gstr{i,1} = 'RIP'; Gstr{i,2} = 'OH';
fRIP(i)=fRIP(i)-1; fOH(i)=fOH(i)-1; fRIO2(i)=fRIO2(i)+0.38; fOH(i)=fOH(i)+0.61; fHC5(i)=fHC5(i)+0.61; 

i=i+1;
Rnames{i}='RIP + OH = OH + IEPOX';
k(:,i) = 1.90E-11*exp(390./T);
Gstr{i,1} = 'RIP'; Gstr{i,2} = 'OH';
fRIP(i)=fRIP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+1; fIEPOX(i)=fIEPOX(i)+1; 

i=i+1;
Rnames{i}='IEPOX + OH = IEPOXOO';
k(:,i) = 4.82E-11*exp(-400./T);
Gstr{i,1} = 'IEPOX'; Gstr{i,2} = 'OH';
fIEPOX(i)=fIEPOX(i)-1; fOH(i)=fOH(i)-1; fIEPOXOO(i)=fIEPOXOO(i)+1; 

i=i+1;
Rnames{i}='IEPOXOO + HO2 = 0.085HAC + 0.025GLYC + 0.085GLYX + 0.085MGLY + 1.125OH + 0.825HO2 + 1.100CO2 + 0.375CH2O + 0.278HCOOH + 0.600CO + 0.440HC187';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'IEPOXOO'; Gstr{i,2} = 'HO2';
fIEPOXOO(i)=fIEPOXOO(i)-1; fHO2(i)=fHO2(i)-1; fHAC(i)=fHAC(i)+0.08; fGLYC(i)=fGLYC(i)+0.02; fGLYX(i)=fGLYX(i)+0.08; fMGLY(i)=fMGLY(i)+0.08; fOH(i)=fOH(i)+1.12; fHO2(i)=fHO2(i)+0.82; fCO2(i)=fCO2(i)+1.10; fCH2O(i)=fCH2O(i)+0.37; fHCOOH(i)=fHCOOH(i)+0.27; fCO(i)=fCO(i)+0.60; fHC187(i)=fHC187(i)+0.44; 

i=i+1;
Rnames{i}='IEPOXOO + NO = 0.117HAC + 0.088GLYC + 0.088GLYX + 0.088MGLY + 0.125OH + 0.825HO2 + 0.800CO2 + 0.375CH2O + 0.142HCOOH + 0.678CO + NO2 + 0.473HC187';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'IEPOXOO'; Gstr{i,2} = 'NO';
fIEPOXOO(i)=fIEPOXOO(i)-1; fNO(i)=fNO(i)-1; fHAC(i)=fHAC(i)+0.11; fGLYC(i)=fGLYC(i)+0.08; fGLYX(i)=fGLYX(i)+0.08; fMGLY(i)=fMGLY(i)+0.08; fOH(i)=fOH(i)+0.12; fHO2(i)=fHO2(i)+0.82; fCO2(i)=fCO2(i)+0.80; fCH2O(i)=fCH2O(i)+0.37; fHCOOH(i)=fHCOOH(i)+0.14; fCO(i)=fCO(i)+0.67; fNO2(i)=fNO2(i)+1; fHC187(i)=fHC187(i)+0.47; 

i=i+1;
Rnames{i}='HC187 + OH = 0.500MCO3 + 0.500MGLY + 0.500HO2 + 0.500CO + CH2O';
k(:,i) = 1.40E-11;
Gstr{i,1} = 'HC187'; Gstr{i,2} = 'OH';
fHC187(i)=fHC187(i)-1; fOH(i)=fOH(i)-1; fMCO3(i)=fMCO3(i)+0.50; fMGLY(i)=fMGLY(i)+0.50; fHO2(i)=fHO2(i)+0.50; fCO(i)=fCO(i)+0.50; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='IAP + OH = 0.654OH + 0.654DHMOB + 0.346HC5OO';
k(:,i) = 5.31E-12*exp(200./T);
Gstr{i,1} = 'IAP'; Gstr{i,2} = 'OH';
fIAP(i)=fIAP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.65; fDHMOB(i)=fDHMOB(i)+0.65; fHC5OO(i)=fHC5OO(i)+0.34; 

i=i+1;
Rnames{i}='VRP + OH = 0.791OH + 0.791MEK + 0.209VRO2';
k(:,i) = 8.78E-12*exp(200./T);
Gstr{i,1} = 'VRP'; Gstr{i,2} = 'OH';
fVRP(i)=fVRP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.79; fMEK(i)=fMEK(i)+0.79; fVRO2(i)=fVRO2(i)+0.20; 

i=i+1;
Rnames{i}='MRP + OH = MRO2';
k(:,i) = 1.84E-12*exp(200./T);
Gstr{i,1} = 'MRP'; Gstr{i,2} = 'OH';
fMRP(i)=fMRP(i)-1; fOH(i)=fOH(i)-1; fMRO2(i)=fMRO2(i)+1; 

i=i+1;
Rnames{i}='MRP + OH = CO2 + HAC + OH';
k(:,i) = 4.40E-12*exp(380./T);
Gstr{i,1} = 'MRP'; Gstr{i,2} = 'OH';
fMRP(i)=fMRP(i)-1; fOH(i)=fOH(i)-1;  fHAC(i)=fHAC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='MAOP + OH = MAO3';
k(:,i) = 6.13E-13*exp(200./T);
Gstr{i,1} = 'MAOP'; Gstr{i,2} = 'OH';
fMAOP(i)=fMAOP(i)-1; fOH(i)=fOH(i)-1; fMAO3(i)=fMAO3(i)+1; 

i=i+1;
Rnames{i}='MAOP + OH = MAOPO2';
k(:,i) = 3.60E-12*exp(380./T);
Gstr{i,1} = 'MAOP'; Gstr{i,2} = 'OH';
fMAOP(i)=fMAOP(i)-1; fOH(i)=fOH(i)-1; fMAOPO2(i)=fMAOPO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + MAOPO2 = HAC + 2.000CO2 + OH + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MAOPO2';
fMCO3(i)=fMCO3(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fHAC(i)=fHAC(i)+1; fCO2(i)=fCO2(i)+2.00; fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + MAOPO2 = ACTA + MEK';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MAOPO2';
fMCO3(i)=fMCO3(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fACTA(i)=fACTA(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i}='MAOPO2 + MO2 = 0.700HAC + 0.700CO2 + 0.700OH + CH2O + 0.700HO2 + 0.300ROH';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'MO2';
fMAOPO2(i)=fMAOPO2(i)-1; fMO2(i)=fMO2(i)-1; fHAC(i)=fHAC(i)+0.70; fCO2(i)=fCO2(i)+0.70; fOH(i)=fOH(i)+0.70; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+0.70; fROH(i)=fROH(i)+0.30; 

i=i+1;
Rnames{i}='MAOPO2 + MAOPO2 = 2.000HAC + 2.000CO2 + 2.000OH';
k(:,i) = 8.37E-14;
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'MAOPO2';
fMAOPO2(i)=fMAOPO2(i)-1; fMAOPO2(i)=fMAOPO2(i)-1; fHAC(i)=fHAC(i)+2.00; fCO2(i)=fCO2(i)+2.00; fOH(i)=fOH(i)+2.00; 

i=i+1;
Rnames{i}='MAOPO2 + HO2 = HAC + CO2 + 2.000OH';
k(:,i) = 2.91E-13.*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'HO2';
fMAOPO2(i)=fMAOPO2(i)-1; fHO2(i)=fHO2(i)-1; fHAC(i)=fHAC(i)+1;  fOH(i)=fOH(i)+2.00; 

i=i+1;
Rnames{i}='MAOPO2 + NO = HAC + CO2 + OH + NO2';
k(:,i) = (1.-fyrno3(4,M,T)).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'NO';
fMAOPO2(i)=fMAOPO2(i)-1; fNO(i)=fNO(i)-1; fHAC(i)=fHAC(i)+1;  fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MAOPO2 + NO = HNO3';
k(:,i) = fyrno3(4,M, T).*(2.70E-12.*exp(350./T));
Gstr{i,1} = 'MAOPO2'; Gstr{i,2} = 'NO';
fMAOPO2(i)=fMAOPO2(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='OH + MAP = MCO3';
k(:,i) = 6.13E-13.*exp(200./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MAP';
fOH(i)=fOH(i)-1; fMAP(i)=fMAP(i)-1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='C2H6 + NO3 = ETO2 + HNO3';
k(:,i) = 1.40E-18;
Gstr{i,1} = 'C2H6'; Gstr{i,2} = 'NO3';
fC2H6(i)=fC2H6(i)-1; fNO3(i)=fNO3(i)-1; fETO2(i)=fETO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='HC5 + O3 = MGLYOOA + GLYC';
k(:,i) = 1.20E-17;
Gstr{i,1} = 'HC5'; Gstr{i,2} = 'O3';
fHC5(i)=fHC5(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fGLYC(i)=fGLYC(i)+1; 

i=i+1;
Rnames{i}='HC5 + O3 = MGLY + GAOOB';
k(:,i) = 1.20E-17;
Gstr{i,1} = 'HC5'; Gstr{i,2} = 'O3';
fHC5(i)=fHC5(i)-1; fO3(i)=fO3(i)-1; fMGLY(i)=fMGLY(i)+1; fGAOOB(i)=fGAOOB(i)+1; 

i=i+1;
Rnames{i}='MCO3 + MCO3 = 2.000MO2';
k(:,i) = 2.50E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MCO3';
fMCO3(i)=fMCO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+2.00; 

i=i+1;
Rnames{i}='MCO3 + MO2 = CH2O + MO2 + HO2';
k(:,i) = 1.80E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MO2';
fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)-1; fCH2O(i)=fCH2O(i)+1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + MO2 = ACTA + CH2O';
k(:,i) = 2.00E-13*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'MO2';
fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)-1; fACTA(i)=fACTA(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='R4O2 + MCO3 = MO2 + 0.320ACET + 0.190MEK + 0.270HO2 + 0.320ALD2 + 0.130RCHO + 0.050A3O2 + 0.180B3O2 + 0.320ETO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MCO3';
fR4O2(i)=fR4O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fACET(i)=fACET(i)+0.32; fMEK(i)=fMEK(i)+0.19; fHO2(i)=fHO2(i)+0.27; fALD2(i)=fALD2(i)+0.32; fRCHO(i)=fRCHO(i)+0.13; fA3O2(i)=fA3O2(i)+0.05; fB3O2(i)=fB3O2(i)+0.18; fETO2(i)=fETO2(i)+0.32; 

i=i+1;
Rnames{i}='ATO2 + MCO3 = MO2 + MCO3 + CH2O';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MCO3';
fATO2(i)=fATO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='KO2 + MCO3 = MO2 + ALD2 + MCO3';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MCO3';
fKO2(i)=fKO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='RIO2 + MCO3 = 0.887HO2 + 0.747CH2O + 0.453MVK + 0.294MACR + 0.140HC5 + 0.113DIBOO + CO2 + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MCO3';
fRIO2(i)=fRIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.88; fCH2O(i)=fCH2O(i)+0.74; fMVK(i)=fMVK(i)+0.45; fMACR(i)=fMACR(i)+0.29; fHC5(i)=fHC5(i)+0.14; fDIBOO(i)=fDIBOO(i)+0.11;  fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='HC5OO + MCO3 = 0.216GLYX + 0.234MGLY + 0.234GLYC + 0.216HAC + 0.290DHMOB + 0.170MOBA + 0.090RCHO + HO2 + 0.090CO + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MCO3';
fHC5OO(i)=fHC5OO(i)-1; fMCO3(i)=fMCO3(i)-1; fGLYX(i)=fGLYX(i)+0.21; fMGLY(i)=fMGLY(i)+0.23; fGLYC(i)=fGLYC(i)+0.23; fHAC(i)=fHAC(i)+0.21; fDHMOB(i)=fDHMOB(i)+0.29; fMOBA(i)=fMOBA(i)+0.17; fRCHO(i)=fRCHO(i)+0.09; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.09; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='VRO2 + MCO3 = 0.400HO2 + 0.400CH2O + 0.600MCO3 + 0.600GLYC + 0.400MGLY + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MCO3';
fVRO2(i)=fVRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.40; fCH2O(i)=fCH2O(i)+0.40; fMCO3(i)=fMCO3(i)+0.60; fGLYC(i)=fGLYC(i)+0.60; fMGLY(i)=fMGLY(i)+0.40; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='MRO2 + MCO3 = 0.850HO2 + 0.143MGLY + 0.857HAC + 0.857CO + 0.143CH2O + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MCO3';
fMRO2(i)=fMRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.85; fMGLY(i)=fMGLY(i)+0.14; fHAC(i)=fHAC(i)+0.85; fCO(i)=fCO(i)+0.85; fCH2O(i)=fCH2O(i)+0.14; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='B3O2 + MCO3 = MO2 + HO2 + ACET';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MCO3';
fB3O2(i)=fB3O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i}='R4N1 + MCO3 = MO2 + NO2 + 0.390CH2O + 0.750ALD2 + 0.570RCHO + 0.300R4O2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MCO3';
fR4N1(i)=fR4N1(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.39; fALD2(i)=fALD2(i)+0.75; fRCHO(i)=fRCHO(i)+0.57; fR4O2(i)=fR4O2(i)+0.30; 

i=i+1;
Rnames{i}='MAN2 + MCO3 = 0.500PROPNN + 0.500CO + 0.500HO2 + 0.500MGLY + 0.500CH2O + 0.500NO2 + CO2 + MO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MCO3';
fMAN2(i)=fMAN2(i)-1; fMCO3(i)=fMCO3(i)-1; fPROPNN(i)=fPROPNN(i)+0.50; fCO(i)=fCO(i)+0.50; fHO2(i)=fHO2(i)+0.50; fMGLY(i)=fMGLY(i)+0.50; fCH2O(i)=fCH2O(i)+0.50; fNO2(i)=fNO2(i)+0.50;  fMO2(i)=fMO2(i)+1; 
 
i=i+1;
Rnames{i}='INO2 + MCO3 = MO2 + 0.700ISN1 + 0.800HO2 + 0.035MVK + 0.035MACR + 0.070CH2O + 0.300NO2 + 0.230HC5';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MCO3';
fINO2(i)=fINO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fISN1(i)=fISN1(i)+0.70; fHO2(i)=fHO2(i)+0.80; fMVK(i)=fMVK(i)+0.03; fMACR(i)=fMACR(i)+0.03; fCH2O(i)=fCH2O(i)+0.07; fNO2(i)=fNO2(i)+0.30; fHC5(i)=fHC5(i)+0.23; 

i=i+1;
Rnames{i}='PRN1 + MCO3 = MO2 + NO2 + CH2O + ALD2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MCO3';
fPRN1(i)=fPRN1(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='R4O2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'R4O2'; Gstr{i,2} = 'MCO3';
fR4O2(i)=fR4O2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='ATO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'ATO2'; Gstr{i,2} = 'MCO3';
fATO2(i)=fATO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='KO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'KO2'; Gstr{i,2} = 'MCO3';
fKO2(i)=fKO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='RIO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'RIO2'; Gstr{i,2} = 'MCO3';
fRIO2(i)=fRIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='HC5OO + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'MCO3';
fHC5OO(i)=fHC5OO(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='VRO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'VRO2'; Gstr{i,2} = 'MCO3';
fVRO2(i)=fVRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='MRO2 + MCO3 = MEK + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MRO2'; Gstr{i,2} = 'MCO3';
fMRO2(i)=fMRO2(i)-1; fMCO3(i)=fMCO3(i)-1; fMEK(i)=fMEK(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='R4N1 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'R4N1'; Gstr{i,2} = 'MCO3';
fR4N1(i)=fR4N1(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MAN2 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MAN2'; Gstr{i,2} = 'MCO3';
fMAN2(i)=fMAN2(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='INO2 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'INO2'; Gstr{i,2} = 'MCO3';
fINO2(i)=fINO2(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='PRN1 + MCO3 = RCHO + ACTA + NO2';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'PRN1'; Gstr{i,2} = 'MCO3';
fPRN1(i)=fPRN1(i)-1; fMCO3(i)=fMCO3(i)-1; fRCHO(i)=fRCHO(i)+1; fACTA(i)=fACTA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='B3O2 + MCO3 = ACET + ACTA';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'B3O2'; Gstr{i,2} = 'MCO3';
fB3O2(i)=fB3O2(i)-1; fMCO3(i)=fMCO3(i)-1; fACET(i)=fACET(i)+1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='MCO3 + ETO2 = MO2 + ALD2 + HO2';
k(:,i) = 1.68E-12*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'ETO2';
fMCO3(i)=fMCO3(i)-1; fETO2(i)=fETO2(i)-1; fMO2(i)=fMO2(i)+1; fALD2(i)=fALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MCO3 + ETO2 = ACTA + ALD2';
k(:,i) = 1.87E-13*exp(500./T);
Gstr{i,1} = 'MCO3'; Gstr{i,2} = 'ETO2';
fMCO3(i)=fMCO3(i)-1; fETO2(i)=fETO2(i)-1; fACTA(i)=fACTA(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='RCO3 + MCO3 = MO2 + ETO2';
k(:,i) = 2.50E-12*exp(500./T);
Gstr{i,1} = 'RCO3'; Gstr{i,2} = 'MCO3';
fRCO3(i)=fRCO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fETO2(i)=fETO2(i)+1; 

i=i+1;
Rnames{i}='MAO3 + MCO3 = MO2 + CH2O + MCO3';
k(:,i) = 2.50E-12*exp(500./T);
Gstr{i,1} = 'MAO3'; Gstr{i,2} = 'MCO3';
fMAO3(i)=fMAO3(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='NO3 + NO3 = 2.000NO2';
k(:,i) = 8.50E-13*exp(-2450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NO3';
fNO3(i)=fNO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.00;  

i=i+1;
Rnames{i}='MO2 + NO2 = MPN';
k(:,i) = K_MO2_NO2;
Gstr{i,1} = 'MO2'; Gstr{i,2} = 'NO2';
fMO2(i)=fMO2(i)-1; fNO2(i)=fNO2(i)-1; fMPN(i)=fMPN(i)+1;  

i=i+1;
Rnames{i}='MPN = MO2 + NO2';
k(:,i) = K_MPN;
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='API + OH = APIO2';
k(:,i) = 1.21E-11*exp(440./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'OH';
fAPI(i)=fAPI(i)-1; fOH(i)=fOH(i)-1; fAPIO2(i)=fAPIO2(i)+1; 

i=i+1;
Rnames{i}='APIO2 + NO = 0.070HCOOH + 0.440MEK + 0.110ACET + 0.430RCHO + 0.820HO2 + 0.820NO2 + 0.230CH2O + 0.120MONITS + 0.060MONITU';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'APIO2'; Gstr{i,2} = 'NO';
fAPIO2(i)=fAPIO2(i)-1; fNO(i)=fNO(i)-1; fHCOOH(i)=fHCOOH(i)+0.07; fMEK(i)=fMEK(i)+0.44; fACET(i)=fACET(i)+0.11; fRCHO(i)=fRCHO(i)+0.43; fHO2(i)=fHO2(i)+0.82; fNO2(i)=fNO2(i)+0.82; fCH2O(i)=fCH2O(i)+0.23; fMONITS(i)=fMONITS(i)+0.12; fMONITU(i)=fMONITU(i)+0.06; 

i=i+1;
Rnames{i}='APIO2 + HO2 = PIP';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'APIO2'; Gstr{i,2} = 'HO2';
fAPIO2(i)=fAPIO2(i)-1; fHO2(i)=fHO2(i)-1; fPIP(i)=fPIP(i)+1; 

i=i+1;
Rnames{i}='APIO2 + MO2 = HO2 + 0.750CH2O + 0.250MOH + 0.250ROH + 0.750RCHO + 0.750MEK';
k(:,i) = 3.56E-14*exp(708./T);
Gstr{i,1} = 'APIO2'; Gstr{i,2} = 'MO2';
fAPIO2(i)=fAPIO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+0.75; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fRCHO(i)=fRCHO(i)+0.75; fMEK(i)=fMEK(i)+0.75; 

i=i+1;
Rnames{i}='APIO2 + MCO3 = 0.500HO2 + 0.500MO2 + RCHO + MEK + RCOOH';
k(:,i) = 7.40E-13*exp(765./T);
Gstr{i,1} = 'APIO2'; Gstr{i,2} = 'MCO3';
fAPIO2(i)=fAPIO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; fRCHO(i)=fRCHO(i)+1; fMEK(i)=fMEK(i)+1; fRCOOH(i)=fRCOOH(i)+1; 

i=i+1;
Rnames{i}='APIO2 + NO3 = HO2 + NO2 + RCHO + MEK';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'APIO2'; Gstr{i,2} = 'NO3';
fAPIO2(i)=fAPIO2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fRCHO(i)=fRCHO(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i}='API + O3 = 0.850OH + 0.100HO2 + 0.620KO2 + 0.140CO + 0.020H2O2 + 0.650RCHO + 0.530MEK';
k(:,i) = 5.00E-16*exp(-530./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'O3';
fAPI(i)=fAPI(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+0.10; fKO2(i)=fKO2(i)+0.62; fCO(i)=fCO(i)+0.14; fH2O2(i)=fH2O2(i)+0.02; fRCHO(i)=fRCHO(i)+0.65; fMEK(i)=fMEK(i)+0.53; 

i=i+1;
Rnames{i}='API + NO3 = 0.100OLNN + 0.900OLND';
k(:,i) = 8.33E-13*exp(490./T);
Gstr{i,1} = 'API'; Gstr{i,2} = 'NO3';
fAPI(i)=fAPI(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.10; fOLND(i)=fOLND(i)+0.90; 

i=i+1;
Rnames{i}='LIM + OH = LIMO2';
k(:,i) = 4.20E-11*exp(401./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'OH';
fLIM(i)=fLIM(i)-1; fOH(i)=fOH(i)-1; fLIMO2(i)=fLIMO2(i)+1; 

i=i+1;
Rnames{i}='LIM + O3 = 0.850OH + 0.100HO2 + 0.420KO2 + 0.020H2O2 + 0.140CO + 0.460PRPE + 0.040CH2O + 0.790MACR + 0.010HCOOH + 0.070RCOOH + 0.160ETO2';
k(:,i) = 2.95E-15*exp(-783./T);
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'O3';
fLIM(i)=fLIM(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+0.85; fHO2(i)=fHO2(i)+0.10; fKO2(i)=fKO2(i)+0.42; fH2O2(i)=fH2O2(i)+0.02; fCO(i)=fCO(i)+0.14; fPRPE(i)=fPRPE(i)+0.46; fCH2O(i)=fCH2O(i)+0.04; fMACR(i)=fMACR(i)+0.79; fHCOOH(i)=fHCOOH(i)+0.01; fRCOOH(i)=fRCOOH(i)+0.07; fETO2(i)=fETO2(i)+0.16; 

i=i+1;
Rnames{i}='LIM + NO3 = 0.710OLNN + 0.290OLND';
k(:,i) = 1.22E-11;
Gstr{i,1} = 'LIM'; Gstr{i,2} = 'NO3';
fLIM(i)=fLIM(i)-1; fNO3(i)=fNO3(i)-1; fOLNN(i)=fOLNN(i)+0.71; fOLND(i)=fOLND(i)+0.29; 

i=i+1;
Rnames{i}='LIMO2 + NO = 0.686HO2 + 0.780NO2 + 0.220MONITU + 0.289PRPE + 0.231CH2O + 0.491RCHO + 0.058HAC + 0.289MEK';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'NO';
fLIMO2(i)=fLIMO2(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+0.68; fNO2(i)=fNO2(i)+0.78; fMONITU(i)=fMONITU(i)+0.22; fPRPE(i)=fPRPE(i)+0.28; fCH2O(i)=fCH2O(i)+0.23; fRCHO(i)=fRCHO(i)+0.49; fHAC(i)=fHAC(i)+0.05; fMEK(i)=fMEK(i)+0.28; 

i=i+1;
Rnames{i}='LIMO2 + HO2 = PIP';
k(:,i) = 1.50E-11;
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'HO2';
fLIMO2(i)=fLIMO2(i)-1; fHO2(i)=fHO2(i)-1; fPIP(i)=fPIP(i)+1; 

i=i+1;
Rnames{i}='LIMO2 + MO2 = HO2 + 0.192PRPE + 1.040CH2O + 0.308MACR + 0.250MOH + 0.250ROH';
k(:,i) = 3.56E-14*exp(708./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'MO2';
fLIMO2(i)=fLIMO2(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+1; fPRPE(i)=fPRPE(i)+0.19; fCH2O(i)=fCH2O(i)+1.04; fMACR(i)=fMACR(i)+0.30; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; 

i=i+1;
Rnames{i}='LIMO2 + MCO3 = 0.500HO2 + 0.500MO2 + 0.192PRPE + 0.385CH2O + 0.308MACR + 0.500RCOOH';
k(:,i) = 7.40E-13*exp(765./T);
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'MCO3';
fLIMO2(i)=fLIMO2(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+0.50; fMO2(i)=fMO2(i)+0.50; fPRPE(i)=fPRPE(i)+0.19; fCH2O(i)=fCH2O(i)+0.38; fMACR(i)=fMACR(i)+0.30; fRCOOH(i)=fRCOOH(i)+0.50; 

i=i+1;
Rnames{i}='LIMO2 + NO3 = HO2 + NO2 + 0.385PRPE + 0.385CH2O + 0.615MACR';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'LIMO2'; Gstr{i,2} = 'NO3';
fLIMO2(i)=fLIMO2(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fPRPE(i)=fPRPE(i)+0.38; fCH2O(i)=fCH2O(i)+0.38; fMACR(i)=fMACR(i)+0.61; 

i=i+1;
Rnames{i}='PIP + OH = 0.490OH + 0.440R4O2 + 0.080RCHO + 0.410MEK';
k(:,i) = 3.40E-12*exp(190./T);
Gstr{i,1} = 'PIP'; Gstr{i,2} = 'OH';
fPIP(i)=fPIP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.49; fR4O2(i)=fR4O2(i)+0.44; fRCHO(i)=fRCHO(i)+0.08; fMEK(i)=fMEK(i)+0.41; 

i=i+1;
Rnames{i}='OLNN + NO = HO2 + NO2 + MONITS';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO';
fOLNN(i)=fOLNN(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fMONITS(i)=fMONITS(i)+1; 

i=i+1;
Rnames{i}='OLND + NO = 2.000NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK';
k(:,i) = 4.00E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO';
fOLND(i)=fOLND(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+2.00; fCH2O(i)=fCH2O(i)+0.28; fRCHO(i)=fRCHO(i)+1.24; fMEK(i)=fMEK(i)+0.46; 

i=i+1;
Rnames{i}='OLNN + HO2 = 0.700MONITS + 0.300MONITU';
k(:,i) = 1.66E-13*exp(1300./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'HO2';
fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)-1; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='OLND + HO2 = 0.700MONITS + 0.300MONITU';
k(:,i) = 1.66E-13*exp(1300./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'HO2';
fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)-1; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='OLNN + MO2 = 2.000HO2 + CH2O + 0.700MONITS + 0.300MONITU';
k(:,i) = 1.60E-13*exp(708./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MO2';
fOLNN(i)=fOLNN(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+2.00; fCH2O(i)=fCH2O(i)+1; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='OLND + MO2 = 0.500HO2 + 0.500NO2 + 0.965CH2O + 0.930RCHO + 0.348MEK + 0.250MOH + 0.250ROH + 0.350MONITS + 0.150MONITU';
k(:,i) = 9.68E-14*exp(708./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MO2';
fOLND(i)=fOLND(i)-1; fMO2(i)=fMO2(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; fCH2O(i)=fCH2O(i)+0.96; fRCHO(i)=fRCHO(i)+0.93; fMEK(i)=fMEK(i)+0.34; fMOH(i)=fMOH(i)+0.25; fROH(i)=fROH(i)+0.25; fMONITS(i)=fMONITS(i)+0.35; fMONITU(i)=fMONITU(i)+0.15; 

i=i+1;
Rnames{i}='OLNN + MCO3 = HO2 + MO2 + 0.700MONITS + 0.300MONITU';
k(:,i) = 8.85E-13*exp(765./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'MCO3';
fOLNN(i)=fOLNN(i)-1; fMCO3(i)=fMCO3(i)-1; fHO2(i)=fHO2(i)+1; fMO2(i)=fMO2(i)+1; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='OLND + MCO3 = 0.500MO2 + NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK + 0.500RCOOH';
k(:,i) = 5.37E-13*exp(765./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'MCO3';
fOLND(i)=fOLND(i)-1; fMCO3(i)=fMCO3(i)-1; fMO2(i)=fMO2(i)+0.50; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.28; fRCHO(i)=fRCHO(i)+1.24; fMEK(i)=fMEK(i)+0.46; fRCOOH(i)=fRCOOH(i)+0.50; 

i=i+1;
Rnames{i}='OLNN + NO3 = HO2 + NO2 + 0.700MONITS + 0.300MONITU';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'NO3';
fOLNN(i)=fOLNN(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='OLND + NO3 = 2.000NO2 + 0.287CH2O + 1.240RCHO + 0.464MEK';
k(:,i) = 1.20E-12;
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'NO3';
fOLND(i)=fOLND(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+2.00; fCH2O(i)=fCH2O(i)+0.28; fRCHO(i)=fRCHO(i)+1.24; fMEK(i)=fMEK(i)+0.46; 

i=i+1;
Rnames{i}='OLNN + OLNN = HO2 + 1.400MONITS + 0.600MONITU';
k(:,i) = 7.00E-14*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLNN';
fOLNN(i)=fOLNN(i)-1; fOLNN(i)=fOLNN(i)-1; fHO2(i)=fHO2(i)+1; fMONITS(i)=fMONITS(i)+1.40; fMONITU(i)=fMONITU(i)+0.60; 

i=i+1;
Rnames{i}='OLNN + OLND = 0.500HO2 + 0.500NO2 + 0.202CH2O + 0.640RCHO + 0.149MEK + 1.050MONITS + 0.450MONITU';
k(:,i) = 4.25E-14*exp(1000./T);
Gstr{i,1} = 'OLNN'; Gstr{i,2} = 'OLND';
fOLNN(i)=fOLNN(i)-1; fOLND(i)=fOLND(i)-1; fHO2(i)=fHO2(i)+0.50; fNO2(i)=fNO2(i)+0.50; fCH2O(i)=fCH2O(i)+0.20; fRCHO(i)=fRCHO(i)+0.64; fMEK(i)=fMEK(i)+0.14; fMONITS(i)=fMONITS(i)+1.05; fMONITU(i)=fMONITU(i)+0.45; 

i=i+1;
Rnames{i}='OLND + OLND = NO2 + 0.504CH2O + 1.210RCHO + 0.285MEK + 0.700MONITS + 0.300MONITU';
k(:,i) = 2.96E-14*exp(1000./T);
Gstr{i,1} = 'OLND'; Gstr{i,2} = 'OLND';
fOLND(i)=fOLND(i)-1; fOLND(i)=fOLND(i)-1; fNO2(i)=fNO2(i)+1; fCH2O(i)=fCH2O(i)+0.50; fRCHO(i)=fRCHO(i)+1.21; fMEK(i)=fMEK(i)+0.28; fMONITS(i)=fMONITS(i)+0.70; fMONITU(i)=fMONITU(i)+0.30; 

i=i+1;
Rnames{i}='MONITS + OH = HONIT';
k(:,i) = 4.80E-12;
Gstr{i,1} = 'MONITS'; Gstr{i,2} = 'OH';
fMONITS(i)=fMONITS(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i}='MONITU + OH = HONIT';
k(:,i) = 7.29E-11;
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'OH';
fMONITU(i)=fMONITU(i)-1; fOH(i)=fOH(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i}='MONITU + O3 = HONIT';
k(:,i) = 1.67E-16;
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'O3';
fMONITU(i)=fMONITU(i)-1; fO3(i)=fO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i}='MONITS + NO3 = HONIT';
k(:,i) = 3.15E-13*exp(-448./T);
Gstr{i,1} = 'MONITS'; Gstr{i,2} = 'NO3';
fMONITS(i)=fMONITS(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i}='MONITU + NO3 = HONIT';
k(:,i) = 3.15E-13*exp(-448./T);
Gstr{i,1} = 'MONITU'; Gstr{i,2} = 'NO3';
fMONITU(i)=fMONITU(i)-1; fNO3(i)=fNO3(i)-1; fHONIT(i)=fHONIT(i)+1; 

i=i+1;
Rnames{i}='HONIT + OH = NO3 + HAC';
k(:,i) = K_HONIT_OH;
Gstr{i,1} = 'HONIT'; Gstr{i,2} = 'OH';
fHONIT(i)=fHONIT(i)-1; fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)+1; fHAC(i)=fHAC(i)+1; 

i=i+1;
Rnames{i}='ISOPNB + O3 = 0.305MVKN + 0.305CH2OOC + 0.195MACRN + 0.195CH2OOB + 0.305NC4OOA + 0.305CH2O + 0.195MACRNOOA + 0.195CH2O';
k(:,i) = 3.70E-19;
Gstr{i,1} = 'ISOPNB'; Gstr{i,2} = 'O3';
fISOPNB(i)=fISOPNB(i)-1; fO3(i)=fO3(i)-1; fMVKN(i)=fMVKN(i)+0.30; fCH2OOC(i)=fCH2OOC(i)+0.30; fMACRN(i)=fMACRN(i)+0.19; fCH2OOB(i)=fCH2OOB(i)+0.19; fNC4OOA(i)=fNC4OOA(i)+0.30; fCH2O(i)=fCH2O(i)+0.30; fMACRNOOA(i)=fMACRNOOA(i)+0.19; fCH2O(i)=fCH2O(i)+0.19; 

i=i+1;
Rnames{i}='ISOPND + O3 = 0.250HAC + 0.250NC2OOA + 0.250ACLOOA + 0.250ETHLN + 0.250GAOOB + 0.250PROPNN + 0.250GLYC + 0.250NC3OOA';
k(:,i) = 5.03E-17;
Gstr{i,1} = 'ISOPND'; Gstr{i,2} = 'O3';
fISOPND(i)=fISOPND(i)-1; fO3(i)=fO3(i)-1; fHAC(i)=fHAC(i)+0.25; fNC2OOA(i)=fNC2OOA(i)+0.25; fACLOOA(i)=fACLOOA(i)+0.25; fETHLN(i)=fETHLN(i)+0.25; fGAOOB(i)=fGAOOB(i)+0.25; fPROPNN(i)=fPROPNN(i)+0.25; fGLYC(i)=fGLYC(i)+0.25; fNC3OOA(i)=fNC3OOA(i)+0.25; 

%% MORE ISOPRENE OXIDATION PRODUCTS

i=i+1;
Rnames{i}='HC5 + OH = HC5OO';
k(:,i) = 3.35E-11*exp(380./T);
Gstr{i,1} = 'HC5'; Gstr{i,2} = 'OH';
fHC5(i)=fHC5(i)-1; fOH(i)=fOH(i)-1; fHC5OO(i)=fHC5OO(i)+1; 

i=i+1;
Rnames{i}='HC5OO + NO = NO2 + 0.216GLYX + 0.234MGLY + 0.234GLYC + 0.216HAC + 0.290DHMOB + 0.170MOBA + 0.090RCHO + HO2 + 0.090CO';
k(:,i) = (1-fyrno3(5,M, T)).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'NO';
fHC5OO(i)=fHC5OO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fGLYX(i)=fGLYX(i)+0.21; 
fMGLY(i)=fMGLY(i)+0.23; fGLYC(i)=fGLYC(i)+0.23; fHAC(i)=fHAC(i)+0.21; fDHMOB(i)=fDHMOB(i)+0.29; 
fMOBA(i)=fMOBA(i)+0.17; fRCHO(i)=fRCHO(i)+0.09; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.09; 

i=i+1;
Rnames{i}='HC5OO + NO = HNO3';
k(:,i) = fyrno3(5,M, T).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'NO';
fHC5OO(i)=fHC5OO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='HC5OO + HO2 = 0.100IAP + 0.900OH + 0.900MGLY + 0.900GLYC + 0.900HO2';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'HC5OO'; Gstr{i,2} = 'HO2';
fHC5OO(i)=fHC5OO(i)-1; fHO2(i)=fHO2(i)-1; fIAP(i)=fIAP(i)+0.10; fOH(i)=fOH(i)+0.90; 
fMGLY(i)=fMGLY(i)+0.90; fGLYC(i)=fGLYC(i)+0.90; fHO2(i)=fHO2(i)+0.90; 

i=i+1;
Rnames{i}='ISOPND + OH = 0.900ISOPNDO2 + 0.100IEPOX + 0.100NO2';
k(:,i) = 1.20E-11*exp(652./T);
Gstr{i,1} = 'ISOPND'; Gstr{i,2} = 'OH';
fISOPND(i)=fISOPND(i)-1; fOH(i)=fOH(i)-1; fISOPNDO2(i)=fISOPNDO2(i)+0.90; fIEPOX(i)=fIEPOX(i)+0.10; fNO2(i)=fNO2(i)+0.10; 

i=i+1;
Rnames{i}='ISOPNB + OH = 0.900ISOPNBO2 + 0.100IEPOX + 0.100NO2';
k(:,i) = 2.40E-12*exp(745./T);
Gstr{i,1} = 'ISOPNB'; Gstr{i,2} = 'OH';
fISOPNB(i)=fISOPNB(i)-1; fOH(i)=fOH(i)-1; fISOPNBO2(i)=fISOPNBO2(i)+0.90; fIEPOX(i)=fIEPOX(i)+0.10; fNO2(i)=fNO2(i)+0.10; 

i=i+1;
Rnames{i}='ISOPNDO2 + NO = 0.019MACRN + 0.057HCOOH + 0.270HAC + 0.210ETHLN + 0.150CH2O + 0.790NO2 + 0.300GLYC + 0.300PROPNN + 0.610HO2 + 0.270DHDN + 0.075MVKN + 0.057ISOPNDO2';
k(:,i) = 2.40E-12*exp(360./T);
Gstr{i,1} = 'ISOPNDO2'; Gstr{i,2} = 'NO';
fISOPNDO2(i)=fISOPNDO2(i)-1; fNO(i)=fNO(i)-1; fMACRN(i)=fMACRN(i)+0.01; fHCOOH(i)=fHCOOH(i)+0.05; 
fHAC(i)=fHAC(i)+0.27; fETHLN(i)=fETHLN(i)+0.21; fCH2O(i)=fCH2O(i)+0.15; fNO2(i)=fNO2(i)+0.79; 
fGLYC(i)=fGLYC(i)+0.30; fPROPNN(i)=fPROPNN(i)+0.30; fHO2(i)=fHO2(i)+0.61; fDHDN(i)=fDHDN(i)+0.27; 
fMVKN(i)=fMVKN(i)+0.07; fISOPNDO2(i)=fISOPNDO2(i)+0.05; 

i=i+1;
Rnames{i}='ISOPNDO2 + HO2 = 0.010MACRN + 0.200HAC + 0.200ETHLN + 0.070CH2O + 0.230GLYC + 0.230PROPNN + 0.500HO2 + 0.500OH + 0.060MVKN + 0.500ISNP';
k(:,i) = 8.70E-14*exp(1650./T);
Gstr{i,1} = 'ISOPNDO2'; Gstr{i,2} = 'HO2';
fISOPNDO2(i)=fISOPNDO2(i)-1; fHO2(i)=fHO2(i)-1; fMACRN(i)=fMACRN(i)+0.01; fHAC(i)=fHAC(i)+0.20; 
fETHLN(i)=fETHLN(i)+0.20; fCH2O(i)=fCH2O(i)+0.07; fGLYC(i)=fGLYC(i)+0.23; 
fPROPNN(i)=fPROPNN(i)+0.23; fHO2(i)=fHO2(i)+0.50; fOH(i)=fOH(i)+0.50; fMVKN(i)=fMVKN(i)+0.06; fISNP(i)=fISNP(i)+0.50; 

i=i+1;
Rnames{i}='ISOPNBO2 + NO = 0.090GLYC + 0.090HAC + 0.690CH2O + 0.440MACRN + 0.690HO2 + 0.260MVKN + 0.880NO2 + 0.210DHDN';
k(:,i) = 2.40E-12*exp(360./T);
Gstr{i,1} = 'ISOPNBO2'; Gstr{i,2} = 'NO';
fISOPNBO2(i)=fISOPNBO2(i)-1; fNO(i)=fNO(i)-1; fGLYC(i)=fGLYC(i)+0.09; fHAC(i)=fHAC(i)+0.09; 
fCH2O(i)=fCH2O(i)+0.69; fMACRN(i)=fMACRN(i)+0.44; fHO2(i)=fHO2(i)+0.69; fMVKN(i)=fMVKN(i)+0.26; 
fNO2(i)=fNO2(i)+0.88; fDHDN(i)=fDHDN(i)+0.21; 

i=i+1;
Rnames{i}='ISOPNBO2 + HO2 = 0.060GLYC + 0.060HAC + 0.440CH2O + 0.280MACRN + 0.160MVKN + 0.060NO2 + 0.440HO2 + 0.500OH + 0.500ISNP';
k(:,i) = 8.70E-14*exp(1650./T);
Gstr{i,1} = 'ISOPNBO2'; Gstr{i,2} = 'HO2';
fISOPNBO2(i)=fISOPNBO2(i)-1; fHO2(i)=fHO2(i)-1; fGLYC(i)=fGLYC(i)+0.06; fHAC(i)=fHAC(i)+0.06; 
fCH2O(i)=fCH2O(i)+0.44; fMACRN(i)=fMACRN(i)+0.28; fMVKN(i)=fMVKN(i)+0.16; fNO2(i)=fNO2(i)+0.06; 
fHO2(i)=fHO2(i)+0.44; fOH(i)=fOH(i)+0.50; fISNP(i)=fISNP(i)+0.50; 

i=i+1;
Rnames{i}='ISNP + OH = 0.612OH + 0.612R4N1 + 0.193ISOPNBO2 + 0.193ISOPNDO2';
k(:,i) = 4.75E-12*exp(200./T);
Gstr{i,1} = 'ISNP'; Gstr{i,2} = 'OH';
fISNP(i)=fISNP(i)-1; fOH(i)=fOH(i)-1; fOH(i)=fOH(i)+0.61; fR4N1(i)=fR4N1(i)+0.61; fISOPNBO2(i)=fISOPNBO2(i)+0.19; fISOPNDO2(i)=fISOPNDO2(i)+0.19; 

i=i+1;
Rnames{i}='MVKN + OH = 0.650HCOOH + NO3 + 0.650MGLY + 0.350CH2O + 0.350PYAC';
k(:,i) = 4.40E-13*exp(380./T);
Gstr{i,1} = 'MVKN'; Gstr{i,2} = 'OH';
fMVKN(i)=fMVKN(i)-1; fOH(i)=fOH(i)-1; fHCOOH(i)=fHCOOH(i)+0.65; fNO3(i)=fNO3(i)+1; fMGLY(i)=fMGLY(i)+0.65; fCH2O(i)=fCH2O(i)+0.35; fPYAC(i)=fPYAC(i)+0.35; 

i=i+1;
Rnames{i}='MACRN + OH = MACRNO2';
k(:,i) = 8.79E-13*exp(380./T);
Gstr{i,1} = 'MACRN'; Gstr{i,2} = 'OH';
fMACRN(i)=fMACRN(i)-1; fOH(i)=fOH(i)-1; fMACRNO2(i)=fMACRNO2(i)+1; 

i=i+1;
Rnames{i}='MACRNO2 + NO = 0.080ACTA + 0.080CH2O + 0.150NO3 + 0.070HCOOH + 0.070MGLY + 0.850HAC + 0.850NO2 + 0.930CO2 + NO2';
k(:,i) = 2.70E-12*exp(350./T);
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'NO';
fMACRNO2(i)=fMACRNO2(i)-1; fNO(i)=fNO(i)-1; fACTA(i)=fACTA(i)+0.08; fCH2O(i)=fCH2O(i)+0.08; fNO3(i)=fNO3(i)+0.15; fHCOOH(i)=fHCOOH(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fHAC(i)=fHAC(i)+0.85; fNO2(i)=fNO2(i)+0.85; fCO2(i)=fCO2(i)+0.93; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MACRNO2 + HO2 = 0.080ACTA + 0.080CH2O + 0.150NO3 + 0.070HCOOH + 0.070MGLY + 0.850HAC + 0.850NO2 + 0.930CO2 + OH';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'HO2';
fMACRNO2(i)=fMACRNO2(i)-1; fHO2(i)=fHO2(i)-1; fACTA(i)=fACTA(i)+0.08; fCH2O(i)=fCH2O(i)+0.08; fNO3(i)=fNO3(i)+0.15; fHCOOH(i)=fHCOOH(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fHAC(i)=fHAC(i)+0.85; fNO2(i)=fNO2(i)+0.85; fCO2(i)=fCO2(i)+0.93; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='MACRNO2 + NO2 = PMNN';
k(:,i) = K_MACRNO2_NO2;
Gstr{i,1} = 'MACRNO2'; Gstr{i,2} = 'NO2';
fMACRNO2(i)=fMACRNO2(i)-1; fNO2(i)=fNO2(i)-1; fPMNN(i)=fPMNN(i)+1; 

i=i+1;
Rnames{i}='PMNN = MACRNO2 + NO2';
k(:,i) = K_PMNN;
Gstr{i,1} = 'PMNN'; Gstr{i,2} = '';
fPMNN(i)=fPMNN(i)-1; fMACRNO2(i)=fMACRNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='DHMOB + OH = 1.500CO + HO2 + 0.500HAC + 0.500MEK';
k(:,i) = 2.52E-12*exp(410./T);
Gstr{i,1} = 'DHMOB'; Gstr{i,2} = 'OH';
fDHMOB(i)=fDHMOB(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1.50; fHO2(i)=fHO2(i)+1; fHAC(i)=fHAC(i)+0.50; fMEK(i)=fMEK(i)+0.50; 

i=i+1;
Rnames{i}='DIBOO + NO = HO2 + NO2 + 0.520GLYC + 0.520MGLY + 0.480HAC + 0.480GLYX';
k(:,i) = (1-fyrno3(5,M, T)).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'NO';
fDIBOO(i)=fDIBOO(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fGLYC(i)=fGLYC(i)+0.52; fMGLY(i)=fMGLY(i)+0.52; fHAC(i)=fHAC(i)+0.48; fGLYX(i)=fGLYX(i)+0.48; 

i=i+1;
Rnames{i}='DIBOO + NO = HNO3';
k(:,i) = fyrno3(5,M, T).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'NO';
fDIBOO(i)=fDIBOO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='DIBOO + HO2 = 0.150HO2 + 0.150OH + 0.078GLYC + 0.078MGLY + 0.072HAC + 0.072GLYX + 0.850R4P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(5.);
Gstr{i,1} = 'DIBOO'; Gstr{i,2} = 'HO2';
fDIBOO(i)=fDIBOO(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+0.15; fOH(i)=fOH(i)+0.15; fGLYC(i)=fGLYC(i)+0.07; fMGLY(i)=fMGLY(i)+0.07; fHAC(i)=fHAC(i)+0.07; fGLYX(i)=fGLYX(i)+0.07; fR4P(i)=fR4P(i)+0.85; 

i=i+1;
Rnames{i}='MOBA + OH = MOBAOO';
k(:,i) = 2.79E-11*exp(380./T);
Gstr{i,1} = 'MOBA'; Gstr{i,2} = 'OH';
fMOBA(i)=fMOBA(i)-1; fOH(i)=fOH(i)-1; fMOBAOO(i)=fMOBAOO(i)+1; 

i=i+1;
Rnames{i}='MOBAOO + NO = RCHO + CO2 + HO2 + NO2';
k(:,i) = (1-fyrno3(5,M, T)).*(2.70E-12*exp(350./T));
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'NO';
fMOBAOO(i)=fMOBAOO(i)-1; fNO(i)=fNO(i)-1; fRCHO(i)=fRCHO(i)+1;  fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MOBAOO + NO = HNO3';
k(:,i) = fyrno3(5,M, T).*(2.70E-12.*exp(350./T));
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'NO';
fMOBAOO(i)=fMOBAOO(i)-1; fNO(i)=fNO(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i}='MOBAOO + HO2 = 0.500OH + 0.500HO2 + 0.500RCHO + 0.500CO2 + 0.500R4P';
k(:,i) = 2.91E-13*exp(1300./T)* fcro2ho2(4.);
Gstr{i,1} = 'MOBAOO'; Gstr{i,2} = 'HO2';
fMOBAOO(i)=fMOBAOO(i)-1; fHO2(i)=fHO2(i)-1; fOH(i)=fOH(i)+0.50; fHO2(i)=fHO2(i)+0.50; fRCHO(i)=fRCHO(i)+0.50; fCO2(i)=fCO2(i)+0.50; fR4P(i)=fR4P(i)+0.50; 

i=i+1;
Rnames{i}='MOBA + O3 = OH + HO2 + CO2 + MEK';
k(:,i) = 2.00E-17;
Gstr{i,1} = 'MOBA'; Gstr{i,2} = 'O3';
fMOBA(i)=fMOBA(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1;  fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i}='ETHLN + OH = CH2O + CO2 + NO2';
k(:,i) = 2.40E-12;
Gstr{i,1} = 'ETHLN'; Gstr{i,2} = 'OH';
fETHLN(i)=fETHLN(i)-1; fOH(i)=fOH(i)-1; fCH2O(i)=fCH2O(i)+1;  fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='PROPNN + OH = NO2 + MGLY';
k(:,i) = 6.70E-13;
Gstr{i,1} = 'PROPNN'; Gstr{i,2} = 'OH';
fPROPNN(i)=fPROPNN(i)-1; fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

%% SULFUR
i=i+1;
Rnames{i}='DMS + OH = SO2 + MO2 + CH2O';
k(:,i) = 1.20E-11*exp(-280./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH';
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)+1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='DMS + OH = 0.750SO2 + 0.250MSA + MO2';
k(:,i) = K_DMS_OH;
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'OH';
fDMS(i)=fDMS(i)-1; fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)+0.75; fMSA(i)=fMSA(i)+0.25; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='DMS + NO3 = SO2 + HNO3 + MO2 + CH2O';
k(:,i) = 1.90E-13*exp(530./T);
Gstr{i,1} = 'DMS'; Gstr{i,2} = 'NO3';
fDMS(i)=fDMS(i)-1; fNO3(i)=fNO3(i)-1; fSO2(i)=fSO2(i)+1; fHNO3(i)=fHNO3(i)+1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='SO2 + OH = SO4 + HO2';
k(:,i) = K_SO2_OH;
Gstr{i,1} = 'SO2'; Gstr{i,2} = 'OH';
fSO2(i)=fSO2(i)-1; fOH(i)=fOH(i)-1; fSO4(i)=fSO4(i)+1; fHO2(i)=fHO2(i)+1; 

%% BROMINE
i=i+1;
Rnames{i}='Br + O3 = BrO';
k(:,i) = 1.70E-11*exp(-800./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'O3';
fBr(i)=fBr(i)-1; fO3(i)=fO3(i)-1; fBrO(i)=fBrO(i)+1;

i=i+1;
Rnames{i}='BrO + HO2 = HOBr';
k(:,i) = 4.50E-12*exp(460./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'HO2';
fBrO(i)=fBrO(i)-1; fHO2(i)=fHO2(i)-1; fHOBr(i)=fHOBr(i)+1;  

i=i+1;
Rnames{i}='Br + HO2 = HBr';
k(:,i) = 4.80E-12*exp(-310./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'HO2';
fBr(i)=fBr(i)-1; fHO2(i)=fHO2(i)-1; fHBr(i)=fHBr(i)+1;  

i=i+1;
Rnames{i}='HBr + OH = Br + H2O';
k(:,i) = 5.50E-12*exp(200./T);
Gstr{i,1} = 'HBr'; Gstr{i,2} = 'OH';
fHBr(i)=fHBr(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1;  

i=i+1;
Rnames{i}='BrO + BrO = 2.000Br';
k(:,i) = 2.40E-12*exp(40./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO';
fBrO(i)=fBrO(i)-1; fBrO(i)=fBrO(i)-1; fBr(i)=fBr(i)+2.00;  

i=i+1;
Rnames{i}='BrO + BrO = Br2';
k(:,i) = 2.80E-14*exp(860./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'BrO';
fBrO(i)=fBrO(i)-1; fBrO(i)=fBrO(i)-1; fBr2(i)=fBr2(i)+1;  

i=i+1;
Rnames{i}='BrO + NO = Br + NO2';
k(:,i) = 8.80E-12*exp(260./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO';
fBrO(i)=fBrO(i)-1; fNO(i)=fNO(i)-1; fBr(i)=fBr(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='Br + BrNO3 = Br2 + NO3';
k(:,i) = 4.90E-11;
Gstr{i,1} = 'Br'; Gstr{i,2} = 'BrNO3';
fBr(i)=fBr(i)-1; fBrNO3(i)=fBrNO3(i)-1; fBr2(i)=fBr2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='Br2 + OH = HOBr + Br';
k(:,i) = 2.10E-11*exp(240./T);
Gstr{i,1} = 'Br2'; Gstr{i,2} = 'OH';
fBr2(i)=fBr2(i)-1; fOH(i)=fOH(i)-1; fHOBr(i)=fHOBr(i)+1; fBr(i)=fBr(i)+1; 

i=i+1;
Rnames{i}='BrO + OH = Br + HO2';
k(:,i) = 1.70E-11*exp(250./T);
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'OH';
fBrO(i)=fBrO(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='Br + NO3 = BrO + NO2';
k(:,i) = 1.60E-11;
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO3';
fBr(i)=fBr(i)-1; fNO3(i)=fNO3(i)-1; fBrO(i)=fBrO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='Br + CH2O = HBr + HO2 + CO';
k(:,i) = 1.70E-11*exp(-800./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'CH2O';
fBr(i)=fBr(i)-1; fCH2O(i)=fCH2O(i)-1; fHBr(i)=fHBr(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='Br + ALD2 = HBr + MCO3 + CO';
k(:,i) = 1.30E-11*exp(-360./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'ALD2';
fBr(i)=fBr(i)-1; fALD2(i)=fALD2(i)-1; fHBr(i)=fHBr(i)+1; fMCO3(i)=fMCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='Br + ACET = HBr + ATO2 + CO';
k(:,i) = 1.66E-10*exp(-7000./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'ACET';
fBr(i)=fBr(i)-1; fACET(i)=fACET(i)-1; fHBr(i)=fHBr(i)+1; fATO2(i)=fATO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='Br + C2H6 = HBr + ETO2 + CO';
k(:,i) = 2.36E-10*exp(-6411./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C2H6';
fBr(i)=fBr(i)-1; fC2H6(i)=fC2H6(i)-1; fHBr(i)=fHBr(i)+1; fETO2(i)=fETO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='Br + C3H8 = HBr + A3O2 + CO';
k(:,i) = 8.77E-11*exp(-4330./T);
Gstr{i,1} = 'Br'; Gstr{i,2} = 'C3H8';
fBr(i)=fBr(i)-1; fC3H8(i)=fC3H8(i)-1; fHBr(i)=fHBr(i)+1; fA3O2(i)=fA3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='Br + NO2 = BrNO2';
k(:,i) = K_Br_NO2;
Gstr{i,1} = 'Br'; Gstr{i,2} = 'NO2';
fBr(i)=fBr(i)-1; fNO2(i)=fNO2(i)-1; fBrNO2(i)=fBrNO2(i)+1; 

i=i+1;
Rnames{i}='BrO + NO2 = BrNO3';
k(:,i) = K_BrO_NO2;
Gstr{i,1} = 'BrO'; Gstr{i,2} = 'NO2';
fBrO(i)=fBrO(i)-1; fNO2(i)=fNO2(i)-1; fBrNO3(i)=fBrNO3(i)+1; 

i=i+1;
Rnames{i}='CHBr3 + OH = 3.000Br';
k(:,i) = 1.35E-12*exp(-600./T);
Gstr{i,1} = 'CHBr3'; Gstr{i,2} = 'OH';
fCHBr3(i)=fCHBr3(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+3.00; 

i=i+1;
Rnames{i}='CH2Br2 + OH = 2.000Br';
k(:,i) = 2.00E-12*exp(-840./T);
Gstr{i,1} = 'CH2Br2'; Gstr{i,2} = 'OH';
fCH2Br2(i)=fCH2Br2(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+2.00; 

i=i+1;
Rnames{i}='CH3Br + OH = Br';
k(:,i) = 2.35E-12*exp(-1300./T);
Gstr{i,1} = 'CH3Br'; Gstr{i,2} = 'OH';
fCH3Br(i)=fCH3Br(i)-1; fOH(i)=fOH(i)-1; fBr(i)=fBr(i)+1; 

%% CRIEGEE RADICALS

i=i+1;
Rnames{i}='ACLOOA = ACLOO';
k(:,i) = 1.10E5;
Gstr{i,1} = 'ACLOOA'; Gstr{i,2} = '';
fACLOOA(i)=fACLOOA(i)-1; fACLOO(i)=fACLOO(i)+1; 

i=i+1;
Rnames{i}='ACLOOA = OH + HO2 + MGLY';
k(:,i) = 8.90E5;
Gstr{i,1} = 'ACLOOA'; Gstr{i,2} = '';
fACLOOA(i)=fACLOOA(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i}='CH2OOA = CH2OO';
k(:,i) = 3.70E5;
Gstr{i,1} = 'CH2OOA'; Gstr{i,2} = '';
fCH2OOA(i)=fCH2OOA(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i}='CH2OOA = CO';
k(:,i) = 5.00E5;
Gstr{i,1} = 'CH2OOA'; Gstr{i,2} = '';
fCH2OOA(i)=fCH2OOA(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='CH2OOA = HO2 + CO + OH';
k(:,i) = 1.30E5;
Gstr{i,1} = 'CH2OOA'; Gstr{i,2} = '';
fCH2OOA(i)=fCH2OOA(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='CH2OOB = CH2OO';
k(:,i) = 2.40E+05;
Gstr{i,1} = 'CH2OOB'; Gstr{i,2} = '';
fCH2OOB(i)=fCH2OOB(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i}='CH2OOB = CO';
k(:,i) = 4.00E5;
Gstr{i,1} = 'CH2OOB'; Gstr{i,2} = '';
fCH2OOB(i)=fCH2OOB(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='CH2OOB = HO2 + CO + OH';
k(:,i) = 3.60E5;
Gstr{i,1} = 'CH2OOB'; Gstr{i,2} = '';
fCH2OOB(i)=fCH2OOB(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='CH2OOC = CH2OO';
k(:,i) = 1.80E5;
Gstr{i,1} = 'CH2OOC'; Gstr{i,2} = '';
fCH2OOC(i)=fCH2OOC(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i}='CH2OOC = HO2 + CO + OH';
k(:,i) = 8.20E5;
Gstr{i,1} = 'CH2OOC'; Gstr{i,2} = '';
fCH2OOC(i)=fCH2OOC(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='CH3CHOOA = CH3CHOO';
k(:,i) = 2.40E5;
Gstr{i,1} = 'CH3CHOOA'; Gstr{i,2} = '';
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3CHOO(i)=fCH3CHOO(i)+1; 

i=i+1;
Rnames{i}='CH3CHOOA = MO2 + CO + OH';
k(:,i) = 3.60E5;
Gstr{i,1} = 'CH3CHOOA'; Gstr{i,2} = '';
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fMO2(i)=fMO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='CH3CHOOA = MO2 + HO2';
k(:,i) = 2.00E5;
Gstr{i,1} = 'CH3CHOOA'; Gstr{i,2} = '';
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fMO2(i)=fMO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='CH3CHOOA = CH4';
k(:,i) = 2.00E5;
Gstr{i,1} = 'CH3CHOOA'; Gstr{i,2} = '';
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH4(i)=fCH4(i)+1; 

i=i+1;
Rnames{i}='GAOOB = GAOO';
k(:,i) = 1.10E5;
Gstr{i,1} = 'GAOOB'; Gstr{i,2} = '';
fGAOOB(i)=fGAOOB(i)-1; fGAOO(i)=fGAOO(i)+1; 

i=i+1;
Rnames{i}='GAOOB = OH + HO2 + CO + CH2O';
k(:,i) = 8.90E5;
Gstr{i,1} = 'GAOOB'; Gstr{i,2} = '';
fGAOOB(i)=fGAOOB(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='MACROOA = PRPE';
k(:,i) = 2.55E5;
Gstr{i,1} = 'MACROOA'; Gstr{i,2} = '';
fMACROOA(i)=fMACROOA(i)-1; fPRPE(i)=fPRPE(i)+1; 

i=i+1;
Rnames{i}='MACROOA = MCO3 + CH2O + HO2';
k(:,i) = 2.55E5;
Gstr{i,1} = 'MACROOA'; Gstr{i,2} = '';
fMACROOA(i)=fMACROOA(i)-1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MACROOA = MACROO';
k(:,i) = 2.20E5;
Gstr{i,1} = 'MACROOA'; Gstr{i,2} = '';
fMACROOA(i)=fMACROOA(i)-1; fMACROO(i)=fMACROO(i)+1; 

i=i+1;
Rnames{i}='MACROOA = OH + CO + MCO3 + CH2O';
k(:,i) = 2.70E5;
Gstr{i,1} = 'MACROOA'; Gstr{i,2} = '';
fMACROOA(i)=fMACROOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='MACRNOOA = HAC + NO2 + CO + OH';
k(:,i) = 3.60E5;
Gstr{i,1} = 'MACRNOOA'; Gstr{i,2} = '';
fMACRNOOA(i)=fMACRNOOA(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='MACRNOOA = HAC + NO2 + HO2';
k(:,i) = 2.00E5;
Gstr{i,1} = 'MACRNOOA'; Gstr{i,2} = '';
fMACRNOOA(i)=fMACRNOOA(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MACRNOOA = MACRNOO';
k(:,i) = 2.40E5;
Gstr{i,1} = 'MACRNOOA'; Gstr{i,2} = '';
fMACRNOOA(i)=fMACRNOOA(i)-1; fMACRNOO(i)=fMACRNOO(i)+1; 

i=i+1;
Rnames{i}='MACRNOOA = HAC + NO2';
k(:,i) = 2.00E5;
Gstr{i,1} = 'MACRNOOA'; Gstr{i,2} = '';
fMACRNOOA(i)=fMACRNOOA(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MVKOOA = PRPE';
k(:,i) = 2.55E5;
Gstr{i,1} = 'MVKOOA'; Gstr{i,2} = '';
fMVKOOA(i)=fMVKOOA(i)-1; fPRPE(i)=fPRPE(i)+1; 

i=i+1;
Rnames{i}='MVKOOA = MO2 + CH2O + CO + HO2';
k(:,i) = 2.55E5;
Gstr{i,1} = 'MVKOOA'; Gstr{i,2} = '';
fMVKOOA(i)=fMVKOOA(i)-1; fMO2(i)=fMO2(i)+1; fCH2O(i)=fCH2O(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MVKOOA = MVKOO';
k(:,i) = 2.20E5;
Gstr{i,1} = 'MVKOOA'; Gstr{i,2} = '';
fMVKOOA(i)=fMVKOOA(i)-1; fMVKOO(i)=fMVKOO(i)+1; 

i=i+1;
Rnames{i}='MVKOOA = OH + VRO2';
k(:,i) = 2.70E5;
Gstr{i,1} = 'MVKOOA'; Gstr{i,2} = '';
fMVKOOA(i)=fMVKOOA(i)-1; fOH(i)=fOH(i)+1; fVRO2(i)=fVRO2(i)+1; 

i=i+1;
Rnames{i}='MGLYOOA = MGLYOO';
k(:,i) = 1.10E5;
Gstr{i,1} = 'MGLYOOA'; Gstr{i,2} = '';
fMGLYOOA(i)=fMGLYOOA(i)-1; fMGLYOO(i)=fMGLYOO(i)+1; 

i=i+1;
Rnames{i}='MGLYOOA = OH + CO + MCO3';
k(:,i) = 8.90E5;
Gstr{i,1} = 'MGLYOOA'; Gstr{i,2} = '';
fMGLYOOA(i)=fMGLYOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='MGLYOOB = MGLYOO';
k(:,i) = 1.80E5;
Gstr{i,1} = 'MGLYOOB'; Gstr{i,2} = '';
fMGLYOOB(i)=fMGLYOOB(i)-1; fMGLYOO(i)=fMGLYOO(i)+1; 

i=i+1;
Rnames{i}='MGLYOOB = OH + CO + MCO3';
k(:,i) = 8.20E5;
Gstr{i,1} = 'MGLYOOB'; Gstr{i,2} = '';
fMGLYOOB(i)=fMGLYOOB(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='MGLOOA = ALD2';
k(:,i) = 2.00E5;
Gstr{i,1} = 'MGLOOA'; Gstr{i,2} = '';
fMGLOOA(i)=fMGLOOA(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='MGLOOA = MCO3 + CH2O + HO2';
k(:,i) = 2.00E5;
Gstr{i,1} = 'MGLOOA'; Gstr{i,2} = '';
fMGLOOA(i)=fMGLOOA(i)-1; fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MGLOOA = MGLOO';
k(:,i) = 2.40E5;
Gstr{i,1} = 'MGLOOA'; Gstr{i,2} = '';
fMGLOOA(i)=fMGLOOA(i)-1; fMGLOO(i)=fMGLOO(i)+1; 

i=i+1;
Rnames{i}='MGLOOA = OH + CO + MCO3';
k(:,i) = 3.60E5;
Gstr{i,1} = 'MGLOOA'; Gstr{i,2} = '';
fMGLOOA(i)=fMGLOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='NC2OOA = NC2OO';
k(:,i) = 1.10E5;
Gstr{i,1} = 'NC2OOA'; Gstr{i,2} = '';
fNC2OOA(i)=fNC2OOA(i)-1; fNC2OO(i)=fNC2OO(i)+1; 

i=i+1;
Rnames{i}='NC2OOA = OH + NO2 + GLYX';
k(:,i) = 8.90E+05;
Gstr{i,1} = 'NC2OOA'; Gstr{i,2} = '';
fNC2OOA(i)=fNC2OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fGLYX(i)=fGLYX(i)+1; 

i=i+1;
Rnames{i}='NC3OOA = NC3OO';
k(:,i) = 1.10E+05;
Gstr{i,1} = 'NC3OOA'; Gstr{i,2} = '';
fNC3OOA(i)=fNC3OOA(i)-1; fNC3OO(i)=fNC3OO(i)+1; 

i=i+1;
Rnames{i}='NC3OOA = OH + NO2 + MGLY';
k(:,i) = 8.90E+05;
Gstr{i,1} = 'NC3OOA'; Gstr{i,2} = '';
fNC3OOA(i)=fNC3OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i}='NC4OOA = NC4OO';
k(:,i) = 1.80E+05;
Gstr{i,1} = 'NC4OOA'; Gstr{i,2} = '';
fNC4OOA(i)=fNC4OOA(i)-1; fNC4OO(i)=fNC4OO(i)+1; 

i=i+1;
Rnames{i}='NC4OOA = OH + NO2 + GLYC + ALD2';
k(:,i) = 8.20E+05;
Gstr{i,1} = 'NC4OOA'; Gstr{i,2} = '';
fNC4OOA(i)=fNC4OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fGLYC(i)=fGLYC(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='ACLOO + CO = HAC';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'CO';
fACLOO(i)=fACLOO(i)-1; fCO(i)=fCO(i)-1; fHAC(i)=fHAC(i)+1; 

i=i+1;
Rnames{i}='ACLOO + NO = HAC + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO';
fACLOO(i)=fACLOO(i)-1; fNO(i)=fNO(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='ACLOO + NO2 = HAC + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO2';
fACLOO(i)=fACLOO(i)-1; fNO2(i)=fNO2(i)-1; fHAC(i)=fHAC(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='ACLOO + SO2 = HAC + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'SO2';
fACLOO(i)=fACLOO(i)-1; fSO2(i)=fSO2(i)-1; fHAC(i)=fHAC(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='ACLOO = HAC + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = '';
fACLOO(i)=fACLOO(i)-1; fHAC(i)=fHAC(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='CH2OO + CO = CH2O';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO';
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='CH2OO + NO = CH2O + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO';
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='CH2OO + NO2 = CH2O + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2';
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fCH2O(i)=fCH2O(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='CH2OO + SO2 = CH2O + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2';
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fCH2O(i)=fCH2O(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='CH2OO = HCOOH';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = '';
fCH2OO(i)=fCH2OO(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i}='CH2OO + CH2OO = 2.000CH2O';
k(:,i) = 6.0E-11;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CH2OO';
fCH2OO(i)=fCH2OO(i)-1; fCH2OO(i)=fCH2OO(i)-1; fCH2O(i)=fCH2O(i)+2.00; 

i=i+1;
Rnames{i}='CH3CHOO + CO = ALD2';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'CO';
fCH3CHOO(i)=fCH3CHOO(i)-1; fCO(i)=fCO(i)-1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='CH3CHOO + NO = ALD2 + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO';
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO(i)=fNO(i)-1; fALD2(i)=fALD2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='CH3CHOO + NO2 = ALD2 + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO2';
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO2(i)=fNO2(i)-1; fALD2(i)=fALD2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='CH3CHOO + SO2 = ALD2 + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'SO2';
fCH3CHOO(i)=fCH3CHOO(i)-1; fSO2(i)=fSO2(i)-1; fALD2(i)=fALD2(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='CH3CHOO = ALD2 + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = '';
fCH3CHOO(i)=fCH3CHOO(i)-1; fALD2(i)=fALD2(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='CH3CHOO = ACTA';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = '';
fCH3CHOO(i)=fCH3CHOO(i)-1; fACTA(i)=fACTA(i)+1; 

i=i+1;
Rnames{i}='GAOO + CO = GLYC';
k(:,i) = 1.20E-15*H2O;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'CO';
fGAOO(i)=fGAOO(i)-1; fCO(i)=fCO(i)-1; fGLYC(i)=fGLYC(i)+1; 

i=i+1;
Rnames{i}='GAOO + NO = GLYC + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO';
fGAOO(i)=fGAOO(i)-1; fNO(i)=fNO(i)-1; fGLYC(i)=fGLYC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='GAOO + NO2 = GLYC + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO2';
fGAOO(i)=fGAOO(i)-1; fNO2(i)=fNO2(i)-1; fGLYC(i)=fGLYC(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='GAOO + SO2 = GLYC + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'SO2';
fGAOO(i)=fGAOO(i)-1; fSO2(i)=fSO2(i)-1; fGLYC(i)=fGLYC(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='GAOO = GLYC + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = '';
fGAOO(i)=fGAOO(i)-1; fGLYC(i)=fGLYC(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='GAOO = HAC';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = '';
fGAOO(i)=fGAOO(i)-1; fHAC(i)=fHAC(i)+1; 

i=i+1;
Rnames{i}='MACROO + CO = MACR';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'CO';
fMACROO(i)=fMACROO(i)-1; fCO(i)=fCO(i)-1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i}='MACROO + NO = MACR + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO';
fMACROO(i)=fMACROO(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MACROO + NO2 = MACR + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO2';
fMACROO(i)=fMACROO(i)-1; fNO2(i)=fNO2(i)-1; fMACR(i)=fMACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='MACROO + SO2 = MACR + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'SO2';
fMACROO(i)=fMACROO(i)-1; fSO2(i)=fSO2(i)-1; fMACR(i)=fMACR(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='MACROO = MRP';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = '';
fMACROO(i)=fMACROO(i)-1; fMRP(i)=fMRP(i)+1; 

i=i+1;
Rnames{i}='MACROO = MACR + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = '';
fMACROO(i)=fMACROO(i)-1; fMACR(i)=fMACR(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='MACRNOO + CO = MACRN';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'CO';
fMACRNOO(i)=fMACRNOO(i)-1; fCO(i)=fCO(i)-1; fMACRN(i)=fMACRN(i)+1; 

i=i+1;
Rnames{i}='MACRNOO + NO = MACRN + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO';
fMACRNOO(i)=fMACRNOO(i)-1; fNO(i)=fNO(i)-1; fMACRN(i)=fMACRN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MACRNOO + NO2 = MACRN + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO2';
fMACRNOO(i)=fMACRNOO(i)-1; fNO2(i)=fNO2(i)-1; fMACRN(i)=fMACRN(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='MACRNOO + SO2 = MACRN + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'SO2';
fMACRNOO(i)=fMACRNOO(i)-1; fSO2(i)=fSO2(i)-1; fMACRN(i)=fMACRN(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='MACRNOO = HAC + NO2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = '';
fMACRNOO(i)=fMACRNOO(i)-1; fHAC(i)=fHAC(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MACRNOO = MACRN + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = '';
fMACRNOO(i)=fMACRNOO(i)-1; fMACRN(i)=fMACRN(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='MVKOO + CO = MVK';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'CO';
fMVKOO(i)=fMVKOO(i)-1; fCO(i)=fCO(i)-1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i}='MVKOO + NO = MVK + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO';
fMVKOO(i)=fMVKOO(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MVKOO + NO2 = MVK + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO2';
fMVKOO(i)=fMVKOO(i)-1; fNO2(i)=fNO2(i)-1; fMVK(i)=fMVK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='MVKOO + SO2 = MVK + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'SO2';
fMVKOO(i)=fMVKOO(i)-1; fSO2(i)=fSO2(i)-1; fMVK(i)=fMVK(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='MVKOO = MVK + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = '';
fMVKOO(i)=fMVKOO(i)-1; fMVK(i)=fMVK(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='MGLOO + CO = MGLY';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'CO';
fMGLOO(i)=fMGLOO(i)-1; fCO(i)=fCO(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i}='MGLOO + NO = MGLY + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO';
fMGLOO(i)=fMGLOO(i)-1; fNO(i)=fNO(i)-1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MGLOO + NO2 = MGLY + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO2';
fMGLOO(i)=fMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLY(i)=fMGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='MGLOO + SO2 = MGLY + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'SO2';
fMGLOO(i)=fMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLY(i)=fMGLY(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='MGLOO = MCO3 + MO2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = '';
fMGLOO(i)=fMGLOO(i)-1; fMCO3(i)=fMCO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='MGLOO = MGLY + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = '';
fMGLOO(i)=fMGLOO(i)-1; fMGLY(i)=fMGLY(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='MGLYOO + CO = MGLY';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'CO';
fMGLYOO(i)=fMGLYOO(i)-1; fCO(i)=fCO(i)-1; fMGLY(i)=fMGLY(i)+1; 

i=i+1;
Rnames{i}='MGLYOO + NO = MGLY + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO';
fMGLYOO(i)=fMGLYOO(i)-1; fNO(i)=fNO(i)-1; fMGLY(i)=fMGLY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='MGLYOO + NO2 = MGLY + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO2';
fMGLYOO(i)=fMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLY(i)=fMGLY(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='MGLYOO + SO2 = MGLY + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'SO2';
fMGLYOO(i)=fMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLY(i)=fMGLY(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='MGLYOO = MGLY + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = '';
fMGLYOO(i)=fMGLYOO(i)-1; fMGLY(i)=fMGLY(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='NC2OO + CO = ETHLN';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'CO';
fNC2OO(i)=fNC2OO(i)-1; fCO(i)=fCO(i)-1; fETHLN(i)=fETHLN(i)+1; 

i=i+1;
Rnames{i}='NC2OO + NO = ETHLN + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO';
fNC2OO(i)=fNC2OO(i)-1; fNO(i)=fNO(i)-1; fETHLN(i)=fETHLN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='NC2OO + NO2 = ETHLN + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO2';
fNC2OO(i)=fNC2OO(i)-1; fNO2(i)=fNO2(i)-1; fETHLN(i)=fETHLN(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='NC2OO + SO2 = ETHLN + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'SO2';
fNC2OO(i)=fNC2OO(i)-1; fSO2(i)=fSO2(i)-1; fETHLN(i)=fETHLN(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='NC2OO = ETHLN + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = '';
fNC2OO(i)=fNC2OO(i)-1; fETHLN(i)=fETHLN(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='NC2OO = CH2O + NO2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = '';
fNC2OO(i)=fNC2OO(i)-1; fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='NC3OO + CO = PROPNN';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'CO';
fNC3OO(i)=fNC3OO(i)-1; fCO(i)=fCO(i)-1; fPROPNN(i)=fPROPNN(i)+1; 

i=i+1;
Rnames{i}='NC3OO + NO = PROPNN + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO';
fNC3OO(i)=fNC3OO(i)-1; fNO(i)=fNO(i)-1; fPROPNN(i)=fPROPNN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='NC3OO + NO2 = PROPNN + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO2';
fNC3OO(i)=fNC3OO(i)-1; fNO2(i)=fNO2(i)-1; fPROPNN(i)=fPROPNN(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='NC3OO + SO2 = PROPNN + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'SO2';
fNC3OO(i)=fNC3OO(i)-1; fSO2(i)=fSO2(i)-1; fPROPNN(i)=fPROPNN(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='NC3OO = PROPNN + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = '';
fNC3OO(i)=fNC3OO(i)-1; fPROPNN(i)=fPROPNN(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i}='NC4OO + CO = MVKN';
k(:,i) = 1.20E-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'CO';
fNC4OO(i)=fNC4OO(i)-1; fCO(i)=fCO(i)-1; fMVKN(i)=fMVKN(i)+1; 

i=i+1;
Rnames{i}='NC4OO + NO = MVKN + NO2';
k(:,i) = 1.00E-14;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO';
fNC4OO(i)=fNC4OO(i)-1; fNO(i)=fNO(i)-1; fMVKN(i)=fMVKN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='NC4OO + NO2 = MVKN + NO3';
k(:,i) = 1.00E-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO2';
fNC4OO(i)=fNC4OO(i)-1; fNO2(i)=fNO2(i)-1; fMVKN(i)=fMVKN(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='NC4OO + SO2 = MVKN + SO4';
k(:,i) = 3.90E-11;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'SO2';
fNC4OO(i)=fNC4OO(i)-1; fSO2(i)=fSO2(i)-1; fMVKN(i)=fMVKN(i)+1; fSO4(i)=fSO4(i)+1; 

i=i+1;
Rnames{i}='NC4OO = MVKN + H2O2';
k(:,i) = 1.00E-18*H2O;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = '';
fNC4OO(i)=fNC4OO(i)-1; fMVKN(i)=fMVKN(i)+1; fH2O2(i)=fH2O2(i)+1; 

%% PHOTOLYSIS
% ------ INORGANICS ------
[fO1D_H2O,fO1D_H2] = O1DReactionFraction(T,M,H2O); %GC assumes O1D steady-state

i=i+1;
Rnames{i}='O3 + hv = OH + OH';
k(:,i) = JO1D.*fO1D_H2O;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1;  fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 
 
i=i+1;
Rnames{i}='O3 + hv = HO2 + OH';
k(:,i) = JO1D.*fO1D_H2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1;  fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 
   
i=i+1;
Rnames{i}='NO2 + hv = NO + O3';
k(:,i) = JNO2;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1;  fNO(i)=fNO(i)+1; fO3(i)=fO3(i)+1; 
 
i=i+1;
Rnames{i}='H2O2 + hv = OH + OH';
k(:,i) = JH2O2;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1;  fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 
 
i=i+1;
Rnames{i}='MP + hv = CH2O + HO2 + OH';
k(:,i) = JMP;
Gstr{i,1} = 'MP'; 
fMP(i)=fMP(i)-1;  fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 
   
i=i+1;
Rnames{i}='CH2O + hv = HO2 + HO2 + CO';
k(:,i) = JHCHO_HO2;
Gstr{i,1} = 'CH2O'; 
fCH2O(i)=fCH2O(i)-1;  fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 
 
i=i+1;
Rnames{i}='CH2O + hv = H2 + CO';
k(:,i) = JHCHO_H2;
Gstr{i,1} = 'CH2O'; 
fCH2O(i)=fCH2O(i)-1;  fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 
   
i=i+1;
Rnames{i}='HNO3 + hv = OH + NO2';
k(:,i) = JHNO3;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1;  fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 
  
i=i+1;
Rnames{i}='HNO2 + hv = OH + NO';
k(:,i) = JHONO;
Gstr{i,1} = 'HNO2'; 
fHNO2(i)=fHNO2(i)-1;  fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i}='NO3 + hv = NO2 + O3';
k(:,i) = JNO3_NO2;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;  fNO2(i)=fNO2(i)+1; fO3(i)=fO3(i)+1; 
   
i=i+1;
Rnames{i}='NO3 + hv = NO + O2';
k(:,i) = JNO3_NO;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1;  fNO(i)=fNO(i)+1; fO2(i)=fO2(i)+1; 
  
i=i+1;
Rnames{i}='N2O5 + hv = NO3 + NO2';
k(:,i) = JN2O5_NO2;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1;  fNO3(i)=fNO3(i)+1; fNO2(i)=fNO2(i)+1; 

% i=i+1;
% Rnames{i}='N2O5 + hv = NO3 + NO + O3'; %turned off in GEOS-CHEM
% k(:,i) = JN2O5_NO;
% Gstr{i,1} = 'N2O5'; 
% fN2O5(i)=fN2O5(i)-1;  fNO3(i)=fNO3(i)+1; fNO(i)=fNO(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i}='HNO4 + hv = HO2 + NO2';
k(:,i) = (JHNO4_OH + JHNO4_HO2)*0.95;
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1;  fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='HNO4 + hv = OH + NO3';
k(:,i) = (JHNO4_OH + JHNO4_HO2)*0.05; 
Gstr{i,1} = 'HNO4'; 
fHNO4(i)=fHNO4(i)-1;  fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

%%% ------- CARBONYLS --------
i=i+1;
Rnames{i}='ALD2 + hv = 0.880MO2 + HO2 + 0.880CO + 0.120MCO3';
k(:,i) = JALD2a;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1;  fMO2(i)=fMO2(i)+0.88; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.88; fMCO3(i)=fMCO3(i)+0.12; 
 
i=i+1;
Rnames{i}='ALD2 + hv = CH4 + CO';
k(:,i) = JALD2b;
Gstr{i,1} = 'ALD2'; 
fALD2(i)=fALD2(i)-1;  fCH4(i)=fCH4(i)+1; fCO(i)=fCO(i)+1; 
 
i=i+1;
Rnames{i}='RCHO + hv = ETO2 + HO2 + CO';
k(:,i) = JRCHO;
Gstr{i,1} = 'RCHO'; 
fRCHO(i)=fRCHO(i)-1;  fETO2(i)=fETO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 
  
i=i+1;
Rnames{i}='ACET + hv = MCO3 + MO2';
k(:,i) = JACETa;
Gstr{i,1} = 'ACET'; 
fACET(i)=fACET(i)-1;  fMCO3(i)=fMCO3(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='ACET + hv = 2.000MO2 + CO';
k(:,i) = JACETb;
Gstr{i,1} = 'ACET'; 
fACET(i)=fACET(i)-1;  fMO2(i)=fMO2(i)+2.00; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='MEK + hv = 0.850MCO3 + 0.850ETO2 + 0.150MO2 + 0.150RCO3';
k(:,i) = JMEK;
Gstr{i,1} = 'MEK';
fMEK(i)=fMEK(i)-1;  fMCO3(i)=fMCO3(i)+0.85; fETO2(i)=fETO2(i)+0.85; fMO2(i)=fMO2(i)+0.15; fRCO3(i)=fRCO3(i)+0.15; 
 
i=i+1;
Rnames{i}='GLYC + hv = 0.900CH2O + 1.730HO2 + CO + 0.070OH + 0.100MOH';
k(:,i) = JGLYC;
Gstr{i,1} = 'GLYC'; 
fGLYC(i)=fGLYC(i)-1;  fCH2O(i)=fCH2O(i)+0.90; fHO2(i)=fHO2(i)+1.73; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+0.07; fMOH(i)=fMOH(i)+0.10; 

i=i+1;
Rnames{i}='GLYX + hv = 0.500H2 + CO + 0.500CH2O + 0.500CO';
k(:,i) = JGLYXb + JGLYXc;
Gstr{i,1} = 'GLYX';
fGLYX(i)=fGLYX(i)-1;  fH2(i)=fH2(i)+0.50; fCO(i)=fCO(i)+1; fCH2O(i)=fCH2O(i)+0.50; fCO(i)=fCO(i)+0.50; 

i=i+1;
Rnames{i}='GLYX + hv = 2.000CO + 2.000HO2';
k(:,i) = JGLYXa;
Gstr{i,1} = 'GLYX'; 
fGLYX(i)=fGLYX(i)-1;  fCO(i)=fCO(i)+2.00; fHO2(i)=fHO2(i)+2.00; 
 
i=i+1;
Rnames{i}='MGLY + hv = MCO3 + CO + HO2';
k(:,i) = JMGLY;
Gstr{i,1} = 'MGLY'; 
fMGLY(i)=fMGLY(i)-1;  fMCO3(i)=fMCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

%i=i+1;
%Rnames{i}='MGLY + hv = ALD2 + CO'; %TURNED OFF IN GEOS-CHEM
%k(:,i) = JMGLY; % second channel, giving same rate as first
%Gstr{i,1} = 'MGLY';
%fMGLY(i)=fMGLY(i)-1;  fALD2(i)=fALD2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='MVK + hv = PRPE + CO';
k(:,i) = JMVK*0.6;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1;  fPRPE(i)=fPRPE(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i}='MVK + hv = MCO3 + CH2O + CO + HO2';
k(:,i) = JMVK*0.2;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1;  fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MVK + hv = MO2 + RCO3';
k(:,i) = JMVK*0.2;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1;  fMO2(i)=fMO2(i)+1; fRCO3(i)=fRCO3(i)+1; 
 
% i=i+1;
% Rnames{i}='MACR + hv = MAO3 + HO2'; %REMOVAL SUGGESTED BY JMAO
% k(:,i) = JMACR*0.5;
% Gstr{i,1} = 'MACR';
% fMACR(i)=fMACR(i)-1; fMAO3(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i}='MACR + hv = CO + HO2 + CH2O + MCO3';
k(:,i) = JMACR;
Gstr{i,1} = 'MACR';
fMACR(i)=fMACR(i)-1;  fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1;

i=i+1;
Rnames{i}='HAC + hv = MCO3 + CH2O + HO2';
k(:,i) = JHAC;
Gstr{i,1} = 'HAC'; 
fHAC(i)=fHAC(i)-1;  fMCO3(i)=fMCO3(i)+1; fCH2O(i)=fCH2O(i)+1; fHO2(i)=fHO2(i)+1; 

%%% ------ PEROXIDES ------
i=i+1;
Rnames{i}='INPN + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'INPN'; 
fINPN(i)=fINPN(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='PRPN + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'PRPN'; 
fPRPN(i)=fPRPN(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='ETP + hv = OH + HO2 + ALD2';
k(:,i) = JMP;
Gstr{i,1} = 'ETP'; 
fETP(i)=fETP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='RA3P + hv = OH + HO2 + RCHO';
k(:,i) = JMP;
Gstr{i,1} = 'RA3P'; 
fRA3P(i)=fRA3P(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='RB3P + hv = OH + HO2 + ACET';
k(:,i) = JMP;
Gstr{i,1} = 'RB3P'; 
fRB3P(i)=fRB3P(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fACET(i)=fACET(i)+1; 

i=i+1;
Rnames{i}='R4P + hv = OH + HO2 + RCHO';
k(:,i) = JMP;
Gstr{i,1} = 'R4P';
fR4P(i)=fR4P(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='PP + hv = OH + HO2 + ALD2 + CH2O';
k(:,i) = JMP;
Gstr{i,1} = 'PP'; 
fPP(i)=fPP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; fCH2O(i)=fCH2O(i)+1; 

i=i+1;
Rnames{i}='RP + hv = OH + HO2 + ALD2';
k(:,i) = JMP;
Gstr{i,1} = 'RP'; 
fRP(i)=fRP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fALD2(i)=fALD2(i)+1; 

i=i+1;
Rnames{i}='RIP + hv = OH + HO2 + 0.710CH2O + 0.425MVK + 0.285MACR + 0.290HC5';
k(:,i) = JMP;
Gstr{i,1} = 'RIP'; 
fRIP(i)=fRIP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCH2O(i)=fCH2O(i)+0.71; fMVK(i)=fMVK(i)+0.425; fMACR(i)=fMACR(i)+0.285; fHC5(i)=fHC5(i)+0.29; 

i=i+1;
Rnames{i}='IAP + hv = OH + HO2 + 0.670CO + 0.190H2 + 0.360HAC + 0.260GLYC + 0.580MGLY';
k(:,i) = JMP;
Gstr{i,1} = 'IAP'; 
fIAP(i)=fIAP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.67; fH2(i)=fH2(i)+0.19; fHAC(i)=fHAC(i)+0.36; fGLYC(i)=fGLYC(i)+0.26; fMGLY(i)=fMGLY(i)+0.58; 
 
i=i+1;
Rnames{i}='ISNP + hv = OH + HO2 + RCHO + NO2';
k(:,i) = JMP;
Gstr{i,1} = 'ISNP'; 
fISNP(i)=fISNP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; fNO2(i)=fNO2(i)+1; 
 
i=i+1;
Rnames{i}='VRP + hv = OH + 0.300HO2 + 0.300CH2O + 0.700MCO3 + 0.700GLYC + 0.300MGLY';
k(:,i) = JMP;
Gstr{i,1} = 'VRP'; 
fVRP(i)=fVRP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+0.30; fCH2O(i)=fCH2O(i)+0.30; fMCO3(i)=fMCO3(i)+0.70; fGLYC(i)=fGLYC(i)+0.70; fMGLY(i)=fMGLY(i)+0.30; 
 
i=i+1;
Rnames{i}='MRP + hv = OH + HO2 + HAC + 0.500CO + 0.500CH2O';
k(:,i) = JMP;
Gstr{i,1} = 'MRP'; 
fMRP(i)=fMRP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fHAC(i)=fHAC(i)+1; fCO(i)=fCO(i)+0.50; fCH2O(i)=fCH2O(i)+0.50; 
 
i=i+1;
Rnames{i}='MAOP + hv = OH + CH2O + MCO3';
k(:,i) = JMP;
Gstr{i,1} = 'MAOP'; 
fMAOP(i)=fMAOP(i)-1;  fOH(i)=fOH(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='MAP + hv = OH + MO2';
k(:,i) = JMP;
Gstr{i,1} = 'MAP'; 
fMAP(i)=fMAP(i)-1;  fOH(i)=fOH(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='ATOOH + hv = OH + CH2O + MCO3';
k(:,i) = JMP;
Gstr{i,1} = 'ATOOH'; 
fATOOH(i)=fATOOH(i)-1;  fOH(i)=fOH(i)+1; fCH2O(i)=fCH2O(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='PIP + hv = OH + HO2 + RCHO';
k(:,i) = JH2O2; %changed from JMP, 20200427 GMW
Gstr{i,1} = 'PIP'; 
fPIP(i)=fPIP(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='HPALD + hv = OH + HO2 + 0.500GLYC + 0.250GLYX + 0.250MGLY + CH2O + 0.500HAC';
k(:,i) = JHPALD;
Gstr{i,1} = 'HPALD'; 
fHPALD(i)=fHPALD(i)-1;  fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fGLYC(i)=fGLYC(i)+0.50; 
fGLYX(i)=fGLYX(i)+0.25; fMGLY(i)=fMGLY(i)+0.25; fCH2O(i)=fCH2O(i)+1; fHAC(i)=fHAC(i)+0.50; 
 
%%% ------ ORGANIC NITRATES ------
i=i+1;
Rnames{i}='MPN = CH2O + NO3 + HO2';
k(:,i) = JMPN*0.95; %assumed quantum yield (no recommendation)
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fCH2O(i)=fCH2O(i)+1; fNO3(i)=fNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MPN = MO2 + NO2';
k(:,i) = JMPN*0.05; %assumed quantum yield (no recommendation)
Gstr{i,1} = 'MPN'; 
fMPN(i)=fMPN(i)-1; fMO2(i)=fMO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='PAN + hv = 0.700MCO3 + 0.700NO2 + 0.300MO2 + 0.300NO3';
k(:,i) = JPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1;  fMCO3(i)=fMCO3(i)+0.70; fNO2(i)=fNO2(i)+0.70; fMO2(i)=fMO2(i)+0.30; fNO3(i)=fNO3(i)+0.30; 

% MPAN photolysis?
i=i+1;
Rnames{i}='PMN = 0.600MAO3 + 0.600NO2 + 0.400CO2 + 0.400CH2O + 0.400MCO3 + 0.400NO3';
k(:,i) = JPAN;
Gstr{i,1} = 'PMN'; 
fPMN(i)=fPMN(i)-1;  fMAO3(i)=fMAO3(i)+0.60; fNO2(i)=fNO2(i)+0.60; fCO2(i)=fCO2(i)+0.40; 
fCH2O(i)=fCH2O(i)+0.40; fMCO3(i)=fMCO3(i)+0.40; fNO3(i)=fNO3(i)+0.40; 

i=i+1;
Rnames{i}='R4N2 + hv = NO2 + 0.320ACET + 0.190MEK + 0.180MO2 + 0.270HO2 + 0.320ALD2 + 0.130RCHO + 0.050A3O2 + 0.180B3O2 + 0.320ETO2';
k(:,i) = JMENO3;
Gstr{i,1} = 'R4N2'; 
fR4N2(i)=fR4N2(i)-1;  fNO2(i)=fNO2(i)+1; fACET(i)=fACET(i)+0.32; fMEK(i)=fMEK(i)+0.19; 
fMO2(i)=fMO2(i)+0.18; fHO2(i)=fHO2(i)+0.27; fALD2(i)=fALD2(i)+0.32; fRCHO(i)=fRCHO(i)+0.13; 
fA3O2(i)=fA3O2(i)+0.05; fB3O2(i)=fB3O2(i)+0.18; fETO2(i)=fETO2(i)+0.32; 

i=i+1;
Rnames{i}='ISOPNB + hv = HC5 + NO2 + HO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'ISOPNB'; 
fISOPNB(i)=fISOPNB(i)-1;  fHC5(i)=fHC5(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='ISOPND + hv = HC5 + NO2 + HO2';
k(:,i) = JONIT1;
Gstr{i,1} = 'ISOPND';
fISOPND(i)=fISOPND(i)-1;  fHC5(i)=fHC5(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='MACRN + hv = NO2 + HAC + MGLY + 0.500CH2O + HO2 + 0.500CO';
k(:,i) = JMACRN;
Gstr{i,1} = 'MACRN'; 
fMACRN(i)=fMACRN(i)-1;  fNO2(i)=fNO2(i)+1; fHAC(i)=fHAC(i)+1; fMGLY(i)=fMGLY(i)+1; 
fCH2O(i)=fCH2O(i)+0.50; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+0.50; 

i=i+1;
Rnames{i}='MVKN + hv = GLYC + NO2 + MCO3';
k(:,i) = JMVKN;
Gstr{i,1} = 'MVKN'; 
fMVKN(i)=fMVKN(i)-1;  fGLYC(i)=fGLYC(i)+1; fNO2(i)=fNO2(i)+1; fMCO3(i)=fMCO3(i)+1; 

i=i+1;
Rnames{i}='PROPNN + hv = CH2O + NO2 + CO + MO2';
k(:,i) = JPROPNN;
Gstr{i,1} = 'PROPNN'; 
fPROPNN(i)=fPROPNN(i)-1;  fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fMO2(i)=fMO2(i)+1; 

i=i+1;
Rnames{i}='ETHLN + hv = CH2O + NO2 + CO + HO2';
k(:,i) = JETHLN;
Gstr{i,1} = 'ETHLN'; 
fETHLN(i)=fETHLN(i)-1;  fCH2O(i)=fCH2O(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i}='ISN1 + hv = NO2 + HO2 + 0.500GLYC + 0.250GLYX + 0.250MGLY + CH2O + 0.500HAC';
k(:,i) = JHPALD;
Gstr{i,1} = 'ISN1'; 
fISN1(i)=fISN1(i)-1;  fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fGLYC(i)=fGLYC(i)+0.50; 
fGLYX(i)=fGLYX(i)+0.25; fMGLY(i)=fMGLY(i)+0.25; fCH2O(i)=fCH2O(i)+1; fHAC(i)=fHAC(i)+0.50; 

i=i+1;
Rnames{i}='MONITS + hv = NO2 + MEK';
k(:,i) = JONIT1;
Gstr{i,1} = 'MONITS'; 
fMONITS(i)=fMONITS(i)-1;  fNO2(i)=fNO2(i)+1; fMEK(i)=fMEK(i)+1; 

i=i+1;
Rnames{i}='MONITU + hv = NO2 + RCHO';
k(:,i) = JONIT1;
Gstr{i,1} = 'MONITU'; 
fMONITU(i)=fMONITU(i)-1;  fNO2(i)=fNO2(i)+1; fRCHO(i)=fRCHO(i)+1; 

i=i+1;
Rnames{i}='HONIT + hv = NO2 + HAC';
k(:,i) = JONIT1;
Gstr{i,1} = 'HONIT'; 
fHONIT(i)=fHONIT(i)-1;  fNO2(i)=fNO2(i)+1; fHAC(i)=fHAC(i)+1; 

% % -------------- BROMINE ----------------
i=i+1;
Rnames{i}='Br2 + hv = 2.000Br';
k(:,i) = JBr2;
Gstr{i,1} = 'Br2'; 
fBr2(i)=fBr2(i)-1;  fBr(i)=fBr(i)+2.00; 

i=i+1;
Rnames{i}='BrO + hv = Br + O3';
k(:,i) = JBrO;
Gstr{i,1} = 'BrO'; 
fBrO(i)=fBrO(i)-1;  fBr(i)=fBr(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i}='HOBr + hv = Br + OH';
k(:,i) = JHOBr;
Gstr{i,1} = 'HOBr'; 
fHOBr(i)=fHOBr(i)-1;  fBr(i)=fBr(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i}='BrNO3 + hv = Br + NO3';
k(:,i) = JBrNO3_Br;
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i)=fBrNO3(i)-1;  fBr(i)=fBr(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i}='BrNO3 + hv = BrO + NO2';
k(:,i) = JBrNO3_BrO;
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i)=fBrNO3(i)-1;  fBrO(i)=fBrO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='BrNO2 + hv = Br + NO2';
k(:,i) = JBrNO2;
Gstr{i,1} = 'BrNO2'; 
fBrNO2(i)=fBrNO2(i)-1;  fBr(i)=fBr(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i}='CHBr3 + hv = 3.000Br';
k(:,i) = JCHBr3;
Gstr{i,1} = 'CHBr3'; 
fCHBr3(i)=fCHBr3(i)-1;  fBr(i)=fBr(i)+3.00; 

% THAT'S ALL, FOLKS


