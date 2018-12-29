function K = MCMv331_K(Met)
% function K = MCMv331_K(Met)
% calculates generic rate constants used in MCMv3.3.1 mechanism.
%
% INPUTS:
% Met: a structure containing the following variables.
%   T: temperature in K (can be scalar or column vector)
%   M: number density in molec/cm^3 (same size as T)
%   H2O: water concentration in molec/cm3
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x 1
%
% 20080916 GMW
% 20110521 GMW  Updated from 3.1 to 3.2
% 20150603 GMW  Renamed from MCMrateK in UWCMv2.2.
%               Fixed MCM typo in parameterization for KBPPN (FCPPN-->FPPN in last line)
% 20150616 JBK  Updated to MCMv3.3.1
% 20160304 GMW  Changed output from name/value pair to structure, and input to structure.
% 20160321 GMW  Fixed some hold-overs from MCMv3.2 (updated to match documentation now).

struct2var(Met)

nk = 33; %number of rate constants
krx = nan(length(T),nk);
Knames = cell(nk,1);
i=0;

%% %%%SIMPLE RATE CONSTANTS%%%%%
i=i+1;
Knames{i} = 'KRO2NO';
krx(:,i) = 2.7e-12.*exp(360./T);

i=i+1;
Knames{i} = 'KRO2HO2';
krx(:,i) = 2.91e-13.*exp(1300./T);

i=i+1;
Knames{i} = 'KAPHO2';
krx(:,i) = 5.2e-13.*exp(980./T);

i=i+1;
Knames{i} = 'KAPNO';
krx(:,i) = 7.5e-12.*exp(290./T);

i=i+1;
Knames{i} = 'KRO2NO3';
krx(:,i) = 2.3e-12;

i=i+1;
Knames{i} = 'KNO3AL';
krx(:,i) = 1.4e-12.*exp(-1860./T);

i=i+1;
Knames{i} = 'KDEC';
krx(:,i) = 1e6;

i=i+1;
Knames{i} = 'KROPRIM';
krx(:,i) = 2.5e-14.*exp(-300./T);

i=i+1;
Knames{i} = 'KROSEC';
krx(:,i) = 2.5e-14.*exp(-300./T);

i=i+1;
Knames{i} = 'KCH3O2';
krx(:,i) = 1.03e-13.*exp(365./T);

i=i+1;
Knames{i} = 'K298CH3O2';
krx(:,i) = 3.5e-13;

i=i+1;
Knames{i} = 'K14ISOM1';
krx(:,i) = 3e7.*exp(-5300./T);

%% %%%COMPLEX RATE CONSTANTS%%%%%
i=i+1;
Knames{i} = 'KFPAN';
KC0 = 3.28e-28.*M.*(T./300).^-6.87 ;
KCI = 1.125e-11.*(T./300).^-1.105 ;
KRC = KC0./KCI ;
FCC = 0.30 ;
NC = 0.75-1.27.*log10(FCC) ;
FC = 10.^(log10(FCC)./(1+(log10(KRC)./NC).^2)) ;
krx(:,i) = (KC0.*KCI).*FC./(KC0+KCI) ;

i=i+1;
Knames{i} = 'KBPAN';
KD0 = 1.10e-5.*exp(-10100./T).*M ; 
KDI = 1.9e+17.*exp(-14100./T) ; 
KRD = KD0./KDI ;
FCD = 0.30 ;
NCD = 0.75-1.27.*(log10(FCD)) ;
FD = 10.^(log10(FCD)./(1+(log10(KRD)./NCD).^2)) ;
krx(:,i) = (KD0.*KDI).*FD./(KD0+KDI) ;

i=i+1;
Knames{i} = 'KMT01'; %o3p + no = no2
K10 = 1.0e-31.*M.*(T./300).^-1.6 ;
K1I = 5.0e-11.*(T./300).^-0.3 ;
KR1 = K10./K1I ;
FC1 = 0.85 ;
NC1 = 0.75-1.27.*(log10(FC1)) ;
F1 = 10.^(log10(FC1)./(1+(log10(KR1)./NC1).^2)) ;
krx(:,i) = (K10.*K1I).*F1./(K10+K1I) ;

i=i+1;
Knames{i} = 'KMT02'; %o3p + no2 = no3
K20 = 1.3e-31.*M.*(T./300).^-1.5 ;
K2I = 2.3e-11.*(T./300).^0.24 ;
KR2 = K20./K2I ;
FC2 = 0.6 ;
NC2 = 0.75-1.27.*(log10(FC2)) ;
F2 = 10.^(log10(FC2)./(1+(log10(KR2)./NC2).^2)) ;
krx(:,i) = (K20.*K2I).*F2./(K20+K2I) ;

i=i+1;
Knames{i} = 'KMT03'; %no2 + no3 = n2o5
K30 = 3.6e-30.*M.*(T./300).^-4.1 ;
K3I = 1.9e-12.*(T./300).^0.2 ;
KR3 = K30./K3I ;
FC3 = 0.35 ;
NC3 = 0.75-1.27.*(log10(FC3)) ;
F3 = 10.^(log10(FC3)./(1+(log10(KR3)./NC3).^2)) ;
krx(:,i) = (K30.*K3I).*F3./(K30+K3I) ;

i=i+1;
Knames{i} = 'KMT04'; %n2o5 = no2 + no3
K40 = 1.3e-3.*M.*(T./300).^-3.5.*exp(-11000./T) ;
K4I = 9.7e+14.*(T./300).^0.1.*exp(-11080./T) ;
KR4 = K40./K4I ;
FC4 = 0.35 ;
NC4 = 0.75-1.27.*(log10(FC4)) ;
F4 = 10.^(log10(FC4)./(1+(log10(KR4)./NC4).^2)) ;
krx(:,i) = (K40.*K4I).*F4./(K40+K4I) ;

i=i+1;
Knames{i} = 'KMT05';
krx(:,i) = 1.44e-13.*(1+(M./4.2e19));

i=i+1;
Knames{i} = 'KMT06';
krx(:,i) = 1 + (1.40e-21.*exp(2200./T).*H2O) ;

i=i+1;
Knames{i} = 'KMT07'; %oh + no = hono
K70 = 7.4e-31.*M.*(T./300).^-2.4 ;
K7I = 3.3e-11.*(T./300).^-0.3 ;
KR7 = K70./K7I ;
FC7 = 0.81 ;
NC7 = 0.75-1.27.*(log10(FC7)) ;
F7 = 10.^(log10(FC7)./(1+(log10(KR7)./NC7).^2)) ;
krx(:,i) = (K70.*K7I).*F7./(K70+K7I) ;

i=i+1;
Knames{i} = 'KMT08'; %oh + no2 = hno3
K80 = 3.2e-30.*M.*(T./300).^-4.5 ;
K8I = 3e-11 ;
KR8 = K80./K8I ;
FC8 = 0.41 ;
NC8 = 0.75-1.27.*(log10(FC8)) ;
F8 = 10.^(log10(FC8)./(1+(log10(KR8)./NC8).^2));
krx(:,i) = (K80.*K8I).*F8./(K80+K8I) ;

i=i+1;
Knames{i} = 'KMT09'; %ho2 + no2 = ho2no2
K90 = 1.4e-31.*M.*(T./300).^-3.1 ;
K9I = 4.0e-12 ;
KR9 = K90./K9I ;
FC9 = 0.4 ;
NC9 = 0.75-1.27.*(log10(FC9)) ;
F9 = 10.^(log10(FC9)./(1+(log10(KR9)./NC9).^2)) ;
krx(:,i) = (K90.*K9I).*F9./(K90+K9I) ;

i=i+1;
Knames{i} = 'KMT10'; %ho2no2 = ho2 + no2
K100 = 4.10e-05.*M.*exp(-10650./T) ;
K10I = 6.0e+15.*exp(-11170./T) ;
KR10 = K100./K10I ;
FC10 = 0.4 ;
NC10 = 0.75-1.27.*(log10(FC10)) ;
F10 = 10.^(log10(FC10)./(1+(log10(KR10)./NC10).^2)) ;
krx(:,i) = (K100.*K10I).*F10./(K100+K10I) ;

i=i+1;
Knames{i} = 'KMT11'; %oh + hno3 = no3
k1 = 2.4e-14.*exp(460./T);
k3 = 6.5e-34.*exp(1335./T);
k4 = 2.7e-17.*exp(2199./T);
k2 = k3.*M./(1 + k3.*M./k4);
krx(:,i) = k1 + k2;

i=i+1;
Knames{i} = 'KMT12';
K120 = 2.5e-31.*M.*(T./300).^-2.6 ;
K12I = 2e-12 ;
KR12 = K120./K12I ;
FC12 = 0.53 ;
NC12 = 0.75-1.27.*(log10(FC12)) ;
F12 = 10.^(log10(FC12)./(1.0+(log10(KR12)./NC12).^2)) ;
krx(:,i) = (K120.*K12I.*F12)./(K120+K12I) ;

i=i+1;
Knames{i} = 'KMT13';
K130 = 2.5e-30.*M.*(T./300).^-5.5 ;
K13I = 1.8e-11 ;
KR13 = K130./K13I ;
FC13 = 0.36 ;
NC13 = 0.75-1.27.*(log10(FC13)) ;
F13 = 10.^(log10(FC13)./(1+(log10(KR13)./NC13).^2)) ;
krx(:,i) = (K130.*K13I).*F13./(K130+K13I) ;

i=i+1;
Knames{i} = 'KMT14';
K140 = 9.0e-5.*exp(-9690./T).*M ;
K14I = 1.1e+16.*exp(-10560./T) ;
KR14 = K140./K14I ;
FC14 = 0.36 ;
NC14 = 0.75-1.27.*(log10(FC14)) ;
F14 = 10.^(log10(FC14)./(1+(log10(KR14)./NC14).^2)) ;
krx(:,i) = (K140.*K14I).*F14./(K140+K14I) ;

i=i+1;
Knames{i} = 'KMT15';
K150 = 8.6e-29.*M.*(T./300).^-3.1 ;
K15I = 9.0e-12.*(T./300).^-0.85 ;
KR15 = K150./K15I ;
FC15 = 0.48 ;
NC15 = 0.75-1.27.*(log10(FC15)) ;
F15 = 10.^(log10(FC15)./(1+(log10(KR15)./NC15).^2)) ;
krx(:,i) = (K150.*K15I).*F15./(K150+K15I) ;

i=i+1;
Knames{i} = 'KMT16';
K160 = 8e-27.*M.*(T./300).^-3.5 ;
K16I = 3.0e-11.*(T./300).^-1 ;
KR16 = K160./K16I ;
FC16 = 0.5 ;
NC16 = 0.75-1.27.*(log10(FC16)) ;
F16 = 10.^(log10(FC16)./(1+(log10(KR16)./NC16).^2)) ;
krx(:,i) = (K160.*K16I).*F16./(K160+K16I) ;

i=i+1;
Knames{i} = 'KMT17';
K170 = 5.0e-30.*M.*(T./300).^-1.5 ;
K17I = 1.0e-12 ;
KR17 = K170./K17I ;
FC17 = 0.17.*exp(-51./T)+exp(-T./204) ;
NC17 = 0.75-1.27.*(log10(FC17)) ;
F17 = 10.^(log10(FC17)./(1.0+(log10(KR17)./NC17).^2)) ;
krx(:,i) = (K170.*K17I.*F17)./(K170+K17I) ;

i=i+1;
Knames{i} = 'KMT18';
krx(:,i) = 9.5e-39.*.21.*M.*exp(5270./T)./(1+7.5e-29.*.21.*M.*exp(5610./T)) ;

i=i+1;
Knames{i} = 'KBPPN'; %added by mmarvin 20141107
KPPN0 = 1.7e-03.*exp(-11280./T).*M ;
KPPNI = 8.3e+16.*exp(-13940./T) ;
KRPPN = KPPN0./KPPNI ;
FCPPN = 0.36 ;
NCPPN = 0.75-1.27.*(log10(FCPPN)) ;
FPPN = 10.^(log10(FCPPN)./(1.0+(log10(KRPPN)./NCPPN).^2)) ;
krx(:,i) = (KPPN0.*KPPNI.*FPPN)./(KPPN0+KPPNI) ; %MCM doc has a typo here: FCPPN instead of FPPN

%% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end

