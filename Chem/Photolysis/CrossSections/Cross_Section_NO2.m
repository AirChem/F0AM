% File written by W. G. Merrill
% Last modified 06/21/2012

function [Cross,wl_cs] = Cross_Section_NO2(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
if T > 298
    T = 298;
end

if T < 220
    T = 220;
end

data = dlmread('Cross_Section_NO2.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
T298 = data(:,2); % Second column is quantum yield at 298 K
T220 = data(:,3); % Second column is quantum yield at 220 K

if T == 298
    Cross = T298./(10^20);
elseif T == 220
    Cross = T220./(10^20);
else
    Cross = interp1([220;298],[T220'; T298'],T);
    Cross = Cross'./1e20;
end

