%20160303 GMW IUPAC recommendation.

function [QYield,wl_qy] = Quantum_Yield_C3H7CHO_C2H4(T,P)

data = dlmread('Cross_Section_C3H7CHO.csv');
wl_qy = data(:,1);

QYield = zeros(length(wl_qy),length(T));

i = wl_qy>=290 & wl_qy<=380;
QYield(i,:) = 0.10;


