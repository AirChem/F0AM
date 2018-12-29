% Written by Jin Liao 03/04/2016


function [Cross,wl_cs] = Cross_Section_O3_IUPAC(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>273)=273;
T(T<203)=203;

data = dlmread('Cross_Section_O3_IUPAC.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
T273 = data(:,2);
T203 = data(:,3);

Cross = interp1([203;273],[T203'; T273'],T);
Cross = Cross';