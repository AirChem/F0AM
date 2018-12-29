% File written by W. G. Merrill 06/19/2012
% 20160302 GMW  Vectorized.

function [QYield,wl_qy] = Quantum_Yield_MVK(T,P)

wl_qy = (250:395)';

M = NumberDensity(P,T);

QYield = exp(-0.055*(wl_qy - 308)) * (1./(5.5 + 9.2e-19.*M'));
QYield = QYield./2; %per MCM recommendation that both MVK channels have the same quantum yield