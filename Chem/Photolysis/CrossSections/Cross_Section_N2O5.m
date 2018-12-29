% File written by Jin Liao 02/23/2016
% 20160302 GMW  Vectorized.


function [Cross,wl_cs] = Cross_Section_N2O5(T,P)

data = dlmread('Cross_Section_N2O5.csv'); 
wl_cs = data(:,1);

logCross = repmat(log10(data(:,2)),1,length(T)) + 1000.*data(:,3)*(1./T' - 1/298);

Cross = 10.^(logCross);
end
