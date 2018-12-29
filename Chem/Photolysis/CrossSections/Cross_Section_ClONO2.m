% 20160223 JL   Creation.
% 20160302 GMW  Vectorized.

function [Cross,wl_cs] = Cross_Section_ClONO2(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>296)=296;
T(T<220)=220;

data = dlmread('Cross_Section_ClONO2.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
T296 = data(:,2); % Second column is cross section at 296 K
T220 = data(:,3); % Second column is cross section at 220 K

Cross = interp1([220;296],[T220'; T296'],T);
Cross = Cross';


