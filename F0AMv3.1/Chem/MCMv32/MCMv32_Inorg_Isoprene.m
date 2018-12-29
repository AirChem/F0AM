% MCMv32_Inorg_Isoprene.m
% generated from MCMv32_Inorg_Isoprene.fac
% 20151030
% # of species = 455
% # of reactions = 1476

SpeciesToAdd = {...
'C4PAN5'; 'C4PAN6'; 'ETHENO3O'; 'HMACROOH'; 'NC3OO'; 'CHOPRNO3'; 'CHOCOHCO'; 'C524CO'; 'ISOPDOOH'; 'IPRHOCO2H'; ...
'ETHGLY'; 'MACROH'; 'MACROO'; 'ETHO2HNO3'; 'HMGLOOA'; 'INB1NBCO2H'; 'MACRO2'; 'HMACO3H'; 'ACO3H'; 'ACO3B'; ...
'INAHCO3'; 'HONO'; 'C525OOH'; 'INAHCHO'; 'ISOPAOOH'; 'IPROPOLO'; 'ISOPCOOH'; 'NC4OOA'; 'INB1NACO3H'; 'IEACO3H'; ...
'C3DIOLOOH'; 'INAHPCO3'; 'INDOOH'; 'NO2'; 'NO3'; 'VGLYOX'; 'C58OOH'; 'H2O2'; 'C58NO3'; 'C59O'; ...
'INCCO'; 'PAN'; 'C524O'; 'INB1GLYOX'; 'PRONO3AO2'; 'CONM2CO3H'; 'IEB1O2'; 'CO2H3CO3H'; 'CH3CHO'; 'SA'; ...
'PRONO3BO'; 'NOA'; 'INCOOH'; 'ISOPBOOH'; 'INAOOH'; 'IEPOXC'; 'C524NO3'; 'IEPOXA'; 'MACROOA'; 'C58NO3CO3'; ...
'MACROOH'; 'O1D'; 'INAHPCO3H'; 'CO2N3CHO'; 'C510OH'; 'INANCOCO2H'; 'CO2N3CO3'; 'PHAN'; 'HOCH2COCHO'; 'HC4CCO2H'; ...
'HMVKAO'; 'MACO2H'; 'MGLOOA'; 'ACRPAN'; 'HMACROH'; 'ISOPCNO3'; 'MVK'; 'MACRNCO2H'; 'C510O2'; 'INDO2'; ...
'INB1NACHO'; 'MACRNBPAN'; 'COHM2CO3H'; 'NC524OOH'; 'HOCH2CHO'; 'ISOPANO3'; 'INANCOCHO'; 'PRNO3CO3H'; 'INB1OOH'; 'INANCO3H'; ...
'H14CO23C4'; 'INAOH'; 'C3DIOLO'; 'PRONO3AO'; 'IECCO3'; 'PRNO3PAN'; 'HYPROPO2H'; 'ISOPAO'; 'INCOH'; 'INCO'; ...
'MMALNBCO3H'; 'IPRHOCO3'; 'INCO2'; 'MACRO'; 'INANCOCO3'; 'IEB2OOH'; 'MGLYOOB'; 'MGLYOOA'; 'INCNO3'; 'INB1O'; ...
'CH3CHOO'; 'INB2OOH'; 'INCNCHO'; 'INANPAN'; 'INAO2'; 'INCNCO3'; 'ISOPDNO3'; 'IBUTALOH'; 'C32OH13CO'; 'CH3CO3H'; ...
'HIEB1O2'; 'C57O'; 'CH3C2H2O2'; 'MVKOHAO'; 'H1CO23CHO'; 'INANO3'; 'INB1HPCHO'; 'ACO2H'; 'CO2N3PAN'; 'ISOPBNO3'; ...
'CH3CHOOA'; 'MMALNACO3'; 'IECCO3H'; 'HC4ACHO'; 'CH4'; 'HMGLYOO'; 'HCOCO3'; 'NC4CO3'; 'ISOPDOH'; 'HCOCH2O2'; ...
'MVKO'; 'MMALNACO3H'; 'ACLOO'; 'IEB2O2'; 'NC524NO3'; 'CONM2CO3'; 'PROPALO'; 'PRONO3BO2'; 'HCOOH'; 'C58NO3PAN'; ...
'HCOCO2H'; 'ETHENO3O2'; 'HIEPOXB'; 'HCHO'; 'HMVKAO2'; 'CONM2CO2H'; 'MACRNO3'; 'HMACRO2'; 'IEB1O'; 'IPROPOLPER'; ...
'ALLYLOH'; 'IECCHO'; 'HOCH2CO3'; 'MACROHNO3'; 'HMVKNO3'; 'CH2OOG'; 'CH2OOE'; 'A2PAN'; 'CH2OOC'; 'CH2OOB'; ...
'CH2OOA'; 'CONM2CHO'; 'CH3O'; 'HOCH2CO2H'; 'MACRNB'; 'IPRHOCO3H'; 'INB1NBCHO'; 'HYPERACET'; 'MACRNOO'; 'C510O'; ...
'CH3OOH'; 'OCCOHCOOH'; 'PROPGLY'; 'IEC1OOH'; 'NC4CHO'; 'HMVKNGLYOX'; 'C57NO3CO3H'; 'CH3CHOHCHO'; 'NISOPNO3'; 'IEC2OOH'; ...
'MVKOHAOH'; 'MVKOHBO2'; 'MGLOO'; 'INDHPCO3'; 'INDOH'; 'C524OH'; 'MGLYOO'; 'C58NO3CO2H'; 'C524O2'; 'NOAOOA'; ...
'H13CO2CO3H'; 'INB1NACO2H'; 'CO2H3CHO'; 'IEAPAN'; 'MGLYOX'; 'MVKOHAOOH'; 'MVKOHAO2'; 'INANCOPAN'; 'HC4CCHO'; 'INB1NO3'; ...
'HOCHOCOOH'; 'CH3O2NO2'; 'MACRNBCO3H'; 'ISOPDO'; 'C57NO3'; 'C525O'; 'MMALNACO2H'; 'MMALNBCO2H'; 'GAOO'; 'MACRNBCO3'; ...
'IEACO3'; 'HMGLOO'; 'CH3COCO2H'; 'IEPOXB'; 'C57O2'; 'INCGLYOX'; 'DNC524CO'; 'OCCOHCOH'; 'IECPAN'; 'HIEB1O'; ...
'C2OHOCOOH'; 'INB1HPCO3H'; 'C510OOH'; 'C5H8'; 'OCCOHCO2'; 'C59O2'; 'ACETOL'; 'INB1HPCO2H'; 'IPROPOLO2'; 'CONM2PAN'; ...
'CH3CO3'; 'INB1HPPAN'; 'C57OH'; 'MMALNBPAN'; 'HPNC524CO'; 'CH3COCH2O2'; 'MACO3H'; 'HMVKBO'; 'GAOOB'; 'CH3NO3'; ...
'ISOPAOH'; 'HMVKANO3'; 'MACROHO2'; 'HMVKBO2'; 'HYPROPO'; 'INB1NBCO3H'; 'H13CO2CHO'; 'COHM2CO3'; 'HCOCO3H'; 'HMGLYOOA'; ...
'HSO3'; 'C57NO3CO3'; 'ISOPCO2'; 'INANCOCO3H'; 'IPROPOLPAN'; 'HNO3'; 'MACRNCO3'; 'HYETHO2H'; 'ETHOHNO3'; 'GLYOO'; ...
'ISOPAO2'; 'A2PANOO'; 'HIEB1OOH'; 'GLYOX'; 'HC4CCO3'; 'HMACR'; 'INCNCO2H'; 'C3H6'; 'CO2N3CO3H'; 'HC4ACO3'; ...
'MACROHOOH'; 'CO23C4NO3'; 'C57OOH'; 'CH2OO'; 'COHM2PAN'; 'N2O5'; 'CH3CHOHCO3'; 'COHM2CO2H'; 'INB1HPCO3'; 'C5PAN19'; ...
'C5PAN18'; 'C5PAN17'; 'C525O2'; 'C2H4'; 'HCOCOHCO3'; 'INB1NBCO3'; 'HCOC5'; 'NISOPOOH'; 'MACRNOOA'; 'HO12CO3C4'; ...
'HCOCH2O'; 'CH3COCO3'; 'H13CO2CO3'; 'INDHCO3H'; 'INANCO'; 'IEC1O2'; 'BIACETO'; 'NO3CH2CO3'; 'C3DIOLO2'; 'NO3CH2CHO'; ...
'INB2O2'; 'MVKOHANO3'; 'ISOPCO'; 'PROPOLNO3'; 'CO'; 'CL'; 'INAHPPAN'; 'HOCH2CH2O'; 'C42AOH'; 'IEB2O'; ...
'IEB1OOH'; 'HC4ACO2H'; 'HIEB2OOH'; 'HMACO2H'; 'HNC524CO'; 'HCOCH2OOH'; 'MVKNO3'; 'C2OHOCO2H'; 'ISOPBOH'; 'MPAN'; ...
'HIEB2O2'; 'C58O2'; 'INDHPPAN'; 'A2PANO'; 'NO3CH2CO3H'; 'C58OH'; 'ISOPDO2'; 'SO3'; 'SO2'; 'IEC1O'; ...
'ISOPBO2'; 'HMACRO'; 'C57NO3CO2H'; 'HOCH2CO3H'; 'PR2O2HNO3'; 'HMVKAOOH'; 'INAHCO3H'; 'NC4CO3H'; 'HCOCOHCO3H'; 'C58NO3CO3H'; ...
'CH3OH'; 'INDHCO3'; 'INDHCHO'; 'HMACO3'; 'O3'; 'INDHPCHO'; 'CH3COCH2O'; 'INB1NAPAN'; 'ACLOOA'; 'IPROPOLO2H'; ...
'INAO'; 'INAHPCHO'; 'INANCHO'; 'INCNPAN'; 'NC524O'; 'MVKOHBO'; 'HCOCOHPAN'; 'CH3COCO3H'; 'OH'; 'GLYOOB'; ...
'GLYOOC'; 'CH3O2'; 'HMVKBOOH'; 'BIACETOH'; 'HIEB2O'; 'PR1O2HNO3'; 'HYPROPO2'; 'MVKO2'; 'C59OOH'; 'NC4OO'; ...
'HOCH2CH2O2'; 'IEACHO'; 'HO2NO2'; 'INCNCO3H'; 'MACROHO'; 'H13CO2C3'; 'INB1NACO3'; 'O'; 'MVKOH'; 'NC3OOA'; ...
'ACO3'; 'C57NO3PAN'; 'PROLNO3'; 'MVKOO'; 'INB1O2'; 'H2'; 'CHOMOHCO3'; 'C58O'; 'NC2OO'; 'HC4CCO3H'; ...
'OCCOHCO'; 'NMGLYOX'; 'CH3COPAN'; 'INB2O'; 'CHOMOHPAN'; 'MMALNBCO3'; 'HOCH2COCO2H'; 'ACR'; 'INDHPAN'; 'INB1NBPAN'; ...
'NO'; 'NA'; 'HC4ACO3H'; 'NC524OH'; 'CH3CO2H'; 'MVKOOH'; 'NC524O2'; 'C4M2ALOHNO3'; 'MVKOOA'; 'MMALNAPAN'; ...
'NISOPO'; 'GLYPAN'; 'INAHPCO2H'; 'CO23C3CHO'; 'CH3COCH3'; 'PRNO3CO3'; 'MACRNBCO2H'; 'NOAOO'; 'CO2H3CO3'; 'INANCO3'; ...
'NO3CH2CO2H'; 'INB1OH'; 'MVKOHBOOH'; 'INAHCO2H'; 'CHOMOHCO3H'; 'INAHPAN'; 'HO2'; 'NISOPO2'; 'NC4CO2H'; 'PRNO3CO2H'; ...
'MACR'; 'INANCO2H'; 'MACO3'; 'MACRNCO3H'; 'INB1CO'; 'NC2OOA'; 'C4PAN10'; 'NO3CH2PAN'; 'C524OOH'; 'INDHPCO3H'; ...
'MACRNPAN'; 'HMPAN'; 'C3MDIALOH'; 'INDO'; 'ISOPBO'; };

RO2ToAdd = {...
'NISOPO2'; 'ISOPAO2'; 'ISOPBO2'; 'ISOPCO2'; 'ISOPDO2'; 'CH3C2H2O2'; 'MACO3'; 'MACRO2'; 'MACROHO2'; 'CH3CO3'; ...
'HMVKAO2'; 'HMVKBO2'; 'CH3O2'; 'MVKO2'; 'INCO2'; 'NC4CO3'; 'C510O2'; 'PRONO3AO2'; 'PRONO3BO2'; 'HYPROPO2'; ...
'IPROPOLO2'; 'INAO2'; 'C524O2'; 'HC4ACO3'; 'C58O2'; 'INB1O2'; 'INB2O2'; 'HC4CCO3'; 'C57O2'; 'INDO2'; ...
'HOCH2CO3'; 'C59O2'; 'HCOCO3'; 'CHOMOHCO3'; 'HCOCH2O2'; 'CO2H3CO3'; 'ACO3'; 'MVKOHAO2'; 'MVKOHBO2'; 'NO3CH2CO3'; ...
'IEB1O2'; 'IEB2O2'; 'MACRNCO3'; 'IEC1O2'; 'IPRHOCO3'; 'PRNO3CO3'; 'CH3CHOHCO3'; 'IEACO3'; 'NC524O2'; 'C525O2'; ...
'C58NO3CO3'; 'CONM2CO3'; 'IECCO3'; 'CO2N3CO3'; 'INCNCO3'; 'MACRNBCO3'; 'CH3COCH2O2'; 'H13CO2CO3'; 'ACO3B'; 'OCCOHCO2'; ...
'INAHPCO3'; 'INANCO3'; 'INAHCO3'; 'HIEB1O2'; 'HIEB2O2'; 'HMACO3'; 'HMACRO2'; 'INB1HPCO3'; 'INB1NACO3'; 'INB1NBCO3'; ...
'C57NO3CO3'; 'INDHPCO3'; 'INDHCO3'; 'ETHENO3O2'; 'HOCH2CH2O2'; 'INANCOCO3'; 'MMALNACO3'; 'MMALNBCO3'; 'A2PANOO'; 'HCOCOHCO3'; ...
'CH3COCO3'; 'COHM2CO3'; 'C3DIOLO2'; };

AddSpecies

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 5.6e-34.*.78.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O = O3';
k(:,i) = 6.0e-34.*.21.*M.*(T./300).^-2.6.*.21.*M;
Gstr{i,1} = 'O'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'O + O3 =';
k(:,i) = 8.0e-12.*exp(-2060./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'O3'; 
fO(i)=fO(i)-1; fO3(i)=fO3(i)-1; 

i=i+1;
Rnames{i} = 'O + NO = NO2';
k(:,i) = KMT01;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO'; 
fO(i)=fO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O + NO2 = NO';
k(:,i) = 5.5e-12.*exp(188./T);
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'O + NO2 = NO3';
k(:,i) = KMT02;
Gstr{i,1} = 'O'; Gstr{i,2} = 'NO2'; 
fO(i)=fO(i)-1; fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 3.2e-11.*exp(67./T).*.21.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'O1D = O';
k(:,i) = 2.0e-11.*exp(130./T).*.78.*M;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO + O3 = NO2';
k(:,i) = 1.4e-12.*exp(-1310./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'O3'; 
fNO(i)=fNO(i)-1; fO3(i)=fO3(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + O3 = NO3';
k(:,i) = 1.4e-13.*exp(-2470./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'O3'; 
fNO2(i)=fNO2(i)-1; fO3(i)=fO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO = NO2 + NO2';
k(:,i) = 3.3e-39.*exp(530./T).*.21.*M;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO'; 
fNO(i)=fNO(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + NO3 = NO2 + NO2';
k(:,i) = 1.8e-11.*exp(110./T);
Gstr{i,1} = 'NO'; Gstr{i,2} = 'NO3'; 
fNO(i)=fNO(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = NO + NO2';
k(:,i) = 4.50e-14.*exp(-1260./T);
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + NO3 = N2O5';
k(:,i) = KMT03;
Gstr{i,1} = 'NO2'; Gstr{i,2} = 'NO3'; 
fNO2(i)=fNO2(i)-1; fNO3(i)=fNO3(i)-1; fN2O5(i)=fN2O5(i)+1; 

i=i+1;
Rnames{i} = 'O1D = OH + OH';
k(:,i) = 2.14e-10.*H2O;
Gstr{i,1} = 'O1D'; 
fO1D(i)=fO1D(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + O3 = HO2';
k(:,i) = 1.70e-12.*exp(-940./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'O3'; 
fOH(i)=fOH(i)-1; fO3(i)=fO3(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2 = HO2';
k(:,i) = 7.7e-12.*exp(-2100./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2'; 
fOH(i)=fOH(i)-1; fH2(i)=fH2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO = HO2';
k(:,i) = KMT05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO'; 
fOH(i)=fOH(i)-1; fCO(i)=fCO(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + H2O2 = HO2';
k(:,i) = 2.9e-12.*exp(-160./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H2O2'; 
fOH(i)=fOH(i)-1; fH2O2(i)=fH2O2(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + O3 = OH';
k(:,i) = 2.03e-16.*(T./300).^4.57.*exp(693./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'O3'; 
fHO2(i)=fHO2(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2 =';
k(:,i) = 4.8e-11.*exp(250./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2'; 
fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)-1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 2.20e-13.*KMT06.*exp(600./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + HO2 = H2O2';
k(:,i) = 1.90e-33.*M.*KMT06.*exp(980./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'HO2'; 
fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)-1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO = HONO';
k(:,i) = KMT07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO'; 
fOH(i)=fOH(i)-1; fNO(i)=fNO(i)-1; fHONO(i)=fHONO(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO2 = HNO3';
k(:,i) = KMT08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO2'; 
fOH(i)=fOH(i)-1; fNO2(i)=fNO2(i)-1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NO3 = HO2 + NO2';
k(:,i) = 2.0e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NO3'; 
fOH(i)=fOH(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO = OH + NO2';
k(:,i) = 3.45e-12.*exp(270./T);
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO'; 
fHO2(i)=fHO2(i)-1; fNO(i)=fNO(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO2 = HO2NO2';
k(:,i) = KMT09;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO2'; 
fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)-1; fHO2NO2(i)=fHO2NO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO2NO2 = NO2';
k(:,i) = 3.2e-13.*exp(690./T).*1.0;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO2NO2'; 
fOH(i)=fOH(i)-1; fHO2NO2(i)=fHO2NO2(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HO2 + NO3 = OH + NO2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'HO2'; Gstr{i,2} = 'NO3'; 
fHO2(i)=fHO2(i)-1; fNO3(i)=fNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HONO = NO2';
k(:,i) = 2.5e-12.*exp(260./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HONO'; 
fOH(i)=fOH(i)-1; fHONO(i)=fHONO(i)-1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNO3 = NO3';
k(:,i) = KMT11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNO3'; 
fOH(i)=fOH(i)-1; fHNO3(i)=fHNO3(i)-1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'O + SO2 = SO3';
k(:,i) = 4.0e-32.*exp(-1000./T).*M;
Gstr{i,1} = 'O'; Gstr{i,2} = 'SO2'; 
fO(i)=fO(i)-1; fSO2(i)=fSO2(i)-1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + SO2 = HSO3';
k(:,i) = KMT12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'SO2'; 
fOH(i)=fOH(i)-1; fSO2(i)=fSO2(i)-1; fHSO3(i)=fHSO3(i)+1; 

i=i+1;
Rnames{i} = 'HSO3 = HO2 + SO3';
k(:,i) = 1.3e-12.*exp(-330./T).*.21.*M;
Gstr{i,1} = 'HSO3'; 
fHSO3(i)=fHSO3(i)-1; fHO2(i)=fHO2(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 = NA';
k(:,i) = 6.00e-06;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NA + NA';
k(:,i) = 4.00e-04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNA(i)=fNA(i)+1; fNA(i)=fNA(i)+1; 

i=i+1;
Rnames{i} = 'SO3 = SA';
k(:,i) = 1.20e-15.*H2O;
Gstr{i,1} = 'SO3'; 
fSO3(i)=fSO3(i)-1; fSA(i)=fSA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O1D';
k(:,i) = J1;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO1D(i)=fO1D(i)+1; 

i=i+1;
Rnames{i} = 'O3 + hv = O';
k(:,i) = J2;
Gstr{i,1} = 'O3'; 
fO3(i)=fO3(i)-1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'H2O2 + hv = OH + OH';
k(:,i) = J3;
Gstr{i,1} = 'H2O2'; 
fH2O2(i)=fH2O2(i)-1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO2 + hv = NO + O';
k(:,i) = J4;
Gstr{i,1} = 'NO2'; 
fNO2(i)=fNO2(i)-1; fNO(i)=fNO(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO';
k(:,i) = J5;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + hv = NO2 + O';
k(:,i) = J6;
Gstr{i,1} = 'NO3'; 
fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fO(i)=fO(i)+1; 

i=i+1;
Rnames{i} = 'HONO + hv = OH + NO';
k(:,i) = J7;
Gstr{i,1} = 'HONO'; 
fHONO(i)=fHONO(i)-1; fOH(i)=fOH(i)+1; fNO(i)=fNO(i)+1; 

i=i+1;
Rnames{i} = 'HNO3 + hv = OH + NO2';
k(:,i) = J8;
Gstr{i,1} = 'HNO3'; 
fHNO3(i)=fHNO3(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'N2O5 = NO2 + NO3';
k(:,i) = KMT04;
Gstr{i,1} = 'N2O5'; 
fN2O5(i)=fN2O5(i)-1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HO2NO2 = HO2 + NO2';
k(:,i) = KMT10;
Gstr{i,1} = 'HO2NO2'; 
fHO2NO2(i)=fHO2NO2(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C5H8 = NISOPO2';
k(:,i) = 3.15e-12.*exp(-450./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C5H8'; 
fNO3(i)=fNO3(i)-1; fC5H8(i)=fC5H8(i)-1; fNISOPO2(i)=fNISOPO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = CH2OOE + MACR';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OOE(i)=fCH2OOE(i)+1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = CH2OOE + MVK';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fCH2OOE(i)=fCH2OOE(i)+1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO + MACROOA';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.3;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fMACROOA(i)=fMACROOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C5H8 = HCHO + MVKOOA';
k(:,i) = 1.03e-14.*exp(-1995./T).*0.2;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C5H8'; 
fO3(i)=fO3(i)-1; fC5H8(i)=fC5H8(i)-1; fHCHO(i)=fHCHO(i)+1; fMVKOOA(i)=fMVKOOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPAO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.148;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPBO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.444;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPCO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.102;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOPDO2';
k(:,i) = 2.7e-11.*exp(390./T).*0.306;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + HO2 = NISOPOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'HO2'; 
fNISOPO2(i)=fNISOPO2(i)-1; fHO2(i)=fHO2(i)-1; fNISOPOOH(i)=fNISOPOOH(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO = NISOPNO3';
k(:,i) = KRO2NO.*0.052;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO(i)=fNO(i)-1; fNISOPNO3(i)=fNISOPNO3(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO = NISOPO + NO2';
k(:,i) = KRO2NO.*0.948;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO(i)=fNO(i)-1; fNISOPO(i)=fNISOPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + NO3 = NISOPO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'NO3'; 
fNISOPO2(i)=fNISOPO2(i)-1; fNO3(i)=fNO3(i)-1; fNISOPO(i)=fNISOPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + RO2 = ISOPCNO3';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + RO2 = NC4CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO2 + RO2 = NISOPO';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'NISOPO2'; Gstr{i,2} = 'RO2';
fNISOPO2(i)=fNISOPO2(i)-1; fNISOPO(i)=fNISOPO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOE = CH2OO';
k(:,i) = KDEC.*0.22;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOE = CO';
k(:,i) = KDEC.*0.51;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOE = HO2 + CO + OH';
k(:,i) = KDEC.*0.27;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACR + hv = CH3C2H2O2 + CO + HO2';
k(:,i) = J18;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACR + hv = MACO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'MACR'; 
fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + MACR = MACO3 + HNO3';
k(:,i) = 3.4e-15;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'MACR'; 
fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MACR = HCHO + MGLYOOB';
k(:,i) = 1.4e-15.*exp(-2100./T).*0.12;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR'; 
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fHCHO(i)=fHCHO(i)+1; fMGLYOOB(i)=fMGLYOOB(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MACR = MGLYOX + CH2OOG';
k(:,i) = 1.4e-15.*exp(-2100./T).*0.88;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MACR'; 
fO3(i)=fO3(i)-1; fMACR(i)=fMACR(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH2OOG(i)=fCH2OOG(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACR = MACO3';
k(:,i) = 8.0e-12.*exp(380./T).*0.45;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACR = MACRO2';
k(:,i) = 8.0e-12.*exp(380./T).*0.47;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACRO2(i)=fMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACR = MACROHO2';
k(:,i) = 8.0e-12.*exp(380./T).*0.08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACR'; 
fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)-1; fMACROHO2(i)=fMACROHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVK + hv = C3H6 + CO';
k(:,i) = J23;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fC3H6(i)=fC3H6(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVK + hv = CH3CO3 + HCHO + CO + HO2';
k(:,i) = J24;
Gstr{i,1} = 'MVK'; 
fMVK(i)=fMVK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MVK = MGLOOA + HCHO';
k(:,i) = 8.5e-16.*exp(-1520./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK'; 
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fMGLOOA(i)=fMGLOOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MVK = MGLYOX + CH2OOB';
k(:,i) = 8.5e-16.*exp(-1520./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MVK'; 
fO3(i)=fO3(i)-1; fMVK(i)=fMVK(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVK = HMVKAO2';
k(:,i) = 2.6e-12.*exp(610./T).*0.3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVK'; 
fOH(i)=fOH(i)-1; fMVK(i)=fMVK(i)-1; fHMVKAO2(i)=fHMVKAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVK = HMVKBO2';
k(:,i) = 2.6e-12.*exp(610./T).*0.7;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVK'; 
fOH(i)=fOH(i)-1; fMVK(i)=fMVK(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = CO + HO2 + HO2';
k(:,i) = J11;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCHO + hv = H2 + CO';
k(:,i) = J12;
Gstr{i,1} = 'HCHO'; 
fHCHO(i)=fHCHO(i)-1; fH2(i)=fH2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HCHO = HNO3 + CO + HO2';
k(:,i) = 5.5e-16;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HCHO'; 
fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCHO = HO2 + CO';
k(:,i) = 5.4e-12.*exp(135./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCHO'; 
fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = C3H6';
k(:,i) = KDEC.*0.255;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fC3H6(i)=fC3H6(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = CH3CO3 + HCHO + HO2';
k(:,i) = KDEC.*0.255;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = MACROO';
k(:,i) = KDEC.*0.22;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fMACROO(i)=fMACROO(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = OH + CO + CH3CO3 + HCHO';
k(:,i) = KDEC.*0.27;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = C3H6';
k(:,i) = KDEC.*0.255;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fC3H6(i)=fC3H6(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = CH3O2 + HCHO + CO + HO2';
k(:,i) = KDEC.*0.255;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = MVKOO';
k(:,i) = KDEC.*0.22;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fMVKOO(i)=fMVKOO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = OH + MVKO2';
k(:,i) = KDEC.*0.27;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fOH(i)=fOH(i)+1; fMVKO2(i)=fMVKO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'HO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.100;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPAO + NO2';
k(:,i) = KRO2NO.*0.900;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPAO(i)=fISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO3 = ISOPAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO3'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPAO(i)=fISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + RO2 = HC4ACHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + RO2 = ISOPAO';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fISOPAO(i)=fISOPAO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + RO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'RO2';
fISOPAO2(i)=fISOPAO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + HO2 = ISOPBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'HO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPBOOH(i)=fISOPBOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBNO3';
k(:,i) = KRO2NO.*0.066;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBNO3(i)=fISOPBNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBO + NO2';
k(:,i) = KRO2NO.*0.934;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBO(i)=fISOPBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO3 = ISOPBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO3'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPBO(i)=fISOPBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + RO2 = ISOPBO';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'RO2';
fISOPBO2(i)=fISOPBO2(i)-1; fISOPBO(i)=fISOPBO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + RO2 = ISOPBOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'RO2';
fISOPBO2(i)=fISOPBO2(i)-1; fISOPBOH(i)=fISOPBOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'HO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.100;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = ISOPCO + NO2';
k(:,i) = KRO2NO.*0.900;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCO(i)=fISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO3 = ISOPCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO3'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPCO(i)=fISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + RO2 = HC4CCHO';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + RO2 = ISOPAOH';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + RO2 = ISOPCO';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fISOPCO(i)=fISOPCO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + HO2 = ISOPDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'HO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPDOOH(i)=fISOPDOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDNO3';
k(:,i) = KRO2NO.*0.134;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDNO3(i)=fISOPDNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDO + NO2';
k(:,i) = KRO2NO.*0.866;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDO(i)=fISOPDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO3 = ISOPDO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO3'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPDO(i)=fISOPDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + RO2 = HCOC5';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fHCOC5(i)=fHCOC5(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + RO2 = ISOPDO';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fISOPDO(i)=fISOPDO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + RO2 = ISOPDOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'RO2';
fISOPDO2(i)=fISOPDO2(i)-1; fISOPDOH(i)=fISOPDOH(i)+1; 

i=i+1;
Rnames{i} = 'NISOPOOH + hv = NISOPO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NISOPOOH'; 
fNISOPOOH(i)=fNISOPOOH(i)-1; fNISOPO(i)=fNISOPO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NISOPOOH = NC4CHO + OH';
k(:,i) = 1.03e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NISOPOOH'; 
fOH(i)=fOH(i)-1; fNISOPOOH(i)=fNISOPOOH(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NISOPNO3 + hv = NISOPO + NO2';
k(:,i) = J53.*2.0;
Gstr{i,1} = 'NISOPNO3'; 
fNISOPNO3(i)=fNISOPNO3(i)-1; fNISOPO(i)=fNISOPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NISOPNO3 = NC4CHO + NO2';
k(:,i) = 8.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NISOPNO3'; 
fOH(i)=fOH(i)-1; fNISOPNO3(i)=fNISOPNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NISOPO = NC4CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'NISOPO'; 
fNISOPO(i)=fNISOPO(i)-1; fNC4CHO(i)=fNC4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCNO3 + hv = ISOPCO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPCNO3'; 
fISOPCNO3(i)=fISOPCNO3(i)-1; fISOPCO(i)=fISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = GAOOB + NOA';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fGAOOB(i)=fGAOOB(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = HOCH2CHO + NC3OOA';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNC3OOA(i)=fNC3OOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCNO3 = INCO2';
k(:,i) = 6.93e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCNO3'; 
fOH(i)=fOH(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO + hv = NOA + CO + CO + HO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NC4CHO = NC4CO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NC4CHO'; 
fNO3(i)=fNO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NC4CHO = NOA + GLYOOC';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC4CHO'; 
fO3(i)=fO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNOA(i)=fNOA(i)+1; fGLYOOC(i)=fGLYOOC(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NC4CHO = NOAOOA + GLYOX';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC4CHO'; 
fO3(i)=fO3(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNOAOOA(i)=fNOAOOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CHO = C510O2';
k(:,i) = 4.16e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CHO'; 
fOH(i)=fOH(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fC510O2(i)=fC510O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CHO = NC4CO3';
k(:,i) = 4.16e-11.*0.48;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CHO'; 
fOH(i)=fOH(i)-1; fNC4CHO(i)=fNC4CHO(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + CO = HCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'CO'; 
fCH2OO(i)=fCH2OO(i)-1; fCO(i)=fCO(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO = HCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO'; 
fCH2OO(i)=fCH2OO(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + NO2 = HCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'NO2'; 
fCH2OO(i)=fCH2OO(i)-1; fNO2(i)=fNO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO + SO2 = HCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH2OO'; Gstr{i,2} = 'SO2'; 
fCH2OO(i)=fCH2OO(i)-1; fSO2(i)=fSO2(i)-1; fHCHO(i)=fHCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCHO(i)=fHCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH2OO = HCOOH';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH2OO'; 
fCH2OO(i)=fCH2OO(i)-1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3C2H2O2 = CH3CO3 + HCHO';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'CH3C2H2O2'; 
fCH3C2H2O2(i)=fCH3C2H2O2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3C2H2O2 = HCHO + CH3O2 + CO';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'CH3C2H2O2'; 
fCH3C2H2O2(i)=fCH3C2H2O2(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 = CH3C2H2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 = MACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACO2H(i)=fMACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + HO2 = MACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'HO2'; 
fMACO3(i)=fMACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACO3H(i)=fMACO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO = CH3C2H2O2 + NO2';
k(:,i) = 8.70e-12.*exp(290./T);
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO'; 
fMACO3(i)=fMACO3(i)-1; fNO(i)=fNO(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO2 = MPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO2'; 
fMACO3(i)=fMACO3(i)-1; fNO2(i)=fNO2(i)-1; fMPAN(i)=fMPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + NO3 = CH3C2H2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'NO3'; 
fMACO3(i)=fMACO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + RO2 = CH3C2H2O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3 + RO2 = MACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACO3'; Gstr{i,2} = 'RO2';
fMACO3(i)=fMACO3(i)-1; fMACO2H(i)=fMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOB = MGLYOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'MGLYOOB'; 
fMGLYOOB(i)=fMGLYOOB(i)-1; fMGLYOO(i)=fMGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOB = OH + CO + CH3CO3';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'MGLYOOB'; 
fMGLYOOB(i)=fMGLYOOB(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOX + hv = CH3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'MGLYOX'; 
fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + MGLYOX = CH3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'MGLYOX'; 
fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MGLYOX = CH3CO3 + CO';
k(:,i) = 1.9e-12.*exp(575./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MGLYOX'; 
fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOG = CH2OO';
k(:,i) = KDEC.*0.37;
Gstr{i,1} = 'CH2OOG'; 
fCH2OOG(i)=fCH2OOG(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOG = CO';
k(:,i) = KDEC.*0.47;
Gstr{i,1} = 'CH2OOG'; 
fCH2OOG(i)=fCH2OOG(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOG = HO2 + CO + OH';
k(:,i) = KDEC.*0.16;
Gstr{i,1} = 'CH2OOG'; 
fCH2OOG(i)=fCH2OOG(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + HO2 = MACROOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'HO2'; 
fMACRO2(i)=fMACRO2(i)-1; fHO2(i)=fHO2(i)-1; fMACROOH(i)=fMACROOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO = MACRO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fMACRO(i)=fMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO3 = MACRO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO3'; 
fMACRO2(i)=fMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fMACRO(i)=fMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + RO2 = MACRO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'RO2';
fMACRO2(i)=fMACRO2(i)-1; fMACRO(i)=fMACRO(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + RO2 = MACROH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'RO2';
fMACRO2(i)=fMACRO2(i)-1; fMACROH(i)=fMACROH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + HO2 = MACROHOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'HO2'; 
fMACROHO2(i)=fMACROHO2(i)-1; fHO2(i)=fHO2(i)-1; fMACROHOOH(i)=fMACROHOOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO = MACROHNO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMACROHNO3(i)=fMACROHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO = MACROHO + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMACROHO(i)=fMACROHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + NO3 = MACROHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO3'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO3(i)=fNO3(i)-1; fMACROHO(i)=fMACROHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + RO2 = C3MDIALOH';
k(:,i) = 1.4e-12.*0.2;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + RO2 = MACROH';
k(:,i) = 1.4e-12.*0.2;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fMACROH(i)=fMACROH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO2 + RO2 = MACROHO';
k(:,i) = 1.4e-12.*0.6;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'RO2';
fMACROHO2(i)=fMACROHO2(i)-1; fMACROHO(i)=fMACROHO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3AO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.35;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C3H6 = PRONO3BO2';
k(:,i) = 4.6e-13.*exp(-1155./T).*0.65;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C3H6'; 
fNO3(i)=fNO3(i)-1; fC3H6(i)=fC3H6(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 = CH2OOB + CH3CHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C3H6 = CH3CHOOA + HCHO';
k(:,i) = 5.5e-15.*exp(-1880./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C3H6'; 
fO3(i)=fO3(i)-1; fC3H6(i)=fC3H6(i)-1; fCH3CHOOA(i)=fCH3CHOOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = HYPROPO2';
k(:,i) = KMT16.*0.87;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C3H6 = IPROPOLO2';
k(:,i) = KMT16.*0.13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C3H6'; 
fOH(i)=fOH(i)-1; fC3H6(i)=fC3H6(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3H(i)=fCH3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + HO2 = CH3O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'HO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO = NO2 + CH3O2';
k(:,i) = 7.5e-12.*exp(290./T);
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO2 = PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO2'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPAN(i)=fPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + NO3 = NO2 + CH3O2';
k(:,i) = 4.0e-12;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'NO3'; 
fCH3CO3(i)=fCH3CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3CO2H';
k(:,i) = 2.*(K298CH3O2.*2.9e-12.*exp(500./T)).^0.5.*0.3;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3 + RO2 = CH3O2';
k(:,i) = 2.*(K298CH3O2.*2.9e-12.*exp(500./T)).^0.5.*0.7;
Gstr{i,1} = 'CH3CO3'; Gstr{i,2} = 'RO2';
fCH3CO3(i)=fCH3CO3(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOA = CH3CHO';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'MGLOOA'; 
fMGLOOA(i)=fMGLOOA(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOA = CH3CO3 + HCHO + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'MGLOOA'; 
fMGLOOA(i)=fMGLOOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOA = MGLOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'MGLOOA'; 
fMGLOOA(i)=fMGLOOA(i)-1; fMGLOO(i)=fMGLOO(i)+1; 

i=i+1;
Rnames{i} = 'MGLOOA = OH + CO + CH3CO3';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'MGLOOA'; 
fMGLOOA(i)=fMGLOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = CH2OO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = CO';
k(:,i) = KDEC.*0.40;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOB = HO2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'CH2OOB'; 
fCH2OOB(i)=fCH2OOB(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + HO2 = HMVKAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'HO2'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO = HMVKANO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO = HMVKAO + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO(i)=fNO(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + NO3 = HMVKAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'NO3'; 
fHMVKAO2(i)=fHMVKAO2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = CO2H3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = HMVKAO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO2 + RO2 = HO12CO3C4';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HMVKAO2'; Gstr{i,2} = 'RO2';
fHMVKAO2(i)=fHMVKAO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + HO2 = HMVKBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'HO2'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO = HMVKBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO(i)=fNO(i)-1; fHMVKBO(i)=fHMVKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO3 = HMVKBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO3'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBO(i)=fHMVKBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + RO2 = BIACETOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + RO2 = HMVKBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fHMVKBO(i)=fHMVKBO(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + RO2 = HO12CO3C4';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'RO2';
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + CO = MACR';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'CO'; 
fMACROO(i)=fMACROO(i)-1; fCO(i)=fCO(i)-1; fMACR(i)=fMACR(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO = MACR + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO'; 
fMACROO(i)=fMACROO(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + NO2 = MACR + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'NO2'; 
fMACROO(i)=fMACROO(i)-1; fNO2(i)=fNO2(i)-1; fMACR(i)=fMACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROO + SO2 = MACR + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MACROO'; Gstr{i,2} = 'SO2'; 
fMACROO(i)=fMACROO(i)-1; fSO2(i)=fSO2(i)-1; fMACR(i)=fMACR(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROO = MACO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MACROO'; 
fMACROO(i)=fMACROO(i)-1; fMACO2H(i)=fMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACROO = MACR + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MACROO'; 
fMACROO(i)=fMACROO(i)-1; fMACR(i)=fMACR(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = CH3OOH';
k(:,i) = 3.8e-13.*exp(780./T).*(1-1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3OOH(i)=fCH3OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + HO2 = HCHO';
k(:,i) = 3.8e-13.*exp(780./T).*(1./(1+498.*exp(-1160./T)));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'HO2'; 
fCH3O2(i)=fCH3O2(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3NO3';
k(:,i) = 2.3e-12.*exp(360./T).*0.001;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO = CH3O + NO2';
k(:,i) = 2.3e-12.*exp(360./T).*0.999;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO'; 
fCH3O2(i)=fCH3O2(i)-1; fNO(i)=fNO(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO2 = CH3O2NO2';
k(:,i) = KMT13;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO2'; 
fCH3O2(i)=fCH3O2(i)-1; fNO2(i)=fNO2(i)-1; fCH3O2NO2(i)=fCH3O2NO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + NO3 = CH3O + NO2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'NO3'; 
fCH3O2(i)=fCH3O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3O';
k(:,i) = 2.*KCH3O2.*7.18.*exp(-885./T);
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3O(i)=fCH3O(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = CH3OH';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2 + RO2 = HCHO';
k(:,i) = 2.*KCH3O2.*0.5.*(1-7.18.*exp(-885./T));
Gstr{i,1} = 'CH3O2'; Gstr{i,2} = 'RO2';
fCH3O2(i)=fCH3O2(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + CO = MVK';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'CO'; 
fMVKOO(i)=fMVKOO(i)-1; fCO(i)=fCO(i)-1; fMVK(i)=fMVK(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO = MVK + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO'; 
fMVKOO(i)=fMVKOO(i)-1; fNO(i)=fNO(i)-1; fMVK(i)=fMVK(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + NO2 = MVK + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'NO2'; 
fMVKOO(i)=fMVKOO(i)-1; fNO2(i)=fNO2(i)-1; fMVK(i)=fMVK(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO + SO2 = MVK + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MVKOO'; Gstr{i,2} = 'SO2'; 
fMVKOO(i)=fMVKOO(i)-1; fSO2(i)=fSO2(i)-1; fMVK(i)=fMVK(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOO = MVK + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MVKOO'; 
fMVKOO(i)=fMVKOO(i)-1; fMVK(i)=fMVK(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + HO2 = MVKOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'HO2'; 
fMVKO2(i)=fMVKO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOOH(i)=fMVKOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + NO = MVKO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'NO'; 
fMVKO2(i)=fMVKO2(i)-1; fNO(i)=fNO(i)-1; fMVKO(i)=fMVKO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + NO3 = MVKO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'NO3'; 
fMVKO2(i)=fMVKO2(i)-1; fNO3(i)=fNO3(i)-1; fMVKO(i)=fMVKO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + RO2 = MVKO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fMVKO(i)=fMVKO(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + RO2 = MVKOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fMVKOH(i)=fMVKOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKO2 + RO2 = VGLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKO2'; Gstr{i,2} = 'RO2';
fMVKO2(i)=fMVKO2(i)-1; fVGLYOX(i)=fVGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAOOH + hv = ISOPAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPAOOH'; 
fISOPAOOH(i)=fISOPAOOH(i)-1; fISOPAO(i)=fISOPAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = HC4ACHO + OH';
k(:,i) = 1.54e-10.*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = IEPOXA + OH';
k(:,i) = 1.54e-10.*0.93;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fIEPOXA(i)=fIEPOXA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOOH = ISOPAO2';
k(:,i) = 1.54e-10.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOOH'; 
fOH(i)=fOH(i)-1; fISOPAOOH(i)=fISOPAOOH(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPANO3 + hv = ISOPAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPANO3'; 
fISOPANO3(i)=fISOPANO3(i)-1; fISOPAO(i)=fISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACETOL + NC2OOA';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNC2OOA(i)=fNC2OOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACLOOA + NO3CH2CHO';
k(:,i) = 5.30e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACLOOA(i)=fACLOOA(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPANO3 = INAO2';
k(:,i) = 6.93e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPANO3'; 
fOH(i)=fOH(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO = C524O2';
k(:,i) = KDEC.*0.25;
Gstr{i,1} = 'ISOPAO'; 
fISOPAO(i)=fISOPAO(i)-1; fC524O2(i)=fC524O2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO = HC4CCHO + HO2';
k(:,i) = KDEC.*0.75;
Gstr{i,1} = 'ISOPAO'; 
fISOPAO(i)=fISOPAO(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACHO + hv = ACETOL + HO2 + HO2 + CO + CO';
k(:,i) = J18;
Gstr{i,1} = 'HC4ACHO'; 
fHC4ACHO(i)=fHC4ACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACHO + hv = HC4ACO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'HC4ACHO'; 
fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC4ACHO = HC4ACO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC4ACHO'; 
fNO3(i)=fNO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4ACHO = ACETOL + GLYOOC';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4ACHO'; 
fO3(i)=fO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOOC(i)=fGLYOOC(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4ACHO = ACLOOA + GLYOX';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4ACHO'; 
fO3(i)=fO3(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fACLOOA(i)=fACLOOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C58O2';
k(:,i) = 4.52e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = HC4ACO3';
k(:,i) = 4.52e-11.*0.48;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOH = HC4ACHO + HO2';
k(:,i) = 9.30e-11.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOH'; 
fOH(i)=fOH(i)-1; fISOPAOH(i)=fISOPAOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPAOH = HC4CCHO + HO2';
k(:,i) = 9.30e-11.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPAOH'; 
fOH(i)=fOH(i)-1; fISOPAOH(i)=fISOPAOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBOOH + hv = ISOPBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPBOOH'; 
fISOPBOOH(i)=fISOPBOOH(i)-1; fISOPBO(i)=fISOPBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOOH = IEPOXB + OH';
k(:,i) = 5.00e-11.*0.92;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOOH'; 
fOH(i)=fOH(i)-1; fISOPBOOH(i)=fISOPBOOH(i)-1; fIEPOXB(i)=fIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOOH = ISOPBO2';
k(:,i) = 5.00e-11.*0.08;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOOH'; 
fOH(i)=fOH(i)-1; fISOPBOOH(i)=fISOPBOOH(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBNO3 + hv = ISOPBO + NO2';
k(:,i) = J55;
Gstr{i,1} = 'ISOPBNO3'; 
fISOPBNO3(i)=fISOPBNO3(i)-1; fISOPBO(i)=fISOPBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = HCHO + MACRNOOA';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fMACRNOOA(i)=fMACRNOOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = MACRNO3 + CH2OOB';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB1O2';
k(:,i) = 1.36e-11.*0.72;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB2O2';
k(:,i) = 1.36e-11.*0.28;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB2O2(i)=fINB2O2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO = MVK + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'ISOPBO'; 
fISOPBO(i)=fISOPBO(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBOH = ISOPBO';
k(:,i) = 3.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBOH'; 
fOH(i)=fOH(i)-1; fISOPBOH(i)=fISOPBOH(i)-1; fISOPBO(i)=fISOPBO(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCOOH + hv = ISOPCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPCOOH'; 
fISOPCOOH(i)=fISOPCOOH(i)-1; fISOPCO(i)=fISOPCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = HC4CCHO + OH';
k(:,i) = 1.54e-10.*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = IEPOXC + OH';
k(:,i) = 1.54e-10.*0.93;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fIEPOXC(i)=fIEPOXC(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCOOH = ISOPCO2';
k(:,i) = 1.54e-10.*0.02;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCOOH'; 
fOH(i)=fOH(i)-1; fISOPCOOH(i)=fISOPCOOH(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO = HC4ACHO + HO2';
k(:,i) = KDEC.*0.75;
Gstr{i,1} = 'ISOPCO'; 
fISOPCO(i)=fISOPCO(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO = HC4CCHO + HO2';
k(:,i) = KDEC.*0.25;
Gstr{i,1} = 'ISOPCO'; 
fISOPCO(i)=fISOPCO(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCHO + hv = CH3CO3 + HO2 + CO + HOCH2CHO';
k(:,i) = J18;
Gstr{i,1} = 'HC4CCHO'; 
fHC4CCHO(i)=fHC4CCHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCHO + hv = HC4CCO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'HC4CCHO'; 
fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC4CCHO = HC4CCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC4CCHO'; 
fNO3(i)=fNO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4CCHO = MGLYOOA + HOCH2CHO';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4CCHO'; 
fO3(i)=fO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC4CCHO = MGLYOX + GAOOB';
k(:,i) = 2.40e-17.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC4CCHO'; 
fO3(i)=fO3(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGAOOB(i)=fGAOOB(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57O2';
k(:,i) = 4.52e-11.*0.52;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = HC4CCO3';
k(:,i) = 4.52e-11.*0.48;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDOOH + hv = ISOPDO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPDOOH'; 
fISOPDOOH(i)=fISOPDOOH(i)-1; fISOPDO(i)=fISOPDO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = HCOC5 + OH';
k(:,i) = 1.15e-10.*0.22;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = IEPOXB + OH';
k(:,i) = 1.15e-10.*0.75;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fIEPOXB(i)=fIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOOH = ISOPDO2';
k(:,i) = 1.15e-10.*0.03;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOOH'; 
fOH(i)=fOH(i)-1; fISOPDOOH(i)=fISOPDOOH(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDNO3 + hv = ISOPDO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'ISOPDNO3'; 
fISOPDNO3(i)=fISOPDNO3(i)-1; fISOPDO(i)=fISOPDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 = CH2OOC + MVKNO3';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fCH2OOC(i)=fCH2OOC(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 = HCHO + NC4OOA';
k(:,i) = 1.06e-16.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNC4OOA(i)=fNC4OOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDNO3 = INDO2';
k(:,i) = 2.54e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDNO3'; 
fOH(i)=fOH(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fINDO2(i)=fINDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO = MACR + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'ISOPDO'; 
fISOPDO(i)=fISOPDO(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOC5 + hv = CH3CO3 + HCHO + HOCH2CO3';
k(:,i) = J24;
Gstr{i,1} = 'HCOC5'; 
fHCOC5(i)=fHCOC5(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOC5 = C59O2';
k(:,i) = 3.81e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOC5'; 
fOH(i)=fOH(i)-1; fHCOC5(i)=fHCOC5(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOH = HCOC5 + HO2';
k(:,i) = 7.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOH'; 
fOH(i)=fOH(i)-1; fISOPDOH(i)=fISOPDOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOOB = GAOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'GAOOB'; 
fGAOOB(i)=fGAOOB(i)-1; fGAOO(i)=fGAOO(i)+1; 

i=i+1;
Rnames{i} = 'GAOOB = OH + HO2 + CO + HCHO';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'GAOOB'; 
fGAOOB(i)=fGAOOB(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'NOA + OH = MGLYOX + NO2';
k(:,i) = 1e-12;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + hv = CH3CO3 + HCHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + hv = CH3COCH2O + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + NO3 = HOCH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'NO3'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.200;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + OH = HOCH2CO3';
k(:,i) = 1.00e-11.*0.800;
Gstr{i,1} = 'HOCH2CHO'; Gstr{i,2} = 'OH'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CHO + hv = HO2 + HCHO + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOCH2CHO'; 
fHOCH2CHO(i)=fHOCH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NC3OOA = NC3OO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'NC3OOA'; 
fNC3OOA(i)=fNC3OOA(i)-1; fNC3OO(i)=fNC3OO(i)+1; 

i=i+1;
Rnames{i} = 'NC3OOA = OH + NO2 + MGLYOX';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'NC3OOA'; 
fNC3OOA(i)=fNC3OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + HO2 = INCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'HO2'; 
fINCO2(i)=fINCO2(i)-1; fHO2(i)=fHO2(i)-1; fINCOOH(i)=fINCOOH(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO = INCNO3';
k(:,i) = KRO2NO.*0.145;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fINCNO3(i)=fINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO = INCO + NO2';
k(:,i) = KRO2NO.*0.855;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fINCO(i)=fINCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO3 = INCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO3'; 
fINCO2(i)=fINCO2(i)-1; fNO3(i)=fNO3(i)-1; fINCO(i)=fINCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + RO2 = INCCO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fINCCO(i)=fINCCO(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + RO2 = INCO';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fINCO(i)=fINCO(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + RO2 = INCOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'RO2';
fINCO2(i)=fINCO2(i)-1; fINCOH(i)=fINCOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NC4CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4CO2H(i)=fNC4CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NC4CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC4CO3H(i)=fNC4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + HO2 = NOA + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'HO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO = NOA + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO2 = C5PAN18';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO2'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN18(i)=fC5PAN18(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + NO3 = NOA + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'NO3'; 
fNC4CO3(i)=fNC4CO3(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + RO2 = NC4CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'RO2';
fNC4CO3(i)=fNC4CO3(i)-1; fNC4CO2H(i)=fNC4CO2H(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3 + RO2 = NOA + HO2 + CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NC4CO3'; Gstr{i,2} = 'RO2';
fNC4CO3(i)=fNC4CO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOC = GLYOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'GLYOOC'; 
fGLYOOC(i)=fGLYOOC(i)-1; fGLYOO(i)=fGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOC = OH + HO2 + CO + CO';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'GLYOOC'; 
fGLYOOC(i)=fGLYOOC(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NOAOOA = NOAOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'NOAOOA'; 
fNOAOOA(i)=fNOAOOA(i)-1; fNOAOO(i)=fNOAOO(i)+1; 

i=i+1;
Rnames{i} = 'NOAOOA = OH + NO2 + MGLYOX';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'NOAOOA'; 
fNOAOOA(i)=fNOAOOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + H2';
k(:,i) = J31;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fH2(i)=fH2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = CO + CO + HO2 + HO2';
k(:,i) = J33;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOX + hv = HCHO + CO';
k(:,i) = J32;
Gstr{i,1} = 'GLYOX'; 
fGLYOX(i)=fGLYOX(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + GLYOX = CO + CO + HO2 + HNO3';
k(:,i) = KNO3AL.*0.6;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + GLYOX = HCOCO3 + HNO3';
k(:,i) = KNO3AL.*0.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = CO + CO + HO2';
k(:,i) = 3.1e-12.*exp(340./T).*0.6;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = HCOCO3';
k(:,i) = 3.1e-12.*exp(340./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + HO2 = C510OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'HO2'; 
fC510O2(i)=fC510O2(i)-1; fHO2(i)=fHO2(i)-1; fC510OOH(i)=fC510OOH(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + NO = C510O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'NO'; 
fC510O2(i)=fC510O2(i)-1; fNO(i)=fNO(i)-1; fC510O(i)=fC510O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + NO3 = C510O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'NO3'; 
fC510O2(i)=fC510O2(i)-1; fNO3(i)=fNO3(i)-1; fC510O(i)=fC510O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + RO2 = C510O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'RO2';
fC510O2(i)=fC510O2(i)-1; fC510O(i)=fC510O(i)+1; 

i=i+1;
Rnames{i} = 'C510O2 + RO2 = C510OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C510O2'; Gstr{i,2} = 'RO2';
fC510O2(i)=fC510O2(i)-1; fC510OH(i)=fC510OH(i)+1; 

i=i+1;
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO2H = CH3C2H2O2';
k(:,i) = 1.51e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO2H'; 
fOH(i)=fOH(i)-1; fMACO2H(i)=fMACO2H(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; 

i=i+1;
Rnames{i} = 'MACO3H + hv = CH3C2H2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACO3H'; 
fMACO3H(i)=fMACO3H(i)-1; fCH3C2H2O2(i)=fCH3C2H2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = MACO3';
k(:,i) = 1.661e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fMACO3(i)=fMACO3(i)+1; 

i=i+1;
Rnames{i} = 'MPAN = MACO3 + NO2';
k(:,i) = 1.6e16.*exp(-13500./T);
Gstr{i,1} = 'MPAN'; 
fMPAN(i)=fMPAN(i)-1; fMACO3(i)=fMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + MPAN = HCHO + CH3CO3 + NO3';
k(:,i) = 8.2e-18;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'MPAN'; 
fO3(i)=fO3(i)-1; fMPAN(i)=fMPAN(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = ACETOL + CO + NO2';
k(:,i) = 2.9e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'CO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'NO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLYOO'; Gstr{i,2} = 'SO2'; 
fMGLYOO(i)=fMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLYOO'; 
fMGLYOO(i)=fMGLYOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MACROOH + hv = ACETOL + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'MACROOH'; 
fMACROOH(i)=fMACROOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROOH + hv = MACRO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACROOH'; 
fMACROOH(i)=fMACROOH(i)-1; fMACRO(i)=fMACRO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACROOH = ACETOL + CO + OH';
k(:,i) = 3.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACROOH'; 
fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRO = ACETOL + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MACRO'; 
fMACRO(i)=fMACRO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROH + hv = ACETOL + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACROH'; 
fMACROH(i)=fMACROH(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACROH = C3MDIALOH + HO2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACROH'; 
fOH(i)=fOH(i)-1; fMACROH(i)=fMACROH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH + OH = C3MDIALOH + OH';
k(:,i) = 5.55e-11;
Gstr{i,1} = 'MACROHOOH'; Gstr{i,2} = 'OH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH + hv = IBUTALOH + CO + HO2  + OH';
k(:,i) = J17;
Gstr{i,1} = 'MACROHOOH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fIBUTALOH(i)=fIBUTALOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHOOH + hv = MACROHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACROHOOH'; 
fMACROHOOH(i)=fMACROHOOH(i)-1; fMACROHO(i)=fMACROHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACROHNO3 + OH = NOA + CO + HO2';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MACROHNO3'; Gstr{i,2} = 'OH'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHNO3 + hv = MACROHO + NO2';
k(:,i) = J55;
Gstr{i,1} = 'MACROHNO3'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fMACROHO(i)=fMACROHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHNO3 + hv = NOA + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACROHNO3'; 
fMACROHNO3(i)=fMACROHNO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO = MGLYOX + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MACROHO'; 
fMACROHO(i)=fMACROHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + OH = CHOMOHCO3';
k(:,i) = 1.32e-10;
Gstr{i,1} = 'C3MDIALOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + hv = MGLYOX + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + HO2 = PR1O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'HO2'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fHO2(i)=fHO2(i)-1; fPR1O2HNO3(i)=fPR1O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO = PRONO3AO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO(i)=fNO(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + NO3 = PRONO3AO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'NO3'; 
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fNO3(i)=fNO3(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = CHOPRNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = PRONO3AO';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO2 + RO2 = PROPOLNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'PRONO3AO2'; Gstr{i,2} = 'RO2';
fPRONO3AO2(i)=fPRONO3AO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + HO2 = PR2O2HNO3';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'HO2'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fHO2(i)=fHO2(i)-1; fPR2O2HNO3(i)=fPR2O2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO = PRONO3BO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO(i)=fNO(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + NO3 = PRONO3BO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'NO3'; 
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNO3(i)=fNO3(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = NOA';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = PROLNO3';
k(:,i) = 4.00e-14.*0.2;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO2 + RO2 = PRONO3BO';
k(:,i) = 4.00e-14.*0.6;
Gstr{i,1} = 'PRONO3BO2'; Gstr{i,2} = 'RO2';
fPRONO3BO2(i)=fPRONO3BO2(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHO + hv = CH3O2 + HO2 + CO';
k(:,i) = J13;
Gstr{i,1} = 'CH3CHO'; 
fCH3CHO(i)=fCH3CHO(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CH3CHO = HNO3 + CH3CO3';
k(:,i) = 1.4e-12.*exp(-1860./T);
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CH3CHO'; 
fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = CH3CO3';
k(:,i) = 4.7e-12.*exp(345./T).*0.95;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3CHO = HCOCH2O2';
k(:,i) = 4.7e-12.*exp(345./T).*0.05;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3CHO'; 
fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3CHOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3CHOO(i)=fCH3CHOO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3O2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH3O2 + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOOA = CH4';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'CH3CHOOA'; 
fCH3CHOOA(i)=fCH3CHOOA(i)-1; fCH4(i)=fCH4(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + HO2 = HYPROPO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'HO2'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fHO2(i)=fHO2(i)-1; fHYPROPO2H(i)=fHYPROPO2H(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + NO3 = HYPROPO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'NO3'; 
fHYPROPO2(i)=fHYPROPO2(i)-1; fNO3(i)=fNO3(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = ACETOL';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = HYPROPO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2 + RO2 = PROPGLY';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HYPROPO2'; Gstr{i,2} = 'RO2';
fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 = HYPROPO + NO2';
k(:,i) = KRO2NO.*0.977;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO + HYPROPO2 = PROPOLNO3';
k(:,i) = KRO2NO.*0.023;
Gstr{i,1} = 'NO'; Gstr{i,2} = 'HYPROPO2'; 
fNO(i)=fNO(i)-1; fHYPROPO2(i)=fHYPROPO2(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + HO2 = IPROPOLO2H';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'HO2'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLO2H(i)=fIPROPOLO2H(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = IPROPOLO + NO2';
k(:,i) = KRO2NO.*0.991;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO = PROLNO3';
k(:,i) = KRO2NO.*0.009;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO(i)=fNO(i)-1; fPROLNO3(i)=fPROLNO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + NO3 = IPROPOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'NO3'; 
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fNO3(i)=fNO3(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = CH3CHOHCHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = IPROPOLO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2 + RO2 = PROPGLY';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'IPROPOLO2'; Gstr{i,2} = 'RO2';
fIPROPOLO2(i)=fIPROPOLO2(i)-1; fPROPGLY(i)=fPROPGLY(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + OH = CH3CO3';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CH3CO3H'; Gstr{i,2} = 'OH'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fOH(i)=fOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO3H + hv = CH3O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3CO3H'; 
fCH3CO3H(i)=fCH3CO3H(i)-1; fCH3O2(i)=fCH3O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PAN + OH = HCHO + CO + NO2';
k(:,i) = 3e-14;
Gstr{i,1} = 'PAN'; Gstr{i,2} = 'OH'; 
fPAN(i)=fPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PAN = CH3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PAN'; 
fPAN(i)=fPAN(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + CO = MGLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'CO'; 
fMGLOO(i)=fMGLOO(i)-1; fCO(i)=fCO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO = MGLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO'; 
fMGLOO(i)=fMGLOO(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + NO2 = MGLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'NO2'; 
fMGLOO(i)=fMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO + SO2 = MGLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MGLOO'; Gstr{i,2} = 'SO2'; 
fMGLOO(i)=fMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = CH3COCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLOO = MGLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MGLOO'; 
fMGLOO(i)=fMGLOO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAOOH + hv = HMVKAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKAOOH'; 
fHMVKAOOH(i)=fHMVKAOOH(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKAOOH = CO2H3CHO + OH';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKAOOH'; 
fOH(i)=fOH(i)-1; fHMVKAOOH(i)=fHMVKAOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKANO3 = CO2H3CHO + NO2';
k(:,i) = 2.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKANO3'; 
fOH(i)=fOH(i)-1; fHMVKANO3(i)=fHMVKANO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKAO = MGLYOX + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HMVKAO'; 
fHMVKAO(i)=fHMVKAO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CHO + hv = MGLYOX + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2H3CHO'; 
fCO2H3CHO(i)=fCO2H3CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO2H3CHO = CO2H3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO2H3CHO'; 
fNO3(i)=fNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CHO = CO2H3CO3';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CHO'; 
fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'HO12CO3C4 + hv = CH3CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HO12CO3C4'; 
fHO12CO3C4(i)=fHO12CO3C4(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO12CO3C4 = BIACETOH + HO2';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO12CO3C4'; 
fOH(i)=fOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBOOH + hv = HMVKBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMVKBOOH'; 
fHMVKBOOH(i)=fHMVKBOOH(i)-1; fHMVKBO(i)=fHMVKBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMVKBOOH = BIACETOH + OH';
k(:,i) = 3.95e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMVKBOOH'; 
fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO = CH3CO3 + HOCH2CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'HMVKBO'; 
fHMVKBO(i)=fHMVKBO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOH + hv = CH3CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOH'; 
fBIACETOH(i)=fBIACETOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOH = CO23C3CHO + HO2';
k(:,i) = 2.69e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOH'; 
fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OOH + hv = CH3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3OOH'; 
fCH3OOH(i)=fCH3OOH(i)-1; fCH3O(i)=fCH3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = CH3O2';
k(:,i) = 5.3e-12.*exp(190./T).*0.6;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3OOH = HCHO + OH';
k(:,i) = 5.3e-12.*exp(190./T).*0.4;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3OOH'; 
fOH(i)=fOH(i)-1; fCH3OOH(i)=fCH3OOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3NO3 + hv = CH3O + NO2';
k(:,i) = J51;
Gstr{i,1} = 'CH3NO3'; 
fCH3NO3(i)=fCH3NO3(i)-1; fCH3O(i)=fCH3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3NO3 = HCHO + NO2';
k(:,i) = 4.0e-13.*exp(-845./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3NO3'; 
fOH(i)=fOH(i)-1; fCH3NO3(i)=fCH3NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O = HCHO + HO2';
k(:,i) = 7.2e-14.*exp(-1080./T).*.21.*M;
Gstr{i,1} = 'CH3O'; 
fCH3O(i)=fCH3O(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3O2NO2 = CH3O2 + NO2';
k(:,i) = KMT14;
Gstr{i,1} = 'CH3O2NO2'; 
fCH3O2NO2(i)=fCH3O2NO2(i)-1; fCH3O2(i)=fCH3O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3OH + OH = HO2 + HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOH + hv = HCHO + OH + ACO3';
k(:,i) = J24;
Gstr{i,1} = 'MVKOOH'; 
fMVKOOH(i)=fMVKOOH(i)-1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOH + hv = MVKO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOOH'; 
fMVKOOH(i)=fMVKOOH(i)-1; fMVKO(i)=fMVKO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVKOOH = MVKO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVKOOH'; 
fOH(i)=fOH(i)-1; fMVKOOH(i)=fMVKOOH(i)-1; fMVKO2(i)=fMVKO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MVKOOH = VGLYOX + OH';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MVKOOH'; 
fOH(i)=fOH(i)-1; fMVKOOH(i)=fMVKOOH(i)-1; fVGLYOX(i)=fVGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKO = HCHO + ACO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MVKO'; 
fMVKO(i)=fMVKO(i)-1; fHCHO(i)=fHCHO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + O3 = HMGLOOA + HCHO';
k(:,i) = 7.51e-16.*exp(-1521./T).*0.5;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'O3'; 
fMVKOH(i)=fMVKOH(i)-1; fO3(i)=fO3(i)-1; fHMGLOOA(i)=fHMGLOOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + O3 = HOCH2COCHO + CH2OOB';
k(:,i) = 7.51e-16.*exp(-1521./T).*0.5;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'O3'; 
fMVKOH(i)=fMVKOH(i)-1; fO3(i)=fO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + OH = MVKOHAO2';
k(:,i) = 4.60e-12.*exp(452./T).*0.3;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'OH'; 
fMVKOH(i)=fMVKOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHAO2(i)=fMVKOHAO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + OH = MVKOHBO2';
k(:,i) = 4.60e-12.*exp(452./T).*0.7;
Gstr{i,1} = 'MVKOH'; Gstr{i,2} = 'OH'; 
fMVKOH(i)=fMVKOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHBO2(i)=fMVKOHBO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + hv = ALLYLOH + CO';
k(:,i) = J23;
Gstr{i,1} = 'MVKOH'; 
fMVKOH(i)=fMVKOH(i)-1; fALLYLOH(i)=fALLYLOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOH + hv = HCHO + HO2 + HOCH2CO3 + CO';
k(:,i) = J24;
Gstr{i,1} = 'MVKOH'; 
fMVKOH(i)=fMVKOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + VGLYOX = CO + ACO3 + HNO3';
k(:,i) = KNO3AL.*2.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'VGLYOX'; 
fNO3(i)=fNO3(i)-1; fVGLYOX(i)=fVGLYOX(i)-1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + VGLYOX = CO + ACO3';
k(:,i) = 2.95e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'VGLYOX'; 
fOH(i)=fOH(i)-1; fVGLYOX(i)=fVGLYOX(i)-1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'VGLYOX + hv = HO2 + CO + ACO3';
k(:,i) = J34;
Gstr{i,1} = 'VGLYOX'; 
fVGLYOX(i)=fVGLYOX(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXA = IEACHO + HO2';
k(:,i) = 5.23e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXA'; 
fOH(i)=fOH(i)-1; fIEPOXA(i)=fIEPOXA(i)-1; fIEACHO(i)=fIEACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + OH = MGLYOX + HO2';
k(:,i) = 1.6e-12.*exp(305./T);
Gstr{i,1} = 'ACETOL'; Gstr{i,2} = 'OH'; 
fACETOL(i)=fACETOL(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACETOL + hv = CH3CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'ACETOL'; 
fACETOL(i)=fACETOL(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OOA = NC2OO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'NC2OOA'; 
fNC2OOA(i)=fNC2OOA(i)-1; fNC2OO(i)=fNC2OO(i)+1; 

i=i+1;
Rnames{i} = 'NC2OOA = OH + NO2 + GLYOX';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'NC2OOA'; 
fNC2OOA(i)=fNC2OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'ACLOOA = ACLOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'ACLOOA'; 
fACLOOA(i)=fACLOOA(i)-1; fACLOO(i)=fACLOO(i)+1; 

i=i+1;
Rnames{i} = 'ACLOOA = OH + HO2 + MGLYOX';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'ACLOOA'; 
fACLOOA(i)=fACLOOA(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + NO3 = NO3CH2CO3 + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'NO3'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO3(i)=fNO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + OH = NO3CH2CO3';
k(:,i) = 3.40e-12;
Gstr{i,1} = 'NO3CH2CHO'; Gstr{i,2} = 'OH'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + hv = HO2 + CO + HCHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CHO + hv = NO2 + HCOCH2O';
k(:,i) = J56;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO2(i)=fNO2(i)+1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + HO2 = INAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'HO2'; 
fINAO2(i)=fINAO2(i)-1; fHO2(i)=fHO2(i)-1; fINAOOH(i)=fINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INANO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INAO + NO2';
k(:,i) = KRO2NO.*0.928;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fINAO(i)=fINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO3 = INAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO3'; 
fINAO2(i)=fINAO2(i)-1; fNO3(i)=fNO3(i)-1; fINAO(i)=fINAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + RO2 = INAO';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'RO2';
fINAO2(i)=fINAO2(i)-1; fINAO(i)=fINAO(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + RO2 = INAOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'RO2';
fINAO2(i)=fINAO2(i)-1; fINAOH(i)=fINAOH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + HO2 = C524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'HO2'; 
fC524O2(i)=fC524O2(i)-1; fHO2(i)=fHO2(i)-1; fC524OOH(i)=fC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524NO3';
k(:,i) = KRO2NO.*0.134;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fC524NO3(i)=fC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524O + NO2';
k(:,i) = KRO2NO.*0.866;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fC524O(i)=fC524O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO3 = C524O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO3'; 
fC524O2(i)=fC524O2(i)-1; fNO3(i)=fNO3(i)-1; fC524O(i)=fC524O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + RO2 = C524CO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fC524CO(i)=fC524CO(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + RO2 = C524O';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fC524O(i)=fC524O(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + RO2 = C524OH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'RO2';
fC524O2(i)=fC524O2(i)-1; fC524OH(i)=fC524OH(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = ACETOL + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = HC4ACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + HO2 = HC4ACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'HO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO = ACETOL + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO2 = C5PAN17';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO2'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN17(i)=fC5PAN17(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + NO3 = ACETOL + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'NO3'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + RO2 = ACETOL + HO2 + CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + RO2 = HC4ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + HO2 = C58OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'HO2'; 
fC58O2(i)=fC58O2(i)-1; fHO2(i)=fHO2(i)-1; fC58OOH(i)=fC58OOH(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO = C58NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO'; 
fC58O2(i)=fC58O2(i)-1; fNO(i)=fNO(i)-1; fC58NO3(i)=fC58NO3(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO = C58O + NO2';
k(:,i) = KRO2NO.*0.981;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO'; 
fC58O2(i)=fC58O2(i)-1; fNO(i)=fNO(i)-1; fC58O(i)=fC58O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + NO3 = C58O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'NO3'; 
fC58O2(i)=fC58O2(i)-1; fNO3(i)=fNO3(i)-1; fC58O(i)=fC58O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + RO2 = C58O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'RO2';
fC58O2(i)=fC58O2(i)-1; fC58O(i)=fC58O(i)+1; 

i=i+1;
Rnames{i} = 'C58O2 + RO2 = C58OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C58O2'; Gstr{i,2} = 'RO2';
fC58O2(i)=fC58O2(i)-1; fC58OH(i)=fC58OH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB1O2';
k(:,i) = 9.05e-12.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB1O2(i)=fIEB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB2O2';
k(:,i) = 9.05e-12.*0.5;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB2O2(i)=fIEB2O2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOOA = ACETOL + NO2 + CO + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'MACRNOOA'; 
fMACRNOOA(i)=fMACRNOOA(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOOA = ACETOL + NO2 + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'MACRNOOA'; 
fMACRNOOA(i)=fMACRNOOA(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOOA = MACRNOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'MACRNOOA'; 
fMACRNOOA(i)=fMACRNOOA(i)-1; fMACRNOO(i)=fMACRNOO(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOOA = PROPOLNO3';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'MACRNOOA'; 
fMACRNOOA(i)=fMACRNOOA(i)-1; fPROPOLNO3(i)=fPROPOLNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + OH = CONM2CHO + HO2';
k(:,i) = 4.34e-12.*0.16;
Gstr{i,1} = 'MACRNO3'; Gstr{i,2} = 'OH'; 
fMACRNO3(i)=fMACRNO3(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + OH = MACRNCO3';
k(:,i) = 4.34e-12.*0.84;
Gstr{i,1} = 'MACRNO3'; Gstr{i,2} = 'OH'; 
fMACRNO3(i)=fMACRNO3(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNO3 + hv = ACETOL + NO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACRNO3'; 
fMACRNO3(i)=fMACRNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + HO2 = INB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'HO2'; 
fINB1O2(i)=fINB1O2(i)-1; fHO2(i)=fHO2(i)-1; fINB1OOH(i)=fINB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.145;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1O + NO2';
k(:,i) = KRO2NO.*0.855;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fINB1O(i)=fINB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO3 = INB1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO3'; 
fINB1O2(i)=fINB1O2(i)-1; fNO3(i)=fNO3(i)-1; fINB1O(i)=fINB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + RO2 = INB1CO';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fINB1CO(i)=fINB1CO(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + RO2 = INB1O';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fINB1O(i)=fINB1O(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + RO2 = INB1OH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'RO2';
fINB1O2(i)=fINB1O2(i)-1; fINB1OH(i)=fINB1OH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + HO2 = INB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'HO2'; 
fINB2O2(i)=fINB2O2(i)-1; fHO2(i)=fHO2(i)-1; fINB2OOH(i)=fINB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO = INANO3';
k(:,i) = KRO2NO.*0.064;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO = INB2O + NO2';
k(:,i) = KRO2NO.*0.936;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fINB2O(i)=fINB2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + RO2 = C58NO3';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fC58NO3(i)=fC58NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + RO2 = INB1OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fINB1OH(i)=fINB1OH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + RO2 = INB2O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'RO2';
fINB2O2(i)=fINB2O2(i)-1; fINB2O(i)=fINB2O(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC = IEC1O2';
k(:,i) = 1.50e-11.*0.719;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIEC1O2(i)=fIEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC = IECCHO + HO2';
k(:,i) = 1.50e-11.*0.281;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIECCHO(i)=fIECCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = CH3CO3 + HOCH2CHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = HC4CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + HO2 = HC4CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'HO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO2 = C5PAN19';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO2'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC5PAN19(i)=fC5PAN19(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + NO3 = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'NO3'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + RO2 = CH3CO3 + HOCH2CHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'RO2';
fHC4CCO3(i)=fHC4CCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3 + RO2 = HC4CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4CCO3'; Gstr{i,2} = 'RO2';
fHC4CCO3(i)=fHC4CCO3(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOA = MGLYOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'MGLYOOA'; 
fMGLYOOA(i)=fMGLYOOA(i)-1; fMGLYOO(i)=fMGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'MGLYOOA = OH + CO + CH3CO3';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'MGLYOOA'; 
fMGLYOOA(i)=fMGLYOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + HO2 = C57OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'HO2'; 
fC57O2(i)=fC57O2(i)-1; fHO2(i)=fHO2(i)-1; fC57OOH(i)=fC57OOH(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO = C57O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO'; 
fC57O2(i)=fC57O2(i)-1; fNO(i)=fNO(i)-1; fC57O(i)=fC57O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO3 = C57O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO3'; 
fC57O2(i)=fC57O2(i)-1; fNO3(i)=fNO3(i)-1; fC57O(i)=fC57O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + RO2 = C57O';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'RO2';
fC57O2(i)=fC57O2(i)-1; fC57O(i)=fC57O(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + RO2 = C57OH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'RO2';
fC57O2(i)=fC57O2(i)-1; fC57OH(i)=fC57OH(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOC = CH2OO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'CH2OOC'; 
fCH2OOC(i)=fCH2OOC(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOC = HO2 + CO + OH';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'CH2OOC'; 
fCH2OOC(i)=fCH2OOC(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + OH = BIACETOH + NO2';
k(:,i) = 1.33e-12.*0.33;
Gstr{i,1} = 'MVKNO3'; Gstr{i,2} = 'OH'; 
fMVKNO3(i)=fMVKNO3(i)-1; fOH(i)=fOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + OH = CO2N3CHO + HO2';
k(:,i) = 1.33e-12.*0.67;
Gstr{i,1} = 'MVKNO3'; Gstr{i,2} = 'OH'; 
fMVKNO3(i)=fMVKNO3(i)-1; fOH(i)=fOH(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + hv = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKNO3 + hv = CH3CO3 + HOCH2CHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OOA = NC4OO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'NC4OOA'; 
fNC4OOA(i)=fNC4OOA(i)-1; fNC4OO(i)=fNC4OO(i)+1; 

i=i+1;
Rnames{i} = 'NC4OOA = OH + NO2 + BIACETOH';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'NC4OOA'; 
fNC4OOA(i)=fNC4OOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + HO2 = INDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'HO2'; 
fINDO2(i)=fINDO2(i)-1; fHO2(i)=fHO2(i)-1; fINDOOH(i)=fINDOOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO = INDO + NO2';
k(:,i) = KRO2NO.*0.928;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fINDO(i)=fINDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO3 = INDO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO3'; 
fINDO2(i)=fINDO2(i)-1; fNO3(i)=fNO3(i)-1; fINDO(i)=fINDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + RO2 = INDO';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'RO2';
fINDO2(i)=fINDO2(i)-1; fINDO(i)=fINDO(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + RO2 = INDOH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'RO2';
fINDO2(i)=fINDO2(i)-1; fINDOH(i)=fINDOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HO2 + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + HO2 = HOCH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'HO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO3H(i)=fHOCH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO = NO2 + HO2 + HCHO';
k(:,i) = KAPNO;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO2 = PHAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO2'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fPHAN(i)=fPHAN(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + NO3 = NO2 + HO2 + HCHO';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'NO3'; 
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HCHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3 + RO2 = HOCH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HOCH2CO3'; Gstr{i,2} = 'RO2';
fHOCH2CO3(i)=fHOCH2CO3(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + HO2 = C59OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'HO2'; 
fC59O2(i)=fC59O2(i)-1; fHO2(i)=fHO2(i)-1; fC59OOH(i)=fC59OOH(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + NO = C59O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'NO'; 
fC59O2(i)=fC59O2(i)-1; fNO(i)=fNO(i)-1; fC59O(i)=fC59O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + NO3 = C59O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'NO3'; 
fC59O2(i)=fC59O2(i)-1; fNO3(i)=fNO3(i)-1; fC59O(i)=fC59O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59O2 + RO2 = C59O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C59O2'; Gstr{i,2} = 'RO2';
fC59O2(i)=fC59O2(i)-1; fC59O(i)=fC59O(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + CO = HOCH2CHO';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'CO'; 
fGAOO(i)=fGAOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO = HOCH2CHO + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO'; 
fGAOO(i)=fGAOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + NO2 = HOCH2CHO + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'NO2'; 
fGAOO(i)=fGAOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GAOO + SO2 = HOCH2CHO + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'GAOO'; Gstr{i,2} = 'SO2'; 
fGAOO(i)=fGAOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'GAOO = HOCH2CHO + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'GAOO'; 
fGAOO(i)=fGAOO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GAOO = HOCH2CO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'GAOO'; 
fGAOO(i)=fGAOO(i)-1; fHOCH2CO2H(i)=fHOCH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CH3COCH2O'; 
fCH3COCH2O(i)=fCH3COCH2O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + CO = NOA';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'CO'; 
fNC3OO(i)=fNC3OO(i)-1; fCO(i)=fCO(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + NO = NOA + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO'; 
fNC3OO(i)=fNC3OO(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + NO2 = NOA + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'NO2'; 
fNC3OO(i)=fNC3OO(i)-1; fNO2(i)=fNO2(i)-1; fNOA(i)=fNOA(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO + SO2 = NOA + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC3OO'; Gstr{i,2} = 'SO2'; 
fNC3OO(i)=fNC3OO(i)-1; fSO2(i)=fSO2(i)-1; fNOA(i)=fNOA(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3OO = NOA + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC3OO'; 
fNC3OO(i)=fNC3OO(i)-1; fNOA(i)=fNOA(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INCOOH + hv = INCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'INCOOH'; 
fINCOOH(i)=fINCOOH(i)-1; fINCO(i)=fINCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOOH = INCCO + OH';
k(:,i) = 3.31e-11.*0.89;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOOH'; 
fOH(i)=fOH(i)-1; fINCOOH(i)=fINCOOH(i)-1; fINCCO(i)=fINCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOOH = INCO2';
k(:,i) = 3.31e-11.*0.11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOOH'; 
fOH(i)=fOH(i)-1; fINCOOH(i)=fINCOOH(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = INCCO + NO2';
k(:,i) = 1.98e-12.*0.445;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fINCCO(i)=fINCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = INCNCHO + HO2';
k(:,i) = 1.98e-12.*0.414;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fINCNCHO(i)=fINCNCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNO3 = NOA + HOCH2CHO + NO2';
k(:,i) = 1.98e-12.*0.141;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNO3'; 
fOH(i)=fOH(i)-1; fINCNO3(i)=fINCNO3(i)-1; fNOA(i)=fNOA(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCO = NOA + HO2 + HOCH2CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'INCO'; 
fINCO(i)=fINCO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCCO = INCGLYOX + HO2';
k(:,i) = 3.30e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCCO'; 
fOH(i)=fOH(i)-1; fINCCO(i)=fINCCO(i)-1; fINCGLYOX(i)=fINCGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCOH = INCCO + HO2';
k(:,i) = 1.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCOH'; 
fOH(i)=fOH(i)-1; fINCOH(i)=fINCOH(i)-1; fINCCO(i)=fINCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CO2H = NOA + CO + HO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CO2H'; 
fOH(i)=fOH(i)-1; fNC4CO2H(i)=fNC4CO2H(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CO3H + hv = NOA + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC4CO3H'; 
fNC4CO3H(i)=fNC4CO3H(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC4CO3H = NC4CO3';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC4CO3H'; 
fOH(i)=fOH(i)-1; fNC4CO3H(i)=fNC4CO3H(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN18 = NC4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN18'; 
fC5PAN18(i)=fC5PAN18(i)-1; fNC4CO3(i)=fNC4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN18 = NOA + CO + CO + NO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN18'; 
fOH(i)=fOH(i)-1; fC5PAN18(i)=fC5PAN18(i)-1; fNOA(i)=fNOA(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + CO = GLYOX';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'CO'; 
fGLYOO(i)=fGLYOO(i)-1; fCO(i)=fCO(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO = GLYOX + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO'; 
fGLYOO(i)=fGLYOO(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + NO2 = GLYOX + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'NO2'; 
fGLYOO(i)=fGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO + SO2 = GLYOX + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'GLYOO'; Gstr{i,2} = 'SO2'; 
fGLYOO(i)=fGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = GLYOX + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOO = HCOCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'GLYOO'; 
fGLYOO(i)=fGLYOO(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + CO = NOA';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'CO'; 
fNOAOO(i)=fNOAOO(i)-1; fCO(i)=fCO(i)-1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + NO = NOA + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'NO'; 
fNOAOO(i)=fNOAOO(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + NO2 = NOA + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'NO2'; 
fNOAOO(i)=fNOAOO(i)-1; fNO2(i)=fNO2(i)-1; fNOA(i)=fNOA(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO + SO2 = NOA + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NOAOO'; Gstr{i,2} = 'SO2'; 
fNOAOO(i)=fNOAOO(i)-1; fSO2(i)=fSO2(i)-1; fNOA(i)=fNOA(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NOAOO = NOA + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NOAOO'; 
fNOAOO(i)=fNOAOO(i)-1; fNOA(i)=fNOA(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + HO2 = HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'HO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO = HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO2 = GLYPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fGLYPAN(i)=fGLYPAN(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + NO3 = HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO3'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = CO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3 + RO2 = HCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'RO2';
fHCOCO3(i)=fHCOCO3(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C510OOH + hv = C510O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C510OOH'; 
fC510OOH(i)=fC510OOH(i)-1; fC510O(i)=fC510O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C510OOH = C510O2';
k(:,i) = 2.81e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C510OOH'; 
fOH(i)=fOH(i)-1; fC510OOH(i)=fC510OOH(i)-1; fC510O2(i)=fC510O2(i)+1; 

i=i+1;
Rnames{i} = 'C510O = NOA + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C510O'; 
fC510O(i)=fC510O(i)-1; fNOA(i)=fNOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C510OH = C510O';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C510OH'; 
fOH(i)=fOH(i)-1; fC510OH(i)=fC510OH(i)-1; fC510O(i)=fC510O(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALOH + OH = IPRHOCO3';
k(:,i) = 1.4e-11;
Gstr{i,1} = 'IBUTALOH'; Gstr{i,2} = 'OH'; 
fIBUTALOH(i)=fIBUTALOH(i)-1; fOH(i)=fOH(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'IBUTALOH + hv = CH3COCH3 + HO2 + HO2 + CO';
k(:,i) = J17;
Gstr{i,1} = 'IBUTALOH'; 
fIBUTALOH(i)=fIBUTALOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = CHOMOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOMOHCO3H(i)=fCHOMOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'HO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO = MGLYOX + NO2 + HO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO2 = CHOMOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO2'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fCHOMOHPAN(i)=fCHOMOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + NO3 = MGLYOX + NO2 + HO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'NO3'; 
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3 + RO2 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CHOMOHCO3'; Gstr{i,2} = 'RO2';
fCHOMOHCO3(i)=fCHOMOHCO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = CHOPRNO3 + OH';
k(:,i) = 1.69e-12;
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + OH = PRONO3AO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR1O2HNO3'; Gstr{i,2} = 'OH'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3AO2(i)=fPRONO3AO2(i)+1; 

i=i+1;
Rnames{i} = 'PR1O2HNO3 + hv = PRONO3AO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR1O2HNO3'; 
fPR1O2HNO3(i)=fPR1O2HNO3(i)-1; fPRONO3AO(i)=fPRONO3AO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO = CHOPRNO3 + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'PRONO3AO'; 
fPRONO3AO(i)=fPRONO3AO(i)-1; fCHOPRNO3(i)=fCHOPRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3AO = HCHO + CH3CHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'PRONO3AO'; 
fPRONO3AO(i)=fPRONO3AO(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + NO3 = PRNO3CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'NO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fNO3(i)=fNO3(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + OH = PRNO3CO3';
k(:,i) = 3.55e-12;
Gstr{i,1} = 'CHOPRNO3'; Gstr{i,2} = 'OH'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + hv = HO2 + CO + CH3CHO + NO2';
k(:,i) = J57;
Gstr{i,1} = 'CHOPRNO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOPRNO3 + hv = PROPALO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'CHOPRNO3'; 
fCHOPRNO3(i)=fCHOPRNO3(i)-1; fPROPALO(i)=fPROPALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPOLNO3 + OH = ACETOL + NO2';
k(:,i) = 9.16e-13;
Gstr{i,1} = 'PROPOLNO3'; Gstr{i,2} = 'OH'; 
fPROPOLNO3(i)=fPROPOLNO3(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = NOA + OH';
k(:,i) = 3.47e-12;
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + OH = PRONO3BO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'PR2O2HNO3'; Gstr{i,2} = 'OH'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fOH(i)=fOH(i)-1; fPRONO3BO2(i)=fPRONO3BO2(i)+1; 

i=i+1;
Rnames{i} = 'PR2O2HNO3 + hv = PRONO3BO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PR2O2HNO3'; 
fPR2O2HNO3(i)=fPR2O2HNO3(i)-1; fPRONO3BO(i)=fPRONO3BO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO = CH3CHO + HCHO + NO2';
k(:,i) = 7.00e03;
Gstr{i,1} = 'PRONO3BO'; 
fPRONO3BO(i)=fPRONO3BO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRONO3BO = NOA + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'PRONO3BO'; 
fPRONO3BO(i)=fPRONO3BO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROLNO3 + OH = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'PROLNO3'; Gstr{i,2} = 'OH'; 
fPROLNO3(i)=fPROLNO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + HO2 = HCOCH2OOH';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'HO2'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO = NO2 + HCOCH2O';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + NO3 = HCOCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'NO3'; 
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = GLYOX';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HCOCH2O';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'HCOCH2O2'; Gstr{i,2} = 'RO2';
fHCOCH2O2(i)=fHCOCH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + CO = CH3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'CO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCO(i)=fCO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO = CH3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + NO2 = CH3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'NO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fNO2(i)=fNO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO + SO2 = CH3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CH3CHOO'; Gstr{i,2} = 'SO2'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fSO2(i)=fSO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOO = CH3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CH3CHOO'; 
fCH3CHOO(i)=fCH3CHOO(i)-1; fCH3CO2H(i)=fCH3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CL + CH4 = CH3O2';
k(:,i) = 6.6e-12.*exp(-1240./T);
Gstr{i,1} = 'CL'; Gstr{i,2} = 'CH4'; 
fCL(i)=fCL(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH4 = CH3O2';
k(:,i) = 1.85e-12.*exp(-1690./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH4'; 
fOH(i)=fOH(i)-1; fCH4(i)=fCH4(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = ACETOL + OH';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + OH = HYPROPO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPROPO2H'; Gstr{i,2} = 'OH'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fOH(i)=fOH(i)-1; fHYPROPO2(i)=fHYPROPO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO2H + hv = HYPROPO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPROPO2H'; 
fHYPROPO2H(i)=fHYPROPO2H(i)-1; fHYPROPO(i)=fHYPROPO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPROPO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6410./T);
Gstr{i,1} = 'HYPROPO'; 
fHYPROPO(i)=fHYPROPO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = ACETOL + HO2';
k(:,i) = 1.20e-11.*0.613;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PROPGLY + OH = CH3CHOHCHO + HO2';
k(:,i) = 1.20e-11.*0.387;
Gstr{i,1} = 'PROPGLY'; Gstr{i,2} = 'OH'; 
fPROPGLY(i)=fPROPGLY(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = CH3CHOHCHO + OH';
k(:,i) = 1.83e-11;
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + OH = IPROPOLO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'IPROPOLO2H'; Gstr{i,2} = 'OH'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fOH(i)=fOH(i)-1; fIPROPOLO2(i)=fIPROPOLO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO2H + hv = IPROPOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLO2H'; 
fIPROPOLO2H(i)=fIPROPOLO2H(i)-1; fIPROPOLO(i)=fIPROPOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLO = CH3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-5505./T);
Gstr{i,1} = 'IPROPOLO'; 
fIPROPOLO(i)=fIPROPOLO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + NO3 = CH3CHOHCO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + OH = CH3CHOHCO3';
k(:,i) = 1.7e-11;
Gstr{i,1} = 'CH3CHOHCHO'; Gstr{i,2} = 'OH'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCHO + hv = CH3CHO + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CH3CHOHCHO'; 
fCH3CHOHCHO(i)=fCH3CHOHCHO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO2H + hv = CH3CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CH3COCO2H'; 
fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + CH3COCO2H = CH3CO3';
k(:,i) = 8.0e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CH3COCO2H'; 
fOH(i)=fOH(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = CO2H3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + HO2 = MGLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'HO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO = MGLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO2 = C4PAN6';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO2'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN6(i)=fC4PAN6(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + NO3 = MGLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'NO3'; 
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3 + RO2 = MGLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2H3CO3'; Gstr{i,2} = 'RO2';
fCO2H3CO3(i)=fCO2H3CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + HCOCO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO23C3CHO = CH3CO3 + CO + CO + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO23C3CHO'; 
fNO3(i)=fNO3(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO23C3CHO = CH3CO3 + CO + CO';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO23C3CHO'; 
fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = ACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fACO2H(i)=fACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = ACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fACO3H(i)=fACO3H(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + HO2 = HO2 + CO + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'HO2'; 
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO = HO2 + CO + HCHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO'; 
fACO3(i)=fACO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO2 = ACRPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO2'; 
fACO3(i)=fACO3(i)-1; fNO2(i)=fNO2(i)-1; fACRPAN(i)=fACRPAN(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + NO3 = HO2 + CO + HCHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'NO3'; 
fACO3(i)=fACO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + RO2 = ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'RO2';
fACO3(i)=fACO3(i)-1; fACO2H(i)=fACO2H(i)+1; 

i=i+1;
Rnames{i} = 'ACO3 + RO2 = HO2 + CO + HCHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'ACO3'; Gstr{i,2} = 'RO2';
fACO3(i)=fACO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOOA = HMGLOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'HMGLOOA'; 
fHMGLOOA(i)=fHMGLOOA(i)-1; fHMGLOO(i)=fHMGLOO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOOA = HOCH2CHO';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'HMGLOOA'; 
fHMGLOOA(i)=fHMGLOOA(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOOA = HOCH2CO3 + HO2';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'HMGLOOA'; 
fHMGLOOA(i)=fHMGLOOA(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOOA = OH + CO + HOCH2CO3';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'HMGLOOA'; 
fHMGLOOA(i)=fHMGLOOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCHO + hv = HOCH2CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HOCH2COCHO'; 
fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HOCH2COCHO = HOCH2CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HOCH2COCHO'; 
fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HOCH2COCHO = HOCH2CO3 + CO';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HOCH2COCHO'; 
fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + HO2 = MVKOHAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'HO2'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOHAOOH(i)=fMVKOHAOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO = MVKOHANO3';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO(i)=fNO(i)-1; fMVKOHANO3(i)=fMVKOHANO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO = MVKOHAO + NO2';
k(:,i) = KRO2NO.*0.983;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO(i)=fNO(i)-1; fMVKOHAO(i)=fMVKOHAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + NO3 = MVKOHAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'NO3'; 
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fNO3(i)=fNO3(i)-1; fMVKOHAO(i)=fMVKOHAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + RO2 = H13CO2CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + RO2 = MVKOHAO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fMVKOHAO(i)=fMVKOHAO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO2 + RO2 = MVKOHAOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'MVKOHAO2'; Gstr{i,2} = 'RO2';
fMVKOHAO2(i)=fMVKOHAO2(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + HO2 = MVKOHBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'HO2'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fHO2(i)=fHO2(i)-1; fMVKOHBOOH(i)=fMVKOHBOOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + NO = MVKOHBO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'NO'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fNO(i)=fNO(i)-1; fMVKOHBO(i)=fMVKOHBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + NO3 = MVKOHBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'NO3'; 
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fNO3(i)=fNO3(i)-1; fMVKOHBO(i)=fMVKOHBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + RO2 = H14CO23C4';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fH14CO23C4(i)=fH14CO23C4(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + RO2 = MVKOHAOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO2 + RO2 = MVKOHBO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MVKOHBO2'; Gstr{i,2} = 'RO2';
fMVKOHBO2(i)=fMVKOHBO2(i)-1; fMVKOHBO(i)=fMVKOHBO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ALLYLOH = ACR + HO2';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ALLYLOH'; 
fOH(i)=fOH(i)-1; fALLYLOH(i)=fALLYLOH(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACHO + hv = HMVKBO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEACHO'; 
fIEACHO(i)=fIEACHO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + IEACHO = IEACO3 + HNO3';
k(:,i) = KNO3AL.*7.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'IEACHO'; 
fNO3(i)=fNO3(i)-1; fIEACHO(i)=fIEACHO(i)-1; fIEACO3(i)=fIEACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEACHO = IEACO3';
k(:,i) = 2.20e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEACHO'; 
fOH(i)=fOH(i)-1; fIEACHO(i)=fIEACHO(i)-1; fIEACO3(i)=fIEACO3(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + CO = NO3CH2CHO';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'CO'; 
fNC2OO(i)=fNC2OO(i)-1; fCO(i)=fCO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + NO = NO3CH2CHO + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO(i)=fNO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + NO2 = NO3CH2CHO + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'NO2'; 
fNC2OO(i)=fNC2OO(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO + SO2 = NO3CH2CHO + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC2OO'; Gstr{i,2} = 'SO2'; 
fNC2OO(i)=fNC2OO(i)-1; fSO2(i)=fSO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO = NO3CH2CHO + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC2OO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NC2OO = NO3CH2CO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'NC2OO'; 
fNC2OO(i)=fNC2OO(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + CO = ACETOL';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'CO'; 
fACLOO(i)=fACLOO(i)-1; fCO(i)=fCO(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + NO = ACETOL + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO'; 
fACLOO(i)=fACLOO(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + NO2 = ACETOL + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'NO2'; 
fACLOO(i)=fACLOO(i)-1; fNO2(i)=fNO2(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO + SO2 = ACETOL + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'ACLOO'; Gstr{i,2} = 'SO2'; 
fACLOO(i)=fACLOO(i)-1; fSO2(i)=fSO2(i)-1; fACETOL(i)=fACETOL(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'ACLOO = ACETOL + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'ACLOO'; 
fACLOO(i)=fACLOO(i)-1; fACETOL(i)=fACETOL(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = HCHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + HO2 = NO3CH2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'HO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CO3H(i)=fNO3CH2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO = HCHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO(i)=fNO(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO2 = NO3CH2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO2'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2PAN(i)=fNO3CH2PAN(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + NO3 = HCHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'NO3'; 
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = HCHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3 + RO2 = NO3CH2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NO3CH2CO3'; Gstr{i,2} = 'RO2';
fNO3CH2CO3(i)=fNO3CH2CO3(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2O = HCHO + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HCOCH2O'; 
fHCOCH2O(i)=fHCOCH2O(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAOOH + hv = INAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'INAOOH'; 
fINAOOH(i)=fINAOOH(i)-1; fINAO(i)=fINAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOOH = INAHPCHO + HO2';
k(:,i) = 1.01e-11.*0.65;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOOH'; 
fOH(i)=fOH(i)-1; fINAOOH(i)=fINAOOH(i)-1; fINAHPCHO(i)=fINAHPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOOH = INAO2';
k(:,i) = 1.01e-11.*0.35;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOOH'; 
fOH(i)=fOH(i)-1; fINAOOH(i)=fINAOOH(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = ACETOL + NO2 + NO3CH2CHO';
k(:,i) = 2.00e-12.*0.07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = C58NO3 + NO2';
k(:,i) = 2.00e-12.*0.39;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fC58NO3(i)=fC58NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = HCHO + NO2 + HMVKANO3';
k(:,i) = 2.00e-12.*0.07;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = INANCHO + HO2';
k(:,i) = 2.00e-12.*0.33;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fINANCHO(i)=fINANCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANO3 = INANCO + HO2';
k(:,i) = 2.00e-12.*0.14;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANO3'; 
fOH(i)=fOH(i)-1; fINANO3(i)=fINANO3(i)-1; fINANCO(i)=fINANCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAO = ACETOL + NO3CH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'INAO'; 
fINAO(i)=fINAO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAOH = INAHCHO + HO2';
k(:,i) = 6.68e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAOH'; 
fOH(i)=fOH(i)-1; fINAOH(i)=fINAOH(i)-1; fINAHCHO(i)=fINAHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = C524CO + OH';
k(:,i) = 1.18e-10.*0.22;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fC524CO(i)=fC524CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = C524O2';
k(:,i) = 1.18e-10.*0.03;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fC524O2(i)=fC524O2(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + OH = HIEPOXB + OH';
k(:,i) = 1.18e-10.*0.75;
Gstr{i,1} = 'C524OOH'; Gstr{i,2} = 'OH'; 
fC524OOH(i)=fC524OOH(i)-1; fOH(i)=fOH(i)-1; fHIEPOXB(i)=fHIEPOXB(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524OOH + hv = C524O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C524OOH'; 
fC524OOH(i)=fC524OOH(i)-1; fC524O(i)=fC524O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 + OH + hv = C524O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fC524O(i)=fC524O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 + OH = NC524O2';
k(:,i) = 2.94e-11;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

i=i+1;
Rnames{i} = 'C524O = HMACR + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C524O'; 
fC524O(i)=fC524O(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C524CO + OH = C525O2';
k(:,i) = 4.21e-11;
Gstr{i,1} = 'C524CO'; Gstr{i,2} = 'OH'; 
fC524CO(i)=fC524CO(i)-1; fOH(i)=fOH(i)-1; fC525O2(i)=fC525O2(i)+1; 

i=i+1;
Rnames{i} = 'C524CO + hv = HOCH2CO3 + HOCH2CO3 + HCHO';
k(:,i) = J24;
Gstr{i,1} = 'C524CO'; 
fC524CO(i)=fC524CO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C524OH + OH = C524CO + HO2';
k(:,i) = 7.78e-11;
Gstr{i,1} = 'C524OH'; Gstr{i,2} = 'OH'; 
fC524OH(i)=fC524OH(i)-1; fOH(i)=fOH(i)-1; fC524CO(i)=fC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACO2H = ACETOL + CO + HO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO2H'; 
fOH(i)=fOH(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3H + hv = ACETOL + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4ACO3H'; 
fHC4ACO3H(i)=fHC4ACO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACO3H = HC4ACO3';
k(:,i) = 2.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO3H'; 
fOH(i)=fOH(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN17 = HC4ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN17'; 
fC5PAN17(i)=fC5PAN17(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN17 = MACROH + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN17'; 
fOH(i)=fOH(i)-1; fC5PAN17(i)=fC5PAN17(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58OOH + hv = C58O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58OOH'; 
fC58OOH(i)=fC58OOH(i)-1; fC58O(i)=fC58O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OOH = C58O2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OOH'; 
fOH(i)=fOH(i)-1; fC58OOH(i)=fC58OOH(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3 + hv = HO2 + CO + MACRNO3 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C58NO3'; 
fC58NO3(i)=fC58NO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3 = C58NO3CO3';
k(:,i) = 2.32e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3'; 
fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C58O = ACETOL + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C58O'; 
fC58O(i)=fC58O(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OH = C58O';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OH'; 
fOH(i)=fOH(i)-1; fC58OH(i)=fC58OH(i)-1; fC58O(i)=fC58O(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + HO2 = IEB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'HO2'; 
fIEB1O2(i)=fIEB1O2(i)-1; fHO2(i)=fHO2(i)-1; fIEB1OOH(i)=fIEB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + NO = IEB1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'NO'; 
fIEB1O2(i)=fIEB1O2(i)-1; fNO(i)=fNO(i)-1; fIEB1O(i)=fIEB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + NO3 = IEB1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'NO3'; 
fIEB1O2(i)=fIEB1O2(i)-1; fNO3(i)=fNO3(i)-1; fIEB1O(i)=fIEB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O2 + RO2 = IEB1O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'IEB1O2'; Gstr{i,2} = 'RO2';
fIEB1O2(i)=fIEB1O2(i)-1; fIEB1O(i)=fIEB1O(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + HO2 = IEB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'HO2'; 
fIEB2O2(i)=fIEB2O2(i)-1; fHO2(i)=fHO2(i)-1; fIEB2OOH(i)=fIEB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + NO = IEB2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'NO'; 
fIEB2O2(i)=fIEB2O2(i)-1; fNO(i)=fNO(i)-1; fIEB2O(i)=fIEB2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + NO3 = IEB2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'NO3'; 
fIEB2O2(i)=fIEB2O2(i)-1; fNO3(i)=fNO3(i)-1; fIEB2O(i)=fIEB2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O2 + RO2 = IEB2O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'IEB2O2'; Gstr{i,2} = 'RO2';
fIEB2O2(i)=fIEB2O2(i)-1; fIEB2O(i)=fIEB2O(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + CO = MACRNO3';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'CO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fCO(i)=fCO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + NO = MACRNO3 + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + NO2 = MACRNO3 + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'NO2'; 
fMACRNOO(i)=fMACRNOO(i)-1; fNO2(i)=fNO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO + SO2 = MACRNO3 + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'MACRNOO'; Gstr{i,2} = 'SO2'; 
fMACRNOO(i)=fMACRNOO(i)-1; fSO2(i)=fSO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO = MACRNCO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'MACRNOO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNOO = MACRNO3 + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'MACRNOO'; 
fMACRNOO(i)=fMACRNOO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CHO'; Gstr{i,2} = 'OH'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + hv = MGLYOX + NO2 + CO + HO2';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CHO'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + hv = MGLYOX + NO2 + CO + HO2';
k(:,i) = J57.*2;
Gstr{i,1} = 'CONM2CHO'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = ACETOL + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = MACRNCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + HO2 = MACRNCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'HO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNCO3H(i)=fMACRNCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO = ACETOL + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO(i)=fNO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO2 = MACRNPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO2'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO2(i)=fNO2(i)-1; fMACRNPAN(i)=fMACRNPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + NO3 = ACETOL + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'NO3'; 
fMACRNCO3(i)=fMACRNCO3(i)-1; fNO3(i)=fNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + RO2 = ACETOL + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'RO2';
fMACRNCO3(i)=fMACRNCO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3 + RO2 = MACRNCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACRNCO3'; Gstr{i,2} = 'RO2';
fMACRNCO3(i)=fMACRNCO3(i)-1; fMACRNCO2H(i)=fMACRNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1CO + OH';
k(:,i) = 1.27e-11.*0.35;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1HPCHO';
k(:,i) = 1.27e-11.*0.34;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1O2';
k(:,i) = 1.27e-11.*0.31;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + hv = INB1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1OOH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fINB1O(i)=fINB1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NO3 + OH = INB1NACHO + HO2';
k(:,i) = 1.63e-12.*0.50;
Gstr{i,1} = 'INB1NO3'; Gstr{i,2} = 'OH'; 
fINB1NO3(i)=fINB1NO3(i)-1; fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NO3 + OH = INB1NBCHO + HO2';
k(:,i) = 1.63e-12.*0.50;
Gstr{i,1} = 'INB1NO3'; Gstr{i,2} = 'OH'; 
fINB1NO3(i)=fINB1NO3(i)-1; fOH(i)=fOH(i)-1; fINB1NBCHO(i)=fINB1NBCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1O = HOCH2CHO + ACETOL + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'INB1O'; 
fINB1O(i)=fINB1O(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO + OH = INB1GLYOX + HO2';
k(:,i) = 3.27e-12;
Gstr{i,1} = 'INB1CO'; Gstr{i,2} = 'OH'; 
fINB1CO(i)=fINB1CO(i)-1; fOH(i)=fOH(i)-1; fINB1GLYOX(i)=fINB1GLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO + hv = ACETOL + NO2 + HOCH2CO3';
k(:,i) = J56;
Gstr{i,1} = 'INB1CO'; 
fINB1CO(i)=fINB1CO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1CO + hv = ACETOL + NO2 + HOCH2CO3';
k(:,i) = J57;
Gstr{i,1} = 'INB1CO'; 
fINB1CO(i)=fINB1CO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1OH + OH = C58NO3 + HO2';
k(:,i) = 6.65e-12.*0.71;
Gstr{i,1} = 'INB1OH'; Gstr{i,2} = 'OH'; 
fINB1OH(i)=fINB1OH(i)-1; fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1OH + OH = INB1CO + HO2';
k(:,i) = 6.65e-12.*0.29;
Gstr{i,1} = 'INB1OH'; Gstr{i,2} = 'OH'; 
fINB1OH(i)=fINB1OH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH + OH = C58NO3 + OH';
k(:,i) = 1.59e-11.*0.73;
Gstr{i,1} = 'INB2OOH'; Gstr{i,2} = 'OH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fOH(i)=fOH(i)-1; fC58NO3(i)=fC58NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH + OH = INB2O2';
k(:,i) = 1.59e-11.*0.27;
Gstr{i,1} = 'INB2OOH'; Gstr{i,2} = 'OH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fOH(i)=fOH(i)-1; fINB2O2(i)=fINB2O2(i)+1; 

i=i+1;
Rnames{i} = 'INB2OOH + hv = INB2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB2OOH'; 
fINB2OOH(i)=fINB2OOH(i)-1; fINB2O(i)=fINB2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB2O = C57NO3 + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'INB2O'; 
fINB2O(i)=fINB2O(i)-1; fC57NO3(i)=fC57NO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + HO2 = IEC1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'HO2'; 
fIEC1O2(i)=fIEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fIEC1OOH(i)=fIEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + NO = IEC1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'NO'; 
fIEC1O2(i)=fIEC1O2(i)-1; fNO(i)=fNO(i)-1; fIEC1O(i)=fIEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + NO3 = IEC1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'NO3'; 
fIEC1O2(i)=fIEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fIEC1O(i)=fIEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O2 + RO2 = IEC1O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'IEC1O2'; Gstr{i,2} = 'RO2';
fIEC1O2(i)=fIEC1O2(i)-1; fIEC1O(i)=fIEC1O(i)+1; 

i=i+1;
Rnames{i} = 'IECCHO + hv = MACRO2 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'IECCHO'; 
fIECCHO(i)=fIECCHO(i)-1; fMACRO2(i)=fMACRO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + IECCHO = IECCO3 + HNO3';
k(:,i) = KNO3AL.*7.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'IECCHO'; 
fNO3(i)=fNO3(i)-1; fIECCHO(i)=fIECCHO(i)-1; fIECCO3(i)=fIECCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECCHO = IECCO3';
k(:,i) = 2.76e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECCHO'; 
fOH(i)=fOH(i)-1; fIECCHO(i)=fIECCHO(i)-1; fIECCO3(i)=fIECCO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCO2H = CH3CO3 + HOCH2CHO';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO2H'; 
fOH(i)=fOH(i)-1; fHC4CCO2H(i)=fHC4CCO2H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC4CCO3H + hv = HOCH2CHO + CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4CCO3H'; 
fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCO3H = HC4CCO3';
k(:,i) = 2.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO3H'; 
fOH(i)=fOH(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN19 = HC4CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN19'; 
fC5PAN19(i)=fC5PAN19(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN19 = HO12CO3C4 + CO + NO2';
k(:,i) = 2.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN19'; 
fOH(i)=fOH(i)-1; fC5PAN19(i)=fC5PAN19(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57OOH + hv = C57O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57OOH'; 
fC57OOH(i)=fC57OOH(i)-1; fC57O(i)=fC57O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OOH = C57O2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OOH'; 
fOH(i)=fOH(i)-1; fC57OOH(i)=fC57OOH(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'C57O = MGLYOX + HOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C57O'; 
fC57O(i)=fC57O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OH = C57O';
k(:,i) = 3.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OH'; 
fOH(i)=fOH(i)-1; fC57OH(i)=fC57OH(i)-1; fC57O(i)=fC57O(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO + OH = CO2N3CO3';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'CO2N3CHO'; Gstr{i,2} = 'OH'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO + hv = CO + HO2 + MGLYOX + NO2';
k(:,i) = J15;
Gstr{i,1} = 'CO2N3CHO'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + CO = MVKNO3';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'CO'; 
fNC4OO(i)=fNC4OO(i)-1; fCO(i)=fCO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + NO = MVKNO3 + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO'; 
fNC4OO(i)=fNC4OO(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + NO2 = MVKNO3 + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'NO2'; 
fNC4OO(i)=fNC4OO(i)-1; fNO2(i)=fNO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO + SO2 = MVKNO3 + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NC4OO'; Gstr{i,2} = 'SO2'; 
fNC4OO(i)=fNC4OO(i)-1; fSO2(i)=fSO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC4OO = MVKNO3 + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NC4OO'; 
fNC4OO(i)=fNC4OO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH + OH = INDHPCHO + HO2';
k(:,i) = 9.20e-12.*0.61;
Gstr{i,1} = 'INDOOH'; Gstr{i,2} = 'OH'; 
fINDOOH(i)=fINDOOH(i)-1; fOH(i)=fOH(i)-1; fINDHPCHO(i)=fINDHPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH + OH = INDO2';
k(:,i) = 9.20e-12.*0.39;
Gstr{i,1} = 'INDOOH'; Gstr{i,2} = 'OH'; 
fINDOOH(i)=fINDOOH(i)-1; fOH(i)=fOH(i)-1; fINDO2(i)=fINDO2(i)+1; 

i=i+1;
Rnames{i} = 'INDOOH + hv = INDO + OH';
k(:,i) = J41;
Gstr{i,1} = 'INDOOH'; 
fINDOOH(i)=fINDOOH(i)-1; fINDO(i)=fINDO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDO = ACETOL + HOCH2CHO + NO2';
k(:,i) = 1.80e13.*(T./298).^1.7.*exp(-4733./T);
Gstr{i,1} = 'INDO'; 
fINDO(i)=fINDO(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDO = HCHO + HO2 + MVKNO3';
k(:,i) = 1.80e13.*(T./298).^1.7.*exp(-4079./T);
Gstr{i,1} = 'INDO'; 
fINDO(i)=fINDO(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDOH + OH = INDHCHO + HO2';
k(:,i) = 5.60e-12;
Gstr{i,1} = 'INDOH'; Gstr{i,2} = 'OH'; 
fINDOH(i)=fINDOH(i)-1; fOH(i)=fOH(i)-1; fINDHCHO(i)=fINDHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO2H + OH = HCHO + HO2';
k(:,i) = 2.73e-12;
Gstr{i,1} = 'HOCH2CO2H'; Gstr{i,2} = 'OH'; 
fHOCH2CO2H(i)=fHOCH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + OH = HOCH2CO3';
k(:,i) = 6.19e-12;
Gstr{i,1} = 'HOCH2CO3H'; Gstr{i,2} = 'OH'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CO3H + hv = HCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCH2CO3H'; 
fHOCH2CO3H(i)=fHOCH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHAN + OH = HCHO + CO + NO2';
k(:,i) = 1.12e-12;
Gstr{i,1} = 'PHAN'; Gstr{i,2} = 'OH'; 
fPHAN(i)=fPHAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHAN = HOCH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PHAN'; 
fPHAN(i)=fPHAN(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59OOH + hv = C59O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C59OOH'; 
fC59OOH(i)=fC59OOH(i)-1; fC59O(i)=fC59O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C59OOH + hv = HOCH2CO3 + ACETOL + OH';
k(:,i) = J22;
Gstr{i,1} = 'C59OOH'; 
fC59OOH(i)=fC59OOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C59OOH = C59O2';
k(:,i) = 9.70e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'C59O = ACETOL + HOCH2CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C59O'; 
fC59O(i)=fC59O(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO + OH = INCGLYOX + NO2';
k(:,i) = 4.52e-12.*0.19;
Gstr{i,1} = 'INCNCHO'; Gstr{i,2} = 'OH'; 
fINCNCHO(i)=fINCNCHO(i)-1; fOH(i)=fOH(i)-1; fINCGLYOX(i)=fINCGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO + OH = INCNCO3';
k(:,i) = 4.52e-12.*0.81;
Gstr{i,1} = 'INCNCHO'; Gstr{i,2} = 'OH'; 
fINCNCHO(i)=fINCNCHO(i)-1; fOH(i)=fOH(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNCHO + hv = MACRNB + CO + NO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INCNCHO'; 
fINCNCHO(i)=fINCNCHO(i)-1; fMACRNB(i)=fMACRNB(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INCGLYOX + hv = MACRNBCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'INCGLYOX'; 
fINCGLYOX(i)=fINCGLYOX(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCGLYOX = MACRNBCO3 + CO';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCGLYOX'; 
fOH(i)=fOH(i)-1; fINCGLYOX(i)=fINCGLYOX(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO2H + hv = HO2 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HCOCO2H'; 
fHCOCO2H(i)=fHCOCO2H(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO2H = CO + HO2';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO2H'; 
fOH(i)=fOH(i)-1; fHCOCO2H(i)=fHCOCO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO3H + hv = HO2 + CO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCO3H'; 
fHCOCO3H(i)=fHCOCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HCOCO3H = HCOCO3';
k(:,i) = 1.58e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HCOCO3H'; 
fOH(i)=fOH(i)-1; fHCOCO3H(i)=fHCOCO3H(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'GLYPAN = HCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'GLYPAN'; 
fGLYPAN(i)=fGLYPAN(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYPAN = CO + CO + NO2';
k(:,i) = 1.22e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYPAN'; 
fOH(i)=fOH(i)-1; fGLYPAN(i)=fGLYPAN(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = CH3COCH3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = IPRHOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPRHOCO2H(i)=fIPRHOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + HO2 = IPRHOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'HO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPRHOCO3H(i)=fIPRHOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO = CH3COCH3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO2 = C4PAN5';
k(:,i) = KFPAN;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO2'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN5(i)=fC4PAN5(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + NO3 = CH3COCH3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'NO3'; 
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + RO2 = CH3COCH3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'RO2';
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3 + RO2 = IPRHOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'IPRHOCO3'; Gstr{i,2} = 'RO2';
fIPRHOCO3(i)=fIPRHOCO3(i)-1; fIPRHOCO2H(i)=fIPRHOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + OH = CH3COCH2O2';
k(:,i) = 8.8e-12.*exp(-1320./T) + 1.7e-14.*exp(423./T);
Gstr{i,1} = 'CH3COCH3'; Gstr{i,2} = 'OH'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH3 + hv = CH3CO3 + CH3O2';
k(:,i) = J21;
Gstr{i,1} = 'CH3COCH3'; 
fCH3COCH3(i)=fCH3COCH3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + OH = CHOMOHCO3';
k(:,i) = 6.99e-11;
Gstr{i,1} = 'CHOMOHCO3H'; Gstr{i,2} = 'OH'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + hv = MGLYOX + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHCO3H + hv = MGLYOX + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'CHOMOHCO3H'; 
fCHOMOHCO3H(i)=fCHOMOHCO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN + OH = MGLYOX + CO + NO2';
k(:,i) = 6.64e-11;
Gstr{i,1} = 'CHOMOHPAN'; Gstr{i,2} = 'OH'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CHOMOHPAN = CHOMOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CHOMOHPAN'; 
fCHOMOHPAN(i)=fCHOMOHPAN(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = CH3CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + HO2 = PRNO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'HO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fPRNO3CO3H(i)=fPRNO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO = CH3CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO2 = PRNO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO2'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fPRNO3PAN(i)=fPRNO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + NO3 = CH3CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'NO3'; 
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + RO2 = CH3CHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3 + RO2 = PRNO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'PRNO3CO3'; Gstr{i,2} = 'RO2';
fPRNO3CO3(i)=fPRNO3CO3(i)-1; fPRNO3CO2H(i)=fPRNO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'PROPALO = CH3CHO + HO2 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'PROPALO'; 
fPROPALO(i)=fPROPALO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = GLYOX + OH';
k(:,i) = 2.91e-11;
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + OH = HCOCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HCOCH2OOH'; Gstr{i,2} = 'OH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = HCOCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHCOCH2O(i)=fHCOCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCH2OOH + hv = HO2 + CO + HCHO + OH';
k(:,i) = J15;
Gstr{i,1} = 'HCOCH2OOH'; 
fHCOCH2OOH(i)=fHCOCH2OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = CH3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + HO2 = IPROPOLPER';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'HO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fIPROPOLPER(i)=fIPROPOLPER(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO = CH3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO2 = IPROPOLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO2'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fIPROPOLPAN(i)=fIPROPOLPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + NO3 = CH3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'NO3'; 
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CHOHCO3 + RO2 = CH3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3CHOHCO3'; Gstr{i,2} = 'RO2';
fCH3CHOHCO3(i)=fCH3CHOHCO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H + hv = CH3CO3 + HO2 + HCOCO3H';
k(:,i) = J22;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHO2(i)=fHO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2H3CO3H + hv = MGLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2H3CO3H'; 
fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO2H3CO3H = CO2H3CO3';
k(:,i) = 7.34e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO2H3CO3H'; 
fOH(i)=fOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN6 = CO2H3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN6'; 
fC4PAN6(i)=fC4PAN6(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN6 = MGLYOX + CO + NO2';
k(:,i) = 3.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN6'; 
fOH(i)=fOH(i)-1; fC4PAN6(i)=fC4PAN6(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO2H = HO2 + CO + HCHO';
k(:,i) = 8.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO2H'; 
fOH(i)=fOH(i)-1; fACO2H(i)=fACO2H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3H + hv = HO2 + CO + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ACO3H'; 
fACO3H(i)=fACO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO3H = ACO3';
k(:,i) = 1.22e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACRPAN = ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'ACRPAN'; 
fACRPAN(i)=fACRPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACRPAN = HOCH2CHO + CO + NO2';
k(:,i) = 8.63e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACRPAN'; 
fOH(i)=fOH(i)-1; fACRPAN(i)=fACRPAN(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + CO = HOCH2COCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'CO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + NO = HOCH2COCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'NO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + NO2 = HOCH2COCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'NO2'; 
fHMGLOO(i)=fHMGLOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO + SO2 = HOCH2COCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'HMGLOO'; Gstr{i,2} = 'SO2'; 
fHMGLOO(i)=fHMGLOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO = HOCH2COCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'HMGLOO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLOO = HOCH2COCO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'HMGLOO'; 
fHMGLOO(i)=fHMGLOO(i)-1; fHOCH2COCO2H(i)=fHOCH2COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH + OH = H13CO2CHO + OH';
k(:,i) = 5.98e-11;
Gstr{i,1} = 'MVKOHAOOH'; Gstr{i,2} = 'OH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH + hv = MVKOHAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOHAOOH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fMVKOHAO(i)=fMVKOHAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOOH + hv = MVKOHAO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHAOOH'; 
fMVKOHAOOH(i)=fMVKOHAOOH(i)-1; fMVKOHAO(i)=fMVKOHAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHANO3 + OH = H13CO2CHO + NO2';
k(:,i) = 4.37e-12;
Gstr{i,1} = 'MVKOHANO3'; Gstr{i,2} = 'OH'; 
fMVKOHANO3(i)=fMVKOHANO3(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAO = HOCH2COCHO + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MVKOHAO'; 
fMVKOHAO(i)=fMVKOHAO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CHO + hv = HOCH2CHO + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'H13CO2CHO'; 
fH13CO2CHO(i)=fH13CO2CHO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + H13CO2CHO = H13CO2CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'H13CO2CHO'; 
fNO3(i)=fNO3(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + H13CO2CHO = H13CO2CO3';
k(:,i) = 2.66e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H13CO2CHO'; 
fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOH + OH = H13CO2CHO + HO2';
k(:,i) = 2.10e-11;
Gstr{i,1} = 'MVKOHAOH'; Gstr{i,2} = 'OH'; 
fMVKOHAOH(i)=fMVKOHAOH(i)-1; fOH(i)=fOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHAOH + hv = HOCH2CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHAOH'; 
fMVKOHAOH(i)=fMVKOHAOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH + OH = H14CO23C4 + OH';
k(:,i) = 4.39e-12;
Gstr{i,1} = 'MVKOHBOOH'; Gstr{i,2} = 'OH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fOH(i)=fOH(i)-1; fH14CO23C4(i)=fH14CO23C4(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH + hv = HOCH2CHO + HOCH2CO3 + OH';
k(:,i) = J22;
Gstr{i,1} = 'MVKOHBOOH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBOOH + hv = MVKOHBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MVKOHBOOH'; 
fMVKOHBOOH(i)=fMVKOHBOOH(i)-1; fMVKOHBO(i)=fMVKOHBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MVKOHBO = HOCH2CHO + HOCH2CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MVKOHBO'; 
fMVKOHBO(i)=fMVKOHBO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H14CO23C4 + OH = H1CO23CHO + HO2';
k(:,i) = 4.44e-12;
Gstr{i,1} = 'H14CO23C4'; Gstr{i,2} = 'OH'; 
fH14CO23C4(i)=fH14CO23C4(i)-1; fOH(i)=fOH(i)-1; fH1CO23CHO(i)=fH1CO23CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H14CO23C4 + hv = HOCH2CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'H14CO23C4'; 
fH14CO23C4(i)=fH14CO23C4(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + NO3 = ACO3 + HNO3';
k(:,i) = 1.72e-13.*exp(-1190./T);
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'NO3'; 
fACR(i)=fACR(i)-1; fNO3(i)=fNO3(i)-1; fACO3(i)=fACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = ACO3';
k(:,i) = 0.68.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = ACO3B';
k(:,i) = 0.255.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACO3B(i)=fACO3B(i)+1; 

i=i+1;
Rnames{i} = 'ACR + OH = OCCOHCO2';
k(:,i) = 0.065.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fOCCOHCO2(i)=fOCCOHCO2(i)+1; 

i=i+1;
Rnames{i} = 'ACR + hv = ACO3';
k(:,i) = 0.3.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'ACR + hv = C2H4 + CO';
k(:,i) = 0.4.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fC2H4(i)=fC2H4(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ACR + hv = HCHO + HO2 + CO';
k(:,i) = 0.3.*J18;
Gstr{i,1} = 'ACR'; 
fACR(i)=fACR(i)-1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ACR = CH2OOB + GLYOX';
k(:,i) = 0.5.*2.9E-19;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ACR'; 
fO3(i)=fO3(i)-1; fACR(i)=fACR(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ACR = GLYOOB + HCHO';
k(:,i) = 0.5.*2.9E-19;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ACR'; 
fO3(i)=fO3(i)-1; fACR(i)=fACR(i)-1; fGLYOOB(i)=fGLYOOB(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + HO2 = HMVKBO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'HO2'; 
fIEACO3(i)=fIEACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + HO2 = IEACO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'HO2'; 
fIEACO3(i)=fIEACO3(i)-1; fHO2(i)=fHO2(i)-1; fIEACO3H(i)=fIEACO3H(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO = HMVKBO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO'; 
fIEACO3(i)=fIEACO3(i)-1; fNO(i)=fNO(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO2 = IEAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO2'; 
fIEACO3(i)=fIEACO3(i)-1; fNO2(i)=fNO2(i)-1; fIEAPAN(i)=fIEAPAN(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + NO3 = HMVKBO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'NO3'; 
fIEACO3(i)=fIEACO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3 + RO2 = HMVKBO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'IEACO3'; Gstr{i,2} = 'RO2';
fIEACO3(i)=fIEACO3(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO2H + OH = HCHO + NO2';
k(:,i) = 1.68e-13;
Gstr{i,1} = 'NO3CH2CO2H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO2H(i)=fNO3CH2CO2H(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + OH = NO3CH2CO3';
k(:,i) = 3.63e-12;
Gstr{i,1} = 'NO3CH2CO3H'; Gstr{i,2} = 'OH'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2CO3H + hv = HCHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NO3CH2CO3H'; 
fNO3CH2CO3H(i)=fNO3CH2CO3H(i)-1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN + OH = HCHO + CO + NO2 + NO2';
k(:,i) = 1.12e-14;
Gstr{i,1} = 'NO3CH2PAN'; Gstr{i,2} = 'OH'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3CH2PAN = NO3CH2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'NO3CH2PAN'; 
fNO3CH2PAN(i)=fNO3CH2PAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCHO + hv = HMVKANO3 + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INAHPCHO'; 
fINAHPCHO(i)=fINAHPCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCHO + hv = HMVKANO3 + OH + CO + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INAHPCHO'; 
fINAHPCHO(i)=fINAHPCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCHO = INAHPCO3';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCHO'; 
fOH(i)=fOH(i)-1; fINAHPCHO(i)=fINAHPCHO(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCHO + hv = HMVKANO3 + NO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INANCHO'; 
fINANCHO(i)=fINANCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCHO = INANCO3';
k(:,i) = 4.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCHO'; 
fOH(i)=fOH(i)-1; fINANCHO(i)=fINANCHO(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO + hv = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J56;
Gstr{i,1} = 'INANCO'; 
fINANCO(i)=fINANCO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO + hv = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J57;
Gstr{i,1} = 'INANCO'; 
fINANCO(i)=fINANCO(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO = INANCOCHO + HO2';
k(:,i) = 1.21e-12.*0.56;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO'; 
fOH(i)=fOH(i)-1; fINANCO(i)=fINANCO(i)-1; fINANCOCHO(i)=fINANCOCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO = INB1GLYOX + NO2';
k(:,i) = 1.21e-12.*0.44;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO'; 
fOH(i)=fOH(i)-1; fINANCO(i)=fINANCO(i)-1; fINB1GLYOX(i)=fINB1GLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCHO + hv = HMVKANO3 + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INAHCHO'; 
fINAHCHO(i)=fINAHCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCHO = INAHCO3';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCHO'; 
fOH(i)=fOH(i)-1; fINAHCHO(i)=fINAHCHO(i)-1; fINAHCO3(i)=fINAHCO3(i)+1; 

i=i+1;
Rnames{i} = 'HIEPOXB + OH = HIEB1O2';
k(:,i) = 1.31e-11.*0.667;
Gstr{i,1} = 'HIEPOXB'; Gstr{i,2} = 'OH'; 
fHIEPOXB(i)=fHIEPOXB(i)-1; fOH(i)=fOH(i)-1; fHIEB1O2(i)=fHIEB1O2(i)+1; 

i=i+1;
Rnames{i} = 'HIEPOXB + OH = HIEB2O2';
k(:,i) = 1.31e-11.*0.333;
Gstr{i,1} = 'HIEPOXB'; Gstr{i,2} = 'OH'; 
fHIEPOXB(i)=fHIEPOXB(i)-1; fOH(i)=fOH(i)-1; fHIEB2O2(i)=fHIEB2O2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + HO2 = NC524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'HO2'; 
fNC524O2(i)=fNC524O2(i)-1; fHO2(i)=fHO2(i)-1; fNC524OOH(i)=fNC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO = NC524NO3';
k(:,i) = KRO2NO.*0.072;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO'; 
fNC524O2(i)=fNC524O2(i)-1; fNO(i)=fNO(i)-1; fNC524NO3(i)=fNC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO = NC524O + NO2';
k(:,i) = KRO2NO.*0.928;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO'; 
fNC524O2(i)=fNC524O2(i)-1; fNO(i)=fNO(i)-1; fNC524O(i)=fNC524O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + NO3 = NC524O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'NO3'; 
fNC524O2(i)=fNC524O2(i)-1; fNO3(i)=fNO3(i)-1; fNC524O(i)=fNC524O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + RO2 = NC524O';
k(:,i) = 8.00e-13.*0.8;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'RO2';
fNC524O2(i)=fNC524O2(i)-1; fNC524O(i)=fNC524O(i)+1; 

i=i+1;
Rnames{i} = 'NC524O2 + RO2 = NC524OH';
k(:,i) = 8.00e-13.*0.2;
Gstr{i,1} = 'NC524O2'; Gstr{i,2} = 'RO2';
fNC524O2(i)=fNC524O2(i)-1; fNC524OH(i)=fNC524OH(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + NO3 = HMACO3 + HNO3';
k(:,i) = 3.40e-15;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'NO3'; 
fHMACR(i)=fHMACR(i)-1; fNO3(i)=fNO3(i)-1; fHMACO3(i)=fHMACO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + O3 = CH2OOA + HOCH2COCHO';
k(:,i) = 7.80e-19.*0.5;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'O3'; 
fHMACR(i)=fHMACR(i)-1; fO3(i)=fO3(i)-1; fCH2OOA(i)=fCH2OOA(i)+1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + O3 = HCHO + HMGLYOOA';
k(:,i) = 7.80e-19.*0.5;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'O3'; 
fHMACR(i)=fHMACR(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fHMGLYOOA(i)=fHMGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + OH = HMACO3';
k(:,i) = 4.83e-11.*0.376;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'OH'; 
fHMACR(i)=fHMACR(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACR + OH = HMACRO2';
k(:,i) = 4.83e-11.*0.624;
Gstr{i,1} = 'HMACR'; Gstr{i,2} = 'OH'; 
fHMACR(i)=fHMACR(i)-1; fOH(i)=fOH(i)-1; fHMACRO2(i)=fHMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + HO2 = C525OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'HO2'; 
fC525O2(i)=fC525O2(i)-1; fHO2(i)=fHO2(i)-1; fC525OOH(i)=fC525OOH(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + NO = C525O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'NO'; 
fC525O2(i)=fC525O2(i)-1; fNO(i)=fNO(i)-1; fC525O(i)=fC525O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + NO3 = C525O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'NO3'; 
fC525O2(i)=fC525O2(i)-1; fNO3(i)=fNO3(i)-1; fC525O(i)=fC525O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C525O2 + RO2 = C525O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C525O2'; Gstr{i,2} = 'RO2';
fC525O2(i)=fC525O2(i)-1; fC525O(i)=fC525O(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = C58NO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = C58NO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + HO2 = MACRNO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'HO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + NO = MACRNO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'NO'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + NO2 = C58NO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'NO2'; 
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC58NO3PAN(i)=fC58NO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + RO2 = C58NO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'RO2';
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3 + RO2 = MACRNO3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C58NO3CO3'; Gstr{i,2} = 'RO2';
fC58NO3CO3(i)=fC58NO3CO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1OOH + hv = HO12CO3C4 + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEB1OOH'; 
fIEB1OOH(i)=fIEB1OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1OOH + hv = IEB1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEB1OOH'; 
fIEB1OOH(i)=fIEB1OOH(i)-1; fIEB1O(i)=fIEB1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEB1OOH = HO12CO3C4 + OH + CO';
k(:,i) = 3.90e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEB1OOH'; 
fOH(i)=fOH(i)-1; fIEB1OOH(i)=fIEB1OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'IEB1O = MGLYOX + HOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'IEB1O'; 
fIEB1O(i)=fIEB1O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB2OOH + hv = IEB2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEB2OOH'; 
fIEB2OOH(i)=fIEB2OOH(i)-1; fIEB2O(i)=fIEB2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IEB2OOH + hv = MACROH + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'IEB2OOH'; 
fIEB2OOH(i)=fIEB2OOH(i)-1; fMACROH(i)=fMACROH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEB2OOH = MACROH + OH + CO';
k(:,i) = 5.34e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEB2OOH'; 
fOH(i)=fOH(i)-1; fIEB2OOH(i)=fIEB2OOH(i)-1; fMACROH(i)=fMACROH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'IEB2O = GLYOX + ACETOL + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'IEB2O'; 
fIEB2O(i)=fIEB2O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO2H + OH = ACETOL + NO2';
k(:,i) = 1.34e-12.*0.44;
Gstr{i,1} = 'MACRNCO2H'; Gstr{i,2} = 'OH'; 
fMACRNCO2H(i)=fMACRNCO2H(i)-1; fOH(i)=fOH(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO2H + OH = CONM2CO2H + HO2';
k(:,i) = 1.34e-12.*0.15;
Gstr{i,1} = 'MACRNCO2H'; Gstr{i,2} = 'OH'; 
fMACRNCO2H(i)=fMACRNCO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = CONM2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = CONM2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + HO2 = MGLYOX + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'HO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO = MGLYOX + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO2 = CONM2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO2'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO2(i)=fNO2(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + NO3 = MGLYOX + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'NO3'; 
fCONM2CO3(i)=fCONM2CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + RO2 = CONM2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'RO2';
fCONM2CO3(i)=fCONM2CO3(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3 + RO2 = MGLYOX + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'CONM2CO3'; Gstr{i,2} = 'RO2';
fCONM2CO3(i)=fCONM2CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H + OH = CONM2CO3H + HO2';
k(:,i) = 4.42e-12.*0.15;
Gstr{i,1} = 'MACRNCO3H'; Gstr{i,2} = 'OH'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H + OH = MACRNCO3';
k(:,i) = 4.42e-12.*0.85;
Gstr{i,1} = 'MACRNCO3H'; Gstr{i,2} = 'OH'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNCO3H + hv = ACETOL + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACRNCO3H'; 
fMACRNCO3H(i)=fMACRNCO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNPAN + OH = CONM2PAN + HO2';
k(:,i) = 8.21e-13;
Gstr{i,1} = 'MACRNPAN'; Gstr{i,2} = 'OH'; 
fMACRNPAN(i)=fMACRNPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNPAN = MACRNCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MACRNPAN'; 
fMACRNPAN(i)=fMACRNPAN(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCHO + hv = MACRNO3 + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INB1HPCHO'; 
fINB1HPCHO(i)=fINB1HPCHO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1HPCHO = INB1HPCO3';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1HPCHO'; 
fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACHO + hv = MACRNO3 + NO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'INB1NACHO'; 
fINB1NACHO(i)=fINB1NACHO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NACHO = INB1NACO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NACHO'; 
fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCHO + hv = MVKNO3 + NO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INB1NBCHO'; 
fINB1NBCHO(i)=fINB1NBCHO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NBCHO = INB1NBCO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NBCHO'; 
fOH(i)=fOH(i)-1; fINB1NBCHO(i)=fINB1NBCHO(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1GLYOX + OH = MACRNCO3 + CO';
k(:,i) = 1.35e-11;
Gstr{i,1} = 'INB1GLYOX'; Gstr{i,2} = 'OH'; 
fINB1GLYOX(i)=fINB1GLYOX(i)-1; fOH(i)=fOH(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'INB1GLYOX + hv = MACRNCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'INB1GLYOX'; 
fINB1GLYOX(i)=fINB1GLYOX(i)-1; fMACRNCO3(i)=fMACRNCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 + OH = C4M2ALOHNO3 + HO2';
k(:,i) = 9.37e-12.*0.54;
Gstr{i,1} = 'C57NO3'; Gstr{i,2} = 'OH'; 
fC57NO3(i)=fC57NO3(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 + OH = C57NO3CO3';
k(:,i) = 9.37e-12.*0.46;
Gstr{i,1} = 'C57NO3'; Gstr{i,2} = 'OH'; 
fC57NO3(i)=fC57NO3(i)-1; fOH(i)=fOH(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3 + hv = HO2 + CO + HO12CO3C4 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'C57NO3'; 
fC57NO3(i)=fC57NO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1OOH + hv = ACETOL + OH + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'IEC1OOH'; 
fIEC1OOH(i)=fIEC1OOH(i)-1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'IEC1OOH + hv = IEC1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEC1OOH'; 
fIEC1OOH(i)=fIEC1OOH(i)-1; fIEC1O(i)=fIEC1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC1OOH = IEC1O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC1OOH'; 
fOH(i)=fOH(i)-1; fIEC1OOH(i)=fIEC1OOH(i)-1; fIEC1O2(i)=fIEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC1OOH = IEC2OOH + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC1OOH'; 
fOH(i)=fOH(i)-1; fIEC1OOH(i)=fIEC1OOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC1O = BIACETOH + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'IEC1O'; 
fIEC1O(i)=fIEC1O(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + HO2 = IECCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'HO2'; 
fIECCO3(i)=fIECCO3(i)-1; fHO2(i)=fHO2(i)-1; fIECCO3H(i)=fIECCO3H(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + HO2 = MACRO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'HO2'; 
fIECCO3(i)=fIECCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRO2(i)=fMACRO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO = MACRO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO'; 
fIECCO3(i)=fIECCO3(i)-1; fNO(i)=fNO(i)-1; fMACRO2(i)=fMACRO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO2 = IECPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO2'; 
fIECCO3(i)=fIECCO3(i)-1; fNO2(i)=fNO2(i)-1; fIECPAN(i)=fIECPAN(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + NO3 = MACRO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'NO3'; 
fIECCO3(i)=fIECCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRO2(i)=fMACRO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3 + RO2 = MACRO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'IECCO3'; Gstr{i,2} = 'RO2';
fIECCO3(i)=fIECCO3(i)-1; fMACRO2(i)=fMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + HO2 = CO2N3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'HO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2N3CO3H(i)=fCO2N3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + HO2 = MGLYOX + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'HO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fHO2(i)=fHO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO = MGLYOX + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO(i)=fNO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO2 = CO2N3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO2'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2N3PAN(i)=fCO2N3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + NO3 = MGLYOX + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'NO3'; 
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3 + RO2 = MGLYOX + NO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2N3CO3'; Gstr{i,2} = 'RO2';
fCO2N3CO3(i)=fCO2N3CO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO + OH = INDHPCO3';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'INDHPCHO'; Gstr{i,2} = 'OH'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO + hv = CO + HO2 + MVKNO3 + OH';
k(:,i) = J17;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO + hv = CO + HO2 + MVKNO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + OH = INDHCO3';
k(:,i) = 2.27e-11;
Gstr{i,1} = 'INDHCHO'; Gstr{i,2} = 'OH'; 
fINDHCHO(i)=fINDHCHO(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + hv = CO + HO2 + MVKNO3 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'INDHCHO'; 
fINDHCHO(i)=fINDHCHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = INCNCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fINCNCO2H(i)=fINCNCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = INCNCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fINCNCO3H(i)=fINCNCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + HO2 = MACRNB + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'HO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO = MACRNB + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO(i)=fNO(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO2 = INCNPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO2'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO2(i)=fNO2(i)-1; fINCNPAN(i)=fINCNPAN(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + NO3 = MACRNB + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'NO3'; 
fINCNCO3(i)=fINCNCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + RO2 = INCNCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'RO2';
fINCNCO3(i)=fINCNCO3(i)-1; fINCNCO2H(i)=fINCNCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3 + RO2 = MACRNB + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INCNCO3'; Gstr{i,2} = 'RO2';
fINCNCO3(i)=fINCNCO3(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNB + hv = NOA + HO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'MACRNB'; 
fMACRNB(i)=fMACRNB(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACRNB = MACRNBCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACRNB'; 
fOH(i)=fOH(i)-1; fMACRNB(i)=fMACRNB(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = MACRNBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNBCO2H(i)=fMACRNBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = MACRNBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNBCO3H(i)=fMACRNBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + HO2 = NOA + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'HO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO = NOA + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO(i)=fNO(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO2 = MACRNBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO2'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMACRNBPAN(i)=fMACRNBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + NO3 = NOA + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'NO3'; 
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNO3(i)=fNO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + RO2 = MACRNBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'RO2';
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fMACRNBCO2H(i)=fMACRNBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3 + RO2 = NOA + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MACRNBCO3'; Gstr{i,2} = 'RO2';
fMACRNBCO3(i)=fMACRNBCO3(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO2H + OH = CH3COCH3 + HO2';
k(:,i) = 1.72e-12;
Gstr{i,1} = 'IPRHOCO2H'; Gstr{i,2} = 'OH'; 
fIPRHOCO2H(i)=fIPRHOCO2H(i)-1; fOH(i)=fOH(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IPRHOCO3H + hv = CH3COCH3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPRHOCO3H'; 
fIPRHOCO3H(i)=fIPRHOCO3H(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IPRHOCO3H = IPRHOCO3';
k(:,i) = 4.80e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IPRHOCO3H'; 
fOH(i)=fOH(i)-1; fIPRHOCO3H(i)=fIPRHOCO3H(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN5 = IPRHOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN5'; 
fC4PAN5(i)=fC4PAN5(i)-1; fIPRHOCO3(i)=fIPRHOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN5 = CH3COCH3 + CO + NO2';
k(:,i) = 4.75e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN5'; 
fOH(i)=fOH(i)-1; fC4PAN5(i)=fC4PAN5(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = CH3COCH2O + OH';
k(:,i) = 1.36e-13.*exp(1250./T).*0.15;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + HO2 = HYPERACET';
k(:,i) = 1.36e-13.*exp(1250./T).*0.85;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'HO2'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO = CH3COCH2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + NO3 = CH3COCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'NO3'; 
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = ACETOL';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fACETOL(i)=fACETOL(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = CH3COCH2O';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.6;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O2 + RO2 = MGLYOX';
k(:,i) = 2.*(K298CH3O2.*8.0e-12).^0.5.*0.2;
Gstr{i,1} = 'CH3COCH2O2'; Gstr{i,2} = 'RO2';
fCH3COCH2O2(i)=fCH3COCH2O2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO2H + OH = CH3CHO + NO2';
k(:,i) = 3.14e-13;
Gstr{i,1} = 'PRNO3CO2H'; Gstr{i,2} = 'OH'; 
fPRNO3CO2H(i)=fPRNO3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H + OH = PRNO3CO3';
k(:,i) = 3.77e-12;
Gstr{i,1} = 'PRNO3CO3H'; Gstr{i,2} = 'OH'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fOH(i)=fOH(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3CO3H + hv = CH3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PRNO3CO3H'; 
fPRNO3CO3H(i)=fPRNO3CO3H(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN + OH = CH3CHO + CO + NO2 + NO2';
k(:,i) = 1.43e-13;
Gstr{i,1} = 'PRNO3PAN'; Gstr{i,2} = 'OH'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PRNO3PAN = PRNO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'PRNO3PAN'; 
fPRNO3PAN(i)=fPRNO3PAN(i)-1; fPRNO3CO3(i)=fPRNO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + OH = CH3CHOHCO3';
k(:,i) = 9.34e-12;
Gstr{i,1} = 'IPROPOLPER'; Gstr{i,2} = 'OH'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPER + hv = CH3CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IPROPOLPER'; 
fIPROPOLPER(i)=fIPROPOLPER(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN + OH = CH3CHO + CO + NO2';
k(:,i) = 2.34e-12;
Gstr{i,1} = 'IPROPOLPAN'; Gstr{i,2} = 'OH'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IPROPOLPAN = CH3CHOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IPROPOLPAN'; 
fIPROPOLPAN(i)=fIPROPOLPAN(i)-1; fCH3CHOHCO3(i)=fCH3CHOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCO2H + OH = HOCH2CO3';
k(:,i) = 2.89e-12;
Gstr{i,1} = 'HOCH2COCO2H'; Gstr{i,2} = 'OH'; 
fHOCH2COCO2H(i)=fHOCH2COCO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2COCO2H + hv = HOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HOCH2COCO2H'; 
fHOCH2COCO2H(i)=fHOCH2COCO2H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + HO2 = H13CO2CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'HO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHO2(i)=fHO2(i)-1; fH13CO2CO3H(i)=fH13CO2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + HO2 = HOCH2COCHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'HO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO = HOCH2COCHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO2 = C4PAN10';
k(:,i) = KFPAN;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO2'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN10(i)=fC4PAN10(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + NO3 = HOCH2COCHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'NO3'; 
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3 + RO2 = HOCH2COCHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'H13CO2CO3'; Gstr{i,2} = 'RO2';
fH13CO2CO3(i)=fH13CO2CO3(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + OH = CO + CO + HOCH2CO3';
k(:,i) = 1.44e-11;
Gstr{i,1} = 'H1CO23CHO'; Gstr{i,2} = 'OH'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + hv = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H1CO23CHO + hv = CO + CO + HOCH2CO3 + HO2';
k(:,i) = J35;
Gstr{i,1} = 'H1CO23CHO'; 
fH1CO23CHO(i)=fH1CO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + HO2 = HOCHOCOOH';
k(:,i) = KRO2HO2.*0.52;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'HO2'; 
fACO3B(i)=fACO3B(i)-1; fHO2(i)=fHO2(i)-1; fHOCHOCOOH(i)=fHOCHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + NO = CHOCOHCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'NO'; 
fACO3B(i)=fACO3B(i)-1; fNO(i)=fNO(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + NO3 = CHOCOHCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'NO3'; 
fACO3B(i)=fACO3B(i)-1; fNO3(i)=fNO3(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + RO2 = CHOCOHCO';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + RO2 = HOCH2COCHO';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACO3B + RO2 = OCCOHCOH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACO3B'; Gstr{i,2} = 'RO2';
fACO3B(i)=fACO3B(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + HO2 = C32OH13CO + O3';
k(:,i) = 0.4.*0.52.*KRO2HO2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'HO2'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fHO2(i)=fHO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + HO2 = OCCOHCOOH';
k(:,i) = 0.6.*0.52.*KRO2HO2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'HO2'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fHO2(i)=fHO2(i)-1; fOCCOHCOOH(i)=fOCCOHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO = C42AOH';
k(:,i) = 0.05.*KRO2NO;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO(i)=fNO(i)-1; fC42AOH(i)=fC42AOH(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO = OCCOHCO + NO2';
k(:,i) = 0.95.*KRO2NO;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO(i)=fNO(i)-1; fOCCOHCO(i)=fOCCOHCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + NO3 = C42AOH + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'NO3'; 
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fNO3(i)=fNO3(i)-1; fC42AOH(i)=fC42AOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + RO2 = C32OH13CO';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + RO2 = OCCOHCO';
k(:,i) = 2.0e-12.*0.6;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fOCCOHCO(i)=fOCCOHCO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO2 + RO2 = OCCOHCOH';
k(:,i) = 2.0e-12.*0.2;
Gstr{i,1} = 'OCCOHCO2'; Gstr{i,2} = 'RO2';
fOCCOHCO2(i)=fOCCOHCO2(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + NO3 = ETHENO3O2';
k(:,i) = 3.3e-12.*exp(-2880./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'NO3'; 
fC2H4(i)=fC2H4(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + O3 = HCHO + CH2OOA';
k(:,i) = 9.1e-15.*exp(-2580./T);
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'O3'; 
fC2H4(i)=fC2H4(i)-1; fO3(i)=fO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH2OOA(i)=fCH2OOA(i)+1; 

i=i+1;
Rnames{i} = 'C2H4 + OH = HOCH2CH2O2';
k(:,i) = KMT15;
Gstr{i,1} = 'C2H4'; Gstr{i,2} = 'OH'; 
fC2H4(i)=fC2H4(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOB = GLYOO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'GLYOOB'; 
fGLYOOB(i)=fGLYOOB(i)-1; fGLYOO(i)=fGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOB = HCHO';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'GLYOOB'; 
fGLYOOB(i)=fGLYOOB(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOB = HO2 + HO2 + CO';
k(:,i) = KDEC.*0.20;
Gstr{i,1} = 'GLYOOB'; 
fGLYOOB(i)=fGLYOOB(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOB = OH + CO + CO + HO2';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'GLYOOB'; 
fGLYOOB(i)=fGLYOOB(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEACO3H + hv = HMVKBO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IEACO3H'; 
fIEACO3H(i)=fIEACO3H(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEACO3H = IEACO3';
k(:,i) = 4.81e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEACO3H'; 
fOH(i)=fOH(i)-1; fIEACO3H(i)=fIEACO3H(i)-1; fIEACO3(i)=fIEACO3(i)+1; 

i=i+1;
Rnames{i} = 'IEAPAN = IEACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IEAPAN'; 
fIEAPAN(i)=fIEAPAN(i)-1; fIEACO3(i)=fIEACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEAPAN = HMVKBO2 + CO + NO2';
k(:,i) = 1.21e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEAPAN'; 
fOH(i)=fOH(i)-1; fIEAPAN(i)=fIEAPAN(i)-1; fHMVKBO2(i)=fHMVKBO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = HMVKANO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = INAHPCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + HO2 = INAHPCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'HO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHPCO3H(i)=fINAHPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO = HMVKANO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO2 = INAHPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO2'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINAHPPAN(i)=fINAHPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + NO3 = HMVKANO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'NO3'; 
fINAHPCO3(i)=fINAHPCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + RO2 = HMVKANO3 + OH';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'RO2';
fINAHPCO3(i)=fINAHPCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3 + RO2 = INAHPCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INAHPCO3'; Gstr{i,2} = 'RO2';
fINAHPCO3(i)=fINAHPCO3(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = HMVKANO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = INANCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCO2H(i)=fINANCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + HO2 = INANCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'HO2'; 
fINANCO3(i)=fINANCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCO3H(i)=fINANCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO = HMVKANO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO'; 
fINANCO3(i)=fINANCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO2 = INANPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO2'; 
fINANCO3(i)=fINANCO3(i)-1; fNO2(i)=fNO2(i)-1; fINANPAN(i)=fINANPAN(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + NO3 = HMVKANO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'NO3'; 
fINANCO3(i)=fINANCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + RO2 = HMVKANO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'RO2';
fINANCO3(i)=fINANCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3 + RO2 = INANCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INANCO3'; Gstr{i,2} = 'RO2';
fINANCO3(i)=fINANCO3(i)-1; fINANCO2H(i)=fINANCO2H(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCHO = INANCOCO3';
k(:,i) = 3.79e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCHO'; 
fOH(i)=fOH(i)-1; fINANCOCHO(i)=fINANCOCHO(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = HMVKANO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = INAHCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHCO2H(i)=fINAHCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + HO2 = INAHCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'HO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINAHCO3H(i)=fINAHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO = HMVKANO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO2 = INAHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO2'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO2(i)=fNO2(i)-1; fINAHPAN(i)=fINAHPAN(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + NO3 = HMVKANO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'NO3'; 
fINAHCO3(i)=fINAHCO3(i)-1; fNO3(i)=fNO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + RO2 = HMVKANO3 + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'RO2';
fINAHCO3(i)=fINAHCO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3 + RO2 = INAHCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INAHCO3'; Gstr{i,2} = 'RO2';
fINAHCO3(i)=fINAHCO3(i)-1; fINAHCO2H(i)=fINAHCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + HO2 = HIEB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'HO2'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fHO2(i)=fHO2(i)-1; fHIEB1OOH(i)=fHIEB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + NO = HIEB1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'NO'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fNO(i)=fNO(i)-1; fHIEB1O(i)=fHIEB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + NO3 = HIEB1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'NO3'; 
fHIEB1O2(i)=fHIEB1O2(i)-1; fNO3(i)=fNO3(i)-1; fHIEB1O(i)=fHIEB1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O2 + RO2 = HIEB1O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'HIEB1O2'; Gstr{i,2} = 'RO2';
fHIEB1O2(i)=fHIEB1O2(i)-1; fHIEB1O(i)=fHIEB1O(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + HO2 = HIEB2OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'HO2'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fHO2(i)=fHO2(i)-1; fHIEB2OOH(i)=fHIEB2OOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + NO = HIEB2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'NO'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fNO(i)=fNO(i)-1; fHIEB2O(i)=fHIEB2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + NO3 = HIEB2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'NO3'; 
fHIEB2O2(i)=fHIEB2O2(i)-1; fNO3(i)=fNO3(i)-1; fHIEB2O(i)=fHIEB2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O2 + RO2 = HIEB2O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'HIEB2O2'; Gstr{i,2} = 'RO2';
fHIEB2O2(i)=fHIEB2O2(i)-1; fHIEB2O(i)=fHIEB2O(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH + OH = HPNC524CO + HO2';
k(:,i) = 1.32e-11.*0.728;
Gstr{i,1} = 'NC524OOH'; Gstr{i,2} = 'OH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fOH(i)=fOH(i)-1; fHPNC524CO(i)=fHPNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH + OH = NC524O2';
k(:,i) = 1.32e-11.*0.272;
Gstr{i,1} = 'NC524OOH'; Gstr{i,2} = 'OH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

i=i+1;
Rnames{i} = 'NC524OOH + hv = NC524O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC524OOH'; 
fNC524OOH(i)=fNC524OOH(i)-1; fNC524O(i)=fNC524O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC524NO3 + OH = DNC524CO + HO2';
k(:,i) = 2.43e-12;
Gstr{i,1} = 'NC524NO3'; Gstr{i,2} = 'OH'; 
fNC524NO3(i)=fNC524NO3(i)-1; fOH(i)=fOH(i)-1; fDNC524CO(i)=fDNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O = HMVKNO3 + HCHO + HO2';
k(:,i) = 1.80e13.*(T./298).^1.7.*exp(-4079./T);
Gstr{i,1} = 'NC524O'; 
fNC524O(i)=fNC524O(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC524O = HOCH2CHO + NO2 + H13CO2C3';
k(:,i) = 1.80e13.*(T./298).^1.7.*exp(-4733./T);
Gstr{i,1} = 'NC524O'; 
fNC524O(i)=fNC524O(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; 

i=i+1;
Rnames{i} = 'NC524OH + OH = HNC524CO + HO2';
k(:,i) = 9.60e-12;
Gstr{i,1} = 'NC524OH'; Gstr{i,2} = 'OH'; 
fNC524OH(i)=fNC524OH(i)-1; fOH(i)=fOH(i)-1; fHNC524CO(i)=fHNC524CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HMACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMACO2H(i)=fHMACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HMACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHMACO3H(i)=fHMACO3H(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + HO2 = HOCH2CO3 + HCHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'HO2'; 
fHMACO3(i)=fHMACO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO = HOCH2CO3 + HCHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO'; 
fHMACO3(i)=fHMACO3(i)-1; fNO(i)=fNO(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO2 = HMPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO2'; 
fHMACO3(i)=fHMACO3(i)-1; fNO2(i)=fNO2(i)-1; fHMPAN(i)=fHMPAN(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + NO3 = HOCH2CO3 + HCHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'NO3'; 
fHMACO3(i)=fHMACO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + RO2 = HMACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'RO2';
fHMACO3(i)=fHMACO3(i)-1; fHMACO2H(i)=fHMACO2H(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3 + RO2 = HOCH2CO3 + HCHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HMACO3'; Gstr{i,2} = 'RO2';
fHMACO3(i)=fHMACO3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CH2OO';
k(:,i) = KDEC.*0.37;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = CO';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOA = HO2 + CO + OH';
k(:,i) = KDEC.*0.13;
Gstr{i,1} = 'CH2OOA'; 
fCH2OOA(i)=fCH2OOA(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOOA = HMGLYOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'HMGLYOOA'; 
fHMGLYOOA(i)=fHMGLYOOA(i)-1; fHMGLYOO(i)=fHMGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOOA = HOCH2CO3 + CO + HO2';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'HMGLYOOA'; 
fHMGLYOOA(i)=fHMGLYOOA(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + HO2 = HMACROOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'HO2'; 
fHMACRO2(i)=fHMACRO2(i)-1; fHO2(i)=fHO2(i)-1; fHMACROOH(i)=fHMACROOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + NO = HMACRO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'NO'; 
fHMACRO2(i)=fHMACRO2(i)-1; fNO(i)=fNO(i)-1; fHMACRO(i)=fHMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + NO3 = HMACRO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'NO3'; 
fHMACRO2(i)=fHMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fHMACRO(i)=fHMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + RO2 = HMACRO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'RO2';
fHMACRO2(i)=fHMACRO2(i)-1; fHMACRO(i)=fHMACRO(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO2 + RO2 = HMACROH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'HMACRO2'; Gstr{i,2} = 'RO2';
fHMACRO2(i)=fHMACRO2(i)-1; fHMACROH(i)=fHMACROH(i)+1; 

i=i+1;
Rnames{i} = 'C525OOH + OH = C525O2';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C525OOH'; Gstr{i,2} = 'OH'; 
fC525OOH(i)=fC525OOH(i)-1; fOH(i)=fOH(i)-1; fC525O2(i)=fC525O2(i)+1; 

i=i+1;
Rnames{i} = 'C525OOH + hv = C525O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C525OOH'; 
fC525OOH(i)=fC525OOH(i)-1; fC525O(i)=fC525O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C525O = HOCH2CO3 + H13CO2C3';
k(:,i) = KDEC;
Gstr{i,1} = 'C525O'; 
fC525O(i)=fC525O(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fH13CO2C3(i)=fH13CO2C3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO2H = MMALNACO2H + HO2';
k(:,i) = 2.49e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO2H'; 
fOH(i)=fOH(i)-1; fC58NO3CO2H(i)=fC58NO3CO2H(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3CO3H + hv = MACRNO3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58NO3CO3H'; 
fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO3H = C58NO3CO3';
k(:,i) = 5.57e-12.*0.68;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO3H'; 
fOH(i)=fOH(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3CO3H = MMALNACO3H + HO2';
k(:,i) = 5.57e-12.*0.32;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3CO3H'; 
fOH(i)=fOH(i)-1; fC58NO3CO3H(i)=fC58NO3CO3H(i)-1; fMMALNACO3H(i)=fMMALNACO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3PAN = C58NO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C58NO3PAN'; 
fC58NO3PAN(i)=fC58NO3PAN(i)-1; fC58NO3CO3(i)=fC58NO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58NO3PAN = MMALNAPAN + HO2';
k(:,i) = 1.97e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58NO3PAN'; 
fOH(i)=fOH(i)-1; fC58NO3PAN(i)=fC58NO3PAN(i)-1; fMMALNAPAN(i)=fMMALNAPAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H + OH = MGLYOX + NO2';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CONM2CO2H'; Gstr{i,2} = 'OH'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H + hv = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H + hv = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J57;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CO3H'; Gstr{i,2} = 'OH'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + hv = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J56;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + hv = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J57;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + hv = MGLYOX + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + OH = MGLYOX + NO2 + NO3';
k(:,i) = 3.18e-12;
Gstr{i,1} = 'CONM2PAN'; Gstr{i,2} = 'OH'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + hv = CO + HO2 + NO2 + CH3COPAN';
k(:,i) = J56;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + hv = CO + HO2 + NO2 + CH3COPAN';
k(:,i) = J57;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CONM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = INB1HPCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1HPCO2H(i)=fINB1HPCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = INB1HPCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1HPCO3H(i)=fINB1HPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + HO2 = MACRNO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'HO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO = MACRNO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO2 = INB1HPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO2'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1HPPAN(i)=fINB1HPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + NO3 = MACRNO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'NO3'; 
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + RO2 = INB1HPCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'RO2';
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fINB1HPCO2H(i)=fINB1HPCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3 + RO2 = MACRNO3 + OH';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1HPCO3'; Gstr{i,2} = 'RO2';
fINB1HPCO3(i)=fINB1HPCO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = INB1NACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NACO2H(i)=fINB1NACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = INB1NACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NACO3H(i)=fINB1NACO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + HO2 = MACRNO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'HO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fHO2(i)=fHO2(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO = MACRNO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO2 = INB1NAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO2'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1NAPAN(i)=fINB1NAPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + NO3 = MACRNO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'NO3'; 
fINB1NACO3(i)=fINB1NACO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + RO2 = INB1NACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'RO2';
fINB1NACO3(i)=fINB1NACO3(i)-1; fINB1NACO2H(i)=fINB1NACO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3 + RO2 = MACRNO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1NACO3'; Gstr{i,2} = 'RO2';
fINB1NACO3(i)=fINB1NACO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = INB1NBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NBCO2H(i)=fINB1NBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = INB1NBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fINB1NBCO3H(i)=fINB1NBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + HO2 = MVKNO3 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'HO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO = MVKNO3 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO2 = INB1NBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO2'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO2(i)=fNO2(i)-1; fINB1NBPAN(i)=fINB1NBPAN(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + NO3 = MVKNO3 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'NO3'; 
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + RO2 = INB1NBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'RO2';
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fINB1NBCO2H(i)=fINB1NBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3 + RO2 = MVKNO3 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INB1NBCO3'; Gstr{i,2} = 'RO2';
fINB1NBCO3(i)=fINB1NBCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + OH = MMALNACO3';
k(:,i) = 2.53e-11.*0.86;
Gstr{i,1} = 'C4M2ALOHNO3'; Gstr{i,2} = 'OH'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + OH = MMALNBCO3';
k(:,i) = 2.53e-11.*0.14;
Gstr{i,1} = 'C4M2ALOHNO3'; Gstr{i,2} = 'OH'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + hv = CO2H3CHO + NO2 + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHNO3 + hv = CONM2CHO + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = C57NO3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC57NO3CO2H(i)=fC57NO3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = C57NO3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fC57NO3CO3H(i)=fC57NO3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + HO2 = HO12CO3C4 + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'HO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO = HO12CO3C4 + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO(i)=fNO(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO2 = C57NO3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO2'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC57NO3PAN(i)=fC57NO3PAN(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO3 = HO12CO3C4 + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO3'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + NO3 = MACRNO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'NO3'; 
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fNO3(i)=fNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + RO2 = C57NO3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'RO2';
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fC57NO3CO2H(i)=fC57NO3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3 + RO2 = HO12CO3C4 + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C57NO3CO3'; Gstr{i,2} = 'RO2';
fC57NO3CO3(i)=fC57NO3CO3(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC2OOH + hv = BIACETOH + OH + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'IEC2OOH'; 
fIEC2OOH(i)=fIEC2OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEC2OOH + hv = MGLYOX + OH + HOCH2CO3';
k(:,i) = J22;
Gstr{i,1} = 'IEC2OOH'; 
fIEC2OOH(i)=fIEC2OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEC2OOH = BIACETOH + OH + CO';
k(:,i) = 2.73e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEC2OOH'; 
fOH(i)=fOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'IECCO3H + hv = MACRO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'IECCO3H'; 
fIECCO3H(i)=fIECCO3H(i)-1; fMACRO2(i)=fMACRO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECCO3H = IECCO3';
k(:,i) = 1.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECCO3H'; 
fOH(i)=fOH(i)-1; fIECCO3H(i)=fIECCO3H(i)-1; fIECCO3(i)=fIECCO3(i)+1; 

i=i+1;
Rnames{i} = 'IECPAN = IECCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'IECPAN'; 
fIECPAN(i)=fIECPAN(i)-1; fIECCO3(i)=fIECCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IECPAN = MACRO2 + CO + NO2';
k(:,i) = 6.80e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IECPAN'; 
fOH(i)=fOH(i)-1; fIECPAN(i)=fIECPAN(i)-1; fMACRO2(i)=fMACRO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3H + OH = CO2N3CO3';
k(:,i) = 4.11e-12;
Gstr{i,1} = 'CO2N3CO3H'; Gstr{i,2} = 'OH'; 
fCO2N3CO3H(i)=fCO2N3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CO3H + hv = MGLYOX + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2N3CO3H'; 
fCO2N3CO3H(i)=fCO2N3CO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN + OH = CO2N3CO3';
k(:,i) = 5.10e-13;
Gstr{i,1} = 'CO2N3PAN'; Gstr{i,2} = 'OH'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN = CO2N3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3PAN + hv = MGLYOX + NO2 + NO3';
k(:,i) = J41;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + HO2 = INDHPCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'HO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fINDHPCO3H(i)=fINDHPCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + HO2 = MVKNO3 + OH + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'HO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO = MVKNO3 + OH + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO2 = INDHPPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO2'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO2(i)=fNO2(i)-1; fINDHPPAN(i)=fINDHPPAN(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + NO3 = MVKNO3 + OH + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'NO3'; 
fINDHPCO3(i)=fINDHPCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3 + RO2 = MVKNO3 + OH';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'INDHPCO3'; Gstr{i,2} = 'RO2';
fINDHPCO3(i)=fINDHPCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + HO2 = INDHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'HO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fHO2(i)=fHO2(i)-1; fINDHCO3H(i)=fINDHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + HO2 = MVKNO3 + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'HO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fHO2(i)=fHO2(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO = MVKNO3 + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO2 = INDHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO2'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO2(i)=fNO2(i)-1; fINDHPAN(i)=fINDHPAN(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + NO3 = MVKNO3 + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'NO3'; 
fINDHCO3(i)=fINDHCO3(i)-1; fNO3(i)=fNO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3 + RO2 = MVKNO3 + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'INDHCO3'; Gstr{i,2} = 'RO2';
fINDHCO3(i)=fINDHCO3(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNCO2H = MACRNB + NO2';
k(:,i) = 1.66e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNCO2H'; 
fOH(i)=fOH(i)-1; fINCNCO2H(i)=fINCNCO2H(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INCNCO3H + hv = MACRNB + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INCNCO3H'; 
fINCNCO3H(i)=fINCNCO3H(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNCO3H = INCNCO3';
k(:,i) = 4.74e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNCO3H'; 
fOH(i)=fOH(i)-1; fINCNCO3H(i)=fINCNCO3H(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; 

i=i+1;
Rnames{i} = 'INCNPAN = INCNCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INCNPAN'; 
fINCNPAN(i)=fINCNPAN(i)-1; fINCNCO3(i)=fINCNCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INCNPAN = MACRNB + NO2 + NO3';
k(:,i) = 1.14e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INCNPAN'; 
fOH(i)=fOH(i)-1; fINCNPAN(i)=fINCNPAN(i)-1; fMACRNB(i)=fMACRNB(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO2H + OH = COHM2CO2H + NO2';
k(:,i) = 1.23e-12.*0.32;
Gstr{i,1} = 'MACRNBCO2H'; Gstr{i,2} = 'OH'; 
fMACRNBCO2H(i)=fMACRNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO2H + OH = NOA + HO2';
k(:,i) = 1.23e-12.*0.68;
Gstr{i,1} = 'MACRNBCO2H'; Gstr{i,2} = 'OH'; 
fMACRNBCO2H(i)=fMACRNBCO2H(i)-1; fOH(i)=fOH(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H + OH = COHM2CO3H + NO2';
k(:,i) = 4.31e-12.*0.09;
Gstr{i,1} = 'MACRNBCO3H'; Gstr{i,2} = 'OH'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO3H(i)=fCOHM2CO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H + OH = MACRNBCO3';
k(:,i) = 4.31e-12.*0.91;
Gstr{i,1} = 'MACRNBCO3H'; Gstr{i,2} = 'OH'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBCO3H + hv = NOA + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MACRNBCO3H'; 
fMACRNBCO3H(i)=fMACRNBCO3H(i)-1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBPAN + OH = COHM2PAN + NO2';
k(:,i) = 7.10e-13;
Gstr{i,1} = 'MACRNBPAN'; Gstr{i,2} = 'OH'; 
fMACRNBPAN(i)=fMACRNBPAN(i)-1; fOH(i)=fOH(i)-1; fCOHM2PAN(i)=fCOHM2PAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRNBPAN = MACRNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MACRNBPAN'; 
fMACRNBPAN(i)=fMACRNBPAN(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = CH3COCH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + OH = MGLYOX + OH';
k(:,i) = 8.39e-12;
Gstr{i,1} = 'HYPERACET'; Gstr{i,2} = 'OH'; 
fHYPERACET(i)=fHYPERACET(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYPERACET + hv = CH3COCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYPERACET'; 
fHYPERACET(i)=fHYPERACET(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2CO3H + hv = HOCH2COCHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'H13CO2CO3H'; 
fH13CO2CO3H(i)=fH13CO2CO3H(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + H13CO2CO3H = H13CO2CO3';
k(:,i) = 9.43e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H13CO2CO3H'; 
fOH(i)=fOH(i)-1; fH13CO2CO3H(i)=fH13CO2CO3H(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN10 = H13CO2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN10'; 
fC4PAN10(i)=fC4PAN10(i)-1; fH13CO2CO3(i)=fH13CO2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN10 = HOCH2COCHO + CO + NO2';
k(:,i) = 5.83e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN10'; 
fOH(i)=fOH(i)-1; fC4PAN10(i)=fC4PAN10(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCHOCOOH + OH = HOCH2COCHO + OH';
k(:,i) = 4.77e-11;
Gstr{i,1} = 'HOCHOCOOH'; Gstr{i,2} = 'OH'; 
fHOCHOCOOH(i)=fHOCHOCOOH(i)-1; fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCHOCOOH + hv = CHOCOHCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HOCHOCOOH'; 
fHOCHOCOOH(i)=fHOCHOCOOH(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOCOHCO = HOCH2CHO + HO2 + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'CHOCOHCO'; 
fCHOCOHCO(i)=fCHOCOHCO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOH + OH = A2PANOO';
k(:,i) = 6.22e-11;
Gstr{i,1} = 'OCCOHCOH'; Gstr{i,2} = 'OH'; 
fOCCOHCOH(i)=fOCCOHCOH(i)-1; fOH(i)=fOH(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO + OH = HCOCOHCO3';
k(:,i) = 1.36e-10;
Gstr{i,1} = 'C32OH13CO'; Gstr{i,2} = 'OH'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C32OH13CO + hv = GLYOX + HO2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'C32OH13CO'; 
fC32OH13CO(i)=fC32OH13CO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOOH + OH = OCCOHCO2';
k(:,i) = 9.258E-11;
Gstr{i,1} = 'OCCOHCOOH'; Gstr{i,2} = 'OH'; 
fOCCOHCOOH(i)=fOCCOHCOOH(i)-1; fOH(i)=fOH(i)-1; fOCCOHCO2(i)=fOCCOHCO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCOOH + hv = OCCOHCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'OCCOHCOOH'; 
fOCCOHCOOH(i)=fOCCOHCOOH(i)-1; fOCCOHCO(i)=fOCCOHCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42AOH + hv = HO2 + CO + HO2 + NO3CH2CHO';
k(:,i) = J15;
Gstr{i,1} = 'C42AOH'; 
fC42AOH(i)=fC42AOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + C42AOH = NMGLYOX + HO2';
k(:,i) = 2.92e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C42AOH'; 
fOH(i)=fOH(i)-1; fC42AOH(i)=fC42AOH(i)-1; fNMGLYOX(i)=fNMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OCCOHCO = HCHO + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'OCCOHCO'; 
fOCCOHCO(i)=fOCCOHCO(i)-1; fHCHO(i)=fHCHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + HO2 = ETHO2HNO3';
k(:,i) = KRO2HO2.*0.387;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'HO2'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fHO2(i)=fHO2(i)-1; fETHO2HNO3(i)=fETHO2HNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO = ETHENO3O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO(i)=fNO(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + NO3 = ETHENO3O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'NO3'; 
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3(i)=fNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHENO3O';
k(:,i) = 6.00e-13.*0.6;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = ETHOHNO3';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O2 + RO2 = NO3CH2CHO';
k(:,i) = 6.00e-13.*0.2;
Gstr{i,1} = 'ETHENO3O2'; Gstr{i,2} = 'RO2';
fETHENO3O2(i)=fETHENO3O2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + HO2 = HYETHO2H';
k(:,i) = 1.53e-13.*exp(1300./T);
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'HO2'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHO2(i)=fHO2(i)-1; fHYETHO2H(i)=fHYETHO2H(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = ETHOHNO3';
k(:,i) = KRO2NO.*0.005;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fETHOHNO3(i)=fETHOHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO = HOCH2CH2O + NO2';
k(:,i) = KRO2NO.*0.995;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO(i)=fNO(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + NO3 = HOCH2CH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'NO3'; 
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fNO3(i)=fNO3(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = ETHGLY';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fETHGLY(i)=fETHGLY(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CH2O';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.6;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O2 + RO2 = HOCH2CHO';
k(:,i) = 2.*(KCH3O2.*7.8e-14.*exp(1000./T)).^0.5.*0.2;
Gstr{i,1} = 'HOCH2CH2O2'; Gstr{i,2} = 'RO2';
fHOCH2CH2O2(i)=fHOCH2CH2O2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO2H + hv = HMVKANO3 + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INAHPCO2H'; 
fINAHPCO2H(i)=fINAHPCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCO2H = HMVKANO3 + OH';
k(:,i) = 6.50e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCO2H'; 
fOH(i)=fOH(i)-1; fINAHPCO2H(i)=fINAHPCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INAHPCO3H + hv = HMVKANO3 + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'INAHPCO3H'; 
fINAHPCO3H(i)=fINAHPCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPCO3H = INAHPCO3';
k(:,i) = 9.58e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPCO3H'; 
fOH(i)=fOH(i)-1; fINAHPCO3H(i)=fINAHPCO3H(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN + hv = HMVKANO3 + OH + NO3';
k(:,i) = J41;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPPAN = HMVKANO3 + OH + CO + NO2';
k(:,i) = 5.98e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPPAN'; 
fOH(i)=fOH(i)-1; fINAHPPAN(i)=fINAHPPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO2H = HMVKANO3 + NO2';
k(:,i) = 1.36e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO2H'; 
fOH(i)=fOH(i)-1; fINANCO2H(i)=fINANCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCO3H + hv = HMVKANO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INANCO3H'; 
fINANCO3H(i)=fINANCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCO3H = INANCO3';
k(:,i) = 4.08e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCO3H'; 
fOH(i)=fOH(i)-1; fINANCO3H(i)=fINANCO3H(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANPAN = INANCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANPAN'; 
fINANPAN(i)=fINANPAN(i)-1; fINANCO3(i)=fINANCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANPAN = HMVKANO3 + NO2 + CO + NO2';
k(:,i) = 4.85e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANPAN'; 
fOH(i)=fOH(i)-1; fINANPAN(i)=fINANPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = INANCOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = INANCOCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + HO2 = NO2 + CO23C4NO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'HO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fHO2(i)=fHO2(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO = NO2 + CO23C4NO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO2 = INANCOPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO2'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fINANCOPAN(i)=fINANCOPAN(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + NO3 = NO2 + CO23C4NO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'NO3'; 
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + RO2 = INANCOCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'RO2';
fINANCOCO3(i)=fINANCOCO3(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3 + RO2 = NO2 + CO23C4NO3';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'INANCOCO3'; Gstr{i,2} = 'RO2';
fINANCOCO3(i)=fINANCOCO3(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCO2H = HMVKANO3 + HO2';
k(:,i) = 3.04e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCO2H'; 
fOH(i)=fOH(i)-1; fINAHCO2H(i)=fINAHCO2H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHCO3H + hv = HMVKANO3 + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INAHCO3H'; 
fINAHCO3H(i)=fINAHCO3H(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHCO3H = INAHCO3';
k(:,i) = 6.12e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHCO3H'; 
fOH(i)=fOH(i)-1; fINAHCO3H(i)=fINAHCO3H(i)-1; fINAHCO3(i)=fINAHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INAHPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INAHPAN'; 
fINAHPAN(i)=fINAHPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INAHPAN = HMVKANO3 + HO2 + CO + NO2';
k(:,i) = 2.52e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INAHPAN'; 
fOH(i)=fOH(i)-1; fINAHPAN(i)=fINAHPAN(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH + OH = MVKOHAOH + CO + OH';
k(:,i) = 4.30e-11;
Gstr{i,1} = 'HIEB1OOH'; Gstr{i,2} = 'OH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fOH(i)=fOH(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH + hv = HIEB1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HIEB1OOH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fHIEB1O(i)=fHIEB1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1OOH + hv = MVKOHAOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HIEB1OOH'; 
fHIEB1OOH(i)=fHIEB1OOH(i)-1; fMVKOHAOH(i)=fMVKOHAOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB1O = HOCH2COCHO + HOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HIEB1O'; 
fHIEB1O(i)=fHIEB1O(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH + OH = HMACROH + CO + OH';
k(:,i) = 5.74e-11;
Gstr{i,1} = 'HIEB2OOH'; Gstr{i,2} = 'OH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fOH(i)=fOH(i)-1; fHMACROH(i)=fHMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH + hv = HIEB2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HIEB2OOH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fHIEB2O(i)=fHIEB2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2OOH + hv = HMACROH + CO + OH + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HIEB2OOH'; 
fHIEB2OOH(i)=fHIEB2OOH(i)-1; fHMACROH(i)=fHMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HIEB2O = H13CO2C3 + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HIEB2O'; 
fHIEB2O(i)=fHIEB2O(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPNC524CO + OH = HMVKNO3 + CO + OH';
k(:,i) = 2.98e-11;
Gstr{i,1} = 'HPNC524CO'; Gstr{i,2} = 'OH'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPNC524CO + hv = HMVKNO3 + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'HPNC524CO'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + OH = HMVKNO3 + CO + NO2';
k(:,i) = 1.93e-11;
Gstr{i,1} = 'DNC524CO'; Gstr{i,2} = 'OH'; 
fDNC524CO(i)=fDNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + hv = HMVKNO3 + CO + HO2 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'DNC524CO'; 
fDNC524CO(i)=fDNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + OH = HMVKNGLYOX + HO2';
k(:,i) = 3.85e-12;
Gstr{i,1} = 'HMVKNO3'; Gstr{i,2} = 'OH'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fOH(i)=fOH(i)-1; fHMVKNGLYOX(i)=fHMVKNGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + hv = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J56;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + hv = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J57;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2C3 + OH = HOCH2COCHO + HO2';
k(:,i) = 5.25e-12;
Gstr{i,1} = 'H13CO2C3'; Gstr{i,2} = 'OH'; 
fH13CO2C3(i)=fH13CO2C3(i)-1; fOH(i)=fOH(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H13CO2C3 + hv = HOCH2CO3 + HCHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'H13CO2C3'; 
fH13CO2C3(i)=fH13CO2C3(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO + OH = HMVKNO3 + CO + HO2';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'HNC524CO'; Gstr{i,2} = 'OH'; 
fHNC524CO(i)=fHNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO + hv = HMVKNO3 + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HNC524CO'; 
fHNC524CO(i)=fHNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACO2H + OH = HOCH2CO3 + HCHO';
k(:,i) = 1.84e-11;
Gstr{i,1} = 'HMACO2H'; Gstr{i,2} = 'OH'; 
fHMACO2H(i)=fHMACO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = HMACO3';
k(:,i) = 1.99e-11;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + hv = HOCH2CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACO3H'; 
fHMACO3H(i)=fHMACO3H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN + OH = H13CO2C3 + HCHO + CO + NO2';
k(:,i) = 2.90e-11;
Gstr{i,1} = 'HMPAN'; Gstr{i,2} = 'OH'; 
fHMPAN(i)=fHMPAN(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN = HMACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HMPAN'; 
fHMPAN(i)=fHMPAN(i)-1; fHMACO3(i)=fHMACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + CO = HOCH2COCHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'CO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fCO(i)=fCO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + NO = HOCH2COCHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'NO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fNO(i)=fNO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + NO2 = HOCH2COCHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'NO2'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fNO2(i)=fNO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO + SO2 = HOCH2COCHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'HMGLYOO'; Gstr{i,2} = 'SO2'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fSO2(i)=fSO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'HMGLYOO = HOCH2COCHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'HMGLYOO'; 
fHMGLYOO(i)=fHMGLYOO(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH + OH = HMACRO2';
k(:,i) = 4.17e-11;
Gstr{i,1} = 'HMACROOH'; Gstr{i,2} = 'OH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fOH(i)=fOH(i)-1; fHMACRO2(i)=fHMACRO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH + hv = H13CO2C3 + CO + HO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'HMACROOH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACROOH + hv = HMACRO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACROOH'; 
fHMACROOH(i)=fHMACROOH(i)-1; fHMACRO(i)=fHMACRO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACRO = H13CO2C3 + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HMACRO'; 
fHMACRO(i)=fHMACRO(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMACROH + OH = HMACRO';
k(:,i) = 3.82e-11;
Gstr{i,1} = 'HMACROH'; Gstr{i,2} = 'OH'; 
fHMACROH(i)=fHMACROH(i)-1; fOH(i)=fOH(i)-1; fHMACRO(i)=fHMACRO(i)+1; 

i=i+1;
Rnames{i} = 'HMACROH + hv = H13CO2C3 + CO + HO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'HMACROH'; 
fHMACROH(i)=fHMACROH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H + OH = CONM2CHO + HO2';
k(:,i) = 4.93e-12;
Gstr{i,1} = 'MMALNACO2H'; Gstr{i,2} = 'OH'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H + hv = MGLYOX + NO2 + HCOCO2H';
k(:,i) = J56;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H + hv = MGLYOX + NO2 + HCOCO2H';
k(:,i) = J57;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + OH = MMALNACO3';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'MMALNACO3H'; Gstr{i,2} = 'OH'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + hv = CONM2CHO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + hv = MGLYOX + NO2 + HCOCO3H';
k(:,i) = J56;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + hv = MGLYOX + NO2 + HCOCO3H';
k(:,i) = J57;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + OH = CONM2CHO + HO2 + NO3';
k(:,i) = 4.41e-12;
Gstr{i,1} = 'MMALNAPAN'; Gstr{i,2} = 'OH'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + hv = MGLYOX + NO2 + GLYPAN';
k(:,i) = J56;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fGLYPAN(i)=fGLYPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + hv = MGLYOX + NO2 + GLYPAN';
k(:,i) = J57;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fGLYPAN(i)=fGLYPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MMALNACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + OH = CH3COCO3';
k(:,i) = 3.69e-12;
Gstr{i,1} = 'CH3COCO3H'; Gstr{i,2} = 'OH'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fOH(i)=fOH(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + hv = CH3CO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3H + hv = CH3CO3 + OH';
k(:,i) = J35;
Gstr{i,1} = 'CH3COCO3H'; 
fCH3COCO3H(i)=fCH3COCO3H(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN + OH = HCHO + CO + CO + NO2';
k(:,i) = 1.02e-13;
Gstr{i,1} = 'CH3COPAN'; Gstr{i,2} = 'OH'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fOH(i)=fOH(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COPAN = CH3COCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CH3COPAN'; 
fCH3COPAN(i)=fCH3COPAN(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO2H + OH = MACRNO3 + OH';
k(:,i) = 7.40e-12;
Gstr{i,1} = 'INB1HPCO2H'; Gstr{i,2} = 'OH'; 
fINB1HPCO2H(i)=fINB1HPCO2H(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3H + OH = INB1HPCO3';
k(:,i) = 1.09e-11;
Gstr{i,1} = 'INB1HPCO3H'; Gstr{i,2} = 'OH'; 
fINB1HPCO3H(i)=fINB1HPCO3H(i)-1; fOH(i)=fOH(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCO3H + hv = MACRNO3 + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1HPCO3H'; 
fINB1HPCO3H(i)=fINB1HPCO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPPAN + OH = MACRNO3 + CO + OH + NO2';
k(:,i) = 7.26e-12;
Gstr{i,1} = 'INB1HPPAN'; Gstr{i,2} = 'OH'; 
fINB1HPPAN(i)=fINB1HPPAN(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPPAN = INB1HPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1HPPAN'; 
fINB1HPPAN(i)=fINB1HPPAN(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO2H + OH = MACRNO3 + NO2';
k(:,i) = 1.72e-12;
Gstr{i,1} = 'INB1NACO2H'; Gstr{i,2} = 'OH'; 
fINB1NACO2H(i)=fINB1NACO2H(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3H + OH = INB1NACO3';
k(:,i) = 5.18e-12;
Gstr{i,1} = 'INB1NACO3H'; Gstr{i,2} = 'OH'; 
fINB1NACO3H(i)=fINB1NACO3H(i)-1; fOH(i)=fOH(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACO3H + hv = MACRNO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1NACO3H'; 
fINB1NACO3H(i)=fINB1NACO3H(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NAPAN + OH = MACRNO3 + CO + NO2 + NO2';
k(:,i) = 1.58e-12;
Gstr{i,1} = 'INB1NAPAN'; Gstr{i,2} = 'OH'; 
fINB1NAPAN(i)=fINB1NAPAN(i)-1; fOH(i)=fOH(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NAPAN = INB1NACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1NAPAN'; 
fINB1NAPAN(i)=fINB1NAPAN(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO2H + OH = MVKNO3 + NO2';
k(:,i) = 1.73e-12;
Gstr{i,1} = 'INB1NBCO2H'; Gstr{i,2} = 'OH'; 
fINB1NBCO2H(i)=fINB1NBCO2H(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3H + OH = INB1NBCO3';
k(:,i) = 5.19e-12;
Gstr{i,1} = 'INB1NBCO3H'; Gstr{i,2} = 'OH'; 
fINB1NBCO3H(i)=fINB1NBCO3H(i)-1; fOH(i)=fOH(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCO3H + hv = MVKNO3 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INB1NBCO3H'; 
fINB1NBCO3H(i)=fINB1NBCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBPAN + OH = MVKNO3 + CO + NO2 + NO2';
k(:,i) = 1.59e-12;
Gstr{i,1} = 'INB1NBPAN'; Gstr{i,2} = 'OH'; 
fINB1NBPAN(i)=fINB1NBPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBPAN = INB1NBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INB1NBPAN'; 
fINB1NBPAN(i)=fINB1NBPAN(i)-1; fINB1NBCO3(i)=fINB1NBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = CONM2CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = MMALNACO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + HO2 = MMALNACO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'HO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNACO3H(i)=fMMALNACO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO = CONM2CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO(i)=fNO(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO2 = MMALNAPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO2'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO2(i)=fNO2(i)-1; fMMALNAPAN(i)=fMMALNAPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + NO3 = CONM2CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'NO3'; 
fMMALNACO3(i)=fMMALNACO3(i)-1; fNO3(i)=fNO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + RO2 = CONM2CHO + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'RO2';
fMMALNACO3(i)=fMMALNACO3(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3 + RO2 = MMALNACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MMALNACO3'; Gstr{i,2} = 'RO2';
fMMALNACO3(i)=fMMALNACO3(i)-1; fMMALNACO2H(i)=fMMALNACO2H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = CO2H3CHO + NO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = MMALNBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + HO2 = MMALNBCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'HO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMMALNBCO3H(i)=fMMALNBCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO = CO2H3CHO + NO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO(i)=fNO(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO2 = MMALNBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO2'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMMALNBPAN(i)=fMMALNBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + NO3 = CO2H3CHO + NO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'NO3'; 
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fNO3(i)=fNO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + RO2 = CO2H3CHO + NO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'RO2';
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3 + RO2 = MMALNBCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'MMALNBCO3'; Gstr{i,2} = 'RO2';
fMMALNBCO3(i)=fMMALNBCO3(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO2H + OH = MMALNBCO2H + HO2';
k(:,i) = 6.52e-12;
Gstr{i,1} = 'C57NO3CO2H'; Gstr{i,2} = 'OH'; 
fC57NO3CO2H(i)=fC57NO3CO2H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO2H(i)=fMMALNBCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H + OH = C57NO3CO3';
k(:,i) = 6.52e-12.*0.39;
Gstr{i,1} = 'C57NO3CO3H'; Gstr{i,2} = 'OH'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fOH(i)=fOH(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H + OH = MMALNBCO3H + HO2';
k(:,i) = 6.52e-12.*0.61;
Gstr{i,1} = 'C57NO3CO3H'; Gstr{i,2} = 'OH'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3H(i)=fMMALNBCO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3CO3H + hv = HO12CO3C4 + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57NO3CO3H'; 
fC57NO3CO3H(i)=fC57NO3CO3H(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3PAN + OH = MMALNBPAN + HO2';
k(:,i) = 6.00e-12;
Gstr{i,1} = 'C57NO3PAN'; Gstr{i,2} = 'OH'; 
fC57NO3PAN(i)=fC57NO3PAN(i)-1; fOH(i)=fOH(i)-1; fMMALNBPAN(i)=fMMALNBPAN(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57NO3PAN = C57NO3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C57NO3PAN'; 
fC57NO3PAN(i)=fC57NO3PAN(i)-1; fC57NO3CO3(i)=fC57NO3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3H + OH = INDHPCO3';
k(:,i) = 8.64e-12;
Gstr{i,1} = 'INDHPCO3H'; Gstr{i,2} = 'OH'; 
fINDHPCO3H(i)=fINDHPCO3H(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCO3H + hv = MVKNO3 + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'INDHPCO3H'; 
fINDHPCO3H(i)=fINDHPCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN + OH = MVKNO3 + NO3';
k(:,i) = 5.04e-12;
Gstr{i,1} = 'INDHPPAN'; Gstr{i,2} = 'OH'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN = INDHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPPAN + hv = MVKNO3 + OH + NO3';
k(:,i) = J41;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3H + OH = INDHCO3';
k(:,i) = 5.66e-12;
Gstr{i,1} = 'INDHCO3H'; Gstr{i,2} = 'OH'; 
fINDHCO3H(i)=fINDHCO3H(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCO3H + hv = MVKNO3 + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'INDHCO3H'; 
fINDHCO3H(i)=fINDHCO3H(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHPAN + OH = MVKNO3 + NO3';
k(:,i) = 1.96e-12;
Gstr{i,1} = 'INDHPAN'; Gstr{i,2} = 'OH'; 
fINDHPAN(i)=fINDHPAN(i)-1; fOH(i)=fOH(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPAN = INDHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INDHPAN'; 
fINDHPAN(i)=fINDHPAN(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO2H + OH = GLYOX + HO2';
k(:,i) = 2.16e-11;
Gstr{i,1} = 'COHM2CO2H'; Gstr{i,2} = 'OH'; 
fCOHM2CO2H(i)=fCOHM2CO2H(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO2H + hv = HCOCO2H + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2CO2H'; 
fCOHM2CO2H(i)=fCOHM2CO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H + OH = COHM2CO3';
k(:,i) = 2.47e-11;
Gstr{i,1} = 'COHM2CO3H'; Gstr{i,2} = 'OH'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H + hv = GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'COHM2CO3H'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3H + hv = HCOCO3H + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2CO3H'; 
fCOHM2CO3H(i)=fCOHM2CO3H(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN + OH = GLYOX + NO3';
k(:,i) = 2.11e-11;
Gstr{i,1} = 'COHM2PAN'; Gstr{i,2} = 'OH'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN = COHM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2PAN + hv = GLYPAN + CO + HO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fGLYPAN(i)=fGLYPAN(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 = A2PANO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fA2PANO(i)=fA2PANO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 = C2OHOCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fC2OHOCO2H(i)=fC2OHOCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + HO2 = C2OHOCOOH';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'HO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fHO2(i)=fHO2(i)-1; fC2OHOCOOH(i)=fC2OHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO = A2PANO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO(i)=fNO(i)-1; fA2PANO(i)=fA2PANO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO2 = A2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO2'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO2(i)=fNO2(i)-1; fA2PAN(i)=fA2PAN(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + NO3 =  A2PANO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'NO3'; 
fA2PANOO(i)=fA2PANOO(i)-1; fNO3(i)=fNO3(i)-1; fA2PANO(i)=fA2PANO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + RO2 = A2PANO';
k(:,i) = 1.00E-11.*0.7;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'RO2';
fA2PANOO(i)=fA2PANOO(i)-1; fA2PANO(i)=fA2PANO(i)+1; 

i=i+1;
Rnames{i} = 'A2PANOO + RO2 = C2OHOCO2H';
k(:,i) = 1.00E-11.*0.3;
Gstr{i,1} = 'A2PANOO'; Gstr{i,2} = 'RO2';
fA2PANOO(i)=fA2PANOO(i)-1; fC2OHOCO2H(i)=fC2OHOCO2H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = GLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + HO2 = HCOCOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'HO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHCOCOHCO3H(i)=fHCOCOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO = GLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO2 = HCOCOHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO2'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO2(i)=fNO2(i)-1; fHCOCOHPAN(i)=fHCOCOHPAN(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + NO3 = GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'NO3'; 
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3 + RO2 = GLYOX + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HCOCOHCO3'; Gstr{i,2} = 'RO2';
fHCOCOHCO3(i)=fHCOCOHCO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMGLYOX + hv = NO2 + HCHO + CO + CO + HO2';
k(:,i) = J53;
Gstr{i,1} = 'NMGLYOX'; 
fNMGLYOX(i)=fNMGLYOX(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NMGLYOX + hv = NO3CH2CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'NMGLYOX'; 
fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NMGLYOX = NO3CH2CO3 + CO + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NMGLYOX'; 
fNO3(i)=fNO3(i)-1; fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NMGLYOX = NO3CH2CO3 + CO';
k(:,i) = 1.24e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NMGLYOX'; 
fOH(i)=fOH(i)-1; fNMGLYOX(i)=fNMGLYOX(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = ETHENO3O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fETHENO3O2(i)=fETHENO3O2(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + OH = NO3CH2CHO + OH';
k(:,i) = 1.62e-12;
Gstr{i,1} = 'ETHO2HNO3'; Gstr{i,2} = 'OH'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fOH(i)=fOH(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHO2HNO3 + hv = ETHENO3O + OH';
k(:,i) = J41;
Gstr{i,1} = 'ETHO2HNO3'; 
fETHO2HNO3(i)=fETHO2HNO3(i)-1; fETHENO3O(i)=fETHENO3O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = NO2 + HCHO + HCHO';
k(:,i) = 7.00e03;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHENO3O = NO3CH2CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'ETHENO3O'; 
fETHENO3O(i)=fETHENO3O(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ETHOHNO3 + OH = HOCH2CHO + NO2';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'ETHOHNO3'; Gstr{i,2} = 'OH'; 
fETHOHNO3(i)=fETHOHNO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CH2O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + OH = HOCH2CHO + OH';
k(:,i) = 1.38e-11;
Gstr{i,1} = 'HYETHO2H'; Gstr{i,2} = 'OH'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HYETHO2H + hv = HOCH2CH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'HYETHO2H'; 
fHYETHO2H(i)=fHYETHO2H(i)-1; fHOCH2CH2O(i)=fHOCH2CH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HO2 + HCHO + HCHO';
k(:,i) = 9.50e13.*exp(-5988./T);
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HOCH2CH2O = HO2 + HOCH2CHO';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'HOCH2CH2O'; 
fHOCH2CH2O(i)=fHOCH2CH2O(i)-1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'ETHGLY + OH = HOCH2CHO + HO2';
k(:,i) = 1.45e-11;
Gstr{i,1} = 'ETHGLY'; Gstr{i,2} = 'OH'; 
fETHGLY(i)=fETHGLY(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO2H + hv = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO2H + hv = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO2H = NO2 + CO23C4NO3';
k(:,i) = 9.35e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO2H'; 
fOH(i)=fOH(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H + hv = NO2 + CO23C4NO3 + OH';
k(:,i) = J41;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H + hv = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H + hv = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO3H = INANCOCO3';
k(:,i) = 4.02e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO3H'; 
fOH(i)=fOH(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + OH = CO23C3CHO + NO2';
k(:,i) = 1.30e-13;
Gstr{i,1} = 'CO23C4NO3'; Gstr{i,2} = 'OH'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + hv = BIACETO + NO2';
k(:,i) = J56;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fBIACETO(i)=fBIACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + hv = HCHO + CH3CO3 + NO2 + CO';
k(:,i) = J57;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + hv = NO3CH2CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = INANCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN + hv = NO3CH2CO3 + CH3COPAN + NO2';
k(:,i) = J56;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN + hv = NO3CH2CO3 + CH3COPAN + NO2';
k(:,i) = J57;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COPAN(i)=fCH3COPAN(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOPAN = NO3 + CO23C4NO3';
k(:,i) = 4.15e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOPAN'; 
fOH(i)=fOH(i)-1; fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3(i)=fNO3(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNGLYOX + OH = CO + CO + HOCH2CHO + NO2';
k(:,i) = 1.36e-11;
Gstr{i,1} = 'HMVKNGLYOX'; Gstr{i,2} = 'OH'; 
fHMVKNGLYOX(i)=fHMVKNGLYOX(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNGLYOX + hv = CO + CO + HOCH2CHO + NO2 + HO2';
k(:,i) = J34;
Gstr{i,1} = 'HMVKNGLYOX'; 
fHMVKNGLYOX(i)=fHMVKNGLYOX(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3CO3 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + HO2 = CH3COCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'HO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO = CH3CO3 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO(i)=fNO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO2 = CH3COPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO2'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO2(i)=fNO2(i)-1; fCH3COPAN(i)=fCH3COPAN(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + NO3 = CH3CO3 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'NO3'; 
fCH3COCO3(i)=fCH3COCO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCO3 + RO2 = CH3CO3';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CH3COCO3'; Gstr{i,2} = 'RO2';
fCH3COCO3(i)=fCH3COCO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H + OH = CO2H3CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'MMALNBCO2H'; Gstr{i,2} = 'OH'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H + hv = CONM2CO2H + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBCO2H'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fCONM2CO2H(i)=fCONM2CO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + OH = MMALNBCO3';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'MMALNBCO3H'; Gstr{i,2} = 'OH'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + hv = CO2H3CHO + NO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + hv = CONM2CO3H + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fCONM2CO3H(i)=fCONM2CO3H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + OH = CO2H3CHO + NO2 + NO3';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MMALNBPAN'; Gstr{i,2} = 'OH'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + hv = CONM2PAN + HO2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fCONM2PAN(i)=fCONM2PAN(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = MMALNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = COHM2CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = COHM2CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fCOHM2CO3H(i)=fCOHM2CO3H(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + HO2 = GLYOX + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'HO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fHO2(i)=fHO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO = GLYOX + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO(i)=fNO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO2 = COHM2PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO2'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO2(i)=fNO2(i)-1; fCOHM2PAN(i)=fCOHM2PAN(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + NO3 = GLYOX + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'NO3'; 
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + RO2 = COHM2CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'RO2';
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fCOHM2CO2H(i)=fCOHM2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'COHM2CO3 + RO2 = GLYOX + HO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'COHM2CO3'; Gstr{i,2} = 'RO2';
fCOHM2CO3(i)=fCOHM2CO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PANO = HOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'A2PANO'; 
fA2PANO(i)=fA2PANO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCO2H + OH = C3DIOLO2';
k(:,i) = 1.867E-11;
Gstr{i,1} = 'C2OHOCO2H'; Gstr{i,2} = 'OH'; 
fC2OHOCO2H(i)=fC2OHOCO2H(i)-1; fOH(i)=fOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCOOH + OH = A2PANOO';
k(:,i) = 1.513E-11;
Gstr{i,1} = 'C2OHOCOOH'; Gstr{i,2} = 'OH'; 
fC2OHOCOOH(i)=fC2OHOCOOH(i)-1; fOH(i)=fOH(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; 

i=i+1;
Rnames{i} = 'C2OHOCOOH + hv = C3DIOLO2';
k(:,i) = J41;
Gstr{i,1} = 'C2OHOCOOH'; 
fC2OHOCOOH(i)=fC2OHOCOOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PAN + OH = HOCH2CHO + CO + NO2';
k(:,i) = 1.865E-11;
Gstr{i,1} = 'A2PAN'; Gstr{i,2} = 'OH'; 
fA2PAN(i)=fA2PAN(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'A2PAN = A2PANOO + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'A2PAN'; 
fA2PAN(i)=fA2PAN(i)-1; fA2PANOO(i)=fA2PANOO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H + OH = HCOCOHCO3';
k(:,i) = 7.33e-11;
Gstr{i,1} = 'HCOCOHCO3H'; Gstr{i,2} = 'OH'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fOH(i)=fOH(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHCO3H + hv = GLYOX + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HCOCOHCO3H'; 
fHCOCOHCO3H(i)=fHCOCOHCO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN + OH = GLYOX + CO + NO2';
k(:,i) = 6.97e-11;
Gstr{i,1} = 'HCOCOHPAN'; Gstr{i,2} = 'OH'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCOHPAN = HCOCOHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HCOCOHPAN'; 
fHCOCOHPAN(i)=fHCOCOHPAN(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO = CH3CO3 + HCHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'BIACETO'; 
fBIACETO(i)=fBIACETO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + HO2 = C3DIOLOOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'HO2'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fHO2(i)=fHO2(i)-1; fC3DIOLOOH(i)=fC3DIOLOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + NO = C3DIOLO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'NO'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fNO(i)=fNO(i)-1; fC3DIOLO(i)=fC3DIOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + NO3 = C3DIOLO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'NO3'; 
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fNO3(i)=fNO3(i)-1; fC3DIOLO(i)=fC3DIOLO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO2 + RO2 = C3DIOLO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C3DIOLO2'; Gstr{i,2} = 'RO2';
fC3DIOLO2(i)=fC3DIOLO2(i)-1; fC3DIOLO(i)=fC3DIOLO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLOOH + OH = C3DIOLO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'C3DIOLOOH'; Gstr{i,2} = 'OH'; 
fC3DIOLOOH(i)=fC3DIOLOOH(i)-1; fOH(i)=fOH(i)-1; fC3DIOLO2(i)=fC3DIOLO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLOOH + hv = C3DIOLO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3DIOLOOH'; 
fC3DIOLOOH(i)=fC3DIOLOOH(i)-1; fC3DIOLO(i)=fC3DIOLO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIOLO = HOCH2CHO + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C3DIOLO'; 
fC3DIOLO(i)=fC3DIOLO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

%END OF REACTION LIST


