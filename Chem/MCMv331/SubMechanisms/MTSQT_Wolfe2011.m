% MTSQTRxns.m
% Monoterpene and sesquiterpene reactions as described in
% Wolfe and Thornton, Atmos. Chem. Phys., 2011, 11, 77-101.
% Note that BCARY and LIMONENE reactions have been commented out, 
% as these compounds now have an explicit mechanism in MCMv3.2.
% 
% 20120210 GMW
% 20120720 GMW Added another compound, UMT, for unspeciated MTs. Behaves like B-Pinene.

SpeciesToAdd = {'CARENE3';'MYRCENE';'CAMPHENE';'TERPINOLENE';...
    'ATERPINENE';'GTERPINENE';'MCHAV';'UMT';'MTO2';'MTOX';...
    'AFARN';'ABERG';'USQT';'SQTO2';'SQTOX';...
    'OH';'O3';'NO3';'NO';'NO2';'HO2';...
    'CH3COCH3';'HCHO';'HCOOH';'ACETOL';'CH3CHO';'CH3CO2H'};
RO2ToAdd = {'MTO2';'SQTO2'};
AddSpecies

%---------------------------------------------------------------------------------
% NON-MCM MONOTERPENE OXIDATION
%---------------------------------------------------------------------------------
% i=i+1;
% Rnames{i} = 'LIMONENE + OH = MTO2';
% k(:,i) = 1.7e-10; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'OH';
% fLIMONENE(i)=-1; fOH(i)=-1; fMTO2(i)=1;
% 
% i=i+1;
% Rnames{i} = 'LIMONENE + O3 = 0.67OH + 0.02CH3COCH3 + 0.19HCHO + 0.05HCOOH + MTO2';
% k(:,i) = 2.0e-16; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'O3';
% fLIMONENE(i)=-1; fO3(i)=-1; fOH(i)=0.67; fCH3COCH3(i)=0.02; fHCHO(i)=0.19; fHCOOH(i)=0.05; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)
% 
% i=i+1;
% Rnames{i} = 'LIMONENE + NO3 = MTO2'; %1/2 of products are organic nitrates
% k(:,i) = 1.3e-11; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'LIMONENE'; Gstr{i,2} = 'NO3';
% fLIMONENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'CARENE3 + OH = 0.15CH3COCH3 + 0.21HCHO + 0.08HCOOH + MTO2';
k(:,i) = 8.7e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CARENE3'; Gstr{i,2} = 'OH';
fCARENE3(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.15; fHCHO(i)=0.21; fHCOOH(i)=0.08; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'CARENE3 + O3 = 0.86OH + 0.1CH3COCH3 + 0.16HCHO + MTO2';
k(:,i) = 2.0e-16; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CARENE3'; Gstr{i,2} = 'O3';
fCARENE3(i)=-1; fO3(i)=-1; fOH(i)=0.86; fCH3COCH3(i)=0.1; fHCHO(i)=0.16; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'CARENE3 + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 9.5e-12; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CARENE3'; Gstr{i,2} = 'NO3';
fCARENE3(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'MYRCENE + OH = 0.36CH3COCH3 + 0.30HCHO + 0.05HCOOH + MTO2';
k(:,i) = 9.2e-12.*exp(1071./T); %2.1e-10; %Hites and Turner (2009)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'OH';
fMYRCENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.36; fHCHO(i)=0.30; fHCOOH(i)=0.05; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'MYRCENE + O3 = 0.63OH + 0.25CH3COCH3 + 0.26HCHO + 0.19ACETOL + MTO2';
k(:,i) = 4.7e-16; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'O3';
fMYRCENE(i)=-1; fO3(i)=-1; fOH(i)=0.63; fCH3COCH3(i)=0.25; fHCHO(i)=0.26; fACETOL(i)=0.19; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'MYRCENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 1.1e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MYRCENE'; Gstr{i,2} = 'NO3';
fMYRCENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'CAMPHENE + OH = 0.39CH3COCH3 + MTO2';
k(:,i) = 5.34e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'OH';
fCAMPHENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.39; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'CAMPHENE + O3 = 0.18OH + MTO2';
k(:,i) = 9.19e-19; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'O3';
fCAMPHENE(i)=-1; fO3(i)=-1; fOH(i)=0.18; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'CAMPHENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 6.54e-13; %from Bouvier-Brown (2008)
Gstr{i,1} = 'CAMPHENE'; Gstr{i,2} = 'NO3';
fCAMPHENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'TERPINOLENE + OH = 0.39CH3COCH3 + 0.29HCHO + 0.08HCOOH + MTO2';
k(:,i) = 2.3e-10; %from Bouvier-Brown (2008)
Gstr{i,1} = 'TERPINOLENE'; Gstr{i,2} = 'OH';
fTERPINOLENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.39; fHCHO(i)=0.29; fHCOOH(i)=0.08; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'TERPINOLENE + O3 = 0.74OH + 0.5CH3COCH3 + MTO2';
k(:,i) = 1.9e-15; %from Bouvier-Brown (2008)
Gstr{i,1} = 'TERPINOLENE'; Gstr{i,2} = 'O3';
fTERPINOLENE(i)=-1; fO3(i)=-1; fOH(i)=0.74; fCH3COCH3(i)=0.5; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'TERPINOLENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 9.5e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'TERPINOLENE'; Gstr{i,2} = 'NO3';
fTERPINOLENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'ATERPINENE + OH = 0.1CH3COCH3 + MTO2';
k(:,i) = 3.4e-10; %1.8e-10; %from Hites and Turner (2009)
Gstr{i,1} = 'ATERPINENE'; Gstr{i,2} = 'OH';
fATERPINENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.1; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'ATERPINENE + O3 = 0.38OH + 0.03CH3COCH3 + MTO2';
k(:,i) = 2.1e-14; %from Bouvier-Brown (2008)
Gstr{i,1} = 'ATERPINENE'; Gstr{i,2} = 'O3';
fATERPINENE(i)=-1; fO3(i)=-1; fOH(i)=0.38; fCH3COCH3(i)=0.03; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'ATERPINENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 3.3e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'ATERPINENE'; Gstr{i,2} = 'NO3';
fATERPINENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'GTERPINENE + OH = 0.1CH3COCH3 + MTO2';
k(:,i) = 1.8e-10; %from Bouvier-Brown (2008)
Gstr{i,1} = 'GTERPINENE'; Gstr{i,2} = 'OH';
fGTERPINENE(i)=-1; fOH(i)=-1; fCH3COCH3(i)=0.1; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'GTERPINENE + O3 = 0.8OH + 0.1CH3COCH3 + MTO2';
k(:,i) = 1.4e-16; %from Bouvier-Brown (2008)
Gstr{i,1} = 'GTERPINENE'; Gstr{i,2} = 'O3';
fGTERPINENE(i)=-1; fO3(i)=-1; fOH(i)=0.8; fCH3COCH3(i)=0.1; fMTO2(i)=1; %product yields from Atkinson and Arey (2003)

i=i+1;
Rnames{i} = 'GTERPINENE + NO3 = MTO2'; %1/2 of products are organic nitrates
k(:,i) = 3.3e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'GTERPINENE'; Gstr{i,2} = 'NO3';
fGTERPINENE(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'MCHAV + OH = 0.52HCHO + 0.01CH3CHO + 0.08HCOOH + 0.01CH3COCH3 + 0.25CH3CO2H + MTO2';
k(:,i) = 5.4e-11; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MCHAV'; Gstr{i,2} = 'OH';
fMCHAV(i)=-1; fOH(i)=-1; fHCHO(i)=0.52; fCH3CHO(i)=0.01; fHCOOH(i)=0.08; fCH3COCH3(i)=0.01; fCH3CO2H(i)=0.25; fMTO2(i)=1; %yields from Lee et al. 2006b

i=i+1;
Rnames{i} = 'MCHAV + O3 = OH + 0.61HCHO + 0.11HCOOH + 0.01CH3COCH3 + 0.02CH3CO2H + MTO2';
k(:,i) = 1.2e-17; %from Bouvier-Brown (2008)
Gstr{i,1} = 'MCHAV'; Gstr{i,2} = 'O3';
fMCHAV(i)=-1; fO3(i)=-1; fHCHO(i)=0.61; fHCOOH(i)=0.11; fCH3COCH3(i)=0.01; fCH3CO2H(i)=0.02; fMTO2(i)=1; %yields from Lee et al. 2006b
fOH(i)=0.7; %guessed OH yield

i=i+1;
Rnames{i} = 'MCHAV + NO3 = MTO2';
k(:,i) = 2.5e-12; %from Bouvier-Brown (2008) for B-Pinene
Gstr{i,1} = 'MCHAV'; Gstr{i,2} = 'NO3';
fMCHAV(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'UMT + OH = MTO2';
k(:,i) = 2.38e-11.*exp(357./T); %for b-pinene
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'OH';
fUMT(i)=-1; fOH(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'UMT + O3 = 0.62OH + MTO2';
k(:,i) = 1.50e-17; %for b-pinene
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'O3';
fUMT(i)=-1; fO3(i)=-1; fOH(i)=0.62; %OH yield is average for all MT from Aschmann (2002), Atmos. Env.

i=i+1;
Rnames{i} = 'UMT + NO3 = MTO2';
k(:,i) = 2.5e-12; %for b-pinene
Gstr{i,1} = 'UMT'; Gstr{i,2} = 'NO3';
fUMT(i)=-1; fNO3(i)=-1; fMTO2(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + NO = MTOX + NO2 + HO2'; %Oxidized MT that only deposits
k(:,i) = KRO2NO;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'NO';
fMTO2(i)=-1; fNO(i)=-1; fNO2(i)=1; fMTOX(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + HO2 = MTOX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'HO2';
fMTO2(i)=-1; fHO2(i)=-1; fMTOX(i)=1;

i=i+1;
Rnames{i} = 'MTO2 + RO2 = MTOX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'MTO2'; Gstr{i,2} = 'RO2';
fMTO2(i)=-1; fMTOX(i)=1; fHO2(i)=0.7;

%---------------------------------------------------------------------------------
% NON-MCM SESQUITERPINE OXIDATION
%---------------------------------------------------------------------------------

% MCMv3.2 includes explicit BCARY mechanism
% i=i+1;
% Rnames{i} = 'BCARY + OH = 0.76HCHO + 0.01CH3CHO + 0.04HCOOH + 0.01CH3COCH3 + 0.2CH3CO2H + SQTO2';
% k(:,i) = 2.0e-10; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'BCARY'; Gstr{i,2} = 'OH';
% fBCARY(i)=-1; fOH(i)=-1; fHCHO(i)=0.76; fCH3CHO(i)=0.01; fCH3COCH3(i)=0.01; fCH3CO2H(i)=0.2; fSQTO2(i)=1; %yields from Lee et al. (2006)
% 
% i=i+1;
% Rnames{i} = 'BCARY + O3 = 0.14HCHO + 0.06OH + SQTO2';
% k(:,i) = 1.2e-14; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'BCARY'; Gstr{i,2} = 'O3';
% fBCARY(i)=-1; fO3(i)=-1; fOH(i)=0.06; fHCHO(i)=0.14; fSQTO2(i)=1; %yields from Atkinson and Arey (2003)
% 
% i=i+1;
% Rnames{i} = 'BCARY + NO3 = SQTO2';
% k(:,i) = 2.2e-11; %from Bouvier-Brown (2008)
% Gstr{i,1} = 'BCARY'; Gstr{i,2} = 'NO3';
% fBCARY(i)=-1; fNO3(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'AFARN + OH = SQTO2';
k(:,i) = 3.2e-10; %from Bouvier-Brown (2008)
Gstr{i,1} = 'AFARN'; Gstr{i,2} = 'OH';
fAFARN(i)=-1; fOH(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'AFARN + O3 = 0.06OH + SQTO2';
k(:,i) = 1.0e-15; %from Bouvier-Brown (2008)
Gstr{i,1} = 'AFARN'; Gstr{i,2} = 'O3';
fAFARN(i)=-1; fO3(i)=-1; fOH(i)=0.06; fSQTO2(i)=1; %guessed OH yield

i=i+1;
Rnames{i} = 'AFARN + NO3 = SQTO2';
k(:,i) = 2.2e-11; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'AFARN'; Gstr{i,2} = 'NO3';
fAFARN(i)=-1; fNO3(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'ABERG + OH = SQTO2';
k(:,i) = 1.8e-10; %from Bouvier-Brown (2008)
Gstr{i,1} = 'ABERG'; Gstr{i,2} = 'OH';
fABERG(i)=-1; fOH(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'ABERG + O3 = 0.06OH + SQTO2';
k(:,i) = 8.6e-16; %from Bouvier-Brown (2008)
Gstr{i,1} = 'ABERG'; Gstr{i,2} = 'O3';
fABERG(i)=-1; fO3(i)=-1; fOH(i)=0.06; fSQTO2(i)=1; %guessed OH yield

i=i+1;
Rnames{i} = 'ABERG + NO3 = SQTO2';
k(:,i) = 2.2e-11; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'ABERG'; Gstr{i,2} = 'NO3';
fABERG(i)=-1; fNO3(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'USQT + OH = SQTO2';
k(:,i) = 2.0e-10; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'USQT'; Gstr{i,2} = 'OH';
fUSQT(i)=-1; fOH(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'USQT + O3 = 0.06OH + SQTO2';
k(:,i) = 1.2e-14; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'USQT'; Gstr{i,2} = 'O3';
fUSQT(i)=-1; fO3(i)=-1; fOH(i)=0.06; fSQTO2(i)=1; %guessed OH yield

i=i+1;
Rnames{i} = 'USQT + NO3 = SQTO2';
k(:,i) = 2.2e-11; %from Bouvier-Brown (2008), for BCARY
Gstr{i,1} = 'USQT'; Gstr{i,2} = 'NO3';
fUSQT(i)=-1; fNO3(i)=-1; fSQTO2(i)=1;

i=i+1;
Rnames{i} = 'SQTO2 + NO = SQTOX + NO2 + HO2'; %Oxidized SQT that only deposits
k(:,i) = KRO2NO;
Gstr{i,1} = 'SQTO2'; Gstr{i,2} = 'NO';
fSQTO2(i)=-1; fNO(i)=-1; fNO2(i)=1; fSQTOX(i)=1; fHO2(i)=1;

i=i+1;
Rnames{i} = 'SQTO2 + HO2 = SQTOX';
k(:,i) = KRO2HO2.*0.914;
Gstr{i,1} = 'SQTO2'; Gstr{i,2} = 'HO2';
fSQTO2(i)=-1; fHO2(i)=-1; fSQTOX(i)=1;

i=i+1;
Rnames{i} = 'SQTO2 + RO2 = SQTOX + 0.7HO2';
k(:,i) = 9e-14;
Gstr{i,1} = 'SQTO2'; Gstr{i,2} = 'RO2';
fSQTO2(i)=-1; fSQTOX(i)=1; fHO2(i)=0.7;


