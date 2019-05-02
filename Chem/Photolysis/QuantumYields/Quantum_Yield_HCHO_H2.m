% File written by W. G. Merrill 06/22/2012
% 20160303 GMW Vectorized and linked to HCO QY function.
%               Corrected P dependence to only be >330 nm.

function [QYield,wl_qy] = Quantum_Yield_HCHO_H2(T,P)

% recommendation limits
T(T>300) = 300;
T(T<220) = 220;

QY1 = Quantum_Yield_HCHO_HCO(T,P); % radical channel, assume same wl vector

data = dlmread('Quantum_Yield_HCHO_H2.csv'); % Read the csv file
wl_qy = data(:,1);
QY_300 = data(:,2); %quantum yield at 300 K

QYield = repmat(QY_300,1,length(T));

% P/T dependence for wl > 330 nm
i = wl_qy > 330;
alpha_300 = 1./(1./QYield - 1./(1-QY1));
alpha_T = alpha_300.*(1 + 0.05*(wl_qy - 329)*(300 - T')/80);
QYield(i,:) = 1./(1./(1-QY1(i,:)) + 1./alpha_T(i,:).*repmat(P',sum(i),1)./1013.25); % P converted from mb to atm

