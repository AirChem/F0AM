%03/04/2016 by Jin Liao


function [QYield,wl_qy] = Quantum_Yield_O3_O1D_IUPAC(T,P)

data = dlmread('Quantum_Yield_O3_O1D_IUPAC.csv');
wl_qy = data(:,1);
QY = data(:,2);

A1 = 0.8036;
A2 = 8.9061;
A3 = 0.1192;
X1 = 304.225;
X2 = 314.957;
X3 = 310.737;
w1 = 5.576;
w2 = 6.601;
w3 = 2.187;
v1 = 0;
v2 = 825.518;
c = 0.0765;
R = 0.695; % cm^-1 K^-1  0.0821; %8.314;
q1 = exp(-v1./R./T);
q2 = exp(-v2./R./T);

QYield = repmat(QY,1,length(T));
i = wl_qy>=306 & wl_qy<=328;
j = T>=200 & T<=320;

QYield(i,j) = exp(-((X1-wl_qy(i))./w1).^4)*(q1'./(q1'+q2').*A1)+...
    exp(-((X2-wl_qy(i))/w2).^2)*(q2'./(q1'+q2').*A2.*(T'/300).^2)+ ...
    exp(-((X3-wl_qy(i))/w3).^2)*A3*(T'/300).^1.5+c;

