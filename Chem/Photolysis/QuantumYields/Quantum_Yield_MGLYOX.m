% File written by W. G. Merrill 07/02/2012
% 20160303 GMW  Vectorized, adjust for P units of mbar, changed from spreadsheet to equations.

function [QYield,wl_qy] = Quantum_Yield_MGLYOX(T,P)

wl_qy = (280:440)'; %nm
QY0 = ones(size(wl_qy));
i = wl_qy>380;
QY0(i) = 3.63e-7.*exp(5693./wl_qy(i));
kQ = 1.93e4.*exp(-5639./wl_qy)*760/1013; %pressure correction, /mbar
PN2 = 0.78*P;

QYield = 1./(1./repmat(QY0,1,length(P)) + kQ*PN2');
