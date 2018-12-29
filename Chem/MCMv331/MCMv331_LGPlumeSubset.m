% MCMv331_LGPlumeSubset.m
% generated from MCMv331_LGPlumeSubset.fac
% 20160702
% # of species = 798
% # of reactions = 2532

SpeciesToAdd = {...
'MALANHY'; 'C4PAN5'; 'C4PAN6'; 'C4PAN7'; 'C4PAN8'; 'C4PAN9'; 'HMACROOH'; 'NC3OO'; 'C5DIALO2'; 'CHOPRNO3'; ...
'CHOCOHCO'; 'C524CO'; 'ISOPDOOH'; 'C41O2'; 'BZEMUCO'; 'MVK'; 'IPRHOCO2H'; 'ETHGLY'; 'CO14O3CO2H'; 'MACROH'; ...
'MACROO'; 'C3MCODBPAN'; 'ETHO2HNO3'; 'NDNPHENO'; 'HMGLOOA'; 'ETHENO3O'; 'DHPMPAL'; 'NBUTDAO2'; 'INB1NBCO2H'; 'CO24C4CHO'; ...
'NBUTDAOH'; 'NBZQO2'; 'MACRO2'; 'C57AO'; 'MALDALCO2H'; 'ACO3H'; 'C41OH'; 'NC524OOH'; 'INAHCO3'; 'PXYFUO'; ...
'HONO'; 'C5DIALOH'; 'C525OOH'; 'INAHCHO'; 'C534OOH'; 'ISOPAOOH'; 'IPROPOLO'; 'MAE'; 'ISOPCOOH'; 'HYPERACET'; ...
'NBZFUOOH'; 'INB1NACO3H'; 'IEACO3H'; 'C3DIOLOOH'; 'INAHPCO3'; 'CISOPA'; 'CISOPC'; 'MMALANHYO2'; 'NO2'; 'NO3'; ...
'IEB4CHO'; 'VGLYOX'; 'C58OOH'; 'H2O2'; 'C58NO3'; 'C6H5O2'; 'NCATECHOL'; 'NAOOA'; 'C59O'; 'INCCO'; ...
'EPXDLCO2H'; 'C23O3CCO3H'; 'BZFUONOOA'; 'NC3CO3H'; 'HMVKBO2'; 'CISOPCO'; 'C524O'; 'INB1GLYOX'; 'CH2CHCH2O'; 'PRONO3AO2'; ...
'C527OOH'; 'MALDIAL'; 'NPXYFUOOH'; 'PROPACID'; 'C537O2'; 'BUTDAO'; 'CO2H3CO3H'; 'CH3CHO'; 'C531O2'; 'BUTDAOOH'; ...
'BENZENE'; 'C526O'; 'PRONO3BO'; 'C3DIALO'; 'NBUTDAO'; 'HC3CCHO'; 'NOA'; 'C530NO3'; 'BIACETOOH'; 'INCOOH'; ...
'ISOPBOOH'; 'CO2C4DIAL'; 'CH2CHCH2OOH'; 'INAOOH'; 'C533O2'; 'IEPOXC'; 'IPROPOLO2H'; 'IEPOXA'; 'MACROOA'; 'C58NO3CO3'; ...
'C42OH'; 'MACROOH'; 'O1D'; 'INAHPCO3H'; 'CO2N3CHO'; 'C510OH'; 'PBZQO2'; 'HO2NO2'; 'C57NO3PAN'; 'MALDIALO'; ...
'PHAN'; 'PXYFUO2'; 'HOCH2COCHO'; 'C535O2'; 'HMVKAO'; 'MACO2H'; 'NNCATECO2'; 'CO2C3OO'; 'MGLOOA'; 'ACRPAN'; ...
'HMACROH'; 'C5H8'; 'ISOPCNO3'; 'NC51O'; 'H14CO23C4'; 'C510O2'; 'ISOP34NO3'; 'HIEB2O2'; 'DHPMEK'; 'NC526OOH'; ...
'INB1NACHO'; 'MACRNBPAN'; 'HOCH2CO2H'; 'C42O2'; 'SA'; 'NBUTDBOOH'; 'HOCH2CHO'; 'ISOPANO3'; 'INANCOCHO'; 'PRNO3CO3H'; ...
'INB1OOH'; 'C537O'; 'EPXDLPAN'; 'INANCO3H'; 'MACRNCO2H'; 'INAOH'; 'HC3CO3'; 'HOCOC4DIAL'; 'EPXDLCO3H'; 'C3MCODBCO3'; ...
'PRONO3AO'; 'IECCO3'; 'PRNO3PAN'; 'C23O3CCO2H'; 'HPC52CO3'; 'HYPROPO2H'; 'ISOPAO'; 'C3DIOLO'; 'HVMK'; 'C3MCODBCO2'; ...
'INCOH'; 'BUTDBNO3'; 'INCO'; 'INANCOCO3H'; 'MMALNBCO3H'; 'IPRHOCO3'; 'INCO2'; 'C4CO2DBPAN'; 'MACRO'; 'INANCOCO3'; ...
'C5PACALD1'; 'MGLYOOB'; 'MGLYOOA'; 'HC4CO3'; 'INCNO3'; 'PERPROACID'; 'INB1O'; 'C2OHOCO2H'; 'C6H5OOH'; 'CH3CHOO'; ...
'C3MDIALO'; 'MALDIALOOH'; 'INB2OOH'; 'INCNCHO'; 'INANPAN'; 'NPXYFUO2'; 'INAO2'; 'INCNCO3'; 'ISOPDNO3'; 'IBUTALOH'; ...
'C32OH13CO'; 'CH3CO3H'; 'PBZQOH'; 'HIEB1O2'; 'C57O'; 'CH3C2H2O2'; 'MVKOHAO'; 'H1CO23CHO'; 'INANO3'; 'INB1HPCHO'; ...
'ACO2H'; 'BZEMUCNO3'; 'CO2N3PAN'; 'ISOPBNO3'; 'CH3CHOOA'; 'BUTDANO3'; 'MMALNACO3'; 'BZFUO'; 'C533OOH'; 'C4CO2O'; ...
'IECCO3H'; 'HC4ACHO'; 'CH4'; 'HMGLYOO'; 'HCOCO3'; 'NC4CO3'; 'HC4PAN'; 'HCOCH2O2'; 'MVKO'; 'MMALNACO3H'; ...
'A2PANO'; 'C2H5O'; 'NC524NO3'; 'CONM2CO3'; 'ACROO'; 'BZBIPERNO3'; 'C535O'; 'PROPALO'; 'C5DIALOOH'; 'PRONO3BO2'; ...
'HCOOH'; 'TISOPA'; 'HCOCO2H'; 'TISOPC'; 'ETHENO3O2'; 'HIEPOXB'; 'HCHO'; 'HMVKAO2'; 'NC4DCO2'; 'ACROOA'; ...
'CONM2CO2H'; 'C3DIALOOH'; 'A2PAN'; 'MACRNO3'; 'NBZQO'; 'ISOP34OOH'; 'NBUTDAOOH'; 'MALDALCO3H'; 'IEB1CHO'; 'CATECHOL'; ...
'NPHENOH'; 'IPROPOLPER'; 'C4MDIAL'; 'C4M2AL2OH'; 'NC526O'; 'ALLYLOH'; 'IECCHO'; 'HOCH2CO3'; 'MC3CODBPAN'; 'HMVKNO3'; ...
'CHOOCHO'; 'CH2OOG'; 'CH2OOE'; 'CH2OOD'; 'CH2OOC'; 'CH2OOB'; 'CH2OOA'; 'CONM2CHO'; 'HMGLYOOA'; 'CH3O'; ...
'H3NCO2CHO'; 'NPHENO2'; 'MACRNB'; 'IPRHOCO3H'; 'INB1NBCHO'; 'NC4OOA'; 'C47CO3'; 'MALANHYO2'; 'MACRNOO'; 'C5PACALD2'; ...
'ISOPDO2'; 'C510O'; 'CH3OOH'; 'HPC52CO3H'; 'MVKOHBO2'; 'HCOCO'; 'PROPGLY'; 'NBZFUO2'; 'ISOP34O2'; 'BZEMUCCO2H'; ...
'NO3CH2CO3'; 'NC4CHO'; 'HMVKNGLYOX'; 'C57NO3CO3H'; 'C526O2'; 'CH3CHOHCHO'; 'NISOPNO3'; 'IEC2OOH'; 'MVKOHAOH'; 'OCCOHCOOH'; ...
'MGLOO'; 'PXYFUOH'; 'INDHPCO3'; 'C23O3CCO3'; 'PHENOH'; 'PHENOL'; 'INDOH'; 'MVKOHAOOH'; 'MGLYOO'; 'C58NO3CO2H'; ...
'C524O2'; 'HC3CCO3H'; 'NOAOOA'; 'PHENO2'; 'INB1NACO2H'; 'CO2H3CHO'; 'IEAPAN'; 'BUTDBOOH'; 'MMALNHYOOH'; 'C535OOH'; ...
'MGLYOX'; 'C524OH'; 'HMACO3H'; 'MVKOHAO2'; 'INANCOPAN'; 'HC4CCHO'; 'HOCH2CO3H'; 'C531O'; 'HOCHOCOOH'; 'COHM2CO3H'; ...
'NPHENOOH'; 'CH3O2NO2'; 'C6H5O'; 'NPHEN1OOH'; 'ISOPDO'; 'HCOC5'; 'PACLOOA'; 'CH3COCO3'; 'C2H5CHO'; 'INDHCO3H'; ...
'INB1NO3'; 'C6CO4DB'; 'MMALNBCO2H'; 'MALANHY2OH'; 'C51NO3'; 'GAOO'; 'BZBIPEROOH'; 'BZEMUCO2'; 'NCO23CHO'; 'NC41OO'; ...
'NC524O2'; 'MACRNBCO3'; 'IEACO3'; 'HMGLOO'; 'C23O3CPAN'; 'CH3COCO2H'; 'IEPOXB'; 'C41OOH'; 'INCGLYOX'; 'NC4OO'; ...
'HOHOC4DIAL'; 'DNC524CO'; 'OCCOHCOH'; 'C51O2'; 'IECPAN'; 'HIEB1O'; 'C2OHOCOOH'; 'BZFUOH'; 'INB1HPCO3H'; 'NC3CHO'; ...
'PPACLOOA'; 'C510OOH'; 'BZFUO2'; 'NPHENO'; 'OCCOHCO2'; 'C51OH'; 'INDO2'; 'ACETOL'; 'INB1HPCO2H'; 'C536O'; ...
'OCCOHCO'; 'CONM2PAN'; 'CH3CO3'; 'INB1HPPAN'; 'CATECOOA'; 'CO2C3CO2H'; 'BZEMUCOOH'; 'MMALNBPAN'; 'C59O2'; 'BZEMUCCO3'; ...
'NPHEN1O2'; 'HPNC524CO'; 'C47CO3H'; 'BZEMUCOH'; 'C45OOH'; 'INAHPCO2H'; 'CH3COCH2O2'; 'MACO3H'; 'HMAC'; 'HMVKBO'; ...
'GAOOB'; 'GAOOA'; 'GLYOOC'; 'CH3NO3'; 'ISOPAOH'; 'NPHEN1O'; 'HMVKANO3'; 'PHENOOH'; 'CH3COPAN'; 'MACROHO2'; ...
'PAN'; 'NPXYFUO'; 'BIACET'; 'BUTDCO2'; 'HYPROPO'; 'C534O'; 'INB1NBCO3H'; 'H13CO2CHO'; 'COHM2CO3'; 'HMACRO'; ...
'HCOCO3H'; 'HC4CCO2H'; 'C33CO'; 'NDNPHENOOH'; 'BZFUOOH'; 'HSO3'; 'C57NO3CO3'; 'ISOPCO2'; 'BZEMUCPAN'; 'BZFUCO'; ...
'IPROPOLPAN'; 'HNO3'; 'C57AOOH'; 'MACRNCO3'; 'HYETHO2H'; 'MALDIALCO2'; 'MALDIALCO3'; 'ETHOHNO3'; 'GLYOO'; 'C524NO3'; ...
'ISOPAO2'; 'HC4CHO'; 'A2PANOO'; 'HIEB1OOH'; 'GLYOX'; 'ISOP34O'; 'HC4CCO3'; 'HMACR'; 'INCNCO2H'; 'C3H6'; ...
'CO2N3CO3H'; 'C57OH'; 'HC4ACO3'; 'MACROHOOH'; 'CONM2CO3H'; 'C527O2'; 'PBZQO'; 'CO23C4NO3'; 'C57OOH'; 'PBZQCO'; ...
'CH2OO'; 'COHM2PAN'; 'C5COOHCO3H'; 'C42OOH'; 'N2O5'; 'CH3CHOHCO3'; 'NC41OOA'; 'COHM2CO2H'; 'BZEPOXMUC'; 'INB1HPCO3'; ...
'C3DIALO2'; 'MACRNBCO3H'; 'C23O3CCHO'; 'C5PAN19'; 'C5PAN18'; 'PXYFUOOH'; 'C5PAN17'; 'PHENO'; 'C47CHO'; 'C525O2'; ...
'C2H4'; 'HCOCOHCO3'; 'INB1NBCO3'; 'C57NO3'; 'NISOPOOH'; 'MACRNOOA'; 'C57AO2'; 'HO12CO3C4'; 'HCOCH2O'; 'C31PAN'; ...
'CATEC1O'; 'BZEMUCCO'; 'H13CO2CO3'; 'INANCO'; 'C5HPALD2'; 'C5HPALD1'; 'CO2C3PAN'; 'BIACETO'; 'C530O'; 'C42O'; ...
'C3DIOLO2'; 'NO3CH2CHO'; 'INB2O2'; 'HMML'; 'INANCOCO2H'; 'BUTDCOOH'; 'MACRNBCO2H'; 'BZFUONOO'; 'BUTDBO2'; 'NO3CH2CO2H'; ...
'CO'; 'BUTDBOH'; 'CL'; 'HPC52OOH'; 'INCNPAN'; 'INAHPPAN'; 'MCOCOMOXO2'; 'BUTDCO'; 'HOCH2CH2O'; 'NAOO'; ...
'MMALNACO2H'; 'C531CO'; 'C42AOH'; 'C51OOH'; 'PPGAOOB'; 'HC4ACO2H'; 'C45NO3'; 'MALNHYOHCO'; 'PGAOOB'; 'BZBIPERO'; ...
'HC3CO2H'; 'HNBIACET'; 'EPXC4DIAL'; 'C58AOOH'; 'C31CO3'; 'HIEB2OOH'; 'MALANHYOOH'; 'C4M2ALOHO2'; 'DNPHENO2'; 'HMACO2H'; ...
'HNC524CO'; 'HPC52PAN'; 'CO14O3CHO'; 'HCOCH2OOH'; 'MCOCOMOOOH'; 'CO2C3CO3H'; 'MVKNO3'; 'C41NO3'; 'ISOPBOH'; 'PPN'; ...
'CATEC1OOH'; 'MCOCOMOXO'; 'ISOPDOH'; 'C58O2'; 'NBZFUONE'; 'HC4CO3H'; 'MC3CODBCO3'; 'MC3CODBCO2'; 'INDHPPAN'; 'ACLOO'; ...
'NO3CH2CO3H'; 'M3BU3ECO3H'; 'HPC52O2'; 'C58OH'; 'CISOPAO'; 'CATEC1O2'; 'BZEMUCCO3H'; 'SO3'; 'SO2'; 'MALANHYO'; ...
'DNPHEN'; 'PBZQOOH'; 'C47PAN'; 'ISOPBO2'; 'C57O2'; 'BUTDAOH'; 'C57NO3CO2H'; 'ACRO2'; 'MPAN'; 'PR2O2HNO3'; ...
'C2H5NO3'; 'HMVKAOOH'; 'INAHCO3H'; 'NC4CO3H'; 'HCOCOHCO3H'; 'BZBIPERO2'; 'C58NO3CO3H'; 'NBUTDBO2'; 'C2H5O2'; 'NCATECO'; ...
'C526NO3'; 'CH3OH'; 'INDHCO3'; 'BIACETO2'; 'NC4DCO2H'; 'NBUTDBO'; 'INDHCHO'; 'HMACO3'; 'O3'; 'INDHPCHO'; ...
'CH3COCH2O'; 'INAHPAN'; 'INB1NAPAN'; 'M3BU3ECO3'; 'C5CO2OHCO3'; 'CISOPCO2'; 'ACLOOA'; 'HC4CCO3H'; 'INAO'; 'INAHPCHO'; ...
'INANCHO'; 'C2H5CO3'; 'NC524O'; 'C4CO2O2'; 'C525O'; 'MVKOHBO'; 'C4CO2OOH'; 'HCOCOHPAN'; 'HC3CCO3'; 'NCATECO2'; ...
'HMACRO2'; 'CH3COCO3H'; 'OH'; 'GLYOOB'; 'PR1O2HNO3'; 'CH3O2'; 'GLYOOA'; 'HOC6H4NO2'; 'BUTDAO2'; 'C2H5OH'; ...
'BIACETOH'; 'DNPHENOOH'; 'HIEB2O'; 'C51O'; 'NBZFUO'; 'HMVKBOOH'; 'PXYFUONE'; 'C45O'; 'NDNPHENO2'; 'HYPROPO2'; ...
'NBZQOOH'; 'C4CO2DBCO3'; 'MACO3'; 'PE4E2CO'; 'NMVK'; 'MMALANHY'; 'ME3BU3ECHO'; 'C59OOH'; 'HNMVKOH'; 'CO2C3OOA'; ...
'CO2C3OOB'; 'HOCH2CH2O2'; 'EPXDLCO3'; 'IEACHO'; 'CO2N3CO3'; 'C536OOH'; 'C58NO3PAN'; 'HO1CO24C5'; 'INCNCO3H'; 'BZFUONE'; ...
'MACROHO'; 'H13CO2C3'; 'INB1NACO3'; 'O'; 'C58AO2'; 'HNMVKO2'; 'MVKOH'; 'NC3OOA'; 'ACO3'; 'MACRNCO3H'; ...
'PROLNO3'; 'MVKOO'; 'INB1O2'; 'C5CO2OHPAN'; 'C527O'; 'HNMVKO'; 'H2'; 'C532CO'; 'CHOMOHCO3'; 'NC3CO3'; ...
'NC51OOH'; 'NNCATECO'; 'NC2OO'; 'NC3CO2H'; 'M3F'; 'IPROPOLO2'; 'NMGLYOX'; 'C530OOH'; 'CO2C3CO3'; 'INB2O'; ...
'CH2CHCH2NO3'; 'MMALNBCO3'; 'HOCH2COCO2H'; 'NNCATECOOH'; 'ACR'; 'M3FOOA'; 'DNPHENO'; 'INDHPAN'; 'MMALNHY2OH'; 'C2H5OOH'; ...
'INB1NBPAN'; 'CH2CHCH2O2'; 'NO'; 'BUTDBO'; 'NA'; 'HC4ACO3H'; 'MC3ODBCO2H'; 'C527NO3'; 'C4CO2DCO3H'; 'HC3CO3H'; ...
'MALDIALPAN'; 'C531OOH'; 'NC524OH'; 'CH3CO2H'; 'MVKOOH'; 'HNMVKOOH'; 'C4M2ALOHNO3'; 'C536O2'; 'MVKOOA'; 'CO2C3CHO'; ...
'MMALNAPAN'; 'NISOPO'; 'PBZQONE'; 'C537OOH'; 'C530O2'; 'C5DIALCO'; 'CO23C3CHO'; 'CH3COCH3'; 'PRNO3CO3'; 'MVKOHANO3'; ...
'NOAOO'; 'HC3CHO'; 'NC526O2'; 'C3MDIALOOH'; 'C58ANO3'; 'INDHPCO3H'; 'NCATECOOH'; 'CO2H3CO3'; 'INANCO3'; 'C3MDIALO2'; ...
'C4MALOHOOH'; 'C23O3CHO'; 'BZOBIPEROH'; 'PROPOLNO3'; 'NBUTDBNO3'; 'H13CO2CO3H'; 'HPC52O'; 'INB1OH'; 'C41O'; 'MVKOHBOOH'; ...
'C58AO'; 'INAHCO2H'; 'CHOMOHCO3H'; 'NC51O2'; 'C534O2'; 'HO2'; 'NISOPO2'; 'NC4CO2H'; 'PRNO3CO2H'; 'MACR'; ...
'INDOOH'; 'INANCO2H'; 'MVKO2'; 'C4H6'; 'M3BU3EPAN'; 'C4M2ALOHO'; 'BZBIPER2OH'; 'INB1CO'; 'NC2OOA'; 'C4PAN10'; ...
'NO3CH2PAN'; 'CISOPAO2'; 'C524OOH'; 'M3FOO'; 'MACRNPAN'; 'C31CO3H'; 'C45O2'; 'MMALANHYO'; 'CHOMOHPAN'; 'HMPAN'; ...
'MALDIALO2'; 'C5DIALO'; 'C533O'; 'C3MDIALOH'; 'INDO'; 'C526OOH'; 'ISOPBO'; 'C58O'; };

RO2ToAdd = {...
'CH3O2'; 'CH3CO3'; 'HCOCH2O2'; 'C2H5CO3'; 'C2H5O2'; 'CH3C2H2O2'; 'MACO3'; 'MACRO2'; 'MACROHO2'; 'PRONO3AO2'; ...
'PRONO3BO2'; 'HYPROPO2'; 'IPROPOLO2'; 'BZBIPERO2'; 'NBUTDAO2'; 'NBUTDBO2'; 'BUTDAO2'; 'BUTDBO2'; 'BUTDCO2'; 'NISOPO2'; ...
'ISOP34O2'; 'CH3COCH2O2'; 'BIACETO2'; 'BZEMUCCO3'; 'BZEMUCO2'; 'C5DIALO2'; 'NPHENO2'; 'PHENO2'; 'ACO3'; 'ACRO2'; ...
'OCCOHCO2'; 'HMVKAO2'; 'HMVKBO2'; 'MVKO2'; 'CISOPAO2'; 'ISOPBO2'; 'CISOPCO2'; 'ISOPDO2'; 'NC526O2'; 'C530O2'; ...
'M3BU3ECO3'; 'C45O2'; 'NC51O2'; 'C51O2'; 'CH2CHCH2O2'; 'ISOPAO2'; 'ISOPCO2'; 'HOCH2CO3'; 'HOCH2CH2O2'; 'MACRNCO3'; ...
'MACRNBCO3'; 'CHOMOHCO3'; 'PRNO3CO3'; 'CH3CHOHCO3'; 'MALDIALCO3'; 'EPXDLCO3'; 'C3DIALO2'; 'MALDIALO2'; 'C6H5O2'; 'NO3CH2CO3'; ...
'HNMVKO2'; 'NC3CO3'; 'C42O2'; 'ETHENO3O2'; 'HC3CO3'; 'C41O2'; 'MVKOHAO2'; 'MVKOHBO2'; 'HC3CCO3'; 'INCO2'; ...
'NC4CO3'; 'C510O2'; 'C536O2'; 'C537O2'; 'INAO2'; 'C58O2'; 'HC4CO3'; 'CO2C3CO3'; 'C4CO2O2'; 'HCOCO3'; ...
'CONM2CO3'; 'IPRHOCO3'; 'NBZFUO2'; 'BZFUO2'; 'HCOCOHCO3'; 'CATEC1O2'; 'A2PANOO'; 'C527O2'; 'CO2H3CO3'; 'C526O2'; ...
'HC4ACO3'; 'C58AO2'; 'INB1O2'; 'INB2O2'; 'HPC52O2'; 'HC4CCO3'; 'C57AO2'; 'C57O2'; 'INDO2'; 'C59O2'; ...
'C524O2'; 'NPHEN1O2'; 'NNCATECO2'; 'NCATECO2'; 'NBZQO2'; 'PBZQO2'; 'H13CO2CO3'; 'CO2N3CO3'; 'C534O2'; 'C3MCODBCO3'; ...
'MC3CODBCO3'; 'C4M2ALOHO2'; 'C535O2'; 'C58NO3CO3'; 'COHM2CO3'; 'MALANHYO2'; 'NDNPHENO2'; 'DNPHENO2'; 'C3DIOLO2'; 'C531O2'; ...
'INCNCO3'; 'IEACO3'; 'C3MDIALO2'; 'CH3COCO3'; 'NPXYFUO2'; 'MCOCOMOXO2'; 'PXYFUO2'; 'IECCO3'; 'HPC52CO3'; 'INDHCO3'; ...
'C57NO3CO3'; 'INAHPCO3'; 'INANCO3'; 'INAHCO3'; 'NC524O2'; 'C525O2'; 'HMACO3'; 'HMACRO2'; 'C5CO2OHCO3'; 'C47CO3'; ...
'INB1HPCO3'; 'INB1NACO3'; 'INB1NBCO3'; 'MMALNACO3'; 'MMALNBCO3'; 'INDHPCO3'; 'INANCOCO3'; 'HIEB1O2'; 'HIEB2O2'; 'C4CO2DBCO3'; ...
'C31CO3'; 'C533O2'; 'MMALANHYO2'; 'C23O3CCO3'; };

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
Rnames{i} = 'CH3OH + OH = HO2 + HCHO';
k(:,i) = 2.85e-12.*exp(-345./T);
Gstr{i,1} = 'CH3OH'; Gstr{i,2} = 'OH'; 
fCH3OH(i)=fCH3OH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

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
Rnames{i} = 'C2H5CHO + NO3 = C2H5CO3 + HNO3';
k(:,i) = 3.24e-12.*exp(-1860./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'NO3'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fNO3(i)=fNO3(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + OH = C2H5CO3';
k(:,i) = 4.9e-12.*exp(405./T);
Gstr{i,1} = 'C2H5CHO'; Gstr{i,2} = 'OH'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CHO + hv = C2H5O2 + HO2 + CO';
k(:,i) = J14;
Gstr{i,1} = 'C2H5CHO'; 
fC2H5CHO(i)=fC2H5CHO(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

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
Rnames{i} = 'BENZENE + OH = BZBIPERO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.352;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fBZBIPERO2(i)=fBZBIPERO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = BZEPOXMUC + HO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.118;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fBZEPOXMUC(i)=fBZEPOXMUC(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BENZENE + OH = PHENOL + HO2';
k(:,i) = 2.3e-12.*exp(-190./T).*0.53;
Gstr{i,1} = 'BENZENE'; Gstr{i,2} = 'OH'; 
fBENZENE(i)=fBENZENE(i)-1; fOH(i)=fOH(i)-1; fPHENOL(i)=fPHENOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C4H6 = NBUTDAO2';
k(:,i) = 1.03e-13.*0.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C4H6'; 
fNO3(i)=fNO3(i)-1; fC4H6(i)=fC4H6(i)-1; fNBUTDAO2(i)=fNBUTDAO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + C4H6 = NBUTDBO2';
k(:,i) = 1.03e-13.*0.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'C4H6'; 
fNO3(i)=fNO3(i)-1; fC4H6(i)=fC4H6(i)-1; fNBUTDBO2(i)=fNBUTDBO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C4H6 = ACR + CH2OOD';
k(:,i) = 1.34e-14.*exp(-2283./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C4H6'; 
fO3(i)=fO3(i)-1; fC4H6(i)=fC4H6(i)-1; fACR(i)=fACR(i)+1; fCH2OOD(i)=fCH2OOD(i)+1; 

i=i+1;
Rnames{i} = 'O3 + C4H6 = HCHO + ACROOA';
k(:,i) = 1.34e-14.*exp(-2283./T).*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'C4H6'; 
fO3(i)=fO3(i)-1; fC4H6(i)=fC4H6(i)-1; fHCHO(i)=fHCHO(i)+1; fACROOA(i)=fACROOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4H6 = BUTDAO2';
k(:,i) = 1.48e-11.*exp(448./T).*0.217;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4H6'; 
fOH(i)=fOH(i)-1; fC4H6(i)=fC4H6(i)-1; fBUTDAO2(i)=fBUTDAO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4H6 = BUTDBO2';
k(:,i) = 1.48e-11.*exp(448./T).*0.649;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4H6'; 
fOH(i)=fOH(i)-1; fC4H6(i)=fC4H6(i)-1; fBUTDBO2(i)=fBUTDBO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4H6 = BUTDCO2';
k(:,i) = 1.48e-11.*exp(448./T).*0.134;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4H6'; 
fOH(i)=fOH(i)-1; fC4H6(i)=fC4H6(i)-1; fBUTDCO2(i)=fBUTDCO2(i)+1; 

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
Rnames{i} = 'OH + C5H8 = CISOPA';
k(:,i) = 2.70e-11.*exp(390./T).*0.288;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = CISOPC';
k(:,i) = 2.70e-11.*exp(390./T).*0.238;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ISOP34O2';
k(:,i) = 2.70e-11.*exp(390./T).*0.022;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fISOP34O2(i)=fISOP34O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = ME3BU3ECHO + HO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.020;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fME3BU3ECHO(i)=fME3BU3ECHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = PE4E2CO + HO2';
k(:,i) = 2.70e-11.*exp(390./T).*0.042;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fPE4E2CO(i)=fPE4E2CO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = TISOPA';
k(:,i) = 2.70e-11.*exp(390./T).*0.288;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5H8 = TISOPC';
k(:,i) = 2.70e-11.*exp(390./T).*0.102;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5H8'; 
fOH(i)=fOH(i)-1; fC5H8(i)=fC5H8(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

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
Rnames{i} = 'HCOOH + OH = HO2';
k(:,i) = 4.5e-13;
Gstr{i,1} = 'HCOOH'; Gstr{i,2} = 'OH'; 
fHCOOH(i)=fHCOOH(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH3CO2H + OH = CH3O2';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'CH3CO2H'; Gstr{i,2} = 'OH'; 
fCH3CO2H(i)=fCH3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3O2(i)=fCH3O2(i)+1; 

i=i+1;
Rnames{i} = 'BIACET + hv = CH3CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'BIACET'; 
fBIACET(i)=fBIACET(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACET = BIACETO2';
k(:,i) = 1.40e-18.*T.^2.*exp(194./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACET'; 
fOH(i)=fOH(i)-1; fBIACET(i)=fBIACET(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

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
Rnames{i} = 'C2H5CO3 + HO2 = C2H5O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = PERPROACID';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPERPROACID(i)=fPERPROACID(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + HO2 = PROPACID + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'HO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fHO2(i)=fHO2(i)-1; fPROPACID(i)=fPROPACID(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO = NO2 + C2H5O2';
k(:,i) = 6.7e-12.*exp(340./T);
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO2 = PPN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO2'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO2(i)=fNO2(i)-1; fPPN(i)=fPPN(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + NO3 = C2H5O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'NO3'; 
fC2H5CO3(i)=fC2H5CO3(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = C2H5O2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5CO3 + RO2 = PROPACID';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C2H5CO3'; Gstr{i,2} = 'RO2';
fC2H5CO3(i)=fC2H5CO3(i)-1; fPROPACID(i)=fPROPACID(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + HO2 = C2H5OOH';
k(:,i) = 4.3e-13.*exp(870./T);
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'HO2'; 
fC2H5O2(i)=fC2H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC2H5OOH(i)=fC2H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5NO3';
k(:,i) = 2.55e-12.*exp(380./T).*0.009;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5NO3(i)=fC2H5NO3(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO = C2H5O + NO2';
k(:,i) = 2.55e-12.*exp(380./T).*0.991;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO(i)=fNO(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + NO3 = C2H5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'NO3'; 
fC2H5O2(i)=fC2H5O2(i)-1; fNO3(i)=fNO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5O';
k(:,i) = 2.*(KCH3O2.*6.4e-14.*(T./300).^0.*exp(0./T)).^0.5.*0.6;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = C2H5OH';
k(:,i) = 2.*(KCH3O2.*6.4e-14.*(T./300).^0.*exp(0./T)).^0.5.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fC2H5OH(i)=fC2H5OH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O2 + RO2 = CH3CHO';
k(:,i) = 2.*(KCH3O2.*6.4e-14.*(T./300).^0.*exp(0./T)).^0.5.*0.2;
Gstr{i,1} = 'C2H5O2'; Gstr{i,2} = 'RO2';
fC2H5O2(i)=fC2H5O2(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; 

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
Rnames{i} = 'MACRO2 + NO = MACRNO3';
k(:,i) = KRO2NO.*0.013;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO = MACRO + NO2';
k(:,i) = KRO2NO.*0.987;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO'; 
fMACRO2(i)=fMACRO2(i)-1; fNO(i)=fNO(i)-1; fMACRO(i)=fMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 + NO3 = MACRO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MACRO2'; Gstr{i,2} = 'NO3'; 
fMACRO2(i)=fMACRO2(i)-1; fNO3(i)=fNO3(i)-1; fMACRO(i)=fMACRO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO2 = ACETOL + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'MACRO2'; 
fMACRO2(i)=fMACRO2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'MACROHO2 + NO = MACRNB';
k(:,i) = KRO2NO.*0.017;
Gstr{i,1} = 'MACROHO2'; Gstr{i,2} = 'NO'; 
fMACROHO2(i)=fMACROHO2(i)-1; fNO(i)=fNO(i)-1; fMACRNB(i)=fMACRNB(i)+1; 

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
Rnames{i} = 'BZBIPERO2 + HO2 = BZBIPEROOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'HO2'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fHO2(i)=fHO2(i)-1; fBZBIPEROOH(i)=fBZBIPEROOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO = BZBIPERNO3';
k(:,i) = KRO2NO.*0.082;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO(i)=fNO(i)-1; fBZBIPERNO3(i)=fBZBIPERNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO = NO2 + BZBIPERO';
k(:,i) = KRO2NO.*0.918;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO(i)=fNO(i)-1; fNO2(i)=fNO2(i)+1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + NO3 = NO2 + BZBIPERO';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'NO3'; 
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZBIPER2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZBIPER2OH(i)=fBZBIPER2OH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZBIPERO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO2 + RO2 = BZOBIPEROH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZBIPERO2'; Gstr{i,2} = 'RO2';
fBZBIPERO2(i)=fBZBIPERO2(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + NO3 = BZEMUCCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.75;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'NO3'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fNO3(i)=fNO3(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + O3 = EPXC4DIAL + GLYOOA';
k(:,i) = 2.00e-18;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'O3'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fO3(i)=fO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + OH = BZEMUCCO3';
k(:,i) = 6.08e-11.*0.31;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'OH'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + OH = BZEMUCO2';
k(:,i) = 6.08e-11.*0.69;
Gstr{i,1} = 'BZEPOXMUC'; Gstr{i,2} = 'OH'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fOH(i)=fOH(i)-1; fBZEMUCO2(i)=fBZEMUCO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + hv = C5DIALO2 + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'BZEPOXMUC'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEPOXMUC + hv = MALDIAL + HO2 + CO + HO2 + CO';
k(:,i) = J4.*0.1.*0.5;
Gstr{i,1} = 'BZEPOXMUC'; 
fBZEPOXMUC(i)=fBZEPOXMUC(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + NO3 = C6H5O + HNO3';
k(:,i) = 3.8e-12.*0.742;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'NO3'; 
fPHENOL(i)=fPHENOL(i)-1; fNO3(i)=fNO3(i)-1; fC6H5O(i)=fC6H5O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + NO3 = NPHENO2';
k(:,i) = 3.8e-12.*0.258;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'NO3'; 
fPHENOL(i)=fPHENOL(i)-1; fNO3(i)=fNO3(i)-1; fNPHENO2(i)=fNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = C6H5O';
k(:,i) = 4.7e-13.*exp(1220./T).*0.06;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fC6H5O(i)=fC6H5O(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = CATECHOL + HO2';
k(:,i) = 4.7e-13.*exp(1220./T).*0.8;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fCATECHOL(i)=fCATECHOL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOL + OH = PHENO2';
k(:,i) = 4.7e-13.*exp(1220./T).*0.14;
Gstr{i,1} = 'PHENOL'; Gstr{i,2} = 'OH'; 
fPHENOL(i)=fPHENOL(i)-1; fOH(i)=fOH(i)-1; fPHENO2(i)=fPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + HO2 = NBUTDAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'HO2'; 
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fHO2(i)=fHO2(i)-1; fNBUTDAOOH(i)=fNBUTDAOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + NO = NBUTDAO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'NO'; 
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fNO(i)=fNO(i)-1; fNBUTDAO(i)=fNBUTDAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + NO3 = NBUTDAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'NO3'; 
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTDAO(i)=fNBUTDAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + RO2 = NBUTDAO';
k(:,i) = 2.50e-13.*0.6;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'RO2';
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fNBUTDAO(i)=fNBUTDAO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + RO2 = NBUTDAOH';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'RO2';
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fNBUTDAOH(i)=fNBUTDAOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO2 + RO2 = NMVK';
k(:,i) = 2.50e-13.*0.2;
Gstr{i,1} = 'NBUTDAO2'; Gstr{i,2} = 'RO2';
fNBUTDAO2(i)=fNBUTDAO2(i)-1; fNMVK(i)=fNMVK(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + HO2 = NBUTDBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'HO2'; 
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fHO2(i)=fHO2(i)-1; fNBUTDBOOH(i)=fNBUTDBOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + NO = NBUTDBNO3';
k(:,i) = KRO2NO.*0.033;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'NO'; 
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTDBNO3(i)=fNBUTDBNO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + NO = NBUTDBO + NO2';
k(:,i) = KRO2NO.*0.967;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'NO'; 
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fNO(i)=fNO(i)-1; fNBUTDBO(i)=fNBUTDBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + NO3 = NBUTDBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'NO3'; 
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fNO3(i)=fNO3(i)-1; fNBUTDBO(i)=fNBUTDBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + RO2 = BUTDANO3';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'RO2';
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fBUTDANO3(i)=fBUTDANO3(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + RO2 = NBUTDBO';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'RO2';
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fNBUTDBO(i)=fNBUTDBO(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO2 + RO2 = NC3CHO';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'NBUTDBO2'; Gstr{i,2} = 'RO2';
fNBUTDBO2(i)=fNBUTDBO2(i)-1; fNC3CHO(i)=fNC3CHO(i)+1; 

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
Rnames{i} = 'ACR + OH = ACRO2';
k(:,i) = 0.255.*2.00E-11;
Gstr{i,1} = 'ACR'; Gstr{i,2} = 'OH'; 
fACR(i)=fACR(i)-1; fOH(i)=fOH(i)-1; fACRO2(i)=fACRO2(i)+1; 

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
Rnames{i} = 'CH2OOD = CH2OO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CH2OOD'; 
fCH2OOD(i)=fCH2OOD(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOD = CO';
k(:,i) = KDEC.*0.68;
Gstr{i,1} = 'CH2OOD'; 
fCH2OOD(i)=fCH2OOD(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOD = HO2 + CO + OH';
k(:,i) = KDEC.*0.08;
Gstr{i,1} = 'CH2OOD'; 
fCH2OOD(i)=fCH2OOD(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACROOA = ACROO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'ACROOA'; 
fACROOA(i)=fACROOA(i)-1; fACROO(i)=fACROO(i)+1; 

i=i+1;
Rnames{i} = 'ACROOA = C2H4';
k(:,i) = KDEC.*0.34;
Gstr{i,1} = 'ACROOA'; 
fACROOA(i)=fACROOA(i)-1; fC2H4(i)=fC2H4(i)+1; 

i=i+1;
Rnames{i} = 'ACROOA = HO2 + CO + HCHO + CO + OH';
k(:,i) = KDEC.*0.08;
Gstr{i,1} = 'ACROOA'; 
fACROOA(i)=fACROOA(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACROOA = HO2 + CO + HCHO + HO2';
k(:,i) = KDEC.*0.34;
Gstr{i,1} = 'ACROOA'; 
fACROOA(i)=fACROOA(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + HO2 = BUTDAOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'HO2'; 
fBUTDAO2(i)=fBUTDAO2(i)-1; fHO2(i)=fHO2(i)-1; fBUTDAOOH(i)=fBUTDAOOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + NO = BUTDANO3';
k(:,i) = KRO2NO.*0.053;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'NO'; 
fBUTDAO2(i)=fBUTDAO2(i)-1; fNO(i)=fNO(i)-1; fBUTDANO3(i)=fBUTDANO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + NO = BUTDAO + NO2';
k(:,i) = KRO2NO.*0.947;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'NO'; 
fBUTDAO2(i)=fBUTDAO2(i)-1; fNO(i)=fNO(i)-1; fBUTDAO(i)=fBUTDAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + NO3 = BUTDAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'NO3'; 
fBUTDAO2(i)=fBUTDAO2(i)-1; fNO3(i)=fNO3(i)-1; fBUTDAO(i)=fBUTDAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + RO2 = BUTDAO';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'RO2';
fBUTDAO2(i)=fBUTDAO2(i)-1; fBUTDAO(i)=fBUTDAO(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + RO2 = BUTDAOH';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'RO2';
fBUTDAO2(i)=fBUTDAO2(i)-1; fBUTDAOH(i)=fBUTDAOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO2 + RO2 = HC3CHO';
k(:,i) = 2.00e-12.*0.1;
Gstr{i,1} = 'BUTDAO2'; Gstr{i,2} = 'RO2';
fBUTDAO2(i)=fBUTDAO2(i)-1; fHC3CHO(i)=fHC3CHO(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + HO2 = BUTDBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'HO2'; 
fBUTDBO2(i)=fBUTDBO2(i)-1; fHO2(i)=fHO2(i)-1; fBUTDBOOH(i)=fBUTDBOOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + NO = BUTDBNO3';
k(:,i) = KRO2NO.*0.071;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'NO'; 
fBUTDBO2(i)=fBUTDBO2(i)-1; fNO(i)=fNO(i)-1; fBUTDBNO3(i)=fBUTDBNO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + NO = BUTDBO + NO2';
k(:,i) = KRO2NO.*0.929;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'NO'; 
fBUTDBO2(i)=fBUTDBO2(i)-1; fNO(i)=fNO(i)-1; fBUTDBO(i)=fBUTDBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + NO3 = BUTDBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'NO3'; 
fBUTDBO2(i)=fBUTDBO2(i)-1; fNO3(i)=fNO3(i)-1; fBUTDBO(i)=fBUTDBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + RO2 = BUTDBO';
k(:,i) = 2.90e-12.*0.8;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'RO2';
fBUTDBO2(i)=fBUTDBO2(i)-1; fBUTDBO(i)=fBUTDBO(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + RO2 = BUTDBOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'RO2';
fBUTDBO2(i)=fBUTDBO2(i)-1; fBUTDBOH(i)=fBUTDBOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO2 + RO2 = MVKOH';
k(:,i) = 2.90e-12.*0.1;
Gstr{i,1} = 'BUTDBO2'; Gstr{i,2} = 'RO2';
fBUTDBO2(i)=fBUTDBO2(i)-1; fMVKOH(i)=fMVKOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + HO2 = BUTDCOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'HO2'; 
fBUTDCO2(i)=fBUTDCO2(i)-1; fHO2(i)=fHO2(i)-1; fBUTDCOOH(i)=fBUTDCOOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + NO = BUTDCO + NO2';
k(:,i) = KRO2NO.*0.947;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'NO'; 
fBUTDCO2(i)=fBUTDCO2(i)-1; fNO(i)=fNO(i)-1; fBUTDCO(i)=fBUTDCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + NO = NBUTDAOH';
k(:,i) = KRO2NO.*0.053;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'NO'; 
fBUTDCO2(i)=fBUTDCO2(i)-1; fNO(i)=fNO(i)-1; fNBUTDAOH(i)=fNBUTDAOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + NO3 = BUTDCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'NO3'; 
fBUTDCO2(i)=fBUTDCO2(i)-1; fNO3(i)=fNO3(i)-1; fBUTDCO(i)=fBUTDCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + RO2 = BUTDBOH';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'RO2';
fBUTDCO2(i)=fBUTDCO2(i)-1; fBUTDBOH(i)=fBUTDBOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + RO2 = BUTDCO';
k(:,i) = 2.65e-12.*0.8;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'RO2';
fBUTDCO2(i)=fBUTDCO2(i)-1; fBUTDCO(i)=fBUTDCO(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO2 + RO2 = HC3CCHO';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'BUTDCO2'; Gstr{i,2} = 'RO2';
fBUTDCO2(i)=fBUTDCO2(i)-1; fHC3CCHO(i)=fHC3CCHO(i)+1; 

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
k(:,i) = KDEC.*0.56;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fCH2OO(i)=fCH2OO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOE = CO';
k(:,i) = KDEC.*0.19;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CH2OOE = HO2 + CO + OH';
k(:,i) = KDEC.*0.25;
Gstr{i,1} = 'CH2OOE'; 
fCH2OOE(i)=fCH2OOE(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'MACROOA = C3H6';
k(:,i) = KDEC.*0.095;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fC3H6(i)=fC3H6(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = CH3CO3 + HCHO + HO2';
k(:,i) = KDEC.*0.095;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = MACROO';
k(:,i) = KDEC.*0.56;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fMACROO(i)=fMACROO(i)+1; 

i=i+1;
Rnames{i} = 'MACROOA = OH + CO + CH3CO3 + HCHO';
k(:,i) = KDEC.*0.25;
Gstr{i,1} = 'MACROOA'; 
fMACROOA(i)=fMACROOA(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = C3H6';
k(:,i) = KDEC.*0.095;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fC3H6(i)=fC3H6(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = CH3O2 + HCHO + CO + HO2';
k(:,i) = KDEC.*0.095;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fCH3O2(i)=fCH3O2(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = MVKOO';
k(:,i) = KDEC.*0.56;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fMVKOO(i)=fMVKOO(i)+1; 

i=i+1;
Rnames{i} = 'MVKOOA = OH + MVKO2';
k(:,i) = KDEC.*0.25;
Gstr{i,1} = 'MVKOOA'; 
fMVKOOA(i)=fMVKOOA(i)-1; fOH(i)=fOH(i)+1; fMVKO2(i)=fMVKO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPA = CISOPAO2';
k(:,i) = 3.50e-12.*.21.*M;
Gstr{i,1} = 'CISOPA'; 
fCISOPA(i)=fCISOPA(i)-1; fCISOPAO2(i)=fCISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPA = ISOPBO2';
k(:,i) = 3.00e-12.*.21.*M;
Gstr{i,1} = 'CISOPA'; 
fCISOPA(i)=fCISOPA(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPC = CISOPCO2';
k(:,i) = 2.00e-12.*.21.*M;
Gstr{i,1} = 'CISOPC'; 
fCISOPC(i)=fCISOPC(i)-1; fCISOPCO2(i)=fCISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPC = ISOPDO2';
k(:,i) = 3.50e-12.*.21.*M;
Gstr{i,1} = 'CISOPC'; 
fCISOPC(i)=fCISOPC(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + HO2 = ISOP34OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'HO2'; 
fISOP34O2(i)=fISOP34O2(i)-1; fHO2(i)=fHO2(i)-1; fISOP34OOH(i)=fISOP34OOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO = ISOP34NO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO(i)=fNO(i)-1; fISOP34NO3(i)=fISOP34NO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO = ISOP34O + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO(i)=fNO(i)-1; fISOP34O(i)=fISOP34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + NO3 = ISOP34O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'NO3'; 
fISOP34O2(i)=fISOP34O2(i)-1; fNO3(i)=fNO3(i)-1; fISOP34O(i)=fISOP34O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + RO2 = HC4CHO';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fHC4CHO(i)=fHC4CHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + RO2 = ISOP34O';
k(:,i) = 2.65e-12.*0.8;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fISOP34O(i)=fISOP34O(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O2 + RO2 = ISOPDOH';
k(:,i) = 2.65e-12.*0.1;
Gstr{i,1} = 'ISOP34O2'; Gstr{i,2} = 'RO2';
fISOP34O2(i)=fISOP34O2(i)-1; fISOPDOH(i)=fISOPDOH(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + NO3 = NC526O2';
k(:,i) = 3.30e-13;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'NO3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fNO3(i)=fNO3(i)-1; fNC526O2(i)=fNC526O2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + O3 = CH2OOC + CO2C3CHO';
k(:,i) = 1.60e-17.*0.33;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'O3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fO3(i)=fO3(i)-1; fCH2OOC(i)=fCH2OOC(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + O3 = CO2C3OOB + HCHO';
k(:,i) = 1.60e-17.*0.67;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'O3'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fO3(i)=fO3(i)-1; fCO2C3OOB(i)=fCO2C3OOB(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + OH = C530O2';
k(:,i) = 7.30e-11.*0.712;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'OH'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fOH(i)=fOH(i)-1; fC530O2(i)=fC530O2(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + OH = M3BU3ECO3';
k(:,i) = 7.30e-11.*0.288;
Gstr{i,1} = 'ME3BU3ECHO'; Gstr{i,2} = 'OH'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fOH(i)=fOH(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; 

i=i+1;
Rnames{i} = 'ME3BU3ECHO + hv = C45O2 + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'ME3BU3ECHO'; 
fME3BU3ECHO(i)=fME3BU3ECHO(i)-1; fC45O2(i)=fC45O2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + NO3 = NC51O2';
k(:,i) = 1.20e-14;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'NO3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fNO3(i)=fNO3(i)-1; fNC51O2(i)=fNC51O2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + O3 = CH2OOB + CO2C3CHO';
k(:,i) = 1.00e-17.*0.43;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'O3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fO3(i)=fO3(i)-1; fCH2OOB(i)=fCH2OOB(i)+1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + O3 = CO2C3OOA + HCHO';
k(:,i) = 1.00e-17.*0.57;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'O3'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fO3(i)=fO3(i)-1; fCO2C3OOA(i)=fCO2C3OOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + OH = C51O2';
k(:,i) = 2.71e-11;
Gstr{i,1} = 'PE4E2CO'; Gstr{i,2} = 'OH'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fOH(i)=fOH(i)-1; fC51O2(i)=fC51O2(i)+1; 

i=i+1;
Rnames{i} = 'PE4E2CO + hv = CH3CO3 + CH2CHCH2O2';
k(:,i) = J22;
Gstr{i,1} = 'PE4E2CO'; 
fPE4E2CO(i)=fPE4E2CO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCH2CHCH2O2(i)=fCH2CHCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'TISOPA = ISOPAO2';
k(:,i) = 2.50e-12.*exp(-480./T).*.21.*M;
Gstr{i,1} = 'TISOPA'; 
fTISOPA(i)=fTISOPA(i)-1; fISOPAO2(i)=fISOPAO2(i)+1; 

i=i+1;
Rnames{i} = 'TISOPA = ISOPBO2';
k(:,i) = 3.00e-12.*.21.*M;
Gstr{i,1} = 'TISOPA'; 
fTISOPA(i)=fTISOPA(i)-1; fISOPBO2(i)=fISOPBO2(i)+1; 

i=i+1;
Rnames{i} = 'TISOPC = ISOPCO2';
k(:,i) = 2.50e-12.*exp(-480./T).*.21.*M;
Gstr{i,1} = 'TISOPC'; 
fTISOPC(i)=fTISOPC(i)-1; fISOPCO2(i)=fISOPCO2(i)+1; 

i=i+1;
Rnames{i} = 'TISOPC = ISOPDO2';
k(:,i) = 3.50e-12.*.21.*M;
Gstr{i,1} = 'TISOPC'; 
fTISOPC(i)=fTISOPC(i)-1; fISOPDO2(i)=fISOPDO2(i)+1; 

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
Rnames{i} = 'BIACETO2 + HO2 = BIACETOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'HO2'; 
fBIACETO2(i)=fBIACETO2(i)-1; fHO2(i)=fHO2(i)-1; fBIACETOOH(i)=fBIACETOOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO = BIACETO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO(i)=fNO(i)-1; fBIACETO(i)=fBIACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + NO3 = BIACETO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'NO3'; 
fBIACETO2(i)=fBIACETO2(i)-1; fNO3(i)=fNO3(i)-1; fBIACETO(i)=fBIACETO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = BIACETO';
k(:,i) = 2.00e-12.*0.6;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fBIACETO(i)=fBIACETO(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = BIACETOH';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fBIACETOH(i)=fBIACETOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO2 + RO2 = CO23C3CHO';
k(:,i) = 2.00e-12.*0.2;
Gstr{i,1} = 'BIACETO2'; Gstr{i,2} = 'RO2';
fBIACETO2(i)=fBIACETO2(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; 

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
Rnames{i} = 'HCOCH2O = HCHO + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HCOCH2O'; 
fHCOCH2O(i)=fHCOCH2O(i)-1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'NO3 + GLYOX = HCOCO + HNO3';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'GLYOX'; 
fNO3(i)=fNO3(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO(i)=fHCOCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + GLYOX = HCOCO';
k(:,i) = 3.1e-12.*exp(340./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'GLYOX'; 
fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)-1; fHCOCO(i)=fHCOCO(i)+1; 

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
Rnames{i} = 'PERPROACID + OH = C2H5CO3';
k(:,i) = 4.42e-12;
Gstr{i,1} = 'PERPROACID'; Gstr{i,2} = 'OH'; 
fPERPROACID(i)=fPERPROACID(i)-1; fOH(i)=fOH(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; 

i=i+1;
Rnames{i} = 'PERPROACID + hv = C2H5O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'PERPROACID'; 
fPERPROACID(i)=fPERPROACID(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PROPACID + OH = C2H5O2';
k(:,i) = 1.2e-12;
Gstr{i,1} = 'PROPACID'; Gstr{i,2} = 'OH'; 
fPROPACID(i)=fPROPACID(i)-1; fOH(i)=fOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'PPN + OH = CH3CHO + CO + NO2';
k(:,i) = 1.27e-12;
Gstr{i,1} = 'PPN'; Gstr{i,2} = 'OH'; 
fPPN(i)=fPPN(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PPN = C2H5CO3 + NO2';
k(:,i) = 1.7e-3.*exp(-11280./T);
Gstr{i,1} = 'PPN'; 
fPPN(i)=fPPN(i)-1; fC2H5CO3(i)=fC2H5CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OOH + hv = C2H5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C2H5OOH'; 
fC2H5OOH(i)=fC2H5OOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5OOH = C2H5O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5OOH'; 
fOH(i)=fOH(i)-1; fC2H5OOH(i)=fC2H5OOH(i)-1; fC2H5O2(i)=fC2H5O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5OOH = CH3CHO + OH';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5OOH'; 
fOH(i)=fOH(i)-1; fC2H5OOH(i)=fC2H5OOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C2H5NO3 + hv = C2H5O + NO2';
k(:,i) = J52;
Gstr{i,1} = 'C2H5NO3'; 
fC2H5NO3(i)=fC2H5NO3(i)-1; fC2H5O(i)=fC2H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C2H5NO3 = CH3CHO + NO2';
k(:,i) = 6.7e-13.*exp(-395./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C2H5NO3'; 
fOH(i)=fOH(i)-1; fC2H5NO3(i)=fC2H5NO3(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5O = CH3CHO + HO2';
k(:,i) = 2.4e-14.*exp(-325./T).*.21.*M;
Gstr{i,1} = 'C2H5O'; 
fC2H5O(i)=fC2H5O(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = C2H5O';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fC2H5O(i)=fC2H5O(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = CH3CHO + HO2';
k(:,i) = 3.0e-12.*exp(20./T).*0.9;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fCH3CHO(i)=fCH3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C2H5OH + OH = HOCH2CH2O2';
k(:,i) = 3.0e-12.*exp(20./T).*0.05;
Gstr{i,1} = 'C2H5OH'; Gstr{i,2} = 'OH'; 
fC2H5OH(i)=fC2H5OH(i)-1; fOH(i)=fOH(i)-1; fHOCH2CH2O2(i)=fHOCH2CH2O2(i)+1; 

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
Rnames{i} = 'OH + MACO3H = ACETOL + CO + OH';
k(:,i) = 1.30e-11.*0.83;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = HMML + OH';
k(:,i) = 1.30e-11.*0.17;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACO3H'; 
fOH(i)=fOH(i)-1; fMACO3H(i)=fMACO3H(i)-1; fHMML(i)=fHMML(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACO3H = MACO3';
k(:,i) = 3.60e-12;
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
Rnames{i} = 'OH + MPAN = ACETOL + CO + NO3';
k(:,i) = 2.9e-11.*0.22;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = HMML + NO3';
k(:,i) = 2.90e-11.*0.57;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fHMML(i)=fHMML(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + MPAN = MAE + NO3';
k(:,i) = 2.90e-11.*0.21;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MPAN'; 
fOH(i)=fOH(i)-1; fMPAN(i)=fMPAN(i)-1; fMAE(i)=fMAE(i)+1; fNO3(i)=fNO3(i)+1; 

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
k(:,i) = J56.*10;
Gstr{i,1} = 'MACRNO3'; 
fMACRNO3(i)=fMACRNO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MACRO = ACETOL + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MACRO'; 
fMACRO(i)=fMACRO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'MACRNB + hv = C3MDIALOH + HO2 + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'MACRNB'; 
fMACRNB(i)=fMACRNB(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + MACRNB = MACRNBCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MACRNB'; 
fOH(i)=fOH(i)-1; fMACRNB(i)=fMACRNB(i)-1; fMACRNBCO3(i)=fMACRNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MACROHO = MGLYOX + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MACROHO'; 
fMACROHO(i)=fMACROHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + OH = CHOMOHCO3';
k(:,i) = 4.18e-11;
Gstr{i,1} = 'C3MDIALOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fOH(i)=fOH(i)-1; fCHOMOHCO3(i)=fCHOMOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOH + hv = MGLYOX + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOH'; 
fC3MDIALOH(i)=fC3MDIALOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'CHOPRNO3 + hv = PROPALO + NO2';
k(:,i) = J56.*10;
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
Rnames{i} = 'NOA + OH = MGLYOX + NO2';
k(:,i) = 6.70e-13;
Gstr{i,1} = 'NOA'; Gstr{i,2} = 'OH'; 
fNOA(i)=fNOA(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NOA + hv = CH3COCH2O + NO2';
k(:,i) = J56;
Gstr{i,1} = 'NOA'; 
fNOA(i)=fNOA(i)-1; fCH3COCH2O(i)=fCH3COCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PROLNO3 + OH = CH3CHOHCHO + NO2';
k(:,i) = 1.71e-12;
Gstr{i,1} = 'PROLNO3'; Gstr{i,2} = 'OH'; 
fPROLNO3(i)=fPROLNO3(i)-1; fOH(i)=fOH(i)-1; fCH3CHOHCHO(i)=fCH3CHOHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'BZBIPEROOH + OH = BZOBIPEROH + OH';
k(:,i) = 9.77e-11;
Gstr{i,1} = 'BZBIPEROOH'; Gstr{i,2} = 'OH'; 
fBZBIPEROOH(i)=fBZBIPEROOH(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPEROOH + hv = BZBIPERO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZBIPEROOH'; 
fBZBIPEROOH(i)=fBZBIPEROOH(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERNO3 + OH = BZOBIPEROH + NO2';
k(:,i) = 7.30e-11;
Gstr{i,1} = 'BZBIPERNO3'; Gstr{i,2} = 'OH'; 
fBZBIPERNO3(i)=fBZBIPERNO3(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERNO3 + hv = BZBIPERO + NO2';
k(:,i) = J54;
Gstr{i,1} = 'BZBIPERNO3'; 
fBZBIPERNO3(i)=fBZBIPERNO3(i)-1; fBZBIPERO(i)=fBZBIPERO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO = GLYOX + BZFUONE + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'BZBIPERO'; 
fBZBIPERO(i)=fBZBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fBZFUONE(i)=fBZFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPERO = GLYOX + MALDIAL + HO2';
k(:,i) = KDEC.*0.50;
Gstr{i,1} = 'BZBIPERO'; 
fBZBIPERO(i)=fBZBIPERO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMALDIAL(i)=fMALDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZBIPER2OH + OH = BZOBIPEROH + HO2';
k(:,i) = 1.21e-10;
Gstr{i,1} = 'BZBIPER2OH'; Gstr{i,2} = 'OH'; 
fBZBIPER2OH(i)=fBZBIPER2OH(i)-1; fOH(i)=fOH(i)-1; fBZOBIPEROH(i)=fBZOBIPEROH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZOBIPEROH + OH = MALDIALCO3 + GLYOX';
k(:,i) = 8.16e-11;
Gstr{i,1} = 'BZOBIPEROH'; Gstr{i,2} = 'OH'; 
fBZOBIPEROH(i)=fBZOBIPEROH(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'BZOBIPEROH + hv = MALDIALCO3 + GLYOX + HO2';
k(:,i) = J22;
Gstr{i,1} = 'BZOBIPEROH'; 
fBZOBIPEROH(i)=fBZOBIPEROH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = BZEMUCCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCCO2H(i)=fBZEMUCCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = BZEMUCCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCCO3H(i)=fBZEMUCCO3H(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + HO2 = C5DIALO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'HO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO = C5DIALO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO(i)=fNO(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO2 = BZEMUCPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO2'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO2(i)=fNO2(i)-1; fBZEMUCPAN(i)=fBZEMUCPAN(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + NO3 = C5DIALO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'NO3'; 
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fNO3(i)=fNO3(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + RO2 = BZEMUCCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'RO2';
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fBZEMUCCO2H(i)=fBZEMUCCO2H(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3 + RO2 = C5DIALO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'BZEMUCCO3'; Gstr{i,2} = 'RO2';
fBZEMUCCO3(i)=fBZEMUCCO3(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + NO3 = EPXDLCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*4.0;
Gstr{i,1} = 'EPXC4DIAL'; Gstr{i,2} = 'NO3'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fNO3(i)=fNO3(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + OH = EPXDLCO3';
k(:,i) = 4.32e-11;
Gstr{i,1} = 'EPXC4DIAL'; Gstr{i,2} = 'OH'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXC4DIAL + hv = C3DIALO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'EPXC4DIAL'; 
fEPXC4DIAL(i)=fEPXC4DIAL(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = GLYOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fGLYOO(i)=fGLYOO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = HCHO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = HO2 + HO2 + CO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'GLYOOA = OH + HO2 + CO + CO';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'GLYOOA'; 
fGLYOOA(i)=fGLYOOA(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + HO2 = BZEMUCOOH';
k(:,i) = KRO2HO2.*0.77;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'HO2'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fHO2(i)=fHO2(i)-1; fBZEMUCOOH(i)=fBZEMUCOOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO = BZEMUCNO3';
k(:,i) = KRO2NO.*0.105;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO(i)=fNO(i)-1; fBZEMUCNO3(i)=fBZEMUCNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO = BZEMUCO + NO2';
k(:,i) = KRO2NO.*0.895;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO(i)=fNO(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + NO3 = BZEMUCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'NO3'; 
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fNO3(i)=fNO3(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO2 + RO2 = BZEMUCOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZEMUCO2'; Gstr{i,2} = 'RO2';
fBZEMUCO2(i)=fBZEMUCO2(i)-1; fBZEMUCOH(i)=fBZEMUCOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + HO2 = C5DIALOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'HO2'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC5DIALOOH(i)=fC5DIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + NO = C5DIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'NO'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fNO(i)=fNO(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + NO3 = C5DIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'NO3'; 
fC5DIALO2(i)=fC5DIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO2 + RO2 = C5DIALOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C5DIALO2'; Gstr{i,2} = 'RO2';
fC5DIALO2(i)=fC5DIALO2(i)-1; fC5DIALOH(i)=fC5DIALOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + NO3 = MALDIALCO3 + HNO3';
k(:,i) = 2.*KNO3AL.*2.0;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'NO3'; 
fMALDIAL(i)=fMALDIAL(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + O3 = GLYOX + GLYOOA';
k(:,i) = 2.00e-18;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'O3'; 
fMALDIAL(i)=fMALDIAL(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + OH = MALDIALCO3';
k(:,i) = 5.20e-11.*0.83;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'OH'; 
fMALDIAL(i)=fMALDIAL(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + OH = MALDIALO2';
k(:,i) = 5.20e-11.*0.17;
Gstr{i,1} = 'MALDIAL'; Gstr{i,2} = 'OH'; 
fMALDIAL(i)=fMALDIAL(i)-1; fOH(i)=fOH(i)-1; fMALDIALO2(i)=fMALDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + hv = BZFUONE';
k(:,i) = J4.*0.14.*0.4;
Gstr{i,1} = 'MALDIAL'; 
fMALDIAL(i)=fMALDIAL(i)-1; fBZFUONE(i)=fBZFUONE(i)+1; 

i=i+1;
Rnames{i} = 'MALDIAL + hv = MALDIALCO3 + HO2';
k(:,i) = J4.*0.14.*0.6;
Gstr{i,1} = 'MALDIAL'; 
fMALDIAL(i)=fMALDIAL(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O + NO2 = HOC6H4NO2';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'C6H5O'; Gstr{i,2} = 'NO2'; 
fC6H5O(i)=fC6H5O(i)-1; fNO2(i)=fNO2(i)-1; fHOC6H4NO2(i)=fHOC6H4NO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O + O3 = C6H5O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'C6H5O'; Gstr{i,2} = 'O3'; 
fC6H5O(i)=fC6H5O(i)-1; fO3(i)=fO3(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + HO2 = NPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'HO2'; 
fNPHENO2(i)=fNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fNPHENOOH(i)=fNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + NO = NPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'NO'; 
fNPHENO2(i)=fNPHENO2(i)-1; fNO(i)=fNO(i)-1; fNPHENO(i)=fNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + NO3 = NPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'NO3'; 
fNPHENO2(i)=fNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fNPHENO(i)=fNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + RO2 = NPHENO';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'RO2';
fNPHENO2(i)=fNPHENO2(i)-1; fNPHENO(i)=fNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO2 + RO2 = NPHENOH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'NPHENO2'; Gstr{i,2} = 'RO2';
fNPHENO2(i)=fNPHENO2(i)-1; fNPHENOH(i)=fNPHENOH(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + NO3 = CATEC1O + HNO3';
k(:,i) = 9.9e-11;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'NO3'; 
fCATECHOL(i)=fCATECHOL(i)-1; fNO3(i)=fNO3(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + O3 = CATECOOA';
k(:,i) = 9.2e-18;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'O3'; 
fCATECHOL(i)=fCATECHOL(i)-1; fO3(i)=fO3(i)-1; fCATECOOA(i)=fCATECOOA(i)+1; 

i=i+1;
Rnames{i} = 'CATECHOL + OH = CATEC1O';
k(:,i) = 1.0e-10;
Gstr{i,1} = 'CATECHOL'; Gstr{i,2} = 'OH'; 
fCATECHOL(i)=fCATECHOL(i)-1; fOH(i)=fOH(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + HO2 = PHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'HO2'; 
fPHENO2(i)=fPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fPHENOOH(i)=fPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + NO = PHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'NO'; 
fPHENO2(i)=fPHENO2(i)-1; fNO(i)=fNO(i)-1; fPHENO(i)=fPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + NO3 = PHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'NO3'; 
fPHENO2(i)=fPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fPHENO(i)=fPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + RO2 = PHENO';
k(:,i) = 8.00e-13.*0.7;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'RO2';
fPHENO2(i)=fPHENO2(i)-1; fPHENO(i)=fPHENO(i)+1; 

i=i+1;
Rnames{i} = 'PHENO2 + RO2 = PHENOH';
k(:,i) = 8.00e-13.*0.3;
Gstr{i,1} = 'PHENO2'; Gstr{i,2} = 'RO2';
fPHENO2(i)=fPHENO2(i)-1; fPHENOH(i)=fPHENOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAOOH + hv = NBUTDAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTDAOOH'; 
fNBUTDAOOH(i)=fNBUTDAOOH(i)-1; fNBUTDAO(i)=fNBUTDAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NBUTDAOOH = NMVK + OH';
k(:,i) = 4.87e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NBUTDAOOH'; 
fOH(i)=fOH(i)-1; fNBUTDAOOH(i)=fNBUTDAOOH(i)-1; fNMVK(i)=fNMVK(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDAO = NMVK + HO2';
k(:,i) = KROSEC.*.21.*M;
Gstr{i,1} = 'NBUTDAO'; 
fNBUTDAO(i)=fNBUTDAO(i)-1; fNMVK(i)=fNMVK(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NBUTDAOH = HC3CCHO + NO2';
k(:,i) = 3.71e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NBUTDAOH'; 
fOH(i)=fOH(i)-1; fNBUTDAOH(i)=fNBUTDAOH(i)-1; fHC3CCHO(i)=fHC3CCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NMVK + hv = NO3CH2CO3 + HO2 + CO + HCHO';
k(:,i) = J24;
Gstr{i,1} = 'NMVK'; 
fNMVK(i)=fNMVK(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + NMVK = HNMVKO2';
k(:,i) = 2.08e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NMVK'; 
fOH(i)=fOH(i)-1; fNMVK(i)=fNMVK(i)-1; fHNMVKO2(i)=fHNMVKO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBOOH + hv = NBUTDBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBUTDBOOH'; 
fNBUTDBOOH(i)=fNBUTDBOOH(i)-1; fNBUTDBO(i)=fNBUTDBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NBUTDBOOH = NC3CHO + OH';
k(:,i) = 7.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NBUTDBOOH'; 
fOH(i)=fOH(i)-1; fNBUTDBOOH(i)=fNBUTDBOOH(i)-1; fNC3CHO(i)=fNC3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBNO3 + hv = NBUTDBO + NO2';
k(:,i) = J53.*2.0;
Gstr{i,1} = 'NBUTDBNO3'; 
fNBUTDBNO3(i)=fNBUTDBNO3(i)-1; fNBUTDBO(i)=fNBUTDBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NBUTDBNO3 = NC3CHO + NO2';
k(:,i) = 6.04e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NBUTDBNO3'; 
fOH(i)=fOH(i)-1; fNBUTDBNO3(i)=fNBUTDBNO3(i)-1; fNC3CHO(i)=fNC3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBUTDBO = NC3CHO + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'NBUTDBO'; 
fNBUTDBO(i)=fNBUTDBO(i)-1; fNC3CHO(i)=fNC3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDANO3 + hv = BUTDAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'BUTDANO3'; 
fBUTDANO3(i)=fBUTDANO3(i)-1; fBUTDAO(i)=fBUTDAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDANO3 = HC3CHO + NO2';
k(:,i) = 6.39e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDANO3'; 
fOH(i)=fOH(i)-1; fBUTDANO3(i)=fBUTDANO3(i)-1; fHC3CHO(i)=fHC3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3CHO + hv = CO + CO + HO2 + HO2 + NO3CH2CHO';
k(:,i) = J15;
Gstr{i,1} = 'NC3CHO'; 
fNC3CHO(i)=fNC3CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NC3CHO = NC3CO3 + HNO3';
k(:,i) = KNO3AL.*2.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NC3CHO'; 
fNO3(i)=fNO3(i)-1; fNC3CHO(i)=fNC3CHO(i)-1; fNC3CO3(i)=fNC3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NC3CHO = GLYOX + NAOOA';
k(:,i) = 9.60e-18.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC3CHO'; 
fO3(i)=fO3(i)-1; fNC3CHO(i)=fNC3CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNAOOA(i)=fNAOOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + NC3CHO = NO3CH2CHO + GLYOOA';
k(:,i) = 9.60e-18.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'NC3CHO'; 
fO3(i)=fO3(i)-1; fNC3CHO(i)=fNC3CHO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3CHO = C42O2';
k(:,i) = 3.52e-11.*0.43;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3CHO'; 
fOH(i)=fOH(i)-1; fNC3CHO(i)=fNC3CHO(i)-1; fC42O2(i)=fC42O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3CHO = NC3CO3';
k(:,i) = 3.52e-11.*0.57;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3CHO'; 
fOH(i)=fOH(i)-1; fNC3CHO(i)=fNC3CHO(i)-1; fNC3CO3(i)=fNC3CO3(i)+1; 

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
Rnames{i} = 'ACRO2 + HO2 = HOCHOCOOH';
k(:,i) = KRO2HO2.*0.52;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'HO2'; 
fACRO2(i)=fACRO2(i)-1; fHO2(i)=fHO2(i)-1; fHOCHOCOOH(i)=fHOCHOCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + NO = CHOCOHCO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'NO'; 
fACRO2(i)=fACRO2(i)-1; fNO(i)=fNO(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + NO3 = CHOCOHCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'NO3'; 
fACRO2(i)=fACRO2(i)-1; fNO3(i)=fNO3(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + RO2 = CHOCOHCO';
k(:,i) = 8.8e-13.*0.6;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fCHOCOHCO(i)=fCHOCOHCO(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 = HOCH2CHO + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'ACRO2'; 
fACRO2(i)=fACRO2(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + RO2 = HOCH2COCHO';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; 

i=i+1;
Rnames{i} = 'ACRO2 + RO2 = OCCOHCOH';
k(:,i) = 8.8e-13.*0.2;
Gstr{i,1} = 'ACRO2'; Gstr{i,2} = 'RO2';
fACRO2(i)=fACRO2(i)-1; fOCCOHCOH(i)=fOCCOHCOH(i)+1; 

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
Rnames{i} = 'ACROO + CO = ACR';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'ACROO'; Gstr{i,2} = 'CO'; 
fACROO(i)=fACROO(i)-1; fCO(i)=fCO(i)-1; fACR(i)=fACR(i)+1; 

i=i+1;
Rnames{i} = 'ACROO + NO = ACR + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'ACROO'; Gstr{i,2} = 'NO'; 
fACROO(i)=fACROO(i)-1; fNO(i)=fNO(i)-1; fACR(i)=fACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ACROO + NO2 = ACR + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'ACROO'; Gstr{i,2} = 'NO2'; 
fACROO(i)=fACROO(i)-1; fNO2(i)=fNO2(i)-1; fACR(i)=fACR(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'ACROO + SO2 = ACR + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'ACROO'; Gstr{i,2} = 'SO2'; 
fACROO(i)=fACROO(i)-1; fSO2(i)=fSO2(i)-1; fACR(i)=fACR(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'ACROO = ACO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'ACROO'; 
fACROO(i)=fACROO(i)-1; fACO2H(i)=fACO2H(i)+1; 

i=i+1;
Rnames{i} = 'ACROO = ACR + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'ACROO'; 
fACROO(i)=fACROO(i)-1; fACR(i)=fACR(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAOOH + hv = BUTDAO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUTDAOOH'; 
fBUTDAOOH(i)=fBUTDAOOH(i)-1; fBUTDAO(i)=fBUTDAO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDAOOH = HC3CHO + OH';
k(:,i) = 8.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDAOOH'; 
fOH(i)=fOH(i)-1; fBUTDAOOH(i)=fBUTDAOOH(i)-1; fHC3CHO(i)=fHC3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDAO = HC3CHO + HO2';
k(:,i) = 8.40e10.*exp(-3523./T);
Gstr{i,1} = 'BUTDAO'; 
fBUTDAO(i)=fBUTDAO(i)-1; fHC3CHO(i)=fHC3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDAOH = HC3CHO + HO2';
k(:,i) = 7.10e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDAOH'; 
fOH(i)=fOH(i)-1; fBUTDAOH(i)=fBUTDAOH(i)-1; fHC3CHO(i)=fHC3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CHO + hv = HC3CO3 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'HC3CHO'; 
fHC3CHO(i)=fHC3CHO(i)-1; fHC3CO3(i)=fHC3CO3(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CHO + hv = HOCH2CHO + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'HC3CHO'; 
fHC3CHO(i)=fHC3CHO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC3CHO = HC3CO3 + HNO3';
k(:,i) = KNO3AL.*2.4;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC3CHO'; 
fNO3(i)=fNO3(i)-1; fHC3CHO(i)=fHC3CHO(i)-1; fHC3CO3(i)=fHC3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC3CHO = GLYOX + GAOOA';
k(:,i) = 9.60e-18.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC3CHO'; 
fO3(i)=fO3(i)-1; fHC3CHO(i)=fHC3CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fGAOOA(i)=fGAOOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + HC3CHO = HOCH2CHO + GLYOOA';
k(:,i) = 9.60e-18.*0.5;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HC3CHO'; 
fO3(i)=fO3(i)-1; fHC3CHO(i)=fHC3CHO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fGLYOOA(i)=fGLYOOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC3CHO = C41O2';
k(:,i) = 3.87e-11.*0.43;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CHO'; 
fOH(i)=fOH(i)-1; fHC3CHO(i)=fHC3CHO(i)-1; fC41O2(i)=fC41O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC3CHO = HC3CO3';
k(:,i) = 3.87e-11.*0.57;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CHO'; 
fOH(i)=fOH(i)-1; fHC3CHO(i)=fHC3CHO(i)-1; fHC3CO3(i)=fHC3CO3(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBOOH + hv = BUTDBO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUTDBOOH'; 
fBUTDBOOH(i)=fBUTDBOOH(i)-1; fBUTDBO(i)=fBUTDBO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDBOOH = MVKOH + OH';
k(:,i) = 8.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDBOOH'; 
fOH(i)=fOH(i)-1; fBUTDBOOH(i)=fBUTDBOOH(i)-1; fMVKOH(i)=fMVKOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDBNO3 = MVKOH + NO2';
k(:,i) = 3.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDBNO3'; 
fOH(i)=fOH(i)-1; fBUTDBNO3(i)=fBUTDBNO3(i)-1; fMVKOH(i)=fMVKOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BUTDBO = ACR + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'BUTDBO'; 
fBUTDBO(i)=fBUTDBO(i)-1; fACR(i)=fACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDBOH = MVKOH + HO2';
k(:,i) = 4.86e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDBOH'; 
fOH(i)=fOH(i)-1; fBUTDBOH(i)=fBUTDBOH(i)-1; fMVKOH(i)=fMVKOH(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'BUTDCOOH + hv = BUTDCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BUTDCOOH'; 
fBUTDCOOH(i)=fBUTDCOOH(i)-1; fBUTDCO(i)=fBUTDCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BUTDCOOH = HC3CCHO + OH';
k(:,i) = 6.25e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BUTDCOOH'; 
fOH(i)=fOH(i)-1; fBUTDCOOH(i)=fBUTDCOOH(i)-1; fHC3CCHO(i)=fHC3CCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BUTDCO = ACR + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'BUTDCO'; 
fBUTDCO(i)=fBUTDCO(i)-1; fACR(i)=fACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCHO + hv = ACR + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HC3CCHO'; 
fHC3CCHO(i)=fHC3CCHO(i)-1; fACR(i)=fACR(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + HC3CCHO = HC3CCO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'HC3CCHO'; 
fNO3(i)=fNO3(i)-1; fHC3CCHO(i)=fHC3CCHO(i)-1; fHC3CCO3(i)=fHC3CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC3CCHO = HC3CCO3';
k(:,i) = 6.14e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CCHO'; 
fOH(i)=fOH(i)-1; fHC3CCHO(i)=fHC3CCHO(i)-1; fHC3CCO3(i)=fHC3CCO3(i)+1; 

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
Rnames{i} = 'ISOPCNO3 + hv = CISOPCO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPCNO3'; 
fISOPCNO3(i)=fISOPCNO3(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = GAOOB + NOA';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fGAOOB(i)=fGAOOB(i)+1; fNOA(i)=fNOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPCNO3 = HOCH2CHO + NC3OOA';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPCNO3'; 
fO3(i)=fO3(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNC3OOA(i)=fNC3OOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPCNO3 = INCO2';
k(:,i) = 1.12e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPCNO3'; 
fOH(i)=fOH(i)-1; fISOPCNO3(i)=fISOPCNO3(i)-1; fINCO2(i)=fINCO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO + hv = ACETOL + CO + CO + HO2 + NO2';
k(:,i) = J56.*8;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4CHO + hv = HMAC + CO + OH + NO2';
k(:,i) = J56.*8;
Gstr{i,1} = 'NC4CHO'; 
fNC4CHO(i)=fNC4CHO(i)-1; fHMAC(i)=fHMAC(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = ' HMVKBO2 + NO = MVKNO3';
k(:,i) = KRO2NO.*0.043;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'NO'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fNO(i)=fNO(i)-1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + HO2 = HMVKBOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HMVKBO2'; Gstr{i,2} = 'HO2'; 
fHMVKBO2(i)=fHMVKBO2(i)-1; fHO2(i)=fHO2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; 

i=i+1;
Rnames{i} = 'HMVKBO2 + NO = HMVKBO + NO2';
k(:,i) = KRO2NO.*0.957;
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
Rnames{i} = 'CISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'HO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO = CISOPAO + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fCISOPAO(i)=fCISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + NO3 = CISOPAO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'NO3'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fNO3(i)=fNO3(i)-1; fCISOPAO(i)=fCISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = C536O2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fC536O2(i)=fC536O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = C5HPALD1 + HO2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fC5HPALD1(i)=fC5HPALD1(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 = CISOPA';
k(:,i) = 5.22D15.*exp(-9838./T);
Gstr{i,1} = 'CISOPAO2'; 
fCISOPAO2(i)=fCISOPAO2(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + RO2 = CISOPAO';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fCISOPAO(i)=fCISOPAO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + RO2 = HC4ACHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO2 + RO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPAO2'; Gstr{i,2} = 'RO2';
fCISOPAO2(i)=fCISOPAO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + HO2 = ISOPBOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'HO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPBOOH(i)=fISOPBOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBNO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBNO3(i)=fISOPBNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO = ISOPBO + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO(i)=fNO(i)-1; fISOPBO(i)=fISOPBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 + NO3 = ISOPBO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPBO2'; Gstr{i,2} = 'NO3'; 
fISOPBO2(i)=fISOPBO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPBO(i)=fISOPBO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = CISOPA';
k(:,i) = 8.62D15.*exp(-11322./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fCISOPA(i)=fCISOPA(i)+1; 

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
Rnames{i} = 'ISOPBO2 = MVK + HCHO + OH';
k(:,i) = 1.04D11.*exp(-9746./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fMVK(i)=fMVK(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPBO2 = TISOPA';
k(:,i) = 8.55D15.*exp(-10743./T);
Gstr{i,1} = 'ISOPBO2'; 
fISOPBO2(i)=fISOPBO2(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'HO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO = CISOPCO + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + NO3 = CISOPCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'NO3'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = C537O2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fC537O2(i)=fC537O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = C5HPALD2 + HO2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3).*0.5;
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fC5HPALD2(i)=fC5HPALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 = CISOPC';
k(:,i) = 3.06D15.*exp(-10254./T);
Gstr{i,1} = 'CISOPCO2'; 
fCISOPCO2(i)=fCISOPCO2(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + RO2 = CISOPCO';
k(:,i) = 2.40e-12.*0.8;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + RO2 = HC4CCHO';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO2 + RO2 = ISOPAOH';
k(:,i) = 2.40e-12.*0.1;
Gstr{i,1} = 'CISOPCO2'; Gstr{i,2} = 'RO2';
fCISOPCO2(i)=fCISOPCO2(i)-1; fISOPAOH(i)=fISOPAOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + HO2 = ISOPDOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'HO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPDOOH(i)=fISOPDOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDNO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDNO3(i)=fISOPDNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO = ISOPDO + NO2';
k(:,i) = KRO2NO.*0.896;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO(i)=fNO(i)-1; fISOPDO(i)=fISOPDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 + NO3 = ISOPDO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPDO2'; Gstr{i,2} = 'NO3'; 
fISOPDO2(i)=fISOPDO2(i)-1; fNO3(i)=fNO3(i)-1; fISOPDO(i)=fISOPDO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = CISOPC';
k(:,i) = 1.05D16.*exp(-11705./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fCISOPC(i)=fCISOPC(i)+1; 

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
Rnames{i} = 'ISOPDO2 = MACR + HCHO + OH';
k(:,i) = 1.88D11.*exp(-9752./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPDO2 = TISOPC';
k(:,i) = 1.05D16.*exp(-11569./T);
Gstr{i,1} = 'ISOPDO2'; 
fISOPDO2(i)=fISOPDO2(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34OOH + OH = HC4CHO + OH';
k(:,i) = 9.73e-11;
Gstr{i,1} = 'ISOP34OOH'; Gstr{i,2} = 'OH'; 
fISOP34OOH(i)=fISOP34OOH(i)-1; fOH(i)=fOH(i)-1; fHC4CHO(i)=fHC4CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34OOH + hv = ISOP34O + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOP34OOH'; 
fISOP34OOH(i)=fISOP34OOH(i)-1; fISOP34O(i)=fISOP34O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34NO3 + OH = INAO2';
k(:,i) = 8.77e-11;
Gstr{i,1} = 'ISOP34NO3'; Gstr{i,2} = 'OH'; 
fISOP34NO3(i)=fISOP34NO3(i)-1; fOH(i)=fOH(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP34NO3 = HMVKANO3 + CH2OOC';
k(:,i) = 2.52e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP34NO3'; 
fO3(i)=fO3(i)-1; fISOP34NO3(i)=fISOP34NO3(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fCH2OOC(i)=fCH2OOC(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOP34NO3 = NC41OOA + HCHO';
k(:,i) = 2.52e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOP34NO3'; 
fO3(i)=fO3(i)-1; fISOP34NO3(i)=fISOP34NO3(i)-1; fNC41OOA(i)=fNC41OOA(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'ISOP34O = MACR + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'ISOP34O'; 
fISOP34O(i)=fISOP34O(i)-1; fMACR(i)=fMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO + OH = C58O2';
k(:,i) = 1.04e-10.*0.829;
Gstr{i,1} = 'HC4CHO'; Gstr{i,2} = 'OH'; 
fHC4CHO(i)=fHC4CHO(i)-1; fOH(i)=fOH(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO + OH = HC4CO3';
k(:,i) = 1.04e-10.*0.171;
Gstr{i,1} = 'HC4CHO'; Gstr{i,2} = 'OH'; 
fHC4CHO(i)=fHC4CHO(i)-1; fOH(i)=fOH(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CHO + hv = MACR + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'HC4CHO'; 
fHC4CHO(i)=fHC4CHO(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDOH = HCOC5 + HO2';
k(:,i) = 7.38e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPDOH'; 
fOH(i)=fOH(i)-1; fISOPDOH(i)=fISOPDOH(i)-1; fHCOC5(i)=fHCOC5(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + HO2 = NC526OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'HO2'; 
fNC526O2(i)=fNC526O2(i)-1; fHO2(i)=fHO2(i)-1; fNC526OOH(i)=fNC526OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + NO = NC526O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'NO'; 
fNC526O2(i)=fNC526O2(i)-1; fNO(i)=fNO(i)-1; fNC526O(i)=fNC526O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + NO3 = NC526O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'NO3'; 
fNC526O2(i)=fNC526O2(i)-1; fNO3(i)=fNO3(i)-1; fNC526O(i)=fNC526O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O2 + RO2 = NC526O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NC526O2'; Gstr{i,2} = 'RO2';
fNC526O2(i)=fNC526O2(i)-1; fNC526O(i)=fNC526O(i)+1; 

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
Rnames{i} = 'CO2C3CHO + NO3 = CO2C3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'NO3'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + OH = CO2C3CO3';
k(:,i) = 7.15e-11;
Gstr{i,1} = 'CO2C3CHO'; Gstr{i,2} = 'OH'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CHO + hv = CH3COCH2O2 + HCHO';
k(:,i) = J15;
Gstr{i,1} = 'CO2C3CHO'; 
fCO2C3CHO(i)=fCO2C3CHO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOB = C4CO2O2 + OH';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'CO2C3OOB'; 
fCO2C3OOB(i)=fCO2C3OOB(i)-1; fC4CO2O2(i)=fC4CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOB = CO2C3OO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'CO2C3OOB'; 
fCO2C3OOB(i)=fCO2C3OOB(i)-1; fCO2C3OO(i)=fCO2C3OO(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + HO2 = C530OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'HO2'; 
fC530O2(i)=fC530O2(i)-1; fHO2(i)=fHO2(i)-1; fC530OOH(i)=fC530OOH(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO = C530NO3';
k(:,i) = KRO2NO.*0.020;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO'; 
fC530O2(i)=fC530O2(i)-1; fNO(i)=fNO(i)-1; fC530NO3(i)=fC530NO3(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO = C530O + NO2';
k(:,i) = KRO2NO.*0.980;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO'; 
fC530O2(i)=fC530O2(i)-1; fNO(i)=fNO(i)-1; fC530O(i)=fC530O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + NO3 = C530O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'NO3'; 
fC530O2(i)=fC530O2(i)-1; fNO3(i)=fNO3(i)-1; fC530O(i)=fC530O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530O2 + RO2 = C530O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C530O2'; Gstr{i,2} = 'RO2';
fC530O2(i)=fC530O2(i)-1; fC530O(i)=fC530O(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + HO2 = C45O2 + OH + NO2';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'HO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fHO2(i)=fHO2(i)-1; fC45O2(i)=fC45O2(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + HO2 = M3BU3ECO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'HO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fHO2(i)=fHO2(i)-1; fM3BU3ECO3H(i)=fM3BU3ECO3H(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO = C45O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO(i)=fNO(i)-1; fC45O2(i)=fC45O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO2 = M3BU3EPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO2'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO2(i)=fNO2(i)-1; fM3BU3EPAN(i)=fM3BU3EPAN(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + NO3 = C45O2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'NO3'; 
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fNO3(i)=fNO3(i)-1; fC45O2(i)=fC45O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3 + RO2 = C45O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'M3BU3ECO3'; Gstr{i,2} = 'RO2';
fM3BU3ECO3(i)=fM3BU3ECO3(i)-1; fC45O2(i)=fC45O2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + HO2 = C45OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'HO2'; 
fC45O2(i)=fC45O2(i)-1; fHO2(i)=fHO2(i)-1; fC45OOH(i)=fC45OOH(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO = C45NO3';
k(:,i) = KRO2NO.*0.024;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO'; 
fC45O2(i)=fC45O2(i)-1; fNO(i)=fNO(i)-1; fC45NO3(i)=fC45NO3(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO = C45O + NO2';
k(:,i) = KRO2NO.*0.976;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO'; 
fC45O2(i)=fC45O2(i)-1; fNO(i)=fNO(i)-1; fC45O(i)=fC45O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + NO3 = C45O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'NO3'; 
fC45O2(i)=fC45O2(i)-1; fNO3(i)=fNO3(i)-1; fC45O(i)=fC45O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45O2 + RO2 = C45O';
k(:,i) = 1.30e-12;
Gstr{i,1} = 'C45O2'; Gstr{i,2} = 'RO2';
fC45O2(i)=fC45O2(i)-1; fC45O(i)=fC45O(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + HO2 = NC51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'HO2'; 
fNC51O2(i)=fNC51O2(i)-1; fHO2(i)=fHO2(i)-1; fNC51OOH(i)=fNC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + NO = NC51O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'NO'; 
fNC51O2(i)=fNC51O2(i)-1; fNO(i)=fNO(i)-1; fNC51O(i)=fNC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + NO3 = NC51O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'NO3'; 
fNC51O2(i)=fNC51O2(i)-1; fNO3(i)=fNO3(i)-1; fNC51O(i)=fNC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51O2 + RO2 = NC51O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NC51O2'; Gstr{i,2} = 'RO2';
fNC51O2(i)=fNC51O2(i)-1; fNC51O(i)=fNC51O(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOA = C4CO2O2 + OH';
k(:,i) = KDEC.*0.36;
Gstr{i,1} = 'CO2C3OOA'; 
fCO2C3OOA(i)=fCO2C3OOA(i)-1; fC4CO2O2(i)=fC4CO2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOA = CH3COCH2O2 + HO2';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'CO2C3OOA'; 
fCO2C3OOA(i)=fCO2C3OOA(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOA = CH3COCH3';
k(:,i) = KDEC.*0.2;
Gstr{i,1} = 'CO2C3OOA'; 
fCO2C3OOA(i)=fCO2C3OOA(i)-1; fCH3COCH3(i)=fCH3COCH3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OOA = CO2C3OO';
k(:,i) = KDEC.*0.24;
Gstr{i,1} = 'CO2C3OOA'; 
fCO2C3OOA(i)=fCO2C3OOA(i)-1; fCO2C3OO(i)=fCO2C3OO(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + HO2 = C51OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'HO2'; 
fC51O2(i)=fC51O2(i)-1; fHO2(i)=fHO2(i)-1; fC51OOH(i)=fC51OOH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51NO3(i)=fC51NO3(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO = C51O + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO'; 
fC51O2(i)=fC51O2(i)-1; fNO(i)=fNO(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + NO3 = C51O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'NO3'; 
fC51O2(i)=fC51O2(i)-1; fNO3(i)=fNO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51O';
k(:,i) = 8.40e-13.*0.6;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51O(i)=fC51O(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = C51OH';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fC51OH(i)=fC51OH(i)+1; 

i=i+1;
Rnames{i} = 'C51O2 + RO2 = HO1CO24C5';
k(:,i) = 8.40e-13.*0.2;
Gstr{i,1} = 'C51O2'; Gstr{i,2} = 'RO2';
fC51O2(i)=fC51O2(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + HO2 = CH2CHCH2OOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'HO2'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fHO2(i)=fHO2(i)-1; fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO = CH2CHCH2NO3';
k(:,i) = KRO2NO.*0.024;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO = CH2CHCH2O + NO2';
k(:,i) = KRO2NO.*0.976;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO(i)=fNO(i)-1; fCH2CHCH2O(i)=fCH2CHCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + NO3 = CH2CHCH2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'NO3'; 
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fNO3(i)=fNO3(i)-1; fCH2CHCH2O(i)=fCH2CHCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + RO2 = ACR';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fACR(i)=fACR(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + RO2 = ALLYLOH';
k(:,i) = 1.30e-12.*0.2;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fALLYLOH(i)=fALLYLOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O2 + RO2 = CH2CHCH2O';
k(:,i) = 1.30e-12.*0.6;
Gstr{i,1} = 'CH2CHCH2O2'; Gstr{i,2} = 'RO2';
fCH2CHCH2O2(i)=fCH2CHCH2O2(i)-1; fCH2CHCH2O(i)=fCH2CHCH2O(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + HO2 = ISOPAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'HO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPAOOH(i)=fISOPAOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPANO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOPAO2'; Gstr{i,2} = 'NO'; 
fISOPAO2(i)=fISOPAO2(i)-1; fNO(i)=fNO(i)-1; fISOPANO3(i)=fISOPANO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO2 + NO = ISOPAO + NO2';
k(:,i) = KRO2NO.*0.913;
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
Rnames{i} = 'ISOPAO2 = TISOPA';
k(:,i) = 2.86D14.*exp(-9028./T);
Gstr{i,1} = 'ISOPAO2'; 
fISOPAO2(i)=fISOPAO2(i)-1; fTISOPA(i)=fTISOPA(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + HO2 = ISOPCOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'HO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fHO2(i)=fHO2(i)-1; fISOPCOOH(i)=fISOPCOOH(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = CISOPCO + NO2';
k(:,i) = KRO2NO.*0.913;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO = ISOPCNO3';
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO(i)=fNO(i)-1; fISOPCNO3(i)=fISOPCNO3(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + NO3 = CISOPCO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'NO3'; 
fISOPCO2(i)=fISOPCO2(i)-1; fNO3(i)=fNO3(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPCO2 + RO2 = CISOPCO';
k(:,i) = 2.00e-12.*0.8;
Gstr{i,1} = 'ISOPCO2'; Gstr{i,2} = 'RO2';
fISOPCO2(i)=fISOPCO2(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; 

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
Rnames{i} = 'ISOPCO2 = TISOPC';
k(:,i) = 2.13D14.*exp(-9984./T);
Gstr{i,1} = 'ISOPCO2'; 
fISOPCO2(i)=fISOPCO2(i)-1; fTISOPC(i)=fTISOPC(i)+1; 

i=i+1;
Rnames{i} = 'CH3COCH2O = CH3CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'CH3COCH2O'; 
fCH3COCH2O(i)=fCH3COCH2O(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

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
Rnames{i} = 'BIACETOOH + hv = BIACETO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO(i)=fBIACETO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETOOH + hv = BIACETO + OH';
k(:,i) = J35;
Gstr{i,1} = 'BIACETOOH'; 
fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO(i)=fBIACETO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = BIACETO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fBIACETO2(i)=fBIACETO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + BIACETOOH = CO23C3CHO + OH';
k(:,i) = 5.99e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'BIACETOOH'; 
fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BIACETO = CH3CO3 + HCHO + CO';
k(:,i) = KDEC;
Gstr{i,1} = 'BIACETO'; 
fBIACETO(i)=fBIACETO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; 

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
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + CO + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C3CHO + hv = CH3CO3 + HCOCO';
k(:,i) = J35;
Gstr{i,1} = 'CO23C3CHO'; 
fCO23C3CHO(i)=fCO23C3CHO(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCO(i)=fHCOCO(i)+1; 

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
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 7.00D11.*exp(-3160./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + CO + HO2';
k(:,i) = 5.00e-12.*.21.*M;
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = CO + OH';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*(1-exp(-550./T));
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HCOCO = HCOCO3';
k(:,i) = 5.00e-12.*.21.*M.*3.2.*exp(-550./T);
Gstr{i,1} = 'HCOCO'; 
fHCOCO(i)=fHCOCO(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; 

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
Rnames{i} = 'OH + HMML = CH3CO3 + HCOOH';
k(:,i) = 4.33e-12.*0.3;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMML'; 
fOH(i)=fOH(i)-1; fHMML(i)=fHMML(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOOH(i)=fHCOOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HMML = MGLYOX + OH';
k(:,i) = 4.33e-12.*0.7;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HMML'; 
fOH(i)=fOH(i)-1; fHMML(i)=fHMML(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + MAE = CH3COCH2O2';
k(:,i) = 8.83e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'MAE'; 
fOH(i)=fOH(i)-1; fMAE(i)=fMAE(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CHO'; Gstr{i,2} = 'OH'; 
fCONM2CHO(i)=fCONM2CHO(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CHO + hv = MGLYOX + NO2 + CO + HO2';
k(:,i) = J56.*10;
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
Rnames{i} = 'BZFUONE + NO3 = NBZFUO2';
k(:,i) = 3.00e-13;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'NO3'; 
fBZFUONE(i)=fBZFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNBZFUO2(i)=fNBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONE + O3 = BZFUONOOA';
k(:,i) = 2.20e-19;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'O3'; 
fBZFUONE(i)=fBZFUONE(i)-1; fO3(i)=fO3(i)-1; fBZFUONOOA(i)=fBZFUONOOA(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONE + OH = BZFUO2';
k(:,i) = 4.45e-11;
Gstr{i,1} = 'BZFUONE'; Gstr{i,2} = 'OH'; 
fBZFUONE(i)=fBZFUONE(i)-1; fOH(i)=fOH(i)-1; fBZFUO2(i)=fBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDALCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDALCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDALCO3H(i)=fMALDALCO3H(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + HO2 = MALDIALCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'HO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fHO2(i)=fHO2(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO = MALDIALCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO(i)=fNO(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO2 = MALDIALPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO2'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO2(i)=fNO2(i)-1; fMALDIALPAN(i)=fMALDIALPAN(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + NO3 = MALDIALCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'NO3'; 
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + RO2 = MALDALCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'RO2';
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO3 + RO2 = MALDIALCO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MALDIALCO3'; Gstr{i,2} = 'RO2';
fMALDIALCO3(i)=fMALDIALCO3(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + OH = C5DIALO2';
k(:,i) = 4.06e-11;
Gstr{i,1} = 'BZEMUCCO2H'; Gstr{i,2} = 'OH'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fOH(i)=fOH(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + hv = C5DIALO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'BZEMUCCO2H'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO2H + hv = C5DIALO2 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'BZEMUCCO2H'; 
fBZEMUCCO2H(i)=fBZEMUCCO2H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + OH = BZEMUCCO3';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'BZEMUCCO3H'; Gstr{i,2} = 'OH'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J18;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO3H + hv = C5DIALO2 + OH';
k(:,i) = J19;
Gstr{i,1} = 'BZEMUCCO3H'; 
fBZEMUCCO3H(i)=fBZEMUCCO3H(i)-1; fC5DIALO2(i)=fC5DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCPAN + OH = MALDIAL + CO + NO2';
k(:,i) = 4.05e-11;
Gstr{i,1} = 'BZEMUCPAN'; Gstr{i,2} = 'OH'; 
fBZEMUCPAN(i)=fBZEMUCPAN(i)-1; fOH(i)=fOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCPAN = BZEMUCCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'BZEMUCPAN'; 
fBZEMUCPAN(i)=fBZEMUCPAN(i)-1; fBZEMUCCO3(i)=fBZEMUCCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = C3DIALO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = EPXDLCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXDLCO2H(i)=fEPXDLCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + HO2 = EPXDLCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'HO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fHO2(i)=fHO2(i)-1; fEPXDLCO3H(i)=fEPXDLCO3H(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO = C3DIALO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO(i)=fNO(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO2 = EPXDLPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO2'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO2(i)=fNO2(i)-1; fEPXDLPAN(i)=fEPXDLPAN(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + NO3 = C3DIALO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'NO3'; 
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fNO3(i)=fNO3(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + RO2 = C3DIALO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'RO2';
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3 + RO2 = EPXDLCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'EPXDLCO3'; Gstr{i,2} = 'RO2';
fEPXDLCO3(i)=fEPXDLCO3(i)-1; fEPXDLCO2H(i)=fEPXDLCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + HO2 = C3DIALOOH';
k(:,i) = KRO2HO2.*0.520;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'HO2'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC3DIALOOH(i)=fC3DIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + NO = C3DIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'NO'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fNO(i)=fNO(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + NO3 = C3DIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'NO3'; 
fC3DIALO2(i)=fC3DIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C32OH13CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C33CO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO2 + RO2 = C3DIALO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C3DIALO2'; Gstr{i,2} = 'RO2';
fC3DIALO2(i)=fC3DIALO2(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; 

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
Rnames{i} = 'BZEMUCOOH + OH = BZEMUCCO + OH';
k(:,i) = 1.31e-10;
Gstr{i,1} = 'BZEMUCOOH'; Gstr{i,2} = 'OH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOOH + hv = BZEMUCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZEMUCOOH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOOH + hv = BZEMUCO + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCOOH'; 
fBZEMUCOOH(i)=fBZEMUCOOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCNO3 + OH = BZEMUCCO + NO2';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'BZEMUCNO3'; Gstr{i,2} = 'OH'; 
fBZEMUCNO3(i)=fBZEMUCNO3(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCNO3 + hv = EPXC4DIAL + NO2 + GLYOX + HO2';
k(:,i) = J17;
Gstr{i,1} = 'BZEMUCNO3'; 
fBZEMUCNO3(i)=fBZEMUCNO3(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fNO2(i)=fNO2(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO = C3DIALO2 + C32OH13CO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZEMUCO'; 
fBZEMUCO(i)=fBZEMUCO(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fC32OH13CO(i)=fC32OH13CO(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCO = EPXC4DIAL + GLYOX + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZEMUCO'; 
fBZEMUCO(i)=fBZEMUCO(i)-1; fEPXC4DIAL(i)=fEPXC4DIAL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + OH = EPXDLCO3 + GLYOX';
k(:,i) = 9.20e-11;
Gstr{i,1} = 'BZEMUCCO'; Gstr{i,2} = 'OH'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + hv = HCOCOHCO3 + C3DIALO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCCO'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCCO + hv = HCOCOHCO3 + C3DIALO2';
k(:,i) = J22;
Gstr{i,1} = 'BZEMUCCO'; 
fBZEMUCCO(i)=fBZEMUCCO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOH + OH = BZEMUCCO + HO2';
k(:,i) = 8.23e-11;
Gstr{i,1} = 'BZEMUCOH'; Gstr{i,2} = 'OH'; 
fBZEMUCOH(i)=fBZEMUCOH(i)-1; fOH(i)=fOH(i)-1; fBZEMUCCO(i)=fBZEMUCCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZEMUCOH + hv = BZEMUCO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'BZEMUCOH'; 
fBZEMUCOH(i)=fBZEMUCOH(i)-1; fBZEMUCO(i)=fBZEMUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + OH = C5DIALCO + OH';
k(:,i) = 7.52e-11;
Gstr{i,1} = 'C5DIALOOH'; Gstr{i,2} = 'OH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fOH(i)=fOH(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = C5DIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fC5DIALO(i)=fC5DIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = MALDIAL + CO + HO2 + OH';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOOH + hv = MALDIAL + CO + HO2 + OH';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALOOH'; 
fC5DIALOOH(i)=fC5DIALOOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALO = MALDIAL + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C5DIALO'; 
fC5DIALO(i)=fC5DIALO(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + OH = MALDIALCO3 + CO';
k(:,i) = 4.90e-11;
Gstr{i,1} = 'C5DIALCO'; Gstr{i,2} = 'OH'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALCO + hv = MALDIALCO3 + CO + HO2';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALCO'; 
fC5DIALCO(i)=fC5DIALCO(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + OH = C5DIALCO + HO2';
k(:,i) = 7.75e-11;
Gstr{i,1} = 'C5DIALOH'; Gstr{i,2} = 'OH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fOH(i)=fOH(i)-1; fC5DIALCO(i)=fC5DIALCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + hv = MALDIAL + CO + HO2 + HO2';
k(:,i) = J18;
Gstr{i,1} = 'C5DIALOH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C5DIALOH + hv = MALDIAL + CO + HO2 + HO2';
k(:,i) = J19;
Gstr{i,1} = 'C5DIALOH'; 
fC5DIALOH(i)=fC5DIALOH(i)-1; fMALDIAL(i)=fMALDIAL(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + HO2 = MALDIALOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'HO2'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fHO2(i)=fHO2(i)-1; fMALDIALOOH(i)=fMALDIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + NO = MALDIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'NO'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fNO(i)=fNO(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + NO3 = MALDIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'NO3'; 
fMALDIALO2(i)=fMALDIALO2(i)-1; fNO3(i)=fNO3(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = HOCOC4DIAL';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = HOHOC4DIAL';
k(:,i) = 8.80e-13.*0.20;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fHOHOC4DIAL(i)=fHOHOC4DIAL(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO2 + RO2 = MALDIALO';
k(:,i) = 8.80e-13.*0.60;
Gstr{i,1} = 'MALDIALO2'; Gstr{i,2} = 'RO2';
fMALDIALO2(i)=fMALDIALO2(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; 

i=i+1;
Rnames{i} = 'HOC6H4NO2 + NO3 = NPHEN1O + HNO3';
k(:,i) = 9.00e-14;
Gstr{i,1} = 'HOC6H4NO2'; Gstr{i,2} = 'NO3'; 
fHOC6H4NO2(i)=fHOC6H4NO2(i)-1; fNO3(i)=fNO3(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'HOC6H4NO2 + OH = NPHEN1O';
k(:,i) = 9.00e-13;
Gstr{i,1} = 'HOC6H4NO2'; Gstr{i,2} = 'OH'; 
fHOC6H4NO2(i)=fHOC6H4NO2(i)-1; fOH(i)=fOH(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + HO2 = C6H5OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'HO2'; 
fC6H5O2(i)=fC6H5O2(i)-1; fHO2(i)=fHO2(i)-1; fC6H5OOH(i)=fC6H5OOH(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + NO = C6H5O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'NO'; 
fC6H5O2(i)=fC6H5O2(i)-1; fNO(i)=fNO(i)-1; fC6H5O(i)=fC6H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + NO3 = C6H5O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'NO3'; 
fC6H5O2(i)=fC6H5O2(i)-1; fNO3(i)=fNO3(i)-1; fC6H5O(i)=fC6H5O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5O2 + RO2 = C6H5O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'C6H5O2'; Gstr{i,2} = 'RO2';
fC6H5O2(i)=fC6H5O2(i)-1; fC6H5O(i)=fC6H5O(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + OH = NPHENO2';
k(:,i) = 1.07e-10;
Gstr{i,1} = 'NPHENOOH'; Gstr{i,2} = 'OH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fNPHENO2(i)=fNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + hv = MALDALCO2H + GLYOX + OH + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NPHENOOH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOOH + hv = NPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPHENOOH'; 
fNPHENOOH(i)=fNPHENOOH(i)-1; fNPHENO(i)=fNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHENO = MALDALCO2H + GLYOX + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NPHENO'; 
fNPHENO(i)=fNPHENO(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOH + OH = NPHENO';
k(:,i) = 1.04e-10;
Gstr{i,1} = 'NPHENOH'; Gstr{i,2} = 'OH'; 
fNPHENOH(i)=fNPHENOH(i)-1; fOH(i)=fOH(i)-1; fNPHENO(i)=fNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHENOH + hv = MALDALCO2H + GLYOX + HO2 + NO2';
k(:,i) = J54;
Gstr{i,1} = 'NPHENOH'; 
fNPHENOH(i)=fNPHENOH(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O + NO2 = NCATECHOL';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'CATEC1O'; Gstr{i,2} = 'NO2'; 
fCATEC1O(i)=fCATEC1O(i)-1; fNO2(i)=fNO2(i)-1; fNCATECHOL(i)=fNCATECHOL(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O + O3 = CATEC1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'CATEC1O'; Gstr{i,2} = 'O3'; 
fCATEC1O(i)=fCATEC1O(i)-1; fO3(i)=fO3(i)-1; fCATEC1O2(i)=fCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'CATECOOA = MALDALCO2H + HCOCO2H + HO2 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'CATECOOA'; 
fCATECOOA(i)=fCATECOOA(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENOOH + OH = PHENO2';
k(:,i) = 1.16e-10;
Gstr{i,1} = 'PHENOOH'; Gstr{i,2} = 'OH'; 
fPHENOOH(i)=fPHENOOH(i)-1; fOH(i)=fOH(i)-1; fPHENO2(i)=fPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOOH + hv = PHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PHENOOH'; 
fPHENOOH(i)=fPHENOOH(i)-1; fPHENO(i)=fPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PHENO = MALDALCO2H + GLYOX + HO2';
k(:,i) = KDEC.*0.71;
Gstr{i,1} = 'PHENO'; 
fPHENO(i)=fPHENO(i)-1; fMALDALCO2H(i)=fMALDALCO2H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENO = PBZQONE + HO2';
k(:,i) = KDEC.*0.29;
Gstr{i,1} = 'PHENO'; 
fPHENO(i)=fPHENO(i)-1; fPBZQONE(i)=fPBZQONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PHENOH + OH = PHENO';
k(:,i) = 1.13e-10;
Gstr{i,1} = 'PHENOH'; Gstr{i,2} = 'OH'; 
fPHENOH(i)=fPHENOH(i)-1; fOH(i)=fOH(i)-1; fPHENO(i)=fPHENO(i)+1; 

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
Rnames{i} = 'HNMVKO2 + HO2 = HNMVKOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'HO2'; 
fHNMVKO2(i)=fHNMVKO2(i)-1; fHO2(i)=fHO2(i)-1; fHNMVKOOH(i)=fHNMVKOOH(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO2 + NO = HNMVKO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'NO'; 
fHNMVKO2(i)=fHNMVKO2(i)-1; fNO(i)=fNO(i)-1; fHNMVKO(i)=fHNMVKO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO2 + NO3 = HNMVKO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'NO3'; 
fHNMVKO2(i)=fHNMVKO2(i)-1; fNO3(i)=fNO3(i)-1; fHNMVKO(i)=fHNMVKO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO2 + RO2 = HNBIACET';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'RO2';
fHNMVKO2(i)=fHNMVKO2(i)-1; fHNBIACET(i)=fHNBIACET(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO2 + RO2 = HNMVKO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'RO2';
fHNMVKO2(i)=fHNMVKO2(i)-1; fHNMVKO(i)=fHNMVKO(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO2 + RO2 = HNMVKOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'HNMVKO2'; Gstr{i,2} = 'RO2';
fHNMVKO2(i)=fHNMVKO2(i)-1; fHNMVKOH(i)=fHNMVKOH(i)+1; 

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
Rnames{i} = 'NO3CH2CHO + hv = NO2 + HCOCH2O';
k(:,i) = J56.*4.3;
Gstr{i,1} = 'NO3CH2CHO'; 
fNO3CH2CHO(i)=fNO3CH2CHO(i)-1; fNO2(i)=fNO2(i)+1; fHCOCH2O(i)=fHCOCH2O(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + HO2 = NC3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'HO2'; 
fNC3CO3(i)=fNC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC3CO2H(i)=fNC3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + HO2 = NC3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'HO2'; 
fNC3CO3(i)=fNC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fNC3CO3H(i)=fNC3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + HO2 = NO3CH2CHO + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'HO2'; 
fNC3CO3(i)=fNC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + NO = NO3CH2CHO + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'NO'; 
fNC3CO3(i)=fNC3CO3(i)-1; fNO(i)=fNO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + NO2 = C4PAN9';
k(:,i) = KFPAN;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'NO2'; 
fNC3CO3(i)=fNC3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN9(i)=fC4PAN9(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + NO3 = NO3CH2CHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'NO3'; 
fNC3CO3(i)=fNC3CO3(i)-1; fNO3(i)=fNO3(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + RO2 = NC3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'RO2';
fNC3CO3(i)=fNC3CO3(i)-1; fNC3CO2H(i)=fNC3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3 + RO2 = NO3CH2CHO + HO2 + CO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'NC3CO3'; Gstr{i,2} = 'RO2';
fNC3CO3(i)=fNC3CO3(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NAOOA = CH3NO3';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'NAOOA'; 
fNAOOA(i)=fNAOOA(i)-1; fCH3NO3(i)=fCH3NO3(i)+1; 

i=i+1;
Rnames{i} = 'NAOOA = HO2 + NO2 + HCHO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'NAOOA'; 
fNAOOA(i)=fNAOOA(i)-1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'NAOOA = NAOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'NAOOA'; 
fNAOOA(i)=fNAOOA(i)-1; fNAOO(i)=fNAOO(i)+1; 

i=i+1;
Rnames{i} = 'NAOOA = OH + NO2 + CO + HCHO';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'NAOOA'; 
fNAOOA(i)=fNAOOA(i)-1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + HO2 = C42OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'HO2'; 
fC42O2(i)=fC42O2(i)-1; fHO2(i)=fHO2(i)-1; fC42OOH(i)=fC42OOH(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + NO = C42O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'NO'; 
fC42O2(i)=fC42O2(i)-1; fNO(i)=fNO(i)-1; fC42O(i)=fC42O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + NO3 = C42O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'NO3'; 
fC42O2(i)=fC42O2(i)-1; fNO3(i)=fNO3(i)-1; fC42O(i)=fC42O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + RO2 = C42O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'RO2';
fC42O2(i)=fC42O2(i)-1; fC42O(i)=fC42O(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + RO2 = C42OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'RO2';
fC42O2(i)=fC42O2(i)-1; fC42OH(i)=fC42OH(i)+1; 

i=i+1;
Rnames{i} = 'C42O2 + RO2 = H3NCO2CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C42O2'; Gstr{i,2} = 'RO2';
fC42O2(i)=fC42O2(i)-1; fH3NCO2CHO(i)=fH3NCO2CHO(i)+1; 

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
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fACO3(i)=fACO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACO3H = HOCH2CHO + CO + OH';
k(:,i) = 6.58e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACO3H'; 
fOH(i)=fOH(i)-1; fACO3H(i)=fACO3H(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'ACRPAN = ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'ACRPAN'; 
fACRPAN(i)=fACRPAN(i)-1; fACO3(i)=fACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ACRPAN = HOCH2CHO + CO + NO3';
k(:,i) = 1.47e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ACRPAN'; 
fOH(i)=fOH(i)-1; fACRPAN(i)=fACRPAN(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

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
Rnames{i} = 'HC3CO3 + HO2 = HC3CO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'HO2'; 
fHC3CO3(i)=fHC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC3CO2H(i)=fHC3CO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + HO2 = HC3CO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'HO2'; 
fHC3CO3(i)=fHC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC3CO3H(i)=fHC3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + HO2 = HO2 + CO + HOCH2CHO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'HO2'; 
fHC3CO3(i)=fHC3CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + NO = HO2 + CO + HOCH2CHO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'NO'; 
fHC3CO3(i)=fHC3CO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + NO2 = C4PAN7';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'NO2'; 
fHC3CO3(i)=fHC3CO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN7(i)=fC4PAN7(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + NO3 = HO2 + CO + HOCH2CHO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'NO3'; 
fHC3CO3(i)=fHC3CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + RO2 = HC3CO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'RO2';
fHC3CO3(i)=fHC3CO3(i)-1; fHC3CO2H(i)=fHC3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3 + RO2 = HO2 + CO + HOCH2CHO';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'HC3CO3'; Gstr{i,2} = 'RO2';
fHC3CO3(i)=fHC3CO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'GAOOA = CH3OH';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GAOOA'; 
fGAOOA(i)=fGAOOA(i)-1; fCH3OH(i)=fCH3OH(i)+1; 

i=i+1;
Rnames{i} = 'GAOOA = GAOO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'GAOOA'; 
fGAOOA(i)=fGAOOA(i)-1; fGAOO(i)=fGAOO(i)+1; 

i=i+1;
Rnames{i} = 'GAOOA = HO2 + HO2 + HCHO';
k(:,i) = KDEC.*0.125;
Gstr{i,1} = 'GAOOA'; 
fGAOOA(i)=fGAOOA(i)-1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'GAOOA = OH + HO2 + CO + HCHO';
k(:,i) = KDEC.*0.57;
Gstr{i,1} = 'GAOOA'; 
fGAOOA(i)=fGAOOA(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + HO2 = C41OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'HO2'; 
fC41O2(i)=fC41O2(i)-1; fHO2(i)=fHO2(i)-1; fC41OOH(i)=fC41OOH(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + NO = C41NO3';
k(:,i) = KRO2NO.*0.021;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'NO'; 
fC41O2(i)=fC41O2(i)-1; fNO(i)=fNO(i)-1; fC41NO3(i)=fC41NO3(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + NO = C41O + NO2';
k(:,i) = KRO2NO.*0.979;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'NO'; 
fC41O2(i)=fC41O2(i)-1; fNO(i)=fNO(i)-1; fC41O(i)=fC41O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + NO3 = C41O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'NO3'; 
fC41O2(i)=fC41O2(i)-1; fNO3(i)=fNO3(i)-1; fC41O(i)=fC41O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + RO2 = C41O';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'RO2';
fC41O2(i)=fC41O2(i)-1; fC41O(i)=fC41O(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + RO2 = C41OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'RO2';
fC41O2(i)=fC41O2(i)-1; fC41OH(i)=fC41OH(i)+1; 

i=i+1;
Rnames{i} = 'C41O2 + RO2 = H13CO2CHO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'C41O2'; Gstr{i,2} = 'RO2';
fC41O2(i)=fC41O2(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; 

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
Rnames{i} = 'HC3CCO3 + HO2 = ACR + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'HO2'; 
fHC3CCO3(i)=fHC3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCO3 + HO2 = HC3CCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'HO2'; 
fHC3CCO3(i)=fHC3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fHC3CCO3H(i)=fHC3CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCO3 + NO = ACR + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'NO'; 
fHC3CCO3(i)=fHC3CCO3(i)-1; fNO(i)=fNO(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCO3 + NO2 = C4PAN8';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'NO2'; 
fHC3CCO3(i)=fHC3CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4PAN8(i)=fC4PAN8(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCO3 + NO3 = ACR + HO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'NO3'; 
fHC3CCO3(i)=fHC3CCO3(i)-1; fNO3(i)=fNO3(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC3CCO3 + RO2 = ACR + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HC3CCO3'; Gstr{i,2} = 'RO2';
fHC3CCO3(i)=fHC3CCO3(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO = C527O2';
k(:,i) = KDEC.*0.30;
Gstr{i,1} = 'CISOPCO'; 
fCISOPCO(i)=fCISOPCO(i)-1; fC527O2(i)=fC527O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO = HC4ACHO + HO2';
k(:,i) = KDEC.*0.52;
Gstr{i,1} = 'CISOPCO'; 
fCISOPCO(i)=fCISOPCO(i)-1; fHC4ACHO(i)=fHC4ACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPCO = M3F + HO2';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'CISOPCO'; 
fCISOPCO(i)=fCISOPCO(i)-1; fM3F(i)=fM3F(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'GAOOB = GAOO';
k(:,i) = KDEC.*0.11;
Gstr{i,1} = 'GAOOB'; 
fGAOOB(i)=fGAOOB(i)-1; fGAOO(i)=fGAOO(i)+1; 

i=i+1;
Rnames{i} = 'GAOOB = OH + HO2 + GLYOX';
k(:,i) = KDEC.*0.89;
Gstr{i,1} = 'GAOOB'; 
fGAOOB(i)=fGAOOB(i)-1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

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
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INCO2'; Gstr{i,2} = 'NO'; 
fINCO2(i)=fINCO2(i)-1; fNO(i)=fNO(i)-1; fINCNO3(i)=fINCNO3(i)+1; 

i=i+1;
Rnames{i} = 'INCO2 + NO = INCO + NO2';
k(:,i) = KRO2NO.*0.896;
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
Rnames{i} = 'HMAC + OH = C3MDIALOH + HO2';
k(:,i) = 5.56e-11;
Gstr{i,1} = 'HMAC'; Gstr{i,2} = 'OH'; 
fHMAC(i)=fHMAC(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMAC + hv = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HMAC'; 
fHMAC(i)=fHMAC(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'HMVKANO3 + hv = HMVKAO + NO2';
k(:,i) = J56.*0.91;
Gstr{i,1} = 'HMVKANO3'; 
fHMVKANO3(i)=fHMVKANO3(i)-1; fHMVKAO(i)=fHMVKAO(i)+1; fNO2(i)=fNO2(i)+1; 

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
k(:,i) = J56.*1.6;
Gstr{i,1} = 'MVKNO3'; 
fMVKNO3(i)=fMVKNO3(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'CISOPAO = C526O2';
k(:,i) = KDEC.*0.19;
Gstr{i,1} = 'CISOPAO'; 
fCISOPAO(i)=fCISOPAO(i)-1; fC526O2(i)=fC526O2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO = HC4CCHO + HO2';
k(:,i) = KDEC.*0.63;
Gstr{i,1} = 'CISOPAO'; 
fCISOPAO(i)=fCISOPAO(i)-1; fHC4CCHO(i)=fHC4CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CISOPAO = M3F + HO2';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'CISOPAO'; 
fCISOPAO(i)=fCISOPAO(i)-1; fM3F(i)=fM3F(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPANO3 + hv = ISOPAO + NO2';
k(:,i) = J53;
Gstr{i,1} = 'ISOPANO3'; 
fISOPANO3(i)=fISOPANO3(i)-1; fISOPAO(i)=fISOPAO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACETOL + NC2OOA';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACETOL(i)=fACETOL(i)+1; fNC2OOA(i)=fNC2OOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPANO3 = ACLOOA + NO3CH2CHO';
k(:,i) = 4.10e-17.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPANO3'; 
fO3(i)=fO3(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fACLOOA(i)=fACLOOA(i)+1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPANO3 = INAO2';
k(:,i) = 1.12e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPANO3'; 
fOH(i)=fOH(i)-1; fISOPANO3(i)=fISOPANO3(i)-1; fINAO2(i)=fINAO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + HO2 = C536OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'HO2'; 
fC536O2(i)=fC536O2(i)-1; fHO2(i)=fHO2(i)-1; fC536OOH(i)=fC536OOH(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + NO = C536O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'NO'; 
fC536O2(i)=fC536O2(i)-1; fNO(i)=fNO(i)-1; fC536O(i)=fC536O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + NO3 = C536O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'NO3'; 
fC536O2(i)=fC536O2(i)-1; fNO3(i)=fNO3(i)-1; fC536O(i)=fC536O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 + RO2 = C536O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C536O2'; Gstr{i,2} = 'RO2';
fC536O2(i)=fC536O2(i)-1; fC536O(i)=fC536O(i)+1; 

i=i+1;
Rnames{i} = 'C536O2 = DHPMEK + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C536O2'; 
fC536O2(i)=fC536O2(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + NO3 = C5PACALD1 + OH + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'NO3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fNO3(i)=fNO3(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fOH(i)=fOH(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + O3 = MGLYOOA + HCOCH2OOH';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'O3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + O3 = MGLYOX + PGAOOB';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'O3'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fPGAOOB(i)=fPGAOOB(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C4MALOHOOH + OH';
k(:,i) = 5.20e-11.*0.359;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C4MDIAL + OH';
k(:,i) = 5.20e-11.*0.256;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + OH = C5PACALD1 + OH';
k(:,i) = 5.20e-11.*0.385;
Gstr{i,1} = 'C5HPALD1'; Gstr{i,2} = 'OH'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fOH(i)=fOH(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + hv = CH3CO3 + HOCH2CHO + CO + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD1'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD1 + hv = HVMK + CO + OH + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD1'; 
fC5HPALD1(i)=fC5HPALD1(i)-1; fHVMK(i)=fHVMK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'OH + HC4ACHO = C4MDIAL + HO2';
k(:,i) = 6.42e-11.*0.051;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C58AO2';
k(:,i) = 6.42e-11.*0.247;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58AO2(i)=fC58AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = C58O2';
k(:,i) = 6.42e-11.*0.452;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACHO'; 
fOH(i)=fOH(i)-1; fHC4ACHO(i)=fHC4ACHO(i)-1; fC58O2(i)=fC58O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4ACHO = HC4ACO3';
k(:,i) = 6.42e-11.*0.250;
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
k(:,i) = 5.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fMACRNOOA(i)=fMACRNOOA(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPBNO3 = MACRNO3 + CH2OOB';
k(:,i) = 5.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPBNO3'; 
fO3(i)=fO3(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fMACRNO3(i)=fMACRNO3(i)+1; fCH2OOB(i)=fCH2OOB(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB1O2';
k(:,i) = 2.17e-11.*0.84;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'ISOPBNO3'; 
fOH(i)=fOH(i)-1; fISOPBNO3(i)=fISOPBNO3(i)-1; fINB1O2(i)=fINB1O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPBNO3 = INB2O2';
k(:,i) = 2.17e-11.*0.16;
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
Rnames{i} = 'ISOPCOOH + hv = CISOPCO + OH';
k(:,i) = J41;
Gstr{i,1} = 'ISOPCOOH'; 
fISOPCOOH(i)=fISOPCOOH(i)-1; fCISOPCO(i)=fCISOPCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'C537O2 + HO2 = C537OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'HO2'; 
fC537O2(i)=fC537O2(i)-1; fHO2(i)=fHO2(i)-1; fC537OOH(i)=fC537OOH(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + NO = C537O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'NO'; 
fC537O2(i)=fC537O2(i)-1; fNO(i)=fNO(i)-1; fC537O(i)=fC537O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + NO3 = C537O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'NO3'; 
fC537O2(i)=fC537O2(i)-1; fNO3(i)=fNO3(i)-1; fC537O(i)=fC537O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 + RO2 = C537O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C537O2'; Gstr{i,2} = 'RO2';
fC537O2(i)=fC537O2(i)-1; fC537O(i)=fC537O(i)+1; 

i=i+1;
Rnames{i} = 'C537O2 = DHPMPAL + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C537O2'; 
fC537O2(i)=fC537O2(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + NO3 = C5PACALD2 + OH + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'NO3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fNO3(i)=fNO3(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fOH(i)=fOH(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + O3 = HYPERACET + GLYOOC';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'O3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fO3(i)=fO3(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fGLYOOC(i)=fGLYOOC(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + O3 = PACLOOA + GLYOX';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'O3'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fO3(i)=fO3(i)-1; fPACLOOA(i)=fPACLOOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = C4MDIAL + OH';
k(:,i) = 5.20e-11.*0.256;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = C5PACALD2 + OH';
k(:,i) = 5.20e-11.*0.385;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + OH = HPC52O2';
k(:,i) = 5.20e-11.*0.359;
Gstr{i,1} = 'C5HPALD2'; Gstr{i,2} = 'OH'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fOH(i)=fOH(i)-1; fHPC52O2(i)=fHPC52O2(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + hv = ACETOL + CO + CO + HO2 + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD2'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fACETOL(i)=fACETOL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5HPALD2 + hv = HMAC + CO + OH + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'C5HPALD2'; 
fC5HPALD2(i)=fC5HPALD2(i)-1; fHMAC(i)=fHMAC(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'OH + HC4CCHO = C4MDIAL + HO2';
k(:,i) = 6.42e-11.*0.051;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57AO2';
k(:,i) = 6.42e-11.*0.247;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57AO2(i)=fC57AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = C57O2';
k(:,i) = 6.42e-11.*0.452;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCHO'; 
fOH(i)=fOH(i)-1; fHC4CCHO(i)=fHC4CCHO(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC4CCHO = HC4CCO3';
k(:,i) = 6.42e-11.*0.250;
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
k(:,i) = 7.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fCH2OOC(i)=fCH2OOC(i)+1; fMVKNO3(i)=fMVKNO3(i)+1; 

i=i+1;
Rnames{i} = 'O3 + ISOPDNO3 = HCHO + NC4OOA';
k(:,i) = 7.00e-19.*0.50;
Gstr{i,1} = 'O3'; Gstr{i,2} = 'ISOPDNO3'; 
fO3(i)=fO3(i)-1; fISOPDNO3(i)=fISOPDNO3(i)-1; fHCHO(i)=fHCHO(i)+1; fNC4OOA(i)=fNC4OOA(i)+1; 

i=i+1;
Rnames{i} = 'OH + ISOPDNO3 = INDO2';
k(:,i) = 4.15e-11;
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
Rnames{i} = 'INAO2 + HO2 = INAOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'HO2'; 
fINAO2(i)=fINAO2(i)-1; fHO2(i)=fHO2(i)-1; fINAOOH(i)=fINAOOH(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INANO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INAO2'; Gstr{i,2} = 'NO'; 
fINAO2(i)=fINAO2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INAO2 + NO = INAO + NO2';
k(:,i) = KRO2NO.*0.896;
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
Rnames{i} = 'NC41OOA = CO23C4NO3 + HO2 + OH';
k(:,i) = KDEC.*0.82;
Gstr{i,1} = 'NC41OOA'; 
fNC41OOA(i)=fNC41OOA(i)-1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC41OOA = NC41OO';
k(:,i) = KDEC.*0.18;
Gstr{i,1} = 'NC41OOA'; 
fNC41OOA(i)=fNC41OOA(i)-1; fNC41OO(i)=fNC41OO(i)+1; 

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
Rnames{i} = 'HC4CO3 + HO2 = HC4CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'HO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fHC4CO3H(i)=fHC4CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + HO2 = MACR + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'HO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fHO2(i)=fHO2(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO = MACR + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO(i)=fNO(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO2 = HC4PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO2'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO2(i)=fNO2(i)-1; fHC4PAN(i)=fHC4PAN(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + NO3 = MACR + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'NO3'; 
fHC4CO3(i)=fHC4CO3(i)-1; fNO3(i)=fNO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3 + RO2 = MACR + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HC4CO3'; Gstr{i,2} = 'RO2';
fHC4CO3(i)=fHC4CO3(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH + OH = NC526O2';
k(:,i) = 2.22e-11;
Gstr{i,1} = 'NC526OOH'; Gstr{i,2} = 'OH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fOH(i)=fOH(i)-1; fNC526O2(i)=fNC526O2(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH + hv = NC526O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC526OOH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fNC526O(i)=fNC526O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC526OOH + hv = NC526O + OH';
k(:,i) = J15;
Gstr{i,1} = 'NC526OOH'; 
fNC526OOH(i)=fNC526OOH(i)-1; fNC526O(i)=fNC526O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC526O = CO2C3CHO + HCHO + NO2';
k(:,i) = KDEC.*0.27;
Gstr{i,1} = 'NC526O'; 
fNC526O(i)=fNC526O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC526O = NOA + HCOCH2O2';
k(:,i) = KDEC.*0.73;
Gstr{i,1} = 'NC526O'; 
fNC526O(i)=fNC526O(i)-1; fNOA(i)=fNOA(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CH3COCH2O2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + HO2 = CO2C3CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'HO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2C3CO3H(i)=fCO2C3CO3H(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO = CH3COCH2O2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO(i)=fNO(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO2 = CO2C3PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO2'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3PAN(i)=fCO2C3PAN(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + NO3 = CH3COCH2O2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'NO3'; 
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fNO3(i)=fNO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3 + RO2 = CH3COCH2O2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'CO2C3CO3'; Gstr{i,2} = 'RO2';
fCO2C3CO3(i)=fCO2C3CO3(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + HO2 = C4CO2OOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'HO2'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fHO2(i)=fHO2(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + NO = C4CO2O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'NO'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fNO(i)=fNO(i)-1; fC4CO2O(i)=fC4CO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + NO3 = C4CO2O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'NO3'; 
fC4CO2O2(i)=fC4CO2O2(i)-1; fNO3(i)=fNO3(i)-1; fC4CO2O(i)=fC4CO2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O2 + RO2 = C4CO2O';
k(:,i) = 8.80e-12;
Gstr{i,1} = 'C4CO2O2'; Gstr{i,2} = 'RO2';
fC4CO2O2(i)=fC4CO2O2(i)-1; fC4CO2O(i)=fC4CO2O(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + CO = CO2C3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'CO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO(i)=fCO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + NO = CO2C3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'NO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fNO(i)=fNO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + NO2 = CO2C3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'NO2'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fNO2(i)=fNO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO + SO2 = CO2C3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'CO2C3OO'; Gstr{i,2} = 'SO2'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fSO2(i)=fSO2(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO = CO2C3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'CO2C3OO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3OO = CO2C3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'CO2C3OO'; 
fCO2C3OO(i)=fCO2C3OO(i)-1; fCO2C3CO2H(i)=fCO2C3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH + OH = C530O2';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'C530OOH'; Gstr{i,2} = 'OH'; 
fC530OOH(i)=fC530OOH(i)-1; fOH(i)=fOH(i)-1; fC530O2(i)=fC530O2(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH + hv = C530O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C530OOH'; 
fC530OOH(i)=fC530OOH(i)-1; fC530O(i)=fC530O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C530OOH + hv = C530O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C530OOH'; 
fC530OOH(i)=fC530OOH(i)-1; fC530O(i)=fC530O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C530NO3 + OH = CO2C3CHO + HCHO + NO2';
k(:,i) = 1.81e-11;
Gstr{i,1} = 'C530NO3'; Gstr{i,2} = 'OH'; 
fC530NO3(i)=fC530NO3(i)-1; fOH(i)=fOH(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530NO3 + hv = C530O + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'C530NO3'; 
fC530NO3(i)=fC530NO3(i)-1; fC530O(i)=fC530O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C530O = CO2C3CHO + HCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C530O'; 
fC530O(i)=fC530O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3H + OH =  M3BU3ECO3';
k(:,i) = 5.56e-11;
Gstr{i,1} = 'M3BU3ECO3H'; Gstr{i,2} = 'OH'; 
fM3BU3ECO3H(i)=fM3BU3ECO3H(i)-1; fOH(i)=fOH(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3ECO3H + hv = C45O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'M3BU3ECO3H'; 
fM3BU3ECO3H(i)=fM3BU3ECO3H(i)-1; fC45O2(i)=fC45O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3EPAN + OH = MACR + CO + NO2';
k(:,i) = 5.20e-11;
Gstr{i,1} = 'M3BU3EPAN'; Gstr{i,2} = 'OH'; 
fM3BU3EPAN(i)=fM3BU3EPAN(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3BU3EPAN = M3BU3ECO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'M3BU3EPAN'; 
fM3BU3EPAN(i)=fM3BU3EPAN(i)-1; fM3BU3ECO3(i)=fM3BU3ECO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45OOH + OH = MACR + OH';
k(:,i) = 6.30e-11;
Gstr{i,1} = 'C45OOH'; Gstr{i,2} = 'OH'; 
fC45OOH(i)=fC45OOH(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C45OOH + hv = C45O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C45OOH'; 
fC45OOH(i)=fC45OOH(i)-1; fC45O(i)=fC45O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C45NO3 + OH = MACR + NO2';
k(:,i) = 2.47e-11;
Gstr{i,1} = 'C45NO3'; Gstr{i,2} = 'OH'; 
fC45NO3(i)=fC45NO3(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45NO3 + hv = C45O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'C45NO3'; 
fC45NO3(i)=fC45NO3(i)-1; fC45O(i)=fC45O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C45O = MACR + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'C45O'; 
fC45O(i)=fC45O(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH + OH = NC51O2';
k(:,i) = 8.98e-12;
Gstr{i,1} = 'NC51OOH'; Gstr{i,2} = 'OH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fOH(i)=fOH(i)-1; fNC51O2(i)=fNC51O2(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH + hv = NC51O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC51OOH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fNC51O(i)=fNC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC51OOH + hv = NC51O + OH';
k(:,i) = J22;
Gstr{i,1} = 'NC51OOH'; 
fNC51OOH(i)=fNC51OOH(i)-1; fNC51O(i)=fNC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NC51O = CO2C3CHO + HCHO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NC51O'; 
fNC51O(i)=fNC51O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51OOH + hv = C51O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C51OOH'; 
fC51OOH(i)=fC51OOH(i)-1; fC51O(i)=fC51O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OOH = HO1CO24C5 + OH';
k(:,i) = 8.69e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OOH'; 
fOH(i)=fOH(i)-1; fC51OOH(i)=fC51OOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C51NO3 + hv = C51O + NO2';
k(:,i) = J22;
Gstr{i,1} = 'C51NO3'; 
fC51NO3(i)=fC51NO3(i)-1; fC51O(i)=fC51O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51NO3 = HO1CO24C5 + NO2';
k(:,i) = 1.55e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51NO3'; 
fOH(i)=fOH(i)-1; fC51NO3(i)=fC51NO3(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C51O = CO2C3CHO + HCHO + HO2';
k(:,i) = 2.00e14.*exp(-6382./T);
Gstr{i,1} = 'C51O'; 
fC51O(i)=fC51O(i)-1; fCO2C3CHO(i)=fCO2C3CHO(i)+1; fHCHO(i)=fHCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C51OH = HO1CO24C5 + OH';
k(:,i) = 3.78e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C51OH'; 
fOH(i)=fOH(i)-1; fC51OH(i)=fC51OH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HO1CO24C5 + hv = CH3COCH2O2 + HOCH2CO3';
k(:,i) = J22.*2;
Gstr{i,1} = 'HO1CO24C5'; 
fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HO1CO24C5 = CO24C4CHO + HO2';
k(:,i) = 3.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HO1CO24C5'; 
fOH(i)=fOH(i)-1; fHO1CO24C5(i)=fHO1CO24C5(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2OOH + OH = ACR + OH';
k(:,i) = 5.35e-11;
Gstr{i,1} = 'CH2CHCH2OOH'; Gstr{i,2} = 'OH'; 
fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)-1; fOH(i)=fOH(i)-1; fACR(i)=fACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2OOH + hv = CH2CHCH2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CH2CHCH2OOH'; 
fCH2CHCH2OOH(i)=fCH2CHCH2OOH(i)-1; fCH2CHCH2O(i)=fCH2CHCH2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2NO3 + OH = ACR + NO2';
k(:,i) = 1.28e-11;
Gstr{i,1} = 'CH2CHCH2NO3'; Gstr{i,2} = 'OH'; 
fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)-1; fOH(i)=fOH(i)-1; fACR(i)=fACR(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2NO3 + hv = CH2CHCH2O + NO2';
k(:,i) = J53;
Gstr{i,1} = 'CH2CHCH2NO3'; 
fCH2CHCH2NO3(i)=fCH2CHCH2NO3(i)-1; fCH2CHCH2O(i)=fCH2CHCH2O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CH2CHCH2O = ACR + HO2';
k(:,i) = KROPRIM.*.21.*M;
Gstr{i,1} = 'CH2CHCH2O'; 
fCH2CHCH2O(i)=fCH2CHCH2O(i)-1; fACR(i)=fACR(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'ISOPAO = C524O2';
k(:,i) = KDEC;
Gstr{i,1} = 'ISOPAO'; 
fISOPAO(i)=fISOPAO(i)-1; fC524O2(i)=fC524O2(i)+1; 

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
Rnames{i} = 'HCOCO3 + NO2 = HO2 + CO + NO3';
k(:,i) = KFPAN;
Gstr{i,1} = 'HCOCO3'; Gstr{i,2} = 'NO2'; 
fHCOCO3(i)=fHCOCO3(i)-1; fNO2(i)=fNO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

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
Rnames{i} = 'ETHOHNO3 + OH = HOCH2CHO + NO2';
k(:,i) = 8.40e-13;
Gstr{i,1} = 'ETHOHNO3'; Gstr{i,2} = 'OH'; 
fETHOHNO3(i)=fETHOHNO3(i)-1; fOH(i)=fOH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'NBZFUO2 + HO2 = NBZFUOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'HO2'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNBZFUOOH(i)=fNBZFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + NO = NBZFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'NO'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fNO(i)=fNO(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + NO3 = NBZFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'NO3'; 
fNBZFUO2(i)=fNBZFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO2 + RO2 = NBZFUO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NBZFUO2'; Gstr{i,2} = 'RO2';
fNBZFUO2(i)=fNBZFUO2(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOOA = BZFUONOO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZFUONOOA'; 
fBZFUONOOA(i)=fBZFUONOOA(i)-1; fBZFUONOO(i)=fBZFUONOO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOOA = CO + HCOCH2O2 + OH';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'BZFUONOOA'; 
fBZFUONOOA(i)=fBZFUONOOA(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + HO2 = BZFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'HO2'; 
fBZFUO2(i)=fBZFUO2(i)-1; fHO2(i)=fHO2(i)-1; fBZFUOOH(i)=fBZFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + NO = BZFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'NO'; 
fBZFUO2(i)=fBZFUO2(i)-1; fNO(i)=fNO(i)-1; fBZFUO(i)=fBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + NO3 = BZFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'NO3'; 
fBZFUO2(i)=fBZFUO2(i)-1; fNO3(i)=fNO3(i)-1; fBZFUO(i)=fBZFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUO(i)=fBZFUO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO2 + RO2 = BZFUOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'BZFUO2'; Gstr{i,2} = 'RO2';
fBZFUO2(i)=fBZFUO2(i)-1; fBZFUOH(i)=fBZFUOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + OH = MALDIALCO2';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'MALDALCO2H'; Gstr{i,2} = 'OH'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + hv = HCOCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'MALDALCO2H'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO2H + hv = HCOCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MALDALCO2H'; 
fMALDALCO2H(i)=fMALDALCO2H(i)-1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO3H + OH = MALDIALCO3';
k(:,i) = 4.00e-11;
Gstr{i,1} = 'MALDALCO3H'; Gstr{i,2} = 'OH'; 
fMALDALCO3H(i)=fMALDALCO3H(i)-1; fOH(i)=fOH(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALDALCO3H + hv = MALDIALCO2 + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'MALDALCO3H'; 
fMALDALCO3H(i)=fMALDALCO3H(i)-1; fMALDIALCO2(i)=fMALDIALCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO2 = GLYOX + HO2 + CO';
k(:,i) = KDEC.*0.40;
Gstr{i,1} = 'MALDIALCO2'; 
fMALDIALCO2(i)=fMALDIALCO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALCO2 = MALANHY + HO2';
k(:,i) = KDEC.*0.60;
Gstr{i,1} = 'MALDIALCO2'; 
fMALDIALCO2(i)=fMALDIALCO2(i)-1; fMALANHY(i)=fMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALPAN + OH = GLYOX + CO + CO + NO2';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'MALDIALPAN'; Gstr{i,2} = 'OH'; 
fMALDIALPAN(i)=fMALDIALPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALPAN = MALDIALCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MALDIALPAN'; 
fMALDIALPAN(i)=fMALDIALPAN(i)-1; fMALDIALCO3(i)=fMALDIALCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO2H + OH = C3DIALO2';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'EPXDLCO2H'; Gstr{i,2} = 'OH'; 
fEPXDLCO2H(i)=fEPXDLCO2H(i)-1; fOH(i)=fOH(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO2H + hv = C3DIALO2 + HO2';
k(:,i) = J17;
Gstr{i,1} = 'EPXDLCO2H'; 
fEPXDLCO2H(i)=fEPXDLCO2H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + OH = EPXDLCO3';
k(:,i) = 2.62e-11;
Gstr{i,1} = 'EPXDLCO3H'; Gstr{i,2} = 'OH'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fOH(i)=fOH(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + hv = C3DIALO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'EPXDLCO3H'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLCO3H + hv = C3DIALO2 + OH';
k(:,i) = J17;
Gstr{i,1} = 'EPXDLCO3H'; 
fEPXDLCO3H(i)=fEPXDLCO3H(i)-1; fC3DIALO2(i)=fC3DIALO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLPAN + OH = C33CO + CO + NO2';
k(:,i) = 2.29e-11;
Gstr{i,1} = 'EPXDLPAN'; Gstr{i,2} = 'OH'; 
fEPXDLPAN(i)=fEPXDLPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'EPXDLPAN = EPXDLCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'EPXDLPAN'; 
fEPXDLPAN(i)=fEPXDLPAN(i)-1; fEPXDLCO3(i)=fEPXDLCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + OH = C33CO + OH';
k(:,i) = 1.44e-10;
Gstr{i,1} = 'C3DIALOOH'; Gstr{i,2} = 'OH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + hv = C3DIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3DIALOOH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fC3DIALO(i)=fC3DIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALOOH + hv = GLYOX + CO + HO2 + OH';
k(:,i) = J15.*2;
Gstr{i,1} = 'C3DIALOOH'; 
fC3DIALOOH(i)=fC3DIALOOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3DIALO = GLYOX + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C3DIALO'; 
fC3DIALO(i)=fC3DIALO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C33CO + OH = CO + CO + CO + HO2';
k(:,i) = 5.77e-11;
Gstr{i,1} = 'C33CO'; Gstr{i,2} = 'OH'; 
fC33CO(i)=fC33CO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C33CO + hv = CO + HO2 + CO + CO + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'C33CO'; 
fC33CO(i)=fC33CO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'MALDIALOOH + OH = HOCOC4DIAL + OH';
k(:,i) = 1.22e-10;
Gstr{i,1} = 'MALDIALOOH'; Gstr{i,2} = 'OH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + OH = MALDIALO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'MALDIALOOH'; Gstr{i,2} = 'OH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fOH(i)=fOH(i)-1; fMALDIALO2(i)=fMALDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + hv = C32OH13CO + CO + OH + HO2';
k(:,i) = J15.*2;
Gstr{i,1} = 'MALDIALOOH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALOOH + hv = MALDIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MALDIALOOH'; 
fMALDIALOOH(i)=fMALDIALOOH(i)-1; fMALDIALO(i)=fMALDIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALDIALO = GLYOX + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'MALDIALO'; 
fMALDIALO(i)=fMALDIALO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + OH = CO2C4DIAL + HO2';
k(:,i) = 3.67e-11;
Gstr{i,1} = 'HOCOC4DIAL'; Gstr{i,2} = 'OH'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fOH(i)=fOH(i)-1; fCO2C4DIAL(i)=fCO2C4DIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + hv = HCOCOHCO3 + HO2 + CO';
k(:,i) = J34;
Gstr{i,1} = 'HOCOC4DIAL'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOCOC4DIAL + hv = HCOCOHCO3 + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HOCOC4DIAL'; 
fHOCOC4DIAL(i)=fHOCOC4DIAL(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HOHOC4DIAL + OH = HOCOC4DIAL + HO2';
k(:,i) = 8.13e-11;
Gstr{i,1} = 'HOHOC4DIAL'; Gstr{i,2} = 'OH'; 
fHOHOC4DIAL(i)=fHOHOC4DIAL(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HOHOC4DIAL + hv = C32OH13CO + HO2 + HO2 + CO';
k(:,i) = J15.*2;
Gstr{i,1} = 'HOHOC4DIAL'; 
fHOHOC4DIAL(i)=fHOHOC4DIAL(i)-1; fC32OH13CO(i)=fC32OH13CO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O + NO2 = DNPHEN';
k(:,i) = 2.08e-12;
Gstr{i,1} = 'NPHEN1O'; Gstr{i,2} = 'NO2'; 
fNPHEN1O(i)=fNPHEN1O(i)-1; fNO2(i)=fNO2(i)-1; fDNPHEN(i)=fDNPHEN(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O + O3 = NPHEN1O2';
k(:,i) = 2.86e-13;
Gstr{i,1} = 'NPHEN1O'; Gstr{i,2} = 'O3'; 
fNPHEN1O(i)=fNPHEN1O(i)-1; fO3(i)=fO3(i)-1; fNPHEN1O2(i)=fNPHEN1O2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5OOH + OH = C6H5O2';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'C6H5OOH'; Gstr{i,2} = 'OH'; 
fC6H5OOH(i)=fC6H5OOH(i)-1; fOH(i)=fOH(i)-1; fC6H5O2(i)=fC6H5O2(i)+1; 

i=i+1;
Rnames{i} = 'C6H5OOH + hv = C6H5O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C6H5OOH'; 
fC6H5OOH(i)=fC6H5OOH(i)-1; fC6H5O(i)=fC6H5O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECHOL + NO3 = NNCATECO2';
k(:,i) = 2.60e-12;
Gstr{i,1} = 'NCATECHOL'; Gstr{i,2} = 'NO3'; 
fNCATECHOL(i)=fNCATECHOL(i)-1; fNO3(i)=fNO3(i)-1; fNNCATECO2(i)=fNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECHOL + OH = NCATECO2';
k(:,i) = 3.47e-12;
Gstr{i,1} = 'NCATECHOL'; Gstr{i,2} = 'OH'; 
fNCATECHOL(i)=fNCATECHOL(i)-1; fOH(i)=fOH(i)-1; fNCATECO2(i)=fNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + HO2 = CATEC1OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'HO2'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fHO2(i)=fHO2(i)-1; fCATEC1OOH(i)=fCATEC1OOH(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + NO = CATEC1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'NO'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fNO(i)=fNO(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + NO3 = CATEC1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'NO3'; 
fCATEC1O2(i)=fCATEC1O2(i)-1; fNO3(i)=fNO3(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1O2 + RO2 = CATEC1O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'CATEC1O2'; Gstr{i,2} = 'RO2';
fCATEC1O2(i)=fCATEC1O2(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; 

i=i+1;
Rnames{i} = 'PBZQONE + NO3 = NBZQO2';
k(:,i) = 3.00e-13;
Gstr{i,1} = 'PBZQONE'; Gstr{i,2} = 'NO3'; 
fPBZQONE(i)=fPBZQONE(i)-1; fNO3(i)=fNO3(i)-1; fNBZQO2(i)=fNBZQO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQONE + OH = PBZQO2';
k(:,i) = 4.6e-12;
Gstr{i,1} = 'PBZQONE'; Gstr{i,2} = 'OH'; 
fPBZQONE(i)=fPBZQONE(i)-1; fOH(i)=fOH(i)-1; fPBZQO2(i)=fPBZQO2(i)+1; 

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
Rnames{i} = 'HNMVKOOH + hv = HNMVKO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HNMVKOOH'; 
fHNMVKOOH(i)=fHNMVKOOH(i)-1; fHNMVKO(i)=fHNMVKO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKOOH + hv = NO3CH2CO3 + HOCH2CHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'HNMVKOOH'; 
fHNMVKOOH(i)=fHNMVKOOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNMVKOOH = HNBIACET + OH';
k(:,i) = 3.96e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNMVKOOH'; 
fOH(i)=fOH(i)-1; fHNMVKOOH(i)=fHNMVKOOH(i)-1; fHNBIACET(i)=fHNBIACET(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKO = NO3CH2CO3 + HOCH2CHO';
k(:,i) = KDEC;
Gstr{i,1} = 'HNMVKO'; 
fHNMVKO(i)=fHNMVKO(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HNBIACET + hv = NO3CH2CO3 + HOCH2CO3';
k(:,i) = J35;
Gstr{i,1} = 'HNBIACET'; 
fHNBIACET(i)=fHNBIACET(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNBIACET = NCO23CHO + HO2';
k(:,i) = 2.32e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNBIACET'; 
fOH(i)=fOH(i)-1; fHNBIACET(i)=fHNBIACET(i)-1; fNCO23CHO(i)=fNCO23CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNMVKOH + hv = NO3CH2CO3 + HOCH2CHO + HO2';
k(:,i) = J22;
Gstr{i,1} = 'HNMVKOH'; 
fHNMVKOH(i)=fHNMVKOH(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + HNMVKOH = HNBIACET + HO2';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HNMVKOH'; 
fOH(i)=fOH(i)-1; fHNMVKOH(i)=fHNMVKOH(i)-1; fHNBIACET(i)=fHNBIACET(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3CO2H = NO3CH2CHO + CO + HO2';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3CO2H'; 
fOH(i)=fOH(i)-1; fNC3CO2H(i)=fNC3CO2H(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NC3CO3H + hv = NO3CH2CHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'NC3CO3H'; 
fNC3CO3H(i)=fNC3CO3H(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + NC3CO3H = NC3CO3';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NC3CO3H'; 
fOH(i)=fOH(i)-1; fNC3CO3H(i)=fNC3CO3H(i)-1; fNC3CO3(i)=fNC3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN9 = NC3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN9'; 
fC4PAN9(i)=fC4PAN9(i)-1; fNC3CO3(i)=fNC3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN9 = NO3CH2CHO + CO + CO + NO2';
k(:,i) = 1.52e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN9'; 
fOH(i)=fOH(i)-1; fC4PAN9(i)=fC4PAN9(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAOO + CO = NO3CH2CHO';
k(:,i) = 1.2e-15;
Gstr{i,1} = 'NAOO'; Gstr{i,2} = 'CO'; 
fNAOO(i)=fNAOO(i)-1; fCO(i)=fCO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'NAOO + NO = NO3CH2CHO + NO2';
k(:,i) = 1.0e-14;
Gstr{i,1} = 'NAOO'; Gstr{i,2} = 'NO'; 
fNAOO(i)=fNAOO(i)-1; fNO(i)=fNO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NAOO + NO2 = NO3CH2CHO + NO3';
k(:,i) = 1.0e-15;
Gstr{i,1} = 'NAOO'; Gstr{i,2} = 'NO2'; 
fNAOO(i)=fNAOO(i)-1; fNO2(i)=fNO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NAOO + SO2 = NO3CH2CHO + SO3';
k(:,i) = 7.0e-14;
Gstr{i,1} = 'NAOO'; Gstr{i,2} = 'SO2'; 
fNAOO(i)=fNAOO(i)-1; fSO2(i)=fSO2(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NAOO = NO3CH2CHO + H2O2';
k(:,i) = 6.0e-18.*H2O;
Gstr{i,1} = 'NAOO'; 
fNAOO(i)=fNAOO(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NAOO = NO3CH2CO2H';
k(:,i) = 1.0e-17.*H2O;
Gstr{i,1} = 'NAOO'; 
fNAOO(i)=fNAOO(i)-1; fNO3CH2CO2H(i)=fNO3CH2CO2H(i)+1; 

i=i+1;
Rnames{i} = 'C42OOH + hv = C42O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C42OOH'; 
fC42OOH(i)=fC42OOH(i)-1; fC42O(i)=fC42O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42OOH + hv = HO2 + CO + HO2 + NMGLYOX';
k(:,i) = J15;
Gstr{i,1} = 'C42OOH'; 
fC42OOH(i)=fC42OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNMGLYOX(i)=fNMGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'OH + C42OOH = H3NCO2CHO + OH';
k(:,i) = 6.21e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C42OOH'; 
fOH(i)=fOH(i)-1; fC42OOH(i)=fC42OOH(i)-1; fH3NCO2CHO(i)=fH3NCO2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C42O = NO3CH2CHO + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C42O'; 
fC42O(i)=fC42O(i)-1; fNO3CH2CHO(i)=fNO3CH2CHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C42OH + hv = HO2 + CO + HO2 + C42AOH';
k(:,i) = J15;
Gstr{i,1} = 'C42OH'; 
fC42OH(i)=fC42OH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fC42AOH(i)=fC42AOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C42OH = H3NCO2CHO + HO2';
k(:,i) = 3.53e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C42OH'; 
fOH(i)=fOH(i)-1; fC42OH(i)=fC42OH(i)-1; fH3NCO2CHO(i)=fH3NCO2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'H3NCO2CHO + hv = NMGLYOX + CO + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'H3NCO2CHO'; 
fH3NCO2CHO(i)=fH3NCO2CHO(i)-1; fNMGLYOX(i)=fNMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + H3NCO2CHO = HNO3 + CO + NMGLYOX + HO2';
k(:,i) = KNO3AL;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'H3NCO2CHO'; 
fNO3(i)=fNO3(i)-1; fH3NCO2CHO(i)=fH3NCO2CHO(i)-1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fNMGLYOX(i)=fNMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + H3NCO2CHO = CO + NMGLYOX + HO2';
k(:,i) = 2.46e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'H3NCO2CHO'; 
fOH(i)=fOH(i)-1; fH3NCO2CHO(i)=fH3NCO2CHO(i)-1; fCO(i)=fCO(i)+1; fNMGLYOX(i)=fNMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'OH + HC3CO2H = CO + HO2 + HOCH2CHO';
k(:,i) = 1.88e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CO2H'; 
fOH(i)=fOH(i)-1; fHC3CO2H(i)=fHC3CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; 

i=i+1;
Rnames{i} = 'HC3CO3H + hv = HOCH2CHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC3CO3H'; 
fHC3CO3H(i)=fHC3CO3H(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC3CO3H = HC3CO3';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CO3H'; 
fOH(i)=fOH(i)-1; fHC3CO3H(i)=fHC3CO3H(i)-1; fHC3CO3(i)=fHC3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN7 = HC3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN7'; 
fC4PAN7(i)=fC4PAN7(i)-1; fHC3CO3(i)=fHC3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN7 = HOCH2CHO + CO + CO + NO2';
k(:,i) = 1.87e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN7'; 
fOH(i)=fOH(i)-1; fC4PAN7(i)=fC4PAN7(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'C41OOH + hv = C41O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C41OOH'; 
fC41OOH(i)=fC41OOH(i)-1; fC41O(i)=fC41O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C41OOH = H13CO2CHO + OH';
k(:,i) = 1.39e-10;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C41OOH'; 
fOH(i)=fOH(i)-1; fC41OOH(i)=fC41OOH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C41NO3 = H13CO2CHO + NO2';
k(:,i) = 2.50e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C41NO3'; 
fOH(i)=fOH(i)-1; fC41NO3(i)=fC41NO3(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C41O = GLYOX + HOCH2CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C41O'; 
fC41O(i)=fC41O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C41OH + hv = HOCH2CHO + GLYOX + HO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C41OH'; 
fC41OH(i)=fC41OH(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C41OH = H13CO2CHO + HO2';
k(:,i) = 6.59e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C41OH'; 
fOH(i)=fOH(i)-1; fC41OH(i)=fC41OH(i)-1; fH13CO2CHO(i)=fH13CO2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'HC3CCO3H + hv = HO2 + ACR + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC3CCO3H'; 
fHC3CCO3H(i)=fHC3CCO3H(i)-1; fHO2(i)=fHO2(i)+1; fACR(i)=fACR(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + HC3CCO3H = HC3CCO3';
k(:,i) = 4.42e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC3CCO3H'; 
fOH(i)=fOH(i)-1; fHC3CCO3H(i)=fHC3CCO3H(i)-1; fHC3CCO3(i)=fHC3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4PAN8 = HC3CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4PAN8'; 
fC4PAN8(i)=fC4PAN8(i)-1; fHC3CCO3(i)=fHC3CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C4PAN8 = ACR + CO + NO2';
k(:,i) = 4.06e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C4PAN8'; 
fOH(i)=fOH(i)-1; fC4PAN8(i)=fC4PAN8(i)-1; fACR(i)=fACR(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + HO2 = C527OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'HO2'; 
fC527O2(i)=fC527O2(i)-1; fHO2(i)=fHO2(i)-1; fC527OOH(i)=fC527OOH(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO = C527NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO'; 
fC527O2(i)=fC527O2(i)-1; fNO(i)=fNO(i)-1; fC527NO3(i)=fC527NO3(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO = C527O + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO'; 
fC527O2(i)=fC527O2(i)-1; fNO(i)=fNO(i)-1; fC527O(i)=fC527O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + NO3 = C527O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'NO3'; 
fC527O2(i)=fC527O2(i)-1; fNO3(i)=fNO3(i)-1; fC527O(i)=fC527O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 + RO2 = C527O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C527O2'; Gstr{i,2} = 'RO2';
fC527O2(i)=fC527O2(i)-1; fC527O(i)=fC527O(i)+1; 

i=i+1;
Rnames{i} = 'C527O2 = MACROOH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C527O2'; 
fC527O2(i)=fC527O2(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3F + NO3 = C4MDIAL + NO2';
k(:,i) = 1.90e-11;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'NO3'; 
fM3F(i)=fM3F(i)-1; fNO3(i)=fNO3(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3F + O3 = M3FOOA';
k(:,i) = 2.00e-17;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'O3'; 
fM3F(i)=fM3F(i)-1; fO3(i)=fO3(i)-1; fM3FOOA(i)=fM3FOOA(i)+1; 

i=i+1;
Rnames{i} = 'M3F + OH = C4MDIAL + HO2';
k(:,i) = 9.00e-11;
Gstr{i,1} = 'M3F'; Gstr{i,2} = 'OH'; 
fM3F(i)=fM3F(i)-1; fOH(i)=fOH(i)-1; fC4MDIAL(i)=fC4MDIAL(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'INCCO + hv = C59O + NO2';
k(:,i) = J56.*0.91;
Gstr{i,1} = 'INCCO'; 
fINCCO(i)=fINCCO(i)-1; fC59O(i)=fC59O(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'CO2N3CHO + OH = CO2N3CO3';
k(:,i) = 7.20e-12;
Gstr{i,1} = 'CO2N3CHO'; Gstr{i,2} = 'OH'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fOH(i)=fOH(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2N3CHO + hv = GLYOX + CH3CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CO2N3CHO'; 
fCO2N3CHO(i)=fCO2N3CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXA = IEACHO + HO2';
k(:,i) = 8.40e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXA'; 
fOH(i)=fOH(i)-1; fIEPOXA(i)=fIEPOXA(i)-1; fIEACHO(i)=fIEACHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + HO2 = C526OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'HO2'; 
fC526O2(i)=fC526O2(i)-1; fHO2(i)=fHO2(i)-1; fC526OOH(i)=fC526OOH(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO = C526NO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO'; 
fC526O2(i)=fC526O2(i)-1; fNO(i)=fNO(i)-1; fC526NO3(i)=fC526NO3(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO = C526O + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO'; 
fC526O2(i)=fC526O2(i)-1; fNO(i)=fNO(i)-1; fC526O(i)=fC526O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + NO3 = C526O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'NO3'; 
fC526O2(i)=fC526O2(i)-1; fNO3(i)=fNO3(i)-1; fC526O(i)=fC526O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 + RO2 = C526O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C526O2'; Gstr{i,2} = 'RO2';
fC526O2(i)=fC526O2(i)-1; fC526O(i)=fC526O(i)+1; 

i=i+1;
Rnames{i} = 'C526O2 = HMVKBOOH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C526O2'; 
fC526O2(i)=fC526O2(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'C536OOH + OH = DHPMEK + CO + OH';
k(:,i) = 6.60e-11;
Gstr{i,1} = 'C536OOH'; Gstr{i,2} = 'OH'; 
fC536OOH(i)=fC536OOH(i)-1; fOH(i)=fOH(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH + hv = C3MDIALOOH + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH + hv = DHPMEK + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fDHPMEK(i)=fDHPMEK(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C536OOH + hv = MGLYOX + HCOCH2OOH + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C536OOH'; 
fC536OOH(i)=fC536OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C536O = MGLYOX + HCOCH2OOH + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'C536O'; 
fC536O(i)=fC536O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + OH = BIACETOOH + OH';
k(:,i) = 2.92e-11.*0.56;
Gstr{i,1} = 'DHPMEK'; Gstr{i,2} = 'OH'; 
fDHPMEK(i)=fDHPMEK(i)-1; fOH(i)=fOH(i)-1; fBIACETOOH(i)=fBIACETOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + OH = C4CO2OOH + OH';
k(:,i) = 2.92e-11.*0.44;
Gstr{i,1} = 'DHPMEK'; Gstr{i,2} = 'OH'; 
fDHPMEK(i)=fDHPMEK(i)-1; fOH(i)=fOH(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + hv = CH3CO3 + HCOCH2OOH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + hv = CH3CO3 + HCOCH2OOH + OH';
k(:,i) = J22;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCOCH2OOH(i)=fHCOCH2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMEK + hv = MGLYOX + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMEK'; 
fDHPMEK(i)=fDHPMEK(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 = GLYOOC + CH3COCO3H';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOOC(i)=fGLYOOC(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + O3 = GLYOX + PPACLOOA';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'O3'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fO3(i)=fO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fPPACLOOA(i)=fPPACLOOA(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + OH = C534O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD1'; Gstr{i,2} = 'OH'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD1 + hv = CH3CO3 + GLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD1'; 
fC5PACALD1(i)=fC5PACALD1(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'PGAOOB = GLYOX + OH + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PGAOOB'; 
fPGAOOB(i)=fPGAOOB(i)-1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + OH = CO2H3CHO + CO + OH';
k(:,i) = 4.58e-11;
Gstr{i,1} = 'C4MALOHOOH'; Gstr{i,2} = 'OH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + hv = C4M2ALOHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MALOHOOH + hv = CO2H3CHO + HO2 + CO + OH';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4MALOHOOH'; 
fC4MALOHOOH(i)=fC4MALOHOOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = C3MCODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + NO3 = MC3CODBCO3 + HNO3';
k(:,i) = KNO3AL.*4.25;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'NO3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fNO3(i)=fNO3(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 = MGLYOOA + GLYOX';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fGLYOX(i)=fGLYOX(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + O3 = MGLYOX + GLYOOC';
k(:,i) = 5.00e-18.*0.50;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'O3'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOOC(i)=fGLYOOC(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C3MCODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = C4M2ALOHO2';
k(:,i) = 4.41e-11.*0.23;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + OH = MC3CODBCO3';
k(:,i) = 4.41e-11.*0.385;
Gstr{i,1} = 'C4MDIAL'; Gstr{i,2} = 'OH'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fOH(i)=fOH(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = C3MCODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = MC3CODBCO3 + HO2 + CO';
k(:,i) = J4.*0.2.*0.3;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C4MDIAL + hv = PXYFUONE';
k(:,i) = J4.*0.2.*0.4;
Gstr{i,1} = 'C4MDIAL'; 
fC4MDIAL(i)=fC4MDIAL(i)-1; fPXYFUONE(i)=fPXYFUONE(i)+1; 

i=i+1;
Rnames{i} = 'HVMK + OH = CO2H3CHO + HO2';
k(:,i) = 7.04e-11;
Gstr{i,1} = 'HVMK'; Gstr{i,2} = 'OH'; 
fHVMK(i)=fHVMK(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HVMK + hv = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*0.5;
Gstr{i,1} = 'HVMK'; 
fHVMK(i)=fHVMK(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'HC4ACO3 = C5PACALD2 + HO2';
k(:,i) = 2.20D10.*exp(-8174./T).*exp(1.00D8./T.^3);
Gstr{i,1} = 'HC4ACO3'; 
fHC4ACO3(i)=fHC4ACO3(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4ACO3 + RO2 = HC4ACO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'HC4ACO3'; Gstr{i,2} = 'RO2';
fHC4ACO3(i)=fHC4ACO3(i)-1; fHC4ACO2H(i)=fHC4ACO2H(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + HO2 = C58AOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'HO2'; 
fC58AO2(i)=fC58AO2(i)-1; fHO2(i)=fHO2(i)-1; fC58AOOH(i)=fC58AOOH(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO = C58ANO3';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO'; 
fC58AO2(i)=fC58AO2(i)-1; fNO(i)=fNO(i)-1; fC58ANO3(i)=fC58ANO3(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO = C58AO + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO'; 
fC58AO2(i)=fC58AO2(i)-1; fNO(i)=fNO(i)-1; fC58AO(i)=fC58AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + NO3 = C58AO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'NO3'; 
fC58AO2(i)=fC58AO2(i)-1; fNO3(i)=fNO3(i)-1; fC58AO(i)=fC58AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 + RO2 = C58AO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C58AO2'; Gstr{i,2} = 'RO2';
fC58AO2(i)=fC58AO2(i)-1; fC58AO(i)=fC58AO(i)+1; 

i=i+1;
Rnames{i} = 'C58AO2 = MACROH + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C58AO2'; 
fC58AO2(i)=fC58AO2(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C57O2';
k(:,i) = 1.16e-11.*0.370;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC57O2(i)=fC57O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C58AO2';
k(:,i) = 1.16e-11.*0.370;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC58AO2(i)=fC58AO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = C59O2';
k(:,i) = 1.16e-11.*0.150;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB1CHO';
k(:,i) = 1.16e-11.*0.055;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB1CHO(i)=fIEB1CHO(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXB = IEB4CHO';
k(:,i) = 1.16e-11.*0.055;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXB'; 
fOH(i)=fOH(i)-1; fIEPOXB(i)=fIEPOXB(i)-1; fIEB4CHO(i)=fIEB4CHO(i)+1; 

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
Rnames{i} = 'INB1O2 + HO2 = INB1OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'HO2'; 
fINB1O2(i)=fINB1O2(i)-1; fHO2(i)=fHO2(i)-1; fINB1OOH(i)=fINB1OOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INB1O2'; Gstr{i,2} = 'NO'; 
fINB1O2(i)=fINB1O2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1O2 + NO = INB1O + NO2';
k(:,i) = KRO2NO.*0.896;
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
k(:,i) = KRO2NO.*0.087;
Gstr{i,1} = 'INB2O2'; Gstr{i,2} = 'NO'; 
fINB2O2(i)=fINB2O2(i)-1; fNO(i)=fNO(i)-1; fINANO3(i)=fINANO3(i)+1; 

i=i+1;
Rnames{i} = 'INB2O2 + NO = INB2O + NO2';
k(:,i) = KRO2NO.*0.913;
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
Rnames{i} = 'OH + IEPOXC =  C59O2';
k(:,i) = 1.50e-11.*0.719;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + IEPOXC = IECCHO + HO2';
k(:,i) = 1.50e-11.*0.281;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'IEPOXC'; 
fOH(i)=fOH(i)-1; fIEPOXC(i)=fIEPOXC(i)-1; fIECCHO(i)=fIECCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH + OH = DHPMPAL + CO + OH';
k(:,i) = 5.64e-11;
Gstr{i,1} = 'C537OOH'; Gstr{i,2} = 'OH'; 
fC537OOH(i)=fC537OOH(i)-1; fOH(i)=fOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH + hv = C4CO2OOH + HCHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fC4CO2OOH(i)=fC4CO2OOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH + hv = DHPMPAL + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C537OOH + hv = GLYOX + HYPERACET + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C537OOH'; 
fC537OOH(i)=fC537OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C537O = GLYOX + HYPERACET + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'C537O'; 
fC537O(i)=fC537O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + OH = C3MDIALOOH + OH';
k(:,i) = 3.77e-11.*0.32;
Gstr{i,1} = 'DHPMPAL'; Gstr{i,2} = 'OH'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fOH(i)=fOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + OH = HYPERACET + CO + OH';
k(:,i) = 3.77e-11.*0.68;
Gstr{i,1} = 'DHPMPAL'; Gstr{i,2} = 'OH'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fOH(i)=fOH(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + hv = C3MDIALOOH + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + hv = HYPERACET + OH + CO + HO2';
k(:,i) = J15;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fHYPERACET(i)=fHYPERACET(i)+1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'DHPMPAL + hv = MGLYOX + OH + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DHPMPAL'; 
fDHPMPAL(i)=fDHPMPAL(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 = MGLYOOA + HCOCO3H';
k(:,i) = 2.40e-17.*0.73;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOOA(i)=fMGLYOOA(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + O3 = MGLYOX + PPGAOOB';
k(:,i) = 2.40e-17.*0.27;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'O3'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fO3(i)=fO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fPPGAOOB(i)=fPPGAOOB(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + OH = C535O2';
k(:,i) = 4.72e-11;
Gstr{i,1} = 'C5PACALD2'; Gstr{i,2} = 'OH'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C5PACALD2 + hv = CO + HO2 + MGLYOX + OH';
k(:,i) = J20.*2;
Gstr{i,1} = 'C5PACALD2'; 
fC5PACALD2(i)=fC5PACALD2(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PACLOOA = MGLYOX + OH + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PACLOOA'; 
fPACLOOA(i)=fPACLOOA(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + HO2 = HPC52OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'HO2'; 
fHPC52O2(i)=fHPC52O2(i)-1; fHO2(i)=fHO2(i)-1; fHPC52OOH(i)=fHPC52OOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + NO = HPC52O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'NO'; 
fHPC52O2(i)=fHPC52O2(i)-1; fNO(i)=fNO(i)-1; fHPC52O(i)=fHPC52O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + NO3 = HPC52O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'NO3'; 
fHPC52O2(i)=fHPC52O2(i)-1; fNO3(i)=fNO3(i)-1; fHPC52O(i)=fHPC52O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O2 + RO2 = HPC52O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'HPC52O2'; Gstr{i,2} = 'RO2';
fHPC52O2(i)=fHPC52O2(i)-1; fHPC52O(i)=fHPC52O(i)+1; 

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
Rnames{i} = 'HC4CCO3 = C5PACALD1 + HO2';
k(:,i) = 8.14D9.*exp(-8591./T).*exp(1.00D8./T.^3);
Gstr{i,1} = 'HC4CCO3'; 
fHC4CCO3(i)=fHC4CCO3(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C57AO2 + HO2 = C57AOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'HO2'; 
fC57AO2(i)=fC57AO2(i)-1; fHO2(i)=fHO2(i)-1; fC57AOOH(i)=fC57AOOH(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO = C57AO + NO2';
k(:,i) = KRO2NO.*0.935;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO'; 
fC57AO2(i)=fC57AO2(i)-1; fNO(i)=fNO(i)-1; fC57AO(i)=fC57AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO = INDHCHO';
k(:,i) = KRO2NO.*0.065;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO'; 
fC57AO2(i)=fC57AO2(i)-1; fNO(i)=fNO(i)-1; fINDHCHO(i)=fINDHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + NO3 = C57AO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'NO3'; 
fC57AO2(i)=fC57AO2(i)-1; fNO3(i)=fNO3(i)-1; fC57AO(i)=fC57AO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AO2 + RO2 = C57AO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C57AO2'; Gstr{i,2} = 'RO2';
fC57AO2(i)=fC57AO2(i)-1; fC57AO(i)=fC57AO(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + HO2 = C57OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'HO2'; 
fC57O2(i)=fC57O2(i)-1; fHO2(i)=fHO2(i)-1; fC57OOH(i)=fC57OOH(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO = C57NO3';
k(:,i) = KRO2NO.*0.019;
Gstr{i,1} = 'C57O2'; Gstr{i,2} = 'NO'; 
fC57O2(i)=fC57O2(i)-1; fNO(i)=fNO(i)-1; fC57NO3(i)=fC57NO3(i)+1; 

i=i+1;
Rnames{i} = 'C57O2 + NO = C57O + NO2';
k(:,i) = KRO2NO.*0.981;
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
Rnames{i} = 'C57O2 = HO12CO3C4 + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'C57O2'; 
fC57O2(i)=fC57O2(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'INDO2'; Gstr{i,2} = 'NO'; 
fINDO2(i)=fINDO2(i)-1; fNO(i)=fNO(i)-1; fINB1NO3(i)=fINB1NO3(i)+1; 

i=i+1;
Rnames{i} = 'INDO2 + NO = INDO + NO2';
k(:,i) = KRO2NO.*0.896;
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
Rnames{i} = 'CO23C4NO3 + OH = CO23C3CHO + NO2';
k(:,i) = 1.30e-13;
Gstr{i,1} = 'CO23C4NO3'; Gstr{i,2} = 'OH'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO23C4NO3 + hv = NO3CH2CO3 + CH3CO3';
k(:,i) = J35;
Gstr{i,1} = 'CO23C4NO3'; 
fCO23C4NO3(i)=fCO23C4NO3(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + CO = HMVKANO3';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'CO'; 
fNC41OO(i)=fNC41OO(i)-1; fCO(i)=fCO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + NO = HMVKANO3 + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'NO'; 
fNC41OO(i)=fNC41OO(i)-1; fNO(i)=fNO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + NO2 = HMVKANO3 + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'NO2'; 
fNC41OO(i)=fNC41OO(i)-1; fNO2(i)=fNO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO + SO2 = HMVKANO3 + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'NC41OO'; Gstr{i,2} = 'SO2'; 
fNC41OO(i)=fNC41OO(i)-1; fSO2(i)=fSO2(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'NC41OO = HMVKANO3 + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'NC41OO'; 
fNC41OO(i)=fNC41OO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'C58OOH + hv = C58O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58OOH'; 
fC58OOH(i)=fC58OOH(i)-1; fC58O(i)=fC58O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C58OOH = C4MALOHOOH + HO2';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C58OOH'; 
fOH(i)=fOH(i)-1; fC58OOH(i)=fC58OOH(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58NO3 + hv = ACETOL + GLYOX + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'C58NO3'; 
fC58NO3(i)=fC58NO3(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'HC4CO3H + OH =  HC4CO3';
k(:,i) = 9.11e-11;
Gstr{i,1} = 'HC4CO3H'; Gstr{i,2} = 'OH'; 
fHC4CO3H(i)=fHC4CO3H(i)-1; fOH(i)=fOH(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; 

i=i+1;
Rnames{i} = 'HC4CO3H + hv = MACR + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'HC4CO3H'; 
fHC4CO3H(i)=fHC4CO3H(i)-1; fMACR(i)=fMACR(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HC4PAN + OH = MACR + CO + NO2';
k(:,i) = 8.75e-11;
Gstr{i,1} = 'HC4PAN'; Gstr{i,2} = 'OH'; 
fHC4PAN(i)=fHC4PAN(i)-1; fOH(i)=fOH(i)-1; fMACR(i)=fMACR(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HC4PAN = HC4CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HC4PAN'; 
fHC4PAN(i)=fHC4PAN(i)-1; fHC4CO3(i)=fHC4CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + OH = CO2C3CO3';
k(:,i) = 4.18e-12;
Gstr{i,1} = 'CO2C3CO3H'; Gstr{i,2} = 'OH'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fOH(i)=fOH(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO3H + hv = CH3COCH2O2 + OH';
k(:,i) = J22;
Gstr{i,1} = 'CO2C3CO3H'; 
fCO2C3CO3H(i)=fCO2C3CO3H(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN + OH = MGLYOX + CO + NO2';
k(:,i) = 5.93e-13;
Gstr{i,1} = 'CO2C3PAN'; Gstr{i,2} = 'OH'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3PAN = CO2C3CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CO2C3PAN'; 
fCO2C3PAN(i)=fCO2C3PAN(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH + OH = CO23C3CHO + OH';
k(:,i) = 7.83e-11;
Gstr{i,1} = 'C4CO2OOH'; Gstr{i,2} = 'OH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fOH(i)=fOH(i)-1; fCO23C3CHO(i)=fCO23C3CHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH + hv = C4CO2O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fC4CO2O(i)=fC4CO2O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH + hv = CH3CO3 + GLYOX + OH';
k(:,i) = J22;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2OOH + hv = HO2 + CO + MGLYOX + OH';
k(:,i) = J17;
Gstr{i,1} = 'C4CO2OOH'; 
fC4CO2OOH(i)=fC4CO2OOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O = GLYOX + CH3CO3';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'C4CO2O'; 
fC4CO2O(i)=fC4CO2O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2O = MGLYOX + HO2 + CO';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'C4CO2O'; 
fC4CO2O(i)=fC4CO2O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'CO2C3CO2H + OH = CH3COCH2O2';
k(:,i) = 1.14e-12;
Gstr{i,1} = 'CO2C3CO2H'; Gstr{i,2} = 'OH'; 
fCO2C3CO2H(i)=fCO2C3CO2H(i)-1; fOH(i)=fOH(i)-1; fCH3COCH2O2(i)=fCH3COCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO24C4CHO + hv = CO2C3CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'CO24C4CHO'; 
fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + CO24C4CHO = CO2C3CO3 + CO + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'CO24C4CHO'; 
fNO3(i)=fNO3(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + CO24C4CHO = CO2C3CO3 + CO';
k(:,i) = 1.33e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'CO24C4CHO'; 
fOH(i)=fOH(i)-1; fCO24C4CHO(i)=fCO24C4CHO(i)-1; fCO2C3CO3(i)=fCO2C3CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + HO2 = C524OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'HO2'; 
fC524O2(i)=fC524O2(i)-1; fHO2(i)=fHO2(i)-1; fC524OOH(i)=fC524OOH(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524NO3';
k(:,i) = KRO2NO.*0.104;
Gstr{i,1} = 'C524O2'; Gstr{i,2} = 'NO'; 
fC524O2(i)=fC524O2(i)-1; fNO(i)=fNO(i)-1; fC524NO3(i)=fC524NO3(i)+1; 

i=i+1;
Rnames{i} = 'C524O2 + NO = C524O + NO2';
k(:,i) = KRO2NO.*0.896;
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
Rnames{i} = 'C524O2 = HMACR + HCHO + OH';
k(:,i) = 1.88D11.*exp(-9752./T);
Gstr{i,1} = 'C524O2'; 
fC524O2(i)=fC524O2(i)-1; fHMACR(i)=fHMACR(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'CONM2CO2H + OH = MGLYOX + NO2';
k(:,i) = 3.70e-12;
Gstr{i,1} = 'CONM2CO2H'; Gstr{i,2} = 'OH'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO2H + hv = CO + HO2 + NO2 + CH3COCO2H';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2CO2H'; 
fCONM2CO2H(i)=fCONM2CO2H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + OH = CONM2CO3';
k(:,i) = 6.78e-12;
Gstr{i,1} = 'CONM2CO3H'; Gstr{i,2} = 'OH'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fOH(i)=fOH(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; 

i=i+1;
Rnames{i} = 'CONM2CO3H + hv = CO + HO2 + NO2 + CH3COCO3H';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2CO3H'; 
fCONM2CO3H(i)=fCONM2CO3H(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + OH = CH3COPAN + CO + NO2';
k(:,i) = 3.18e-12;
Gstr{i,1} = 'CONM2PAN'; Gstr{i,2} = 'OH'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fOH(i)=fOH(i)-1; fCH3COPAN(i)=fCH3COPAN(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN = CONM2CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CONM2PAN + hv = CONM2CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CONM2PAN'; 
fCONM2PAN(i)=fCONM2PAN(i)-1; fCONM2CO3(i)=fCONM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'COHM2PAN + hv = COHM2CO3 + NO2';
k(:,i) = J17;
Gstr{i,1} = 'COHM2PAN'; 
fCOHM2PAN(i)=fCOHM2PAN(i)-1; fCOHM2CO3(i)=fCOHM2CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUOOH + OH = NBZFUO2';
k(:,i) = 6.18e-12;
Gstr{i,1} = 'NBZFUOOH'; Gstr{i,2} = 'OH'; 
fNBZFUOOH(i)=fNBZFUOOH(i)-1; fOH(i)=fOH(i)-1; fNBZFUO2(i)=fNBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUOOH + hv = NBZFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBZFUOOH'; 
fNBZFUOOH(i)=fNBZFUOOH(i)-1; fNBZFUO(i)=fNBZFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO = CO14O3CHO + NO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'NBZFUO'; 
fNBZFUO(i)=fNBZFUO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUO = NBZFUONE + HO2';
k(:,i) = KDEC.*0.5;
Gstr{i,1} = 'NBZFUO'; 
fNBZFUO(i)=fNBZFUO(i)-1; fNBZFUONE(i)=fNBZFUONE(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + CO = CO14O3CHO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'CO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO(i)=fCO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + NO = CO14O3CHO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'NO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fNO(i)=fNO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + NO2 = CO14O3CHO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'NO2'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fNO2(i)=fNO2(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO + SO2 = CO14O3CHO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'BZFUONOO'; Gstr{i,2} = 'SO2'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fSO2(i)=fSO2(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO = CO14O3CHO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'BZFUONOO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fH2O2(i)=fH2O2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUONOO = CO14O3CO2H';
k(:,i) = 1.00e-17.*H2O;
Gstr{i,1} = 'BZFUONOO'; 
fBZFUONOO(i)=fBZFUONOO(i)-1; fCO14O3CO2H(i)=fCO14O3CO2H(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOOH + OH = BZFUO2';
k(:,i) = 3.68e-11;
Gstr{i,1} = 'BZFUOOH'; Gstr{i,2} = 'OH'; 
fBZFUOOH(i)=fBZFUOOH(i)-1; fOH(i)=fOH(i)-1; fBZFUO2(i)=fBZFUO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOOH + hv = BZFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'BZFUOOH'; 
fBZFUOOH(i)=fBZFUOOH(i)-1; fBZFUO(i)=fBZFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'BZFUO = CO14O3CHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'BZFUO'; 
fBZFUO(i)=fBZFUO(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUCO + OH = CO14O3CHO + HO2';
k(:,i) = 1.78e-11;
Gstr{i,1} = 'BZFUCO'; Gstr{i,2} = 'OH'; 
fBZFUCO(i)=fBZFUCO(i)-1; fOH(i)=fOH(i)-1; fCO14O3CHO(i)=fCO14O3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'BZFUOH + OH = BZFUCO + HO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'BZFUOH'; Gstr{i,2} = 'OH'; 
fBZFUOH(i)=fBZFUOH(i)-1; fOH(i)=fOH(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHY + OH = MALANHYO2';
k(:,i) = 1.4e-12;
Gstr{i,1} = 'MALANHY'; Gstr{i,2} = 'OH'; 
fMALANHY(i)=fMALANHY(i)-1; fOH(i)=fOH(i)-1; fMALANHYO2(i)=fMALANHYO2(i)+1; 

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
Rnames{i} = 'CO2C4DIAL + OH = CO + CO + CO + CO + HO2';
k(:,i) = 2.45e-11;
Gstr{i,1} = 'CO2C4DIAL'; Gstr{i,2} = 'OH'; 
fCO2C4DIAL(i)=fCO2C4DIAL(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'CO2C4DIAL + hv = CO + CO + HO2 + HO2 + CO + CO';
k(:,i) = J34.*2;
Gstr{i,1} = 'CO2C4DIAL'; 
fCO2C4DIAL(i)=fCO2C4DIAL(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'DNPHEN + NO3 = NDNPHENO2';
k(:,i) = 2.25e-15;
Gstr{i,1} = 'DNPHEN'; Gstr{i,2} = 'NO3'; 
fDNPHEN(i)=fDNPHEN(i)-1; fNO3(i)=fNO3(i)-1; fNDNPHENO2(i)=fNDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHEN + OH = DNPHENO2';
k(:,i) = 3.00e-14;
Gstr{i,1} = 'DNPHEN'; Gstr{i,2} = 'OH'; 
fDNPHEN(i)=fDNPHEN(i)-1; fOH(i)=fOH(i)-1; fDNPHENO2(i)=fDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + HO2 = NPHEN1OOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'HO2'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fHO2(i)=fHO2(i)-1; fNPHEN1OOH(i)=fNPHEN1OOH(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + NO = NPHEN1O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'NO'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNO(i)=fNO(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + NO3 = NPHEN1O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'NO3'; 
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNO3(i)=fNO3(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1O2 + RO2 = NPHEN1O';
k(:,i) = 2.50e-13;
Gstr{i,1} = 'NPHEN1O2'; Gstr{i,2} = 'RO2';
fNPHEN1O2(i)=fNPHEN1O2(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + HO2 = NNCATECOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'HO2'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fNNCATECOOH(i)=fNNCATECOOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + NO = NNCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'NO'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fNO(i)=fNO(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + NO3 = NNCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'NO3'; 
fNNCATECO2(i)=fNNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO2 + RO2 = NNCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NNCATECO2'; Gstr{i,2} = 'RO2';
fNNCATECO2(i)=fNNCATECO2(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + HO2 = NCATECOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'HO2'; 
fNCATECO2(i)=fNCATECO2(i)-1; fHO2(i)=fHO2(i)-1; fNCATECOOH(i)=fNCATECOOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + NO = NCATECO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'NO'; 
fNCATECO2(i)=fNCATECO2(i)-1; fNO(i)=fNO(i)-1; fNCATECO(i)=fNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + NO3 = NCATECO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'NO3'; 
fNCATECO2(i)=fNCATECO2(i)-1; fNO3(i)=fNO3(i)-1; fNCATECO(i)=fNCATECO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO2 + RO2 = NCATECO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NCATECO2'; Gstr{i,2} = 'RO2';
fNCATECO2(i)=fNCATECO2(i)-1; fNCATECO(i)=fNCATECO(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1OOH + OH = CATEC1O2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'CATEC1OOH'; Gstr{i,2} = 'OH'; 
fCATEC1OOH(i)=fCATEC1OOH(i)-1; fOH(i)=fOH(i)-1; fCATEC1O2(i)=fCATEC1O2(i)+1; 

i=i+1;
Rnames{i} = 'CATEC1OOH + hv = CATEC1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'CATEC1OOH'; 
fCATEC1OOH(i)=fCATEC1OOH(i)-1; fCATEC1O(i)=fCATEC1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + HO2 = NBZQOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'HO2'; 
fNBZQO2(i)=fNBZQO2(i)-1; fHO2(i)=fHO2(i)-1; fNBZQOOH(i)=fNBZQOOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + NO = NBZQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'NO'; 
fNBZQO2(i)=fNBZQO2(i)-1; fNO(i)=fNO(i)-1; fNBZQO(i)=fNBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + NO3 = NBZQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'NO3'; 
fNBZQO2(i)=fNBZQO2(i)-1; fNO3(i)=fNO3(i)-1; fNBZQO(i)=fNBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO2 + RO2 = NBZQO';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'NBZQO2'; Gstr{i,2} = 'RO2';
fNBZQO2(i)=fNBZQO2(i)-1; fNBZQO(i)=fNBZQO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + HO2 = PBZQOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'HO2'; 
fPBZQO2(i)=fPBZQO2(i)-1; fHO2(i)=fHO2(i)-1; fPBZQOOH(i)=fPBZQOOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + NO = PBZQO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'NO'; 
fPBZQO2(i)=fPBZQO2(i)-1; fNO(i)=fNO(i)-1; fPBZQO(i)=fPBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + NO3 = PBZQO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'NO3'; 
fPBZQO2(i)=fPBZQO2(i)-1; fNO3(i)=fNO3(i)-1; fPBZQO(i)=fPBZQO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQO(i)=fPBZQO(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO2 + RO2 = PBZQOH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'PBZQO2'; Gstr{i,2} = 'RO2';
fPBZQO2(i)=fPBZQO2(i)-1; fPBZQOH(i)=fPBZQOH(i)+1; 

i=i+1;
Rnames{i} = 'NCO23CHO + hv = NO3CH2CO3 + HO2 + CO + CO';
k(:,i) = J34;
Gstr{i,1} = 'NCO23CHO'; 
fNCO23CHO(i)=fNCO23CHO(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'NO3 + NCO23CHO = CO + CO + NO3CH2CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'NO3'; Gstr{i,2} = 'NCO23CHO'; 
fNO3(i)=fNO3(i)-1; fNCO23CHO(i)=fNCO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'OH + NCO23CHO = CO + CO + NO3CH2CO3';
k(:,i) = 1.23e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'NCO23CHO'; 
fOH(i)=fOH(i)-1; fNCO23CHO(i)=fNCO23CHO(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; 

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
Rnames{i} = 'C527OOH + OH = MACROOH + CO + OH';
k(:,i) = 4.74e-11;
Gstr{i,1} = 'C527OOH'; Gstr{i,2} = 'OH'; 
fC527OOH(i)=fC527OOH(i)-1; fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527OOH + hv = GLYOX + ACETOL + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C527OOH'; 
fC527OOH(i)=fC527OOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C527OOH + hv = MACROOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C527OOH'; 
fC527OOH(i)=fC527OOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C527NO3 + OH = MACROOH + CO + NO2';
k(:,i) = 1.18e-11;
Gstr{i,1} = 'C527NO3'; Gstr{i,2} = 'OH'; 
fC527NO3(i)=fC527NO3(i)-1; fOH(i)=fOH(i)-1; fMACROOH(i)=fMACROOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527NO3 + hv = C527O + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C527NO3'; 
fC527NO3(i)=fC527NO3(i)-1; fC527O(i)=fC527O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C527O = GLYOX + ACETOL + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'C527O'; 
fC527O(i)=fC527O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3FOOA = C531O2 + OH';
k(:,i) = KDEC.*0.6;
Gstr{i,1} = 'M3FOOA'; 
fM3FOOA(i)=fM3FOOA(i)-1; fC531O2(i)=fC531O2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'M3FOOA = M3FOO';
k(:,i) = KDEC.*0.4;
Gstr{i,1} = 'M3FOOA'; 
fM3FOOA(i)=fM3FOOA(i)-1; fM3FOO(i)=fM3FOO(i)+1; 

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
Rnames{i} = 'INCNCHO + hv = GLYOX + NOA + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INCNCHO'; 
fINCNCHO(i)=fINCNCHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fNOA(i)=fNOA(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C59O = ACETOL + HOCH2CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'C59O'; 
fC59O(i)=fC59O(i)-1; fACETOL(i)=fACETOL(i)+1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; 

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
Rnames{i} = 'C526OOH + OH = HMVKBOOH + CO + OH';
k(:,i) = 5.70e-11.*0.46;
Gstr{i,1} = 'C526OOH'; Gstr{i,2} = 'OH'; 
fC526OOH(i)=fC526OOH(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH + OH = IEC2OOH + OH';
k(:,i) = 5.70e-11.*0.54;
Gstr{i,1} = 'C526OOH'; Gstr{i,2} = 'OH'; 
fC526OOH(i)=fC526OOH(i)-1; fOH(i)=fOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH + hv = HMVKBOOH + CO + OH + HO2';
k(:,i) = J17;
Gstr{i,1} = 'C526OOH'; 
fC526OOH(i)=fC526OOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C526OOH + hv = MGLYOX + HOCH2CHO + OH + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'C526OOH'; 
fC526OOH(i)=fC526OOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C526NO3 + OH = HMVKBOOH + CO + NO2';
k(:,i) = 1.56e-11;
Gstr{i,1} = 'C526NO3'; Gstr{i,2} = 'OH'; 
fC526NO3(i)=fC526NO3(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526NO3 + hv = C526O + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C526NO3'; 
fC526NO3(i)=fC526NO3(i)-1; fC526O(i)=fC526O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C526O = MGLYOX + HOCH2CHO + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'C526O'; 
fC526O(i)=fC526O(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'C3MDIALOOH + OH = C3MDIALO2';
k(:,i) = 1.35e-10;
Gstr{i,1} = 'C3MDIALOOH'; Gstr{i,2} = 'OH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fOH(i)=fOH(i)-1; fC3MDIALO2(i)=fC3MDIALO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + hv = C3MDIALO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALOOH + hv = MGLYOX + OH + HO2 + CO';
k(:,i) = J17.*2;
Gstr{i,1} = 'C3MDIALOOH'; 
fC3MDIALOOH(i)=fC3MDIALOOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

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
Rnames{i} = 'PPACLOOA = CH3COCO3 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PPACLOOA'; 
fPPACLOOA(i)=fPPACLOOA(i)-1; fCH3COCO3(i)=fCH3COCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + HO2 = C534OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'HO2'; 
fC534O2(i)=fC534O2(i)-1; fHO2(i)=fHO2(i)-1; fC534OOH(i)=fC534OOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO = C534O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO'; 
fC534O2(i)=fC534O2(i)-1; fNO(i)=fNO(i)-1; fC534O(i)=fC534O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + NO3 = C534O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'NO3'; 
fC534O2(i)=fC534O2(i)-1; fNO3(i)=fNO3(i)-1; fC534O(i)=fC534O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C534O2 + RO2 = C534O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C534O2'; Gstr{i,2} = 'RO2';
fC534O2(i)=fC534O2(i)-1; fC534O(i)=fC534O(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO = GLYOX + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C4M2ALOHO'; 
fC4M2ALOHO(i)=fC4M2ALOHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 = C3MCODBCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + HO2 = C5PACALD1';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'HO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD1(i)=fC5PACALD1(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO = C3MCODBCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO(i)=fNO(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO2 = C3MCODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO2'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC3MCODBPAN(i)=fC3MCODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + NO3 = NO2 + C3MCODBCO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'NO3'; 
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fNO2(i)=fNO2(i)+1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO3 + RO2 = C3MCODBCO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C3MCODBCO3'; Gstr{i,2} = 'RO2';
fC3MCODBCO3(i)=fC3MCODBCO3(i)-1; fC3MCODBCO2(i)=fC3MCODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = C5PACALD2';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5PACALD2(i)=fC5PACALD2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = MC3CODBCO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + HO2 = MC3ODBCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'HO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fHO2(i)=fHO2(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO = MC3CODBCO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO(i)=fNO(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO2 = MC3CODBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO2'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO2(i)=fNO2(i)-1; fMC3CODBPAN(i)=fMC3CODBPAN(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + NO3 = MC3CODBCO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'NO3'; 
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fNO3(i)=fNO3(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + RO2 = MC3CODBCO2';
k(:,i) = 1.00e-11.*0.70;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO3 + RO2 = MC3ODBCO2H';
k(:,i) = 1.00e-11.*0.30;
Gstr{i,1} = 'MC3CODBCO3'; Gstr{i,2} = 'RO2';
fMC3CODBCO3(i)=fMC3CODBCO3(i)-1; fMC3ODBCO2H(i)=fMC3ODBCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + HO2 = C4MALOHOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'HO2'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fHO2(i)=fHO2(i)-1; fC4MALOHOOH(i)=fC4MALOHOOH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO = C4M2ALOHO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO(i)=fNO(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + NO3 = C4M2ALOHO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'NO3'; 
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fNO3(i)=fNO3(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + RO2 = C4M2AL2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fC4M2AL2OH(i)=fC4M2AL2OH(i)+1; 

i=i+1;
Rnames{i} = 'C4M2ALOHO2 + RO2 = C4M2ALOHO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'C4M2ALOHO2'; Gstr{i,2} = 'RO2';
fC4M2ALOHO2(i)=fC4M2ALOHO2(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + NO3 = NPXYFUO2';
k(:,i) = 1.00e-12;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'NO3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fNO3(i)=fNO3(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + O3 = OH + CO + MCOCOMOXO2';
k(:,i) = 8.00e-19;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'O3'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fO3(i)=fO3(i)-1; fOH(i)=fOH(i)+1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUONE + OH = PXYFUO2';
k(:,i) = 2.42e-11;
Gstr{i,1} = 'PXYFUONE'; Gstr{i,2} = 'OH'; 
fPXYFUONE(i)=fPXYFUONE(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

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
Rnames{i} = 'OH + HC4ACO3H = MACROH + CO + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4ACO3H'; 
fOH(i)=fOH(i)-1; fHC4ACO3H(i)=fHC4ACO3H(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN17 = HC4ACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN17'; 
fC5PAN17(i)=fC5PAN17(i)-1; fHC4ACO3(i)=fHC4ACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN17 = MACROH + CO + NO3';
k(:,i) = 7.79e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN17'; 
fOH(i)=fOH(i)-1; fC5PAN17(i)=fC5PAN17(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C58AOOH + OH = MACROH + CO + OH';
k(:,i) = 3.70e-11;
Gstr{i,1} = 'C58AOOH'; Gstr{i,2} = 'OH'; 
fC58AOOH(i)=fC58AOOH(i)-1; fOH(i)=fOH(i)-1; fMACROH(i)=fMACROH(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58AOOH + hv = C58AO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C58AOOH'; 
fC58AOOH(i)=fC58AOOH(i)-1; fC58AO(i)=fC58AO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C58ANO3 + OH = C47CHO + HO2';
k(:,i) = 8.14e-12;
Gstr{i,1} = 'C58ANO3'; Gstr{i,2} = 'OH'; 
fC58ANO3(i)=fC58ANO3(i)-1; fOH(i)=fOH(i)-1; fC47CHO(i)=fC47CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C58ANO3 + hv = GLYOX + ACETOL + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C58ANO3'; 
fC58ANO3(i)=fC58ANO3(i)-1; fGLYOX(i)=fGLYOX(i)+1; fACETOL(i)=fACETOL(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C58AO = ACETOL + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C58AO'; 
fC58AO(i)=fC58AO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB1CHO + OH = C4M2ALOHO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'IEB1CHO'; Gstr{i,2} = 'OH'; 
fIEB1CHO(i)=fIEB1CHO(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

i=i+1;
Rnames{i} = 'IEB4CHO + OH = C4M2ALOHO2';
k(:,i) = 2.01e-11;
Gstr{i,1} = 'IEB4CHO'; Gstr{i,2} = 'OH'; 
fIEB4CHO(i)=fIEB4CHO(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO2(i)=fC4M2ALOHO2(i)+1; 

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
Rnames{i} = 'INB1OOH + OH = INB1CO + OH';
k(:,i) = 1.27e-11.*0.35;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1CO(i)=fINB1CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'INB1OOH + OH = INB1HPCHO + HO2';
k(:,i) = 1.27e-11.*0.34;
Gstr{i,1} = 'INB1OOH'; Gstr{i,2} = 'OH'; 
fINB1OOH(i)=fINB1OOH(i)-1; fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
k(:,i) = J56.*1.6;
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
Rnames{i} = 'PPGAOOB = HCOCO3 + OH';
k(:,i) = KDEC;
Gstr{i,1} = 'PPGAOOB'; 
fPPGAOOB(i)=fPPGAOOB(i)-1; fHCOCO3(i)=fHCOCO3(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + HO2 = C535OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'HO2'; 
fC535O2(i)=fC535O2(i)-1; fHO2(i)=fHO2(i)-1; fC535OOH(i)=fC535OOH(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO = C535O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO'; 
fC535O2(i)=fC535O2(i)-1; fNO(i)=fNO(i)-1; fC535O(i)=fC535O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + NO3 = C535O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'NO3'; 
fC535O2(i)=fC535O2(i)-1; fNO3(i)=fNO3(i)-1; fC535O(i)=fC535O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C535O2 + RO2 = C535O';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'C535O2'; Gstr{i,2} = 'RO2';
fC535O2(i)=fC535O2(i)-1; fC535O(i)=fC535O(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH + OH = HPC52CO3';
k(:,i) = 4.40e-11;
Gstr{i,1} = 'HPC52OOH'; Gstr{i,2} = 'OH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fOH(i)=fOH(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH + hv = HO2 + DHPMPAL + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'HPC52OOH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'HPC52OOH + hv = HPC52O + OH';
k(:,i) = J41.*2;
Gstr{i,1} = 'HPC52OOH'; 
fHPC52OOH(i)=fHPC52OOH(i)-1; fHPC52O(i)=fHPC52O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52O = GLYOX + HYPERACET + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'HPC52O'; 
fHPC52O(i)=fHPC52O(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHYPERACET(i)=fHYPERACET(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'OH + HC4CCO3H = HO12CO3C4 + CO + OH';
k(:,i) = 3.84e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'HC4CCO3H'; 
fOH(i)=fOH(i)-1; fHC4CCO3H(i)=fHC4CCO3H(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5PAN19 = HC4CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5PAN19'; 
fC5PAN19(i)=fC5PAN19(i)-1; fHC4CCO3(i)=fHC4CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C5PAN19 = HO12CO3C4 + CO + NO3';
k(:,i) = 7.79e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C5PAN19'; 
fOH(i)=fOH(i)-1; fC5PAN19(i)=fC5PAN19(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C57AOOH + OH = HMVKBOOH + CO + HO2';
k(:,i) = 4.50e-11;
Gstr{i,1} = 'C57AOOH'; Gstr{i,2} = 'OH'; 
fC57AOOH(i)=fC57AOOH(i)-1; fOH(i)=fOH(i)-1; fHMVKBOOH(i)=fHMVKBOOH(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C57AOOH + hv = C57AO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57AOOH'; 
fC57AOOH(i)=fC57AOOH(i)-1; fC57AO(i)=fC57AO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C57AO = HOCH2CHO + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C57AO'; 
fC57AO(i)=fC57AO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + OH = INDHCO3';
k(:,i) = 2.27e-11;
Gstr{i,1} = 'INDHCHO'; Gstr{i,2} = 'OH'; 
fINDHCHO(i)=fINDHCHO(i)-1; fOH(i)=fOH(i)-1; fINDHCO3(i)=fINDHCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHCHO + hv = MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INDHCHO'; 
fINDHCHO(i)=fINDHCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C57OOH + hv = C57O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C57OOH'; 
fC57OOH(i)=fC57OOH(i)-1; fC57O(i)=fC57O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'OH + C57OOH = HO12CO3C4 + CO + OH';
k(:,i) = 3.16e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C57OOH'; 
fOH(i)=fOH(i)-1; fC57OOH(i)=fC57OOH(i)-1; fHO12CO3C4(i)=fHO12CO3C4(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'C57NO3 + hv = MGLYOX + HOCH2CHO + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C57NO3'; 
fC57NO3(i)=fC57NO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
k(:,i) = 3.60e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fC59O2(i)=fC59O2(i)+1; 

i=i+1;
Rnames{i} = 'OH + C59OOH = IEC2OOH + HO2';
k(:,i) = 1.57e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'C59OOH'; 
fOH(i)=fOH(i)-1; fC59OOH(i)=fC59OOH(i)-1; fIEC2OOH(i)=fIEC2OOH(i)+1; fHO2(i)=fHO2(i)+1; 

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
k(:,i) = J56.*10;
Gstr{i,1} = 'INANCHO'; 
fINANCHO(i)=fINANCHO(i)-1; fHMVKANO3(i)=fHMVKANO3(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCHO = INANCO3';
k(:,i) = 4.22e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCHO'; 
fOH(i)=fOH(i)-1; fINANCHO(i)=fINANCHO(i)-1; fINANCO3(i)=fINANCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCO + hv = ACETOL + NO2 + NO3CH2CO3';
k(:,i) = J56.*1.6;
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
Rnames{i} = 'C524NO3 + OH = NC524O2';
k(:,i) = 2.94e-11;
Gstr{i,1} = 'C524NO3'; Gstr{i,2} = 'OH'; 
fC524NO3(i)=fC524NO3(i)-1; fOH(i)=fOH(i)-1; fNC524O2(i)=fNC524O2(i)+1; 

i=i+1;
Rnames{i} = 'C524NO3 + hv = C524O + NO2';
k(:,i) = J54;
Gstr{i,1} = 'C524NO3'; 
fC524NO3(i)=fC524NO3(i)-1; fC524O(i)=fC524O(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'CO14O3CHO + NO3 = CO + HCOCH2O2 + HNO3';
k(:,i) = KNO3AL.*8.0;
Gstr{i,1} = 'CO14O3CHO'; Gstr{i,2} = 'NO3'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CHO + OH = CO + HCOCH2O2';
k(:,i) = 3.44e-11;
Gstr{i,1} = 'CO14O3CHO'; Gstr{i,2} = 'OH'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CHO + hv = HO2 + CO + HCOCH2O2';
k(:,i) = J34;
Gstr{i,1} = 'CO14O3CHO'; 
fCO14O3CHO(i)=fCO14O3CHO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'NBZFUONE + OH = BZFUCO + NO2';
k(:,i) = 1.16e-12;
Gstr{i,1} = 'NBZFUONE'; Gstr{i,2} = 'OH'; 
fNBZFUONE(i)=fNBZFUONE(i)-1; fOH(i)=fOH(i)-1; fBZFUCO(i)=fBZFUCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'CO14O3CO2H + OH = HCOCH2O2';
k(:,i) = 2.19e-11;
Gstr{i,1} = 'CO14O3CO2H'; Gstr{i,2} = 'OH'; 
fCO14O3CO2H(i)=fCO14O3CO2H(i)-1; fOH(i)=fOH(i)-1; fHCOCH2O2(i)=fHCOCH2O2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + HO2 = MALANHYOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'HO2'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fHO2(i)=fHO2(i)-1; fMALANHYOOH(i)=fMALANHYOOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + NO = MALANHYO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'NO'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fNO(i)=fNO(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + NO3 = MALANHYO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'NO3'; 
fMALANHYO2(i)=fMALANHYO2(i)-1; fNO3(i)=fNO3(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALANHY2OH';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALANHY2OH(i)=fMALANHY2OH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALANHYO';
k(:,i) = 8.80e-13.*0.6;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO2 + RO2 = MALNHYOHCO';
k(:,i) = 8.80e-13.*0.2;
Gstr{i,1} = 'MALANHYO2'; Gstr{i,2} = 'RO2';
fMALANHYO2(i)=fMALANHYO2(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + HO2 = NDNPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'HO2'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fNDNPHENOOH(i)=fNDNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + NO = NDNPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'NO'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNO(i)=fNO(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + NO3 = NDNPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'NO3'; 
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO2 + RO2 = NDNPHENO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'NDNPHENO2'; Gstr{i,2} = 'RO2';
fNDNPHENO2(i)=fNDNPHENO2(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + HO2 = DNPHENOOH';
k(:,i) = KRO2HO2.*0.770;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'HO2'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fHO2(i)=fHO2(i)-1; fDNPHENOOH(i)=fDNPHENOOH(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + NO = DNPHENO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'NO'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fNO(i)=fNO(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + NO3 = DNPHENO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'NO3'; 
fDNPHENO2(i)=fDNPHENO2(i)-1; fNO3(i)=fNO3(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO2 + RO2 = DNPHENO';
k(:,i) = 8.00e-13;
Gstr{i,1} = 'DNPHENO2'; Gstr{i,2} = 'RO2';
fDNPHENO2(i)=fDNPHENO2(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1OOH + OH = NPHEN1O2';
k(:,i) = 9.00e-13;
Gstr{i,1} = 'NPHEN1OOH'; Gstr{i,2} = 'OH'; 
fNPHEN1OOH(i)=fNPHEN1OOH(i)-1; fOH(i)=fOH(i)-1; fNPHEN1O2(i)=fNPHEN1O2(i)+1; 

i=i+1;
Rnames{i} = 'NPHEN1OOH + hv = NPHEN1O + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPHEN1OOH'; 
fNPHEN1OOH(i)=fNPHEN1OOH(i)-1; fNPHEN1O(i)=fNPHEN1O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECOOH + OH = NNCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NNCATECOOH'; Gstr{i,2} = 'OH'; 
fNNCATECOOH(i)=fNNCATECOOH(i)-1; fOH(i)=fOH(i)-1; fNNCATECO2(i)=fNNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECOOH + hv = NNCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NNCATECOOH'; 
fNNCATECOOH(i)=fNNCATECOOH(i)-1; fNNCATECO(i)=fNNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NNCATECO = NC4DCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NNCATECO'; 
fNNCATECO(i)=fNNCATECO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECOOH + OH = NCATECO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NCATECOOH'; Gstr{i,2} = 'OH'; 
fNCATECOOH(i)=fNCATECOOH(i)-1; fOH(i)=fOH(i)-1; fNCATECO2(i)=fNCATECO2(i)+1; 

i=i+1;
Rnames{i} = 'NCATECOOH + hv = NCATECO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NCATECOOH'; 
fNCATECOOH(i)=fNCATECOOH(i)-1; fNCATECO(i)=fNCATECO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NCATECO = NC4DCO2H + HCOCO2H + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NCATECO'; 
fNCATECO(i)=fNCATECO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQOOH + OH = NBZQO2';
k(:,i) = 6.68e-11;
Gstr{i,1} = 'NBZQOOH'; Gstr{i,2} = 'OH'; 
fNBZQOOH(i)=fNBZQOOH(i)-1; fOH(i)=fOH(i)-1; fNBZQO2(i)=fNBZQO2(i)+1; 

i=i+1;
Rnames{i} = 'NBZQOOH + hv = NBZQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NBZQOOH'; 
fNBZQOOH(i)=fNBZQOOH(i)-1; fNBZQO(i)=fNBZQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NBZQO = C6CO4DB + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NBZQO'; 
fNBZQO(i)=fNBZQO(i)-1; fC6CO4DB(i)=fC6CO4DB(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOOH + OH = PBZQCO + OH';
k(:,i) = 1.23e-10;
Gstr{i,1} = 'PBZQOOH'; Gstr{i,2} = 'OH'; 
fPBZQOOH(i)=fPBZQOOH(i)-1; fOH(i)=fOH(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOOH + hv = PBZQO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PBZQOOH'; 
fPBZQOOH(i)=fPBZQOOH(i)-1; fPBZQO(i)=fPBZQO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PBZQO = C5CO2OHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'PBZQO'; 
fPBZQO(i)=fPBZQO(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PBZQCO + OH = C5CO2OHCO3';
k(:,i) = 6.07e-11;
Gstr{i,1} = 'PBZQCO'; Gstr{i,2} = 'OH'; 
fPBZQCO(i)=fPBZQCO(i)-1; fOH(i)=fOH(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'PBZQOH + OH = PBZQCO + HO2';
k(:,i) = 9.18e-11;
Gstr{i,1} = 'PBZQOH'; Gstr{i,2} = 'OH'; 
fPBZQOH(i)=fPBZQOH(i)-1; fOH(i)=fOH(i)-1; fPBZQCO(i)=fPBZQCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C531O2 + HO2 = C531OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'HO2'; 
fC531O2(i)=fC531O2(i)-1; fHO2(i)=fHO2(i)-1; fC531OOH(i)=fC531OOH(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + NO = C531O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'NO'; 
fC531O2(i)=fC531O2(i)-1; fNO(i)=fNO(i)-1; fC531O(i)=fC531O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + NO3 = C531O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'NO3'; 
fC531O2(i)=fC531O2(i)-1; fNO3(i)=fNO3(i)-1; fC531O(i)=fC531O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C531O2 + RO2 = C531O';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'C531O2'; Gstr{i,2} = 'RO2';
fC531O2(i)=fC531O2(i)-1; fC531O(i)=fC531O(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + CO = C532CO';
k(:,i) = 1.20e-15;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'CO'; 
fM3FOO(i)=fM3FOO(i)-1; fCO(i)=fCO(i)-1; fC532CO(i)=fC532CO(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + NO = C532CO + NO2';
k(:,i) = 1.00e-14;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'NO'; 
fM3FOO(i)=fM3FOO(i)-1; fNO(i)=fNO(i)-1; fC532CO(i)=fC532CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + NO2 = C532CO + NO3';
k(:,i) = 1.00e-15;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'NO2'; 
fM3FOO(i)=fM3FOO(i)-1; fNO2(i)=fNO2(i)-1; fC532CO(i)=fC532CO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO + SO2 = C532CO + SO3';
k(:,i) = 7.00e-14;
Gstr{i,1} = 'M3FOO'; Gstr{i,2} = 'SO2'; 
fM3FOO(i)=fM3FOO(i)-1; fSO2(i)=fSO2(i)-1; fC532CO(i)=fC532CO(i)+1; fSO3(i)=fSO3(i)+1; 

i=i+1;
Rnames{i} = 'M3FOO = C532CO + H2O2';
k(:,i) = 6.00e-18.*H2O;
Gstr{i,1} = 'M3FOO'; 
fM3FOO(i)=fM3FOO(i)-1; fC532CO(i)=fC532CO(i)+1; fH2O2(i)=fH2O2(i)+1; 

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
Rnames{i} = 'CO2N3PAN + hv = CO2N3CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'CO2N3PAN'; 
fCO2N3PAN(i)=fCO2N3PAN(i)-1; fCO2N3CO3(i)=fCO2N3CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'C3MDIALO2 + HO2 = C3MDIALOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'HO2'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fHO2(i)=fHO2(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO = C3MDIALO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO(i)=fNO(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + NO3 = C3MDIALO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'NO3'; 
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fNO3(i)=fNO3(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + RO2 = C3MDIALO';
k(:,i) = 9.20e-14.*0.7;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fC3MDIALO(i)=fC3MDIALO(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO2 + RO2 = C3MDIALOH';
k(:,i) = 9.20e-14.*0.3;
Gstr{i,1} = 'C3MDIALO2'; Gstr{i,2} = 'RO2';
fC3MDIALO2(i)=fC3MDIALO2(i)-1; fC3MDIALOH(i)=fC3MDIALOH(i)+1; 

i=i+1;
Rnames{i} = 'C3MDIALO = MGLYOX + CO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C3MDIALO'; 
fC3MDIALO(i)=fC3MDIALO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'C534OOH + OH = C534O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C534OOH'; Gstr{i,2} = 'OH'; 
fC534OOH(i)=fC534OOH(i)-1; fOH(i)=fOH(i)-1; fC534O2(i)=fC534O2(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = C534O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fC534O(i)=fC534O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = C534O + OH';
k(:,i) = J15;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fC534O(i)=fC534O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534OOH + hv = CO2H3CHO + OH + OH';
k(:,i) = J41;
Gstr{i,1} = 'C534OOH'; 
fC534OOH(i)=fC534OOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fOH(i)=fOH(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C534O = CH3COCO3H + GLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C534O'; 
fC534O(i)=fC534O(i)-1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO2 = MGLYOX + HO2 + CO';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'C3MCODBCO2'; 
fC3MCODBCO2(i)=fC3MCODBCO2(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBCO2 = MMALANHY + HO2';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'C3MCODBCO2'; 
fC3MCODBCO2(i)=fC3MCODBCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN + OH = MGLYOX + CO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'C3MCODBPAN'; Gstr{i,2} = 'OH'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fOH(i)=fOH(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C3MCODBPAN = C3MCODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C3MCODBPAN'; 
fC3MCODBPAN(i)=fC3MCODBPAN(i)-1; fC3MCODBCO3(i)=fC3MCODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO2 = GLYOX + CH3O2 + CO';
k(:,i) = KDEC.*0.35;
Gstr{i,1} = 'MC3CODBCO2'; 
fMC3CODBCO2(i)=fMC3CODBCO2(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3O2(i)=fCH3O2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBCO2 = MMALANHY + HO2';
k(:,i) = KDEC.*0.65;
Gstr{i,1} = 'MC3CODBCO2'; 
fMC3CODBCO2(i)=fMC3CODBCO2(i)-1; fMMALANHY(i)=fMMALANHY(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + OH = MC3CODBCO2';
k(:,i) = 4.38e-11;
Gstr{i,1} = 'MC3ODBCO2H'; Gstr{i,2} = 'OH'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fOH(i)=fOH(i)-1; fMC3CODBCO2(i)=fMC3CODBCO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + hv = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J18;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3ODBCO2H + hv = CH3COCO2H + HO2 + CO + HO2 + CO';
k(:,i) = J19;
Gstr{i,1} = 'MC3ODBCO2H'; 
fMC3ODBCO2H(i)=fMC3ODBCO2H(i)-1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN + OH = GLYOX + HCHO + CO + NO2';
k(:,i) = 4.37e-11;
Gstr{i,1} = 'MC3CODBPAN'; Gstr{i,2} = 'OH'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fOH(i)=fOH(i)-1; fGLYOX(i)=fGLYOX(i)+1; fHCHO(i)=fHCHO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MC3CODBPAN = MC3CODBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MC3CODBPAN'; 
fMC3CODBPAN(i)=fMC3CODBPAN(i)-1; fMC3CODBCO3(i)=fMC3CODBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH + OH = C4M2ALOHO';
k(:,i) = 5.70e-11;
Gstr{i,1} = 'C4M2AL2OH'; Gstr{i,2} = 'OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fOH(i)=fOH(i)-1; fC4M2ALOHO(i)=fC4M2ALOHO(i)+1; 

i=i+1;
Rnames{i} = 'C4M2AL2OH + hv = CO2H3CHO + HO2 + CO + HO2';
k(:,i) = J17.*2;
Gstr{i,1} = 'C4M2AL2OH'; 
fC4M2AL2OH(i)=fC4M2AL2OH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + HO2 = NPXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'HO2'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fNPXYFUOOH(i)=fNPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO = NPXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + NO3 = NPXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'NO3'; 
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO2 + RO2 = NPXYFUO';
k(:,i) = 9.20e-14;
Gstr{i,1} = 'NPXYFUO2'; Gstr{i,2} = 'RO2';
fNPXYFUO2(i)=fNPXYFUO2(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + HO2 = MCOCOMOOOH';
k(:,i) = KRO2HO2.*0.625;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'HO2'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOOOH(i)=fMCOCOMOOOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO = MCOCOMOXO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO(i)=fNO(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + NO3 = MCOCOMOXO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'NO3'; 
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fNO3(i)=fNO3(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO2 + RO2 = MCOCOMOXO';
k(:,i) = 2.00e-12;
Gstr{i,1} = 'MCOCOMOXO2'; Gstr{i,2} = 'RO2';
fMCOCOMOXO2(i)=fMCOCOMOXO2(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + HO2 = PXYFUOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'HO2'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fHO2(i)=fHO2(i)-1; fPXYFUOOH(i)=fPXYFUOOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO = PXYFUO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO(i)=fNO(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + NO3 = PXYFUO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'NO3'; 
fPXYFUO2(i)=fPXYFUO2(i)-1; fNO3(i)=fNO3(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + RO2 = PXYFUO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO2 + RO2 = PXYFUOH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'PXYFUO2'; Gstr{i,2} = 'RO2';
fPXYFUO2(i)=fPXYFUO2(i)-1; fPXYFUOH(i)=fPXYFUOH(i)+1; 

i=i+1;
Rnames{i} = 'C47CHO + OH = C47CO3';
k(:,i) = 2.49e-11;
Gstr{i,1} = 'C47CHO'; Gstr{i,2} = 'OH'; 
fC47CHO(i)=fC47CHO(i)-1; fOH(i)=fOH(i)-1; fC47CO3(i)=fC47CO3(i)+1; 

i=i+1;
Rnames{i} = 'C47CHO + hv = GLYOX + MGLYOX + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47CHO'; 
fC47CHO(i)=fC47CHO(i)-1; fGLYOX(i)=fGLYOX(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INB1HPCHO + hv = ACETOL + GLYOX + OH + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INB1HPCHO'; 
fINB1HPCHO(i)=fINB1HPCHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1HPCHO = INB1HPCO3';
k(:,i) = 2.41e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1HPCHO'; 
fOH(i)=fOH(i)-1; fINB1HPCHO(i)=fINB1HPCHO(i)-1; fINB1HPCO3(i)=fINB1HPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NACHO + hv = ACETOL + GLYOX + NO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'INB1NACHO'; 
fINB1NACHO(i)=fINB1NACHO(i)-1; fACETOL(i)=fACETOL(i)+1; fGLYOX(i)=fGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INB1NACHO = INB1NACO3';
k(:,i) = 1.85e-11;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INB1NACHO'; 
fOH(i)=fOH(i)-1; fINB1NACHO(i)=fINB1NACHO(i)-1; fINB1NACO3(i)=fINB1NACO3(i)+1; 

i=i+1;
Rnames{i} = 'INB1NBCHO + hv = MVKNO3 + NO2 + CO + HO2';
k(:,i) = J56.*10;
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
Rnames{i} = 'C535OOH + OH = C535O2';
k(:,i) = 3.42e-11;
Gstr{i,1} = 'C535OOH'; Gstr{i,2} = 'OH'; 
fC535OOH(i)=fC535OOH(i)-1; fOH(i)=fOH(i)-1; fC535O2(i)=fC535O2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = C3MDIALOOH + OH + HO2';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fC3MDIALOOH(i)=fC3MDIALOOH(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = C535O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fC535O(i)=fC535O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C535OOH + hv = CO2H3CO3H + OH + HO2 + CO';
k(:,i) = J15;
Gstr{i,1} = 'C535OOH'; 
fC535OOH(i)=fC535OOH(i)-1; fCO2H3CO3H(i)=fCO2H3CO3H(i)+1; fOH(i)=fOH(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C535O = HCOCO3H + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C535O'; 
fC535O(i)=fC535O(i)-1; fHCOCO3H(i)=fHCOCO3H(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + HO2 = HO2 + DHPMPAL + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'HO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + HO2 = HPC52CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'HO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)-1; fHPC52CO3H(i)=fHPC52CO3H(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO = HO2 + DHPMPAL + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO2 = HPC52PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO2'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO2(i)=fNO2(i)-1; fHPC52PAN(i)=fHPC52PAN(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + NO3 = HO2 + DHPMPAL + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'NO3'; 
fHPC52CO3(i)=fHPC52CO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3 + RO2 = HO2 + DHPMPAL';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'HPC52CO3'; Gstr{i,2} = 'RO2';
fHPC52CO3(i)=fHPC52CO3(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; 

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
Rnames{i} = 'C4M2ALOHNO3 + hv = MGLYOX + GLYOX + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C4M2ALOHNO3'; 
fC4M2ALOHNO3(i)=fC4M2ALOHNO3(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fGLYOX(i)=fGLYOX(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'INDHPCHO + OH = INDHPCO3';
k(:,i) = 2.58e-11;
Gstr{i,1} = 'INDHPCHO'; Gstr{i,2} = 'OH'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fOH(i)=fOH(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; 

i=i+1;
Rnames{i} = 'INDHPCHO + hv = MGLYOX + HOCH2CHO + OH + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'INDHPCHO'; 
fINDHPCHO(i)=fINDHPCHO(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fOH(i)=fOH(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'HMACRO2 = H13CO2C3 + CO + OH';
k(:,i) = K14ISOM1;
Gstr{i,1} = 'HMACRO2'; 
fHMACRO2(i)=fHMACRO2(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

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
Rnames{i} = 'MALANHYOOH + OH = MALNHYOHCO + OH';
k(:,i) = 4.66e-11;
Gstr{i,1} = 'MALANHYOOH'; Gstr{i,2} = 'OH'; 
fMALANHYOOH(i)=fMALANHYOOH(i)-1; fOH(i)=fOH(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYOOH + hv = MALANHYO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MALANHYOOH'; 
fMALANHYOOH(i)=fMALANHYOOH(i)-1; fMALANHYO(i)=fMALANHYO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MALANHYO = HCOCOHCO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MALANHYO'; 
fMALANHYO(i)=fMALANHYO(i)-1; fHCOCOHCO3(i)=fHCOCOHCO3(i)+1; 

i=i+1;
Rnames{i} = 'MALANHY2OH + OH = MALNHYOHCO + HO2';
k(:,i) = 2.55e-11;
Gstr{i,1} = 'MALANHY2OH'; Gstr{i,2} = 'OH'; 
fMALANHY2OH(i)=fMALANHY2OH(i)-1; fOH(i)=fOH(i)-1; fMALNHYOHCO(i)=fMALNHYOHCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MALNHYOHCO + OH = CO + CO + CO + HO2';
k(:,i) = 5.68e-12;
Gstr{i,1} = 'MALNHYOHCO'; Gstr{i,2} = 'OH'; 
fMALNHYOHCO(i)=fMALNHYOHCO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENOOH + OH = NDNPHENO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NDNPHENOOH'; Gstr{i,2} = 'OH'; 
fNDNPHENOOH(i)=fNDNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fNDNPHENO2(i)=fNDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENOOH + hv = NDNPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NDNPHENOOH'; 
fNDNPHENOOH(i)=fNDNPHENOOH(i)-1; fNDNPHENO(i)=fNDNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NDNPHENO = NC4DCO2H + HNO3 + CO + CO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NDNPHENO'; 
fNDNPHENO(i)=fNDNPHENO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHNO3(i)=fHNO3(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENOOH + OH = DNPHENO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'DNPHENOOH'; Gstr{i,2} = 'OH'; 
fDNPHENOOH(i)=fDNPHENOOH(i)-1; fOH(i)=fOH(i)-1; fDNPHENO2(i)=fDNPHENO2(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENOOH + hv = DNPHENO + OH';
k(:,i) = J41;
Gstr{i,1} = 'DNPHENOOH'; 
fDNPHENOOH(i)=fDNPHENOOH(i)-1; fDNPHENO(i)=fDNPHENO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNPHENO = NC4DCO2H + HCOCO2H + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'DNPHENO'; 
fDNPHENO(i)=fDNPHENO(i)-1; fNC4DCO2H(i)=fNC4DCO2H(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'NC4DCO2H + OH = NC4DCO2';
k(:,i) = 1.90e-12.*exp(190./T);
Gstr{i,1} = 'NC4DCO2H'; Gstr{i,2} = 'OH'; 
fNC4DCO2H(i)=fNC4DCO2H(i)-1; fOH(i)=fOH(i)-1; fNC4DCO2(i)=fNC4DCO2(i)+1; 

i=i+1;
Rnames{i} = 'C6CO4DB + OH = CO + CO + HO2 + CO + C33CO';
k(:,i) = 7.70e-11;
Gstr{i,1} = 'C6CO4DB'; Gstr{i,2} = 'OH'; 
fC6CO4DB(i)=fC6CO4DB(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C6CO4DB + hv = C4CO2DBCO3 + HO2 + CO';
k(:,i) = J34.*2;
Gstr{i,1} = 'C6CO4DB'; 
fC6CO4DB(i)=fC6CO4DB(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + HO2 = C5COOHCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fC5COOHCO3H(i)=fC5COOHCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + HO2 = HOCOC4DIAL + HO2 + CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'HO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHO2(i)=fHO2(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO = HOCOC4DIAL + HO2 + CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO(i)=fNO(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO2 = C5CO2OHPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO2'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO2(i)=fNO2(i)-1; fC5CO2OHPAN(i)=fC5CO2OHPAN(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + NO3 = HOCOC4DIAL + HO2 + CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'NO3'; 
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fNO3(i)=fNO3(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHCO3 + RO2 = HOCOC4DIAL + HO2 + CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C5CO2OHCO3'; Gstr{i,2} = 'RO2';
fC5CO2OHCO3(i)=fC5CO2OHCO3(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

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

i=i+1;
Rnames{i} = 'C531OOH + OH = C531CO + OH';
k(:,i) = 2.31e-11;
Gstr{i,1} = 'C531OOH'; Gstr{i,2} = 'OH'; 
fC531OOH(i)=fC531OOH(i)-1; fOH(i)=fOH(i)-1; fC531CO(i)=fC531CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C531OOH + hv = C531O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C531OOH'; 
fC531OOH(i)=fC531OOH(i)-1; fC531O(i)=fC531O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C531OOH + hv = C531O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C531OOH'; 
fC531OOH(i)=fC531OOH(i)-1; fC531O(i)=fC531O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C531O = C31CO3 + HCHO';
k(:,i) = KDEC;
Gstr{i,1} = 'C531O'; 
fC531O(i)=fC531O(i)-1; fC31CO3(i)=fC31CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'C532CO + OH = C533O2';
k(:,i) = 1.37e-11;
Gstr{i,1} = 'C532CO'; Gstr{i,2} = 'OH'; 
fC532CO(i)=fC532CO(i)-1; fOH(i)=fOH(i)-1; fC533O2(i)=fC533O2(i)+1; 

i=i+1;
Rnames{i} = 'C532CO + hv = C31CO3 + CH3O2';
k(:,i) = J22;
Gstr{i,1} = 'C532CO'; 
fC532CO(i)=fC532CO(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCH3O2(i)=fCH3O2(i)+1; 

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
Rnames{i} = 'MMALANHY + OH = MMALANHYO2';
k(:,i) = 1.50e-12;
Gstr{i,1} = 'MMALANHY'; Gstr{i,2} = 'OH'; 
fMMALANHY(i)=fMMALANHY(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH + OH = NPXYFUO2';
k(:,i) = 5.16e-12;
Gstr{i,1} = 'NPXYFUOOH'; Gstr{i,2} = 'OH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fNPXYFUO2(i)=fNPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUOOH + hv = NPXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'NPXYFUOOH'; 
fNPXYFUOOH(i)=fNPXYFUOOH(i)-1; fNPXYFUO(i)=fNPXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'NPXYFUO = C23O3CCHO + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NPXYFUO'; 
fNPXYFUO(i)=fNPXYFUO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + OH = MCOCOMOXO2';
k(:,i) = 2.00e-11;
Gstr{i,1} = 'MCOCOMOOOH'; Gstr{i,2} = 'OH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + hv = CH3CO3 + HCHO + OH';
k(:,i) = J22;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fCH3CO3(i)=fCH3CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOOOH + hv = MCOCOMOXO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MCOCOMOOOH'; 
fMCOCOMOOOH(i)=fMCOCOMOOOH(i)-1; fMCOCOMOXO(i)=fMCOCOMOXO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MCOCOMOXO = HCHO + CH3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MCOCOMOXO'; 
fMCOCOMOXO(i)=fMCOCOMOXO(i)-1; fHCHO(i)=fHCHO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH + OH = PXYFUO2';
k(:,i) = 2.78e-11;
Gstr{i,1} = 'PXYFUOOH'; Gstr{i,2} = 'OH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fOH(i)=fOH(i)-1; fPXYFUO2(i)=fPXYFUO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOOH + hv = PXYFUO + OH';
k(:,i) = J41;
Gstr{i,1} = 'PXYFUOOH'; 
fPXYFUOOH(i)=fPXYFUOOH(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUO = C23O3CCHO + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'PXYFUO'; 
fPXYFUO(i)=fPXYFUO(i)-1; fC23O3CCHO(i)=fC23O3CCHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'PXYFUOH + OH = PXYFUO';
k(:,i) = 2.44e-11;
Gstr{i,1} = 'PXYFUOH'; Gstr{i,2} = 'OH'; 
fPXYFUOH(i)=fPXYFUOH(i)-1; fOH(i)=fOH(i)-1; fPXYFUO(i)=fPXYFUO(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + HO2 = C47CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'HO2'; 
fC47CO3(i)=fC47CO3(i)-1; fHO2(i)=fHO2(i)-1; fC47CO3H(i)=fC47CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + HO2 = CO2N3CHO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'HO2'; 
fC47CO3(i)=fC47CO3(i)-1; fHO2(i)=fHO2(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO = CO2N3CHO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO'; 
fC47CO3(i)=fC47CO3(i)-1; fNO(i)=fNO(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO2 = C47PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO2'; 
fC47CO3(i)=fC47CO3(i)-1; fNO2(i)=fNO2(i)-1; fC47PAN(i)=fC47PAN(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + NO3 = CO2N3CHO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'NO3'; 
fC47CO3(i)=fC47CO3(i)-1; fNO3(i)=fNO3(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3 + RO2 = CO2N3CHO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C47CO3'; Gstr{i,2} = 'RO2';
fC47CO3(i)=fC47CO3(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fHO2(i)=fHO2(i)+1; 

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
Rnames{i} = 'HPC52CO3H + OH = HPC52CO3';
k(:,i) = 2.69e-11;
Gstr{i,1} = 'HPC52CO3H'; Gstr{i,2} = 'OH'; 
fHPC52CO3H(i)=fHPC52CO3H(i)-1; fOH(i)=fOH(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; 

i=i+1;
Rnames{i} = 'HPC52CO3H + hv = HO2 + DHPMPAL + OH';
k(:,i) = J41.*3;
Gstr{i,1} = 'HPC52CO3H'; 
fHPC52CO3H(i)=fHPC52CO3H(i)-1; fHO2(i)=fHO2(i)+1; fDHPMPAL(i)=fDHPMPAL(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HPC52PAN + OH = DHPMPAL + CO + NO2';
k(:,i) = 2.33e-11;
Gstr{i,1} = 'HPC52PAN'; Gstr{i,2} = 'OH'; 
fHPC52PAN(i)=fHPC52PAN(i)-1; fOH(i)=fOH(i)-1; fDHPMPAL(i)=fDHPMPAL(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HPC52PAN = HPC52CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'HPC52PAN'; 
fHPC52PAN(i)=fHPC52PAN(i)-1; fHPC52CO3(i)=fHPC52CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'INAHPPAN = INAHPCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INAHPPAN'; 
fINAHPPAN(i)=fINAHPPAN(i)-1; fINAHPCO3(i)=fINAHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INAHPPAN + hv = INAHPCO3 + NO2';
k(:,i) = J41;
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
Rnames{i} = 'MMALNACO2H + OH = CONM2CHO + HO2';
k(:,i) = 4.93e-12;
Gstr{i,1} = 'MMALNACO2H'; Gstr{i,2} = 'OH'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO2H + hv = MGLYOX + NO2 + HCOCO2H + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNACO2H'; 
fMMALNACO2H(i)=fMMALNACO2H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO2H(i)=fHCOCO2H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + OH = MMALNACO3';
k(:,i) = 8.01e-12;
Gstr{i,1} = 'MMALNACO3H'; Gstr{i,2} = 'OH'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNACO3H + hv = MGLYOX + NO2 + HCOCO3H + HO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNACO3H'; 
fMMALNACO3H(i)=fMMALNACO3H(i)-1; fMGLYOX(i)=fMGLYOX(i)+1; fNO2(i)=fNO2(i)+1; fHCOCO3H(i)=fHCOCO3H(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + OH = CONM2CHO + HO2 + NO3';
k(:,i) = 4.41e-12;
Gstr{i,1} = 'MMALNAPAN'; Gstr{i,2} = 'OH'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fOH(i)=fOH(i)-1; fCONM2CHO(i)=fCONM2CHO(i)+1; fHO2(i)=fHO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN = MMALNACO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNAPAN + hv = MMALNACO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'MMALNAPAN'; 
fMMALNAPAN(i)=fMMALNAPAN(i)-1; fMMALNACO3(i)=fMMALNACO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'HMACO2H + OH = HOCH2CO3 + HCHO';
k(:,i) = 1.84e-11;
Gstr{i,1} = 'HMACO2H'; Gstr{i,2} = 'OH'; 
fHMACO2H(i)=fHMACO2H(i)-1; fOH(i)=fOH(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = H13CO2C3 + CO + OH';
k(:,i) = 1.63e-11;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + OH = HMACO3';
k(:,i) = 3.60e-12;
Gstr{i,1} = 'HMACO3H'; Gstr{i,2} = 'OH'; 
fHMACO3H(i)=fHMACO3H(i)-1; fOH(i)=fOH(i)-1; fHMACO3(i)=fHMACO3(i)+1; 

i=i+1;
Rnames{i} = 'HMACO3H + hv = HOCH2CO3 + HCHO + OH';
k(:,i) = J41;
Gstr{i,1} = 'HMACO3H'; 
fHMACO3H(i)=fHMACO3H(i)-1; fHOCH2CO3(i)=fHOCH2CO3(i)+1; fHCHO(i)=fHCHO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'HMPAN + OH = H13CO2C3 + CO + NO3';
k(:,i) = 2.90e-11;
Gstr{i,1} = 'HMPAN'; Gstr{i,2} = 'OH'; 
fHMPAN(i)=fHMPAN(i)-1; fOH(i)=fOH(i)-1; fH13CO2C3(i)=fH13CO2C3(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

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
Rnames{i} = 'NC4DCO2 = MALANHY + NO2';
k(:,i) = KDEC;
Gstr{i,1} = 'NC4DCO2'; 
fNC4DCO2(i)=fNC4DCO2(i)-1; fMALANHY(i)=fMALANHY(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + HO2 = C4CO2DCO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fC4CO2DCO3H(i)=fC4CO2DCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + HO2 = HO2 + CO + C33CO + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'HO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO = HO2 + CO + C33CO + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO(i)=fNO(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO2 = C4CO2DBPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO2'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO2(i)=fNO2(i)-1; fC4CO2DBPAN(i)=fC4CO2DBPAN(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + NO3 = HO2 + CO + C33CO + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'NO3'; 
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fNO3(i)=fNO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBCO3 + RO2 = HO2 + CO + C33CO';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C4CO2DBCO3'; Gstr{i,2} = 'RO2';
fC4CO2DBCO3(i)=fC4CO2DBCO3(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; 

i=i+1;
Rnames{i} = 'C5COOHCO3H + OH = C5CO2OHCO3';
k(:,i) = 8.01e-11;
Gstr{i,1} = 'C5COOHCO3H'; Gstr{i,2} = 'OH'; 
fC5COOHCO3H(i)=fC5COOHCO3H(i)-1; fOH(i)=fOH(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; 

i=i+1;
Rnames{i} = 'C5COOHCO3H + hv = HOCOC4DIAL + HO2 + CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C5COOHCO3H'; 
fC5COOHCO3H(i)=fC5COOHCO3H(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHPAN + OH = HOCOC4DIAL + CO + CO + NO2';
k(:,i) = 7.66e-11;
Gstr{i,1} = 'C5CO2OHPAN'; Gstr{i,2} = 'OH'; 
fC5CO2OHPAN(i)=fC5CO2OHPAN(i)-1; fOH(i)=fOH(i)-1; fHOCOC4DIAL(i)=fHOCOC4DIAL(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C5CO2OHPAN = C5CO2OHCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C5CO2OHPAN'; 
fC5CO2OHPAN(i)=fC5CO2OHPAN(i)-1; fC5CO2OHCO3(i)=fC5CO2OHCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C531CO + OH = C31CO3 + CO';
k(:,i) = 2.62e-11;
Gstr{i,1} = 'C531CO'; Gstr{i,2} = 'OH'; 
fC531CO(i)=fC531CO(i)-1; fOH(i)=fOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C531CO + hv = C31CO3 + CO + HO2';
k(:,i) = J34;
Gstr{i,1} = 'C531CO'; 
fC531CO(i)=fC531CO(i)-1; fC31CO3(i)=fC31CO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + HO2 = C31CO3H';
k(:,i) = KAPHO2.*0.56;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'HO2'; 
fC31CO3(i)=fC31CO3(i)-1; fHO2(i)=fHO2(i)-1; fC31CO3H(i)=fC31CO3H(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + HO2 = CHOOCHO + CO + HO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'HO2'; 
fC31CO3(i)=fC31CO3(i)-1; fHO2(i)=fHO2(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO = CHOOCHO + CO + HO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO'; 
fC31CO3(i)=fC31CO3(i)-1; fNO(i)=fNO(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO2 = C31PAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO2'; 
fC31CO3(i)=fC31CO3(i)-1; fNO2(i)=fNO2(i)-1; fC31PAN(i)=fC31PAN(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + NO3 = CHOOCHO + CO + HO2 + NO2';
k(:,i) = KRO2NO3.*1.6;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'NO3'; 
fC31CO3(i)=fC31CO3(i)-1; fNO3(i)=fNO3(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3 + RO2 = CHOOCHO + CO + HO2';
k(:,i) = 1.00e-11;
Gstr{i,1} = 'C31CO3'; Gstr{i,2} = 'RO2';
fC31CO3(i)=fC31CO3(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + HO2 = C533OOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'HO2'; 
fC533O2(i)=fC533O2(i)-1; fHO2(i)=fHO2(i)-1; fC533OOH(i)=fC533OOH(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + NO = C533O + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'NO'; 
fC533O2(i)=fC533O2(i)-1; fNO(i)=fNO(i)-1; fC533O(i)=fC533O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + NO3 = C533O + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'NO3'; 
fC533O2(i)=fC533O2(i)-1; fNO3(i)=fNO3(i)-1; fC533O(i)=fC533O(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533O2 + RO2 = C533O';
k(:,i) = 8.80e-13;
Gstr{i,1} = 'C533O2'; Gstr{i,2} = 'RO2';
fC533O2(i)=fC533O2(i)-1; fC533O(i)=fC533O(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + HO2 = MMALNHYOOH';
k(:,i) = KRO2HO2.*0.706;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'HO2'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fHO2(i)=fHO2(i)-1; fMMALNHYOOH(i)=fMMALNHYOOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO = MMALANHYO + NO2';
k(:,i) = KRO2NO;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO(i)=fNO(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + NO3 = MMALANHYO + NO2';
k(:,i) = KRO2NO3;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'NO3'; 
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fNO3(i)=fNO3(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + RO2 = MMALANHYO';
k(:,i) = 9.20e-14.*0.70;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO2 + RO2 = MMALNHY2OH';
k(:,i) = 9.20e-14.*0.30;
Gstr{i,1} = 'MMALANHYO2'; Gstr{i,2} = 'RO2';
fMMALANHYO2(i)=fMMALANHYO2(i)-1; fMMALNHY2OH(i)=fMMALNHY2OH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + NO3 = C23O3CCO3 + HNO3';
k(:,i) = KNO3AL.*5.5;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'NO3'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fNO3(i)=fNO3(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + OH = C23O3CCO3';
k(:,i) = 2.15e-11;
Gstr{i,1} = 'C23O3CCHO'; Gstr{i,2} = 'OH'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCHO + hv = CO + MCOCOMOXO2 + HO2';
k(:,i) = J15;
Gstr{i,1} = 'C23O3CCHO'; 
fC23O3CCHO(i)=fC23O3CCHO(i)-1; fCO(i)=fCO(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3H + OH = C47CO3';
k(:,i) = 7.71e-12;
Gstr{i,1} = 'C47CO3H'; Gstr{i,2} = 'OH'; 
fC47CO3H(i)=fC47CO3H(i)-1; fOH(i)=fOH(i)-1; fC47CO3(i)=fC47CO3(i)+1; 

i=i+1;
Rnames{i} = 'C47CO3H + hv = GLYOX + CH3COCO3H + HO2 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47CO3H'; 
fC47CO3H(i)=fC47CO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN + OH = CO2N3CHO + CO + NO3';
k(:,i) = 4.11e-12;
Gstr{i,1} = 'C47PAN'; Gstr{i,2} = 'OH'; 
fC47PAN(i)=fC47PAN(i)-1; fOH(i)=fOH(i)-1; fCO2N3CHO(i)=fCO2N3CHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN = C47CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C47PAN'; 
fC47PAN(i)=fC47PAN(i)-1; fC47CO3(i)=fC47CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C47PAN + hv = C47CO3 + NO2';
k(:,i) = J56.*10;
Gstr{i,1} = 'C47PAN'; 
fC47PAN(i)=fC47PAN(i)-1; fC47CO3(i)=fC47CO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'MMALNBCO2H + OH = CO2H3CHO + NO2';
k(:,i) = 2.23e-11;
Gstr{i,1} = 'MMALNBCO2H'; Gstr{i,2} = 'OH'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO2H + hv = GLYOX + CH3COCO2H + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBCO2H'; 
fMMALNBCO2H(i)=fMMALNBCO2H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + OH = MMALNBCO3';
k(:,i) = 2.59e-11;
Gstr{i,1} = 'MMALNBCO3H'; Gstr{i,2} = 'OH'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fOH(i)=fOH(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBCO3H + hv = GLYOX + CH3COCO3H + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBCO3H'; 
fMMALNBCO3H(i)=fMMALNBCO3H(i)-1; fGLYOX(i)=fGLYOX(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + OH = CO2H3CHO + NO2 + NO3';
k(:,i) = 2.18e-11;
Gstr{i,1} = 'MMALNBPAN'; Gstr{i,2} = 'OH'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fOH(i)=fOH(i)-1; fCO2H3CHO(i)=fCO2H3CHO(i)+1; fNO2(i)=fNO2(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN = MMALNBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNBPAN + hv = MMALNBCO3 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'MMALNBPAN'; 
fMMALNBPAN(i)=fMMALNBPAN(i)-1; fMMALNBCO3(i)=fMMALNBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

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
Rnames{i} = 'INDHPPAN + hv = INDHPCO3 + NO2';
k(:,i) = J41;
Gstr{i,1} = 'INDHPPAN'; 
fINDHPPAN(i)=fINDHPPAN(i)-1; fINDHPCO3(i)=fINDHPCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO2H + hv = NO3CH2CO3 + CH3COCO2H + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOCO2H'; 
fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO2H(i)=fCH3COCO2H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO2H = NO2 + CO23C4NO3';
k(:,i) = 9.35e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO2H'; 
fOH(i)=fOH(i)-1; fINANCOCO2H(i)=fINANCOCO2H(i)-1; fNO2(i)=fNO2(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOCO3H + hv = NO3CH2CO3 + CH3COCO3H + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOCO3H'; 
fINANCOCO3H(i)=fINANCOCO3H(i)-1; fNO3CH2CO3(i)=fNO3CH2CO3(i)+1; fCH3COCO3H(i)=fCH3COCO3H(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOCO3H = INANCOCO3';
k(:,i) = 4.02e-12;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOCO3H'; 
fOH(i)=fOH(i)-1; fINANCOCO3H(i)=fINANCOCO3H(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN + hv = INANCOCO3  + NO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'INANCOPAN = INANCOCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'INANCOPAN'; 
fINANCOPAN(i)=fINANCOPAN(i)-1; fINANCOCO3(i)=fINANCOCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'OH + INANCOPAN = NO3 + CO23C4NO3';
k(:,i) = 4.15e-13;
Gstr{i,1} = 'OH'; Gstr{i,2} = 'INANCOPAN'; 
fOH(i)=fOH(i)-1; fINANCOPAN(i)=fINANCOPAN(i)-1; fNO3(i)=fNO3(i)+1; fCO23C4NO3(i)=fCO23C4NO3(i)+1; 

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
Rnames{i} = 'HPNC524CO + hv = HOCH2CHO + HOCH2COCHO + NO2 + OH';
k(:,i) = J56.*4;
Gstr{i,1} = 'HPNC524CO'; 
fHPNC524CO(i)=fHPNC524CO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + OH = HMVKNO3 + CO + NO2';
k(:,i) = 1.93e-11;
Gstr{i,1} = 'DNC524CO'; Gstr{i,2} = 'OH'; 
fDNC524CO(i)=fDNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'DNC524CO + hv = HMVKNO3 + CO + HO2 + NO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'DNC524CO'; 
fDNC524CO(i)=fDNC524CO(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + OH = HMVKNGLYOX + HO2';
k(:,i) = 3.85e-12;
Gstr{i,1} = 'HMVKNO3'; Gstr{i,2} = 'OH'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fOH(i)=fOH(i)-1; fHMVKNGLYOX(i)=fHMVKNGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HMVKNO3 + hv = HOCH2CHO + NO2 + CO + CO + HO2';
k(:,i) = J56.*1.6;
Gstr{i,1} = 'HMVKNO3'; 
fHMVKNO3(i)=fHMVKNO3(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fNO2(i)=fNO2(i)+1; fCO(i)=fCO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO + OH = HMVKNO3 + CO + HO2';
k(:,i) = 2.67e-11;
Gstr{i,1} = 'HNC524CO'; Gstr{i,2} = 'OH'; 
fHNC524CO(i)=fHNC524CO(i)-1; fOH(i)=fOH(i)-1; fHMVKNO3(i)=fHMVKNO3(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'HNC524CO + hv = HOCH2CHO + HOCH2COCHO + NO2 + HO2';
k(:,i) = J56.*4;
Gstr{i,1} = 'HNC524CO'; 
fHNC524CO(i)=fHNC524CO(i)-1; fHOCH2CHO(i)=fHOCH2CHO(i)+1; fHOCH2COCHO(i)=fHOCH2COCHO(i)+1; fNO2(i)=fNO2(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + OH = C4CO2DBCO3';
k(:,i) = 3.06e-11;
Gstr{i,1} = 'C4CO2DCO3H'; Gstr{i,2} = 'OH'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fOH(i)=fOH(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + hv = HO2 + CO + C33CO + OH';
k(:,i) = J41;
Gstr{i,1} = 'C4CO2DCO3H'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DCO3H + hv = HO2 + CO + C33CO + OH';
k(:,i) = J34;
Gstr{i,1} = 'C4CO2DCO3H'; 
fC4CO2DCO3H(i)=fC4CO2DCO3H(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; fC33CO(i)=fC33CO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBPAN + OH = C33CO + CO + NO2';
k(:,i) = 2.74e-11;
Gstr{i,1} = 'C4CO2DBPAN'; Gstr{i,2} = 'OH'; 
fC4CO2DBPAN(i)=fC4CO2DBPAN(i)-1; fOH(i)=fOH(i)-1; fC33CO(i)=fC33CO(i)+1; fCO(i)=fCO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C4CO2DBPAN = C4CO2DBCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C4CO2DBPAN'; 
fC4CO2DBPAN(i)=fC4CO2DBPAN(i)-1; fC4CO2DBCO3(i)=fC4CO2DBCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3H + OH = C31CO3';
k(:,i) = 1.72e-11;
Gstr{i,1} = 'C31CO3H'; Gstr{i,2} = 'OH'; 
fC31CO3H(i)=fC31CO3H(i)-1; fOH(i)=fOH(i)-1; fC31CO3(i)=fC31CO3(i)+1; 

i=i+1;
Rnames{i} = 'C31CO3H + hv = CHOOCHO + CO + HO2 + OH';
k(:,i) = J41;
Gstr{i,1} = 'C31CO3H'; 
fC31CO3H(i)=fC31CO3H(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'CHOOCHO + OH = HO2 + CO';
k(:,i) = 1.80e-13;
Gstr{i,1} = 'CHOOCHO'; Gstr{i,2} = 'OH'; 
fCHOOCHO(i)=fCHOOCHO(i)-1; fOH(i)=fOH(i)-1; fHO2(i)=fHO2(i)+1; fCO(i)=fCO(i)+1; 

i=i+1;
Rnames{i} = 'C31PAN + OH = CHOOCHO + CO + NO3';
k(:,i) = 1.36e-11;
Gstr{i,1} = 'C31PAN'; Gstr{i,2} = 'OH'; 
fC31PAN(i)=fC31PAN(i)-1; fOH(i)=fOH(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fCO(i)=fCO(i)+1; fNO3(i)=fNO3(i)+1; 

i=i+1;
Rnames{i} = 'C31PAN = C31CO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C31PAN'; 
fC31PAN(i)=fC31PAN(i)-1; fC31CO3(i)=fC31CO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH + OH = C533O2';
k(:,i) = 2.20e-11;
Gstr{i,1} = 'C533OOH'; Gstr{i,2} = 'OH'; 
fC533OOH(i)=fC533OOH(i)-1; fOH(i)=fOH(i)-1; fC533O2(i)=fC533O2(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH + hv = C533O + OH';
k(:,i) = J41;
Gstr{i,1} = 'C533OOH'; 
fC533OOH(i)=fC533OOH(i)-1; fC533O(i)=fC533O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C533OOH + hv = C533O + OH';
k(:,i) = J22;
Gstr{i,1} = 'C533OOH'; 
fC533OOH(i)=fC533OOH(i)-1; fC533O(i)=fC533O(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C533O = CHOOCHO + MGLYOX + HO2';
k(:,i) = KDEC;
Gstr{i,1} = 'C533O'; 
fC533O(i)=fC533O(i)-1; fCHOOCHO(i)=fCHOOCHO(i)+1; fMGLYOX(i)=fMGLYOX(i)+1; fHO2(i)=fHO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH + OH = MMALANHYO2';
k(:,i) = 1.69e-11;
Gstr{i,1} = 'MMALNHYOOH'; Gstr{i,2} = 'OH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO2(i)=fMMALANHYO2(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHYOOH + hv = MMALANHYO + OH';
k(:,i) = J41;
Gstr{i,1} = 'MMALNHYOOH'; 
fMMALNHYOOH(i)=fMMALNHYOOH(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'MMALANHYO = CO2H3CO3';
k(:,i) = KDEC;
Gstr{i,1} = 'MMALANHYO'; 
fMMALANHYO(i)=fMMALANHYO(i)-1; fCO2H3CO3(i)=fCO2H3CO3(i)+1; 

i=i+1;
Rnames{i} = 'MMALNHY2OH + OH = MMALANHYO';
k(:,i) = 1.34e-11;
Gstr{i,1} = 'MMALNHY2OH'; Gstr{i,2} = 'OH'; 
fMMALNHY2OH(i)=fMMALNHY2OH(i)-1; fOH(i)=fOH(i)-1; fMMALANHYO(i)=fMMALANHYO(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO2H + O3';
k(:,i) = KAPHO2.*0.15;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; fO3(i)=fO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = C23O3CCO3H';
k(:,i) = KAPHO2.*0.41;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fC23O3CCO3H(i)=fC23O3CCO3H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + HO2 = MCOCOMOXO2 + OH';
k(:,i) = KAPHO2.*0.44;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'HO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fHO2(i)=fHO2(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fOH(i)=fOH(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO = MCOCOMOXO2 + NO2';
k(:,i) = KAPNO;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO(i)=fNO(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO2 = C23O3CPAN';
k(:,i) = KFPAN;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO2'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO2(i)=fNO2(i)-1; fC23O3CPAN(i)=fC23O3CPAN(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + NO3 = MCOCOMOXO2 + NO2';
k(:,i) = KRO2NO3.*1.74;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'NO3'; 
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fNO3(i)=fNO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + RO2 = C23O3CCO2H';
k(:,i) = 1.00e-11.*0.3;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fC23O3CCO2H(i)=fC23O3CCO2H(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3 + RO2 = MCOCOMOXO2';
k(:,i) = 1.00e-11.*0.7;
Gstr{i,1} = 'C23O3CCO3'; Gstr{i,2} = 'RO2';
fC23O3CCO3(i)=fC23O3CCO3(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

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
Rnames{i} = 'C23O3CCO2H + OH = MCOCOMOXO2';
k(:,i) = 8.76e-13;
Gstr{i,1} = 'C23O3CCO2H'; Gstr{i,2} = 'OH'; 
fC23O3CCO2H(i)=fC23O3CCO2H(i)-1; fOH(i)=fOH(i)-1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H + OH = C23O3CCO3';
k(:,i) = 4.34e-12;
Gstr{i,1} = 'C23O3CCO3H'; Gstr{i,2} = 'OH'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CCO3H + hv = OH + MCOCOMOXO2';
k(:,i) = J41;
Gstr{i,1} = 'C23O3CCO3H'; 
fC23O3CCO3H(i)=fC23O3CCO3H(i)-1; fOH(i)=fOH(i)+1; fMCOCOMOXO2(i)=fMCOCOMOXO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN + OH = CO + C23O3CHO + NO2';
k(:,i) = 7.36e-13;
Gstr{i,1} = 'C23O3CPAN'; Gstr{i,2} = 'OH'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fC23O3CHO(i)=fC23O3CHO(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CPAN = C23O3CCO3 + NO2';
k(:,i) = KBPAN;
Gstr{i,1} = 'C23O3CPAN'; 
fC23O3CPAN(i)=fC23O3CPAN(i)-1; fC23O3CCO3(i)=fC23O3CCO3(i)+1; fNO2(i)=fNO2(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + NO3 = CO + CH3CO3 + HNO3';
k(:,i) = KNO3AL.*4.0;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'NO3'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fNO3(i)=fNO3(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; fHNO3(i)=fHNO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + OH = CO + CH3CO3';
k(:,i) = 1.27e-11;
Gstr{i,1} = 'C23O3CHO'; Gstr{i,2} = 'OH'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fOH(i)=fOH(i)-1; fCO(i)=fCO(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

i=i+1;
Rnames{i} = 'C23O3CHO + hv = CO + HO2 + CH3CO3';
k(:,i) = J22;
Gstr{i,1} = 'C23O3CHO'; 
fC23O3CHO(i)=fC23O3CHO(i)-1; fCO(i)=fCO(i)+1; fHO2(i)=fHO2(i)+1; fCH3CO3(i)=fCH3CO3(i)+1; 

%END OF REACTION LIST


