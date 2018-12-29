% 20160303 GMW
% From JPL 10-6

function [QYield,wl_qy] = Quantum_Yield_HCHO_HCO(T,P)

a0 = 557.95835182;
a1 = -7.31994058026;
a2 = 0.03553521598;
a3 = -7.54849718e-5;
a4 = 5.91001021e-8;

wl_qy = (250:361)';
QYield = a0 + a1.*wl_qy + a2.*wl_qy.^2 + a3.*wl_qy.^3 + a4.*wl_qy.^4;
QYield(QYield<0) = 0;
QYield = repmat(QYield,1,length(T));

