%20160303 GMW IUPAC recommendation.

function [QYield,wl_qy] = Quantum_Yield_CH3CHO_CH3(T,P)

data = dlmread('Quantum_Yield_CH3CHO.csv');
wl_qy = data(:,1);
% QY1 = data(:,2); %CH4 + CO
QY2 = data(:,3); %CH3 + HCO
% QY3 = data(:,4); %CH3CO + H

M = NumberDensity(P,T);
M_std = NumberDensity(1013.25,298)*ones(size(M));

QY0 = 1./(1 + exp(wl_qy - 320.55)./3.82);
kmkd = 1e-21.*(1.04e27*exp(-17918./wl_qy) + 1.48e6*exp(-3210.8./wl_qy));

QYt_std = 1./(1./repmat(QY0,1,length(T)) + kmkd*M_std');
QYtP = 1./(1./repmat(QY0,1,length(T)) + kmkd*M'); %pressure-corrected total QY

QYield = repmat(QY2,1,length(T)).*QYtP./QYt_std; %scale it


