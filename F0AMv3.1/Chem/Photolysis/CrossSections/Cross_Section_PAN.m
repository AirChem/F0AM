% File written by Jin Liao 02/23/2016
% 20160302 GMW Vectorized.


function [Cross,wl_cs] = Cross_Section_PAN(T,P)

data = dlmread('Cross_Section_PAN.csv'); 
wl_cs = data(:,1);

Cross = exp(data(:,3)*(T'-298)).*repmat(data(:,2),1,length(T));


end
