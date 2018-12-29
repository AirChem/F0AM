% Structured cross section based on
% Maric, D.; Burrows, J. P. Analysis of the UV absorption spectrum of ClO: a comparative study of four
% methods for spectral computations. J. Quant. Spectrosc. Radiat. Transfer 1999, 62, 345-369.
% This seems better than what JPL recommends and is what TUVv5.2 uses.
% 20160425 GMW

function [Cross,wl_cs] = Cross_Section_ClO_MB1999(T,P)

% We do not wish to extrapolate beyond observations
T(T>300)=300;
T(T<180)=180;

data = dlmread('Cross_Section_ClO_MB1999.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
cs = data(:,2:end);
T_cs = [180 200:10:300]'; %corresponding temperatures for each column

Cross = interp1(T_cs,cs',T);
Cross = Cross';