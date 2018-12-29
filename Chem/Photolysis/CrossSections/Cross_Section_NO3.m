% File written by W. G. Merrill 06/21/2012
% 20160302 GMW  Vectorized.

function [Cross,wl_cs] = Cross_Section_NO3(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>298)=298;
T(T<230)=230;

data = dlmread('Cross_Section_NO3.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
T298 = data(:,2); % Second column is cross section at 298 K
T230 = data(:,3); % Second column is cross section at 230 K

Cross = interp1([230;298],[T230'; T298'],T);
Cross = Cross'./1e19;

