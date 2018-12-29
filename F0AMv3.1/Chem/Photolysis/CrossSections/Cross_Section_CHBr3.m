% File written by Jin Liao 02/24/2016
% 20160302 GMW  Vectorized.


function [Cross,wl_cs] = Cross_Section_CHBr3(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>296)=296;
T(T<210)=210;

data = dlmread('Cross_Section_CHBr3.csv'); 
wl_cs = data(:,1);
T296 = data(:,2); % Second column is cross section at 298 K
T210 = data(:,3); % Second column is cross section at 230 K

Cross = interp1([210;296],[T210'; T296'],T);
Cross = Cross';

