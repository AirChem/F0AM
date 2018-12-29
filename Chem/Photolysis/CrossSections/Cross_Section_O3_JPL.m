% Written by Jin Liao 03/04/2016


function [Cross,wl_cs] = Cross_Section_O3_JPL(T,P)

% We do not wish to extrapolate beyond JPL recommendations
T(T>295)=295;
T(T<218)=218;

data = dlmread('Cross_Section_O3_JPL.csv'); % Read the csv file
wl_cs = data(:,1); % First column is wavelengths (in nm)
T218 = data(:,2);
T295 = data(:,3);
T218(isnan(T218))= T295(isnan(T218));

Cross = interp1([218;295],[T218'; T295'],T);
Cross = Cross';