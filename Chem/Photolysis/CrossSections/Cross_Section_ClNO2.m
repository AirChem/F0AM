% File written by Jin Liao 02/23/2016
% Based on IUPAC/Ghosh et al.2012
% 20160302 GMW Vectorized.

function [Cross,wl_cs] = Cross_Section_ClNO2(T,P)

data = dlmread('Cross_Section_ClNO2.csv'); 
wl_cs = data(:,1);

Cross = repmat(data(:,2),1,length(T)).*(1 + 1e-5.*data(:,3)*(T'-296) + 1e-5.*data(:,4)*(T'-296).^2);

end 
