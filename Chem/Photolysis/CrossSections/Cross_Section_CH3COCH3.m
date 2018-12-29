% File written by W. G. Merrill 06/26/2012
% Modified by Jin Liao 02/26/2016
% 20160302 GMW  Vectorized.

function [Cross,wl_cs] = Cross_Section_CH3COCH3(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>298) = 298;
T(T<235) = 235;

data = dlmread('Cross_Section_CH3COCH3.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
sig298 = data(:,2); % Second column is cross section at 298 K
A = data(:,3); % Third column is first temperature coefficient
B = data(:,4); % Fourth column is second temperature coefficient
C = data(:,5); % Fifth column is third temperature coefficient

Cross = repmat(sig298,1,length(T)) .* (1 + A*T' + B*(T.^2)' + C*(T.^3)');


