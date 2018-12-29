function K = RACM2_K(Met)
% function K = RACM2_K(Met)
% calculates generic rate constants used in RACM2 reaction mechanism.
%
% INPUTS:
% Met: structure containing the following fields.
%   T: Temperature, K (can be scalar or column vector)
%   M: number density, molec/cm^3 (same size as T)
%   P: atmospheric pressure, mbar
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x # of rate constants
%
%
% 20160101 SR   Modified from MCMv32_K.
% 20160203 GMW  Updated comments.
% 20160304 GMW	Changed output from name/value pairs to structure, and input to structure.

struct2var(Met)

nk = 16; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);
i=0;

%%%%%COMPLEX RATE CONSTANTS%%%%%

i=i+1;
Knames{i} = 'K_O3P_NO';
LPL 	= 9.00D-32.*((T./300).^-1.5).*M ;
HPL 	= 3.00D-11.*((T./300).^-0.0) ;
krx(:,i)=(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_OH_NO' ;
LPL     =(7.0e-31.*(T./300).^-2.6).*M;
HPL     =(3.6e-11.*(T./300).^-0.1);
krx(:,i) =(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_O3P_NO2';
LPL=2.5D-31.*((T./300).^-1.8).*M ;
HPL=2.20D-11.*((T./300).^-0.7) ;
krx(:,i)=(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_OH_NO2_HONO2';
LPL     =(1.8e-30.*(T./300).^-3.0).*M;
HPL     =(2.8e-11.*(T./300).^-0.0);
krx(:,i)=(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_NO2_NO3';
LPL     =(2.0e-30.*(T./300).^-4.4).*M;
HPL     =(1.4e-12.*(T./300).^-0.7);
krx(:,i) =(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_HO2_NO2'; 
LPL=2.0D-31.*((T./300).^-3.4).*M ;
HPL=2.90D-12.*((T./300).^-1.1) ;
krx(:,i) =(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_OH_SO2';
LPL     =(3.30e-31.*(T./300).^-4.3).*M;
HPL     =(1.6e-12.*(T./300).^-0.0);
krx(:,i) =(LPL./(1+LPL./HPL)).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_OH_ETE';
LPL		= (1.00e-28.*(T./300).^-4.5).*M;
HPL		= (8.80e-12.*(T./300).^-0.85);
krx(:,i) =(LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_OH_ACE';
LPL		= (5.50e-30.*(T./300).^-0.0).*M;
HPL		= (8.30e-13.*(T./300).^2.0);
krx(:,i) = (LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_ACO3_NO2';
LPL		= (9.70e-29.*(T./300).^-5.6).*M;
HPL		= (9.30e-12.*(T./300).^-1.5);
krx(:,i) =(LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));

i=i+1;
Knames{i} = 'K_N2O5';
LPL		= (2.20e-30.*(T./300).^-3.9).*M;
HPL		= (1.50e-12.*(T./300).^-0.7);
KF =(LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));
A=2.70e-27;
B=11000;
krx(:,i) = KF./(A.*exp(B./T));

i=i+1;
Knames{i} = 'K_HO2NO2';
LPL		= (2.00e-31.*(T./300).^-3.4).*M;
HPL		= (2.90e-12.*(T./300).^-1.1);
KF =(LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));
A=2.10e-27;
B=10900;
krx(:,i) = KF./(A.*exp(B./T));

i=i+1;
Knames{i} = 'K_PAN';
LPL		= (9.70e-29.*(T./300).^-5.6).*M;
HPL		= (9.30e-12.*(T./300).^-1.5);
KF =(LPL./(1+LPL./HPL) ).*0.6.^(1./(1+(log10(LPL./HPL)).^2));
A=8.62e-29;
B=13954;
krx(:,i) = KF./(A.*exp(B./T));

i=i+1;
Knames{i} = 'K_HO2_NO_HNO3';
K1 = 3.45e-12.*exp(270./T);
K2 = 530./T + 4.8e-6.*(P.*100)-1.73; %multiply P by 100 to convert units from mbar to Pa
krx(:,i) = K1.*K2./100;

i=i+1;
Knames{i} = 'K_OH_HNO3';
K0    =2.40D-14.*exp(460./T) ;
K2    =2.40D-17.*exp(2199./T) ;
K3    =6.50D-34.*exp(1335./T).*M ;
K1    =K3./(1+(K3./K2)) ;
krx(:,i) =K0+K1 ;

i=i+1;
Knames{i} = 'K_OH_CO';
krx(:,i) = 1.44e-13.*(1+(0.8.*M./4e19));

%% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end


