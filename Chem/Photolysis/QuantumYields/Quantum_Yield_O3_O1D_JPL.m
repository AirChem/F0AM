%03/04/2016 by Jin Liao


function [QYield,wl_qy] = Quantum_Yield_O3_O1D_JPL(T,P)

% stay within JPL recommendation limits
T(T<200) = 200;
T(T>320) = 320;

% get wavelength
data = dlmread('Cross_Section_O3_JPL.csv');
wl_qy = data(:,1);

QYield = zeros(length(wl_qy),length(T));

% 193-225: 0.0137*wl - 2.16
i = wl_qy>=193 & wl_qy<220;
QYield(i,:) = repmat(0.0137*wl_qy(i) - 2.16,1,length(T));


% 220-305: 0.9
i = wl_qy>=220 & wl_qy<306;
QYield(i,:) = 0.9;

% T dependence, 306 - 328 nm
i = wl_qy>=306 & wl_qy<329;

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
R =  0.695; % cm^-1 K^-1
q1 = exp(-v1./R./T);
q2 = exp(-v2./R./T);

QYield (i,:)= exp(-((X1-wl_qy(i))./w1).^4)*(q1'./(q1'+q2').*A1) + ...
    exp(-((X2-wl_qy(i))/w2).^2)*(q2'./(q1'+q2').*A2.*(T'/300).^2) + ...
    exp(-((X3-wl_qy(i))/w3).^2)*A3*(T'/300).^1.5 + c;

% 329-370: 0.08 (JPL upper limit 340, IUPAC upper limit 370)
i = wl_qy>=329 & wl_qy<341;
QYield(i,:) = 0.08;


