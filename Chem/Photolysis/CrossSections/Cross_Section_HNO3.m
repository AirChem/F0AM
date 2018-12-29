% File written by W. G. Merrill 06/20/2012
% 20160302 GMW Vectorized.

function [Cross,wl_cs] = Cross_Section_HNO3(T,P)

data = dlmread('Cross_Section_HNO3.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
sigma = data(:,2)/1e20; % Second column is cross section at 298 K
B = data(:,3)/1000; % Third column is temperature coefficients

Cross = repmat(sigma,1,length(T)).*exp(B*(T'-298));