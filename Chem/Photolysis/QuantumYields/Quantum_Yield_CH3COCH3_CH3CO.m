% 20160303 GMW  Modfied to include T/P dependence.

function [QYield,wl_qy] = Quantum_Yield_CH3COCH3_CH3CO(T,P)

%define recommendation limits
% T(T<218) = 218;
% T(T>295) = 295;
Tn = T'./295; %normalized

[QY1,wl_qy] = Quantum_Yield_CH3COCH3_CO(T,P); % other channel, assume same wl grid

M = NumberDensity(P,T);
Mbig = repmat(M',length(wl_qy),1);

% 279-302 nm
a1 = 1.6e-19.*Tn.^-2.38;
b1 = 0.55e-3.*Tn.^-3.19;
A1 = repmat(a1,length(wl_qy),1) .* exp(-(1e7./wl_qy - 33113)*b1);
QYlo = (1 - QY1) ./ (1 + A1.*Mbig);

% 302-328nm
a2 = 1.62e-17*Tn.^-10.03;
b2 = 1.79e-3*Tn.^-1.364;
A2 = repmat(a2,length(wl_qy),1) .* exp(-(1e7./wl_qy - 30488)*b2);

a3 = 26.29*Tn.^-6.59;
b3 = repmat(5.72e-7*Tn.^-2.93,length(wl_qy),1);
c3 = repmat(30006*Tn.^-0.064,length(wl_qy),1);
A3 = repmat(a3,length(wl_qy),1) .* exp(-(1e7./repmat(wl_qy,1,length(T)) - c3).^2.*b3);

a4 = 1.67e-15*Tn.^-7.25;
b4 = 2.08e-3*Tn.^-1.16;
A4 = repmat(a4,length(wl_qy),1) .* exp(-(1e7./wl_qy - 30488)*b4);

QYhi = (1 + A4.*Mbig + A3)./((1 + A2.*Mbig + A3).*(1 + A4.*Mbig)).*(1 - QY1);

j = wl_qy < 279;
i = wl_qy<=302 & wl_qy>=279;
p = wl_qy > 302;
QYuv = repmat(0.55,length(wl_qy),length(T));
QYield = [QYuv(j,:);QYlo(i,:);QYhi(p,:)];



