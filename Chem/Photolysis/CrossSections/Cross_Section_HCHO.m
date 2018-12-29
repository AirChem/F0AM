% File written by W. G. Merrill 06/22/2012
% 20160302 GMW  Vectorized.

function [Cross,wl_cs] = Cross_Section_HCHO(T,P)

data = dlmread('Cross_Section_HCHO.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
sigma = data(:,2)/1e21; % Second column is cross section at 298 K
C = data(:,3)/1e24; % Third column is temperature coefficients

Cross = repmat(sigma,1,length(T)) + C*(T'-298);