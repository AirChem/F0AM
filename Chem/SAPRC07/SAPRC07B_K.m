function K = SAPRC07_K(Met)
% created by Hongyu Chen 29/03/2020

%
% INPUTS:
% Met: a structure containing the following variables.
%   T: temperature in K (can be scalar or column vector)
%   M: number density in molec/cm^3 (same size as T)
%   H2O: water concentration in molec/cm3
%
% OUTPUTS:
% K: structure of rate constants. Each is size length(T) x 1


struct2var(Met)

nk = 23; %number of rate constants
R = 0.0019872; % ideal gas constant, kcal/K/mol
krx = nan(length(T),nk);
Knames = cell(nk,1);
i=0;

%% %%%COMPLEX RATE CONSTANTS%%%%%
i=i+1;
Knames{i} = 'K_O3P_NO';
A0=9.00e-32;
E0=0;
B0=-1.5;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=3e-11;
Einf=0;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1.00;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_O3P_NO2_NO3';
A0=2.50e-31;
E0=0;
B0=-1.8;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=2.20e-11;
Einf=0;
Binf=-0.70;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1.00;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_NO2_NO3';
A0=3.6e-30;
E0=0;
B0=-4.15;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.9e-12;
Einf=0;
Binf=0.2;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.35;
N=1.33;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_N2O5';
A0=1.3e-3;
E0=21.86;
B0=-3.5;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=9.7e+14;
Einf=22.02;
Binf=0.1;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.35;
N=1.33;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_OH_NO';
A0=7e-31;
E0=0;
B0=-2.6;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=3.6e-11;
Einf=0;
Binf=-0.1;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_OH_NO2';
A0=1.8e-30;
E0=0;
B0=-3;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=2.8e-11;
Einf=0;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_OH_HNO3';
A0=2.4e-14;
E0=-0.91;
B0=0;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
A2=2.7e-17;
E2=-4.37;
B2=0;
k2 = A2.*(T./300).^B2.*exp(-E2./(R.*T));
A3=6.5e-34;
E3=-2.65;
B3=0;
k3 = A3.*(T./300).^B3.*exp(-E3./(R.*T));
krx(:,i) = k0+k3.*M./(1+k3.*M./k2);

i=i+1;
Knames{i} = 'K_OH_CO';
A1=1.44e-13;
E1=-0;
B1=0;
k1 = A1.*(T./300).^B1.*exp(-E1./(R.*T));
A2=3.43e-33;
E2=-0;
B2=0;
k2 = A2.*(T./300).^B2.*exp(-E2./(R.*T));
krx(:,i) = k1+k2.*M;

i=i+1;
Knames{i} = 'K_HO2_NO2';
A0=2e-31;
E0=0;
B0=-3.4;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=2.9e-12;
Einf=0;
Binf=-1.10;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;


i=i+1;
Knames{i} = 'K_HNO4';
A0=3.72e-5;
E0=21.16;
B0=-2.4;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=5.42e+15;
Einf=22.2;
Binf=-2.3;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_HO2_HO2';
A1=2.20e-13;
E1=-1.19;
B1=0;
k1 = A1.*(T./300).^B1.*exp(-E1./(R.*T));
A2=1.90e-33;
E2=-1.95;
B2=0;
k2 = A2.*(T./300).^B2.*exp(-E2./(R.*T));
krx(:,i) = k1+k2.*M;

i=i+1;
Knames{i} = 'K_HO2_HO2_H2O';
A1=3.08e-34;
E1=-5.56;
B1=0;
k1 = A1.*(T./300).^B1.*exp(-E1./(R.*T));
A2=2.66e-54;
E2=-6.32;
B2=0;
k2 = A2.*(T./300).^B2.*exp(-E2./(R.*T));
krx(:,i) = k1+k2.*M;

i=i+1;
Knames{i} = 'K_OH_SO2';
A0=3.30e-31;
E0=0;
B0=-4.3;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.6e-12;
Einf=0;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_MECO3_NO2';
A0=2.7e-28;
E0=0;
B0=-7.1;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.21e-11;
Einf=0;
Binf=-0.9;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.3;
N=1.41;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_PAN';
A0=4.9e-3;
E0=24.05;
B0=0;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=4e+16;
Einf=27.03;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.3;
N=1.41;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_ETHE_OH';
A0=1e-28;
E0=0;
B0=-4.5;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=8.8e-12;
Einf=0;
Binf=-0.85;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.3;
N=1.41;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_ACYE_OH';
A0=5.5e-30;
E0=0;
B0=-2;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=8.3e-13;
Einf=0;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1.0;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_CL_NO2_CLONO';
A0=1.3e-30;
E0=0;
B0=-2.0;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.0e-10;
Einf=0;
Binf=-1;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_CL_NO2_CLNO2';
A0=1.8e-31;
E0=0;
B0=-2.0;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.0e-10;
Einf=0;
Binf=-1;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_CLO_NO2';
A0=1.8e-31;
E0=0;
B0=-3.4;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=1.5e-11;
Einf=0;
Binf=-1.9;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_CLONO2';
A0=4.48e-5;
E0=24.9;
B0=-1;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=3.71e+15;
Einf=24.9;
Binf=3.5;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_ETHE_CL';%need to be changed 
A0=1.6e-29;
E0=0;
B0=-3.3;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=3.1e+10;
Einf=09;
Binf=-1;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;

i=i+1;
Knames{i} = 'K_ACYE_CL';
A0=5.2e-30;
E0=20;
B0=-2.4;
k0 = A0.*(T./300).^B0.*exp(-E0./(R.*T));
Ainf=2.2e-10;
Einf=0;
Binf=0;
kinf = Ainf.*(T./300).^Binf.*exp(-Einf./(R.*T));
F=0.6;
N=1;
Z = (1 + (log10((k0.*M)./kinf)/N).^2 ).^(-1); 
krx(:,i) = (k0.*M./(1+k0.*M./kinf)).*F.^Z;


%% accumulate
K = struct;
for i=1:length(Knames)
    K.(Knames{i}) = krx(:,i);
end

