% File written by Jin Liao 02/24/2016
% Vectorized 20160302 GMW


function [Cross,wl_cs] = Cross_Section_BrONO2(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>298) = 298;
T(T<230) = 230;

data = dlmread('Cross_Section_BrONO2.csv'); 
wl_cs = data(:,1);
T298 = data(:,2); % Second column is cross section at 298 K
T230 = data(:,3); % Second column is cross section at 230 K

Cross = interp1([230;298],[T230'; T298'],T);
Cross = Cross';

