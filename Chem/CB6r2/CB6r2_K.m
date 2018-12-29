function K = CB6r2_K(Met)
% function K = CB6r2_K(Met)
% Calculate generic rate constants for use with the CB6r2 chemical mechanism.
%
% INPUTS:
% Met: structure containing the following fields.
%   T: temperature, K
%   M: number density, molec/cm^3
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x # of rate constants
%
% 20150218 MM   Adapted from CB05_K.m
% 20160304 GMW  Output changed from name/value pair to structure, and input to structure.
% 20160517 MM   Corrected error in exponents for all termolecular reactions (-2 vs 2).
%               This was an error in the original documentation.

struct2var(Met)

nk = 20; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);
i=0;

i=i+1;
Knames{i}   = 'K_O3P_NO2';
LPL         = 1.30E-31.*(T./300).^(-1.5).*M;
HPL         = 2.30E-11.*(T./300).^(0.24);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));
   
i=i+1;
Knames{i}   = 'K_O3P_NO';
LPL         = 9.0E-32.*(T./300).^(-1.5).*M;
HPL     	= 3.00E-11.*(T./300).^(-0.0);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i}   = 'K_OH_NO';
LPL         = 7.4E-31.*(T./300).^(-2.4).*M;
HPL         = 3.3E-11.*(T./300).^(-0.3);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.81.^(1./(1+((log10(LPL./HPL))./0.87).^2));

i=i+1;
Knames{i}   = 'K_OH_NO2';
LPL         = 1.8E-30.*(T./300).^(-3.0).*M;
HPL         = 2.8E-11;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i}   = 'K_OH_HNO3';
K1          = 2.4E-14.*exp(460./T)     ;
K3          = 6.5E-34.*exp(1335./T)    ;
K4          = 2.7E-17.*exp(2199./T)    ;
K2          = (K3.*M)./(1+(K3.*M./K4)) ;
krx(:,i)    = K1 + K2 ;

i=i+1;
Knames{i}   = 'K_OH_OLE';
LPL         = 8.0E-27.*(T./300).^(-3.5).*M;
HPL         = 3.0E-11.*(T./300).^(-1.0);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.5.^(1./(1+((log10(LPL./HPL))./1.13).^2));

i=i+1;
Knames{i}   = 'K_OH_ETH';
LPL         = 8.6E-29.*(T./300).^(-3.1).*M;
HPL         = 9.0E-12.*(T./300).^(-0.85);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.48.^(1./(1+((log10(LPL./HPL))./1.15).^2));

i=i+1;
Knames{i}   = 'K_OH_ETHY';
LPL         = 5.0E-30.*(T./300).^(-1.5).*M;
HPL         = 1.0E-12;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.37.^(1./(1+((log10(LPL./HPL))./1.3).^2));

i=i+1;
Knames{i}   = 'K_SO2_OH';
LPL         = 4.5E-31.*(T./300).^(-3.9).*M;
HPL         = 1.3E-12.*(T./300).^(-0.7);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.53.^(1./(1+((log10(LPL./HPL))./1.1).^2));

i=i+1;
Knames{i}   = 'K_OH_OH';
LPL         = 6.9E-31.*(T./300).^(-0.8).*M;
HPL         = 2.6E-11;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.5.^(1./((1+(log10(LPL./HPL))./1.13).^2));

i=i+1;
Knames{i}   = 'K_OH_CO';
LPL         = 5.9E-33.*((T./300).^-1.4).*M;
HPL         = 1.1E-12.*((T./300).^1.3) ;
K_OH_COa    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));
LPL         = 1.5E-13.*((T./300).^0.6);
HPL         = 2.1E9.*((T./300).^6.1);
K_OH_COb    = (LPL./(1+LPL./(HPL./M))).*0.6.^(1./(1+(log10(LPL./(HPL./M))).^2));
krx(:,i)    = K_OH_COa + K_OH_COb;

i=i+1;
Knames{i}   = 'K_NO3_NO2';
LPL         = 3.60E-30.*(T./300).^(-4.1).*M;
HPL         = 1.90E-12.*(T./300).^(0.2);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.35.^(1./(1+((log10(LPL./HPL))./1.33).^2));

i=i+1;
Knames{i}   = 'K_N2O5';
LPL         = 1.30E-03.*(T./300).^(-3.5).*exp(-11000./T).*M;
HPL         = 9.70E14.*(T./300).^(0.1).*exp(-11080./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.35.^(1./(1+((log10(LPL./HPL))./1.33).^2));

i=i+1;
Knames{i}   = 'K_HO2_NO2';
LPL         = 1.8E-31.*(T./300).^(-3.2).*M;
HPL         = 4.7E-12;
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2)) ;

i=i+1;
Knames{i}   = 'K_PNA';
LPL         = 4.1E-05.*exp(-10650./T).*M;
HPL         = 4.8E15.*exp(-11170./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2)) ;

i=i+1;
Knames{i}   = 'K_C2O3_NO2';
LPL         = (2.70E-28.*(T./300).^-7.1).*M;
HPL         = (1.20E-11.*(T./300).^-0.9);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+((log10(LPL./HPL))./1.41).^2));

i=i+1;
Knames{i}   = 'K_PAN';
LPL         = 4.90E-03*exp(-12100./T).*M;
HPL         = 5.40E16*exp(-13830./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+((log10(LPL./HPL))./1.41).^2));

i=i+1;
Knames{i}   = 'K_CXO3_NO2';
LPL         = 3.00E-28.*(T./300).^(-7.1).*M;
HPL         = 1.33E-11.*(T./300).^(-0.9);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i}   = 'K_PANX';
LPL         = 1.7E-03.*exp(-11280./T).*M;
HPL         = 8.3E16.*exp(-13940./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i}   = 'K_OPAN';
LPL         = 4.60E-04*exp(-11280./T).*M;
HPL         = 2.24E16*exp(-13940./T);
krx(:,i)    = (LPL./(1+LPL./HPL)).*0.3.^(1./(1+(log10(LPL./HPL)).^2));

%% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end
