function K = GEOSCHEM_K(Met)
% function K = GEOSCHEM_K(Met)
% Calculate special rate constants for use with the GEOS-Chem chemical mechanism.
%
% NOTE regarding N2O5 and HNO4 equilibria: native GEOS-Chem chemistry calculates the
% decomposition rate constants for these species by dividing both the high and low-pressure limit
% rate constants by the equilibrium constant before applying the Troe_GC formulation. Strictly
% speaking, THIS IS NOT CORRECT. But, it is how GEOS-Chem does it. Optional rate constants with the
% more rigorous formulation are also available below (currently commented out).
%
% NOTE for OH + NO2: several rate constants are available. K_OH_NO2, K_OH_NO2_SELTER, K_OH_NO2_IUPAC
%
% INPUTS:
% T: temperature, K
% M: number density, molec/cm^3
% H2O: water vapor number density, molec/cm^3
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x # of rate constants
%
% 20151108 KRT
% 20160224 GMW  Checked and cleaned.
% 20160304 GMW  Output changed from name/value pair to structure, input to structure.
% 20190827 GMW  Fixed typo in K_PRPE_OH

struct2var(Met)

nk = 33; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);

%%%%% SIMPLE REACTIONS %%%%%
i=1; 
Knames{i}   = 'K_OH_OH';
LPL         = 6.9E-31.*(T./300).^(-1.0).*M;
HPL         = 2.6E-11;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;   
Knames{i}   = 'K_HO2_HO2';
K1 = 3.00E-13.*exp(460./T); 
K2 = 2.10E-33.*exp(920./T).*M;
krx(:,i) = (K1 + K2).*(1.+1.4E-21.*exp(2200./T).*H2O);

i=i+1;
Knames{i}   = 'K_OH_CO'; % From JPL 2006
T3I = 1./T;
KLO1=5.9E-33*(300.*T3I).^(1.4);
KHI1=1.1E-12*(300.*T3I).^(-1.3);
XYRAT1=(KLO1.*M)./KHI1;
BLOG1=log10(XYRAT1);
FEXP1=1.0./(1.0+BLOG1.*BLOG1);
KCO1=KLO1.*M.*0.6.^FEXP1./(1.0+XYRAT1);
KLO2=1.5E-13*(300.*T3I).^(-0.6);
KHI2=2.1E9 *(300.*T3I).^(-6.1);
XYRAT2=KLO2.*M./KHI2;
BLOG2=log10(XYRAT2);
FEXP2=1.0./(1.0+BLOG2.*BLOG2);
KCO2=KLO2.*0.6.^FEXP2./(1.d0+XYRAT2);
KCO=KCO1+KCO2;
krx(:,i) = KCO;

i=i+1;
Knames{i}   = 'K_MO2_MO2a';
LPL         = 9.5E-14.*exp(390./T);
HPL         = 2.62E1.*exp(-1130./T);
krx(:,i)    = LPL./(1.0 + HPL);

i=i+1;
Knames{i}   = 'K_MO2_MO2b';
LPL         = 9.5E-14.*exp(390./T);
HPL         = 4.00E-2.*exp(1130./T);
krx(:,i)    = LPL./(1.0 + HPL);

i=i+1;
Knames{i}   = 'K_OH_NO2';
LPL         = 1.8E-30.*(T./300).^(-3.0).*M ;
HPL         = 2.8E-11.*(T./300).^(0.0)   ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_OH_NO2_SELTER'; % from Selter et al, 2015
LPL         = 1.49E-30.*(T./300).^(-1.8).*M ;
HPL         = 2.58E-11;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i} = 'K_OH_NO2_IUPAC'; %IUPAC
K80 = 3.3e-30.*M.*(T./300).^-3.0 ;
K8I = 4.1e-11 ;
KR8 = K80./K8I ;
FC8 = 0.4 ;
NC8 = 0.75-1.27.*(log10(FC8)) ;
F8 = 10.^(log10(FC8)./(1+(log10(KR8)./NC8).^2));
krx(:,i) = (K80.*K8I).*F8./(K80+K8I) ;

i=i+1;   
Knames{i}   = 'K_OH_NO';
LPL         = 7.00E-31.*(T./300).^(-2.6).*M ;
HPL     	= 3.60E-11.*(T./300).^(-0.1) ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_OH_HNO3';
K0          = 2.4E-14.*exp(460./T)     ;
K2          = 2.69E-17.*exp(2199./T)    ;
K3          = 6.51E-34.*exp(1335./T)    ;
krx(:,i)    = (K0 + K3.*M)./(1+(K3.*M)./K2) ;

i=i+1;
Knames{i}   = 'K_PRPE_OH';
LPL         = 8.0E-27.*(T./300).^(-3.5).*M ;
HPL         = 3.0E-11.*(T./300).^(-1.0)   ;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.5.^(1./(1+(log10(LPL./HPL)).^2)); %typo in exponent (-2 to 2) fixed 20190827 GMW

i=i+1;
Knames{i}   = 'K_SO2_OH';
LPL         = 3.3E-31.*(T./300).^(-4.3).*M ;
HPL         = 1.6E-12.*(T./300).^0.0    ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_Br_NO2';
LPL         = 4.2E-31.*(T./300).^(-2.4).*M ;
HPL         = 2.7E-11.*(T./300).^0.0    ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_BrO_NO2';
LPL         = 5.2E-31.*(T./300).^(-3.2).*M ;
HPL         = 6.9E-12.*(T./300).^(-2.9)    ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_C3H8_B3O2';
K1          = 7.60E-12*exp(-585./T);
K2          = 5.87*(300./T).^0.64.*exp(-816./T);
krx(:,i)    = K1 ./ (1.+K2);

i=i+1;
Knames{i}   = 'K_C3H8_A3O2';
K1          = 7.60E-12*exp(-585./T);
K2          = 0.17*(300./T).^-0.64.*exp(-816./T);
krx(:,i)    = K1./(1.+K2);

i=i+1;
Knames{i}   = 'K_ISNOOA_NO2';
LPL         = 9.0E-28.*(T./300).^(-8.9).*M;
HPL         = 7.7E-12.*(T./300).^(-0.2);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_DMS_OH';
LPL         = 8.2E-29.*exp(5376./T);
HPL         = 1.05E-5.*exp(3644./T);
krx(:,i)    = LPL./ (1.0+HPL*0.2095);

i=i+1;
Knames{i}   = 'K_HONIT_OH';
K0 = 2.41E-14.*exp(460./T);
K1 = 2.69E-17.*exp(2199./T);
K2 = 6.51E-34.*exp(1335./T);
krx(:,i)    = (K0 + K2.*M)./(1+(K2.*M)./K1) ;

%%%%% EQUILIBRIA %%%%%
i=i+1;
Knames{i}   = 'K_NO2_NO3';
LPL         = 2.0E-30.*(T./300).^(-4.4).*M ;
HPL         = 1.4E-12.*(T./300).^(-0.7)   ;
krx(:,i)    = Troe_GC(LPL,HPL);

% i=i+1;
% Knames{i}   = 'K_N2O5_M'; %MUST be preceded by K_NO2_NO3
% Keq         = 2.70E-27*exp(11000./T);
% krx(:,i)    = krx(:,i-1)./Keq;

% globchem.dat formulation; not quite correct
i=i+1;
Knames{i}   = 'K_N2O5_M';
LPL         = 7.4E-4*(300./T).^(-4.4).* exp(-11000./T).*M;
HPL         = 5.18E14*(300./T).^(-0.7).*exp(-11000./T);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_HO2_NO2';
LPL         = 2.0E-31.*(T./300).^(-3.4).*M ;
HPL         = 2.9E-12.*(T./300).^(-1.1) ;
krx(:,i)    = Troe_GC(LPL,HPL);

% i=i+1;
% Knames{i}   = 'K_HNO4_M'; %MUST be preceded by K_HO2_NO2
% Keq         = 2.1e-27.*exp(10900./T);
% krx(:,i)    = krx(:,i-1)./Keq;

% globchem.dat formulation; not quite right
i=i+1;
Knames{i}   = 'K_HNO4_M';
LPL         = 9.52E-5*(300./T).^(-3.4).* exp(-10900./T).*M;
HPL         = 1.38E15*(300./T).^(-1.1).*exp(-10900./T);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_MCO3_NO2';
LPL         = (9.70E-29.*(T./300).^-5.6).*M;
HPL         = (9.30E-12.*(T./300).^-1.5);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_PAN'; %MUST be preceded by K_MCO3_NO2
Keq         = 9.3e-29.*exp(14000./T);
krx(:,i)    = krx(:,i-1)./Keq;

i=i+1;
Knames{i}   = 'K_RCO3_NO2';
LPL         = 9.0E-28.*(T./300).^(-8.9).*M;
HPL         = 7.7E-12.*(T./300).^(-0.2);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_PPN'; %MUST be preceded by K_RCO3_NO2
Keq         = 9.3e-29.*exp(14000./T);
krx(:,i)    = krx(:,i-1)./Keq;

i=i+1;
Knames{i}   = 'K_MAO3_NO2';
LPL         = 9.0E-28.*(T./300).^(-8.9).*M;
HPL         = 7.7E-12.*(T./300).^(-0.2);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_PMN'; %MUST be preceded by K_MAO3_NO2
Keq         = 9.3e-29.*exp(14000./T);
krx(:,i)    = krx(:,i-1)./Keq;

i=i+1;
Knames{i}   = 'K_MACRNO2_NO2';
LPL         = 9.0E-28.*(T./300).^(-8.9).*M ;
HPL         = 7.7E-12.*(T./300).^(-0.2)    ;
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_PMNN'; %MUST be preceded by K_MACRNO2_NO2
Keq         = 9.3e-29.*exp(14000./T);
krx(:,i)    = krx(:,i-1)./Keq; 

i=i+1;
Knames{i}   = 'K_MO2_NO2';
LPL         = 1.0E-30.*(T./300).^(-4.8).*M;
HPL         = 7.2E-12.*(T./300).^(-2.1);
krx(:,i)    = Troe_GC(LPL,HPL);

i=i+1;
Knames{i}   = 'K_MPN'; %MUST be preceded by K_MO2_NO2
Keq         = 9.5E-29*exp(11234./T);
krx(:,i)    = krx(:,i-1)./Keq;

% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end


