% 20160223 JL Written, IUPAC.
% 20160303 GMW  Fixed, vectorized.

function [QYield,wl_qy] = Quantum_Yield_CH3COCH3_CO(T,P)

%define recommendation limits
% T(T<218) = 218;
% T(T>295) = 295;

wl_qy = (279:0.5:327)'; %arbitrary
% wl_qy = (248:327)'; %arbitrary


a0 = 0.350*(T'/295).^-1.28;
b0 = 0.068*(T'/295).^-2.65;

A0 = repmat(a0./(1-a0),length(wl_qy),1) .* exp((wl_qy - 248)*b0);

i = wl_qy >= 279;
QYield(i,:) = 1./(1 + A0(i,:));
QYield(~i,:) = 0.45;
QYield(QYield<0) = 0;


