% File written by W. G. Merrill 07/25/2012
% 20160302 GMW  Vectorized.

function [Cross,wl_cs] = Cross_Section_CH3NO3(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>330)=330;
T(T<240)=240;

data = dlmread('Cross_Section_CH3NO3.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
sig0 = data(:,2);
B = data(:,3);

Cross = repmat(sig0,1,length(T)).*exp(B*(T'-298));


