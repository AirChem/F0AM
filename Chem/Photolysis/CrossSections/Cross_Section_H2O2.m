% File written by W. G. Merrill 06/20/2012
% 20160222 GMW Vectorized.

function [Cross,wl_cs] = Cross_Section_H2O2(T,P)

data = dlmread('Cross_Section_H2O2.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
Cross = data(:,2); % Second column is cross section at 298 K

% Cross sections for wavelengths > 260 nm have temperature dependence
i = wl_cs > 260;
wl_Tdep = wl_cs(i);

A = [6.4761e4;
    -9.2170972e2;
    4.535649;
    -4.4589016e-3;
    -4.035101e-5;
    1.6878206e-7;
    -2.652014e-10;
    1.5534675e-13];

B = [6.8123e3;
    -5.1351e1;
    1.1522e-1;
    -3.0493e-5;
    -1.0924e-7];

xA = zeros(sum(i),1);
xB = zeros(sum(i),1);

for n = 0:7
    xA = xA + A(n+1)*(wl_Tdep.^n);
end

for n = 0:4
    xB = xB + B(n+1)*(wl_Tdep.^n);
end

chi = 1./(1 + exp(-1265./T'));

Cross = repmat(Cross,1,length(T));
Cross(i,:) = (xA*chi + xB*(1 - chi))/1e21;

