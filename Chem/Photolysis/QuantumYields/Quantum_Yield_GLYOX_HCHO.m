% 20160315 GMW

function [QYield,wl_qy] = Quantum_Yield_GLYOX_HCHO(T,P)

data = dlmread('Quantum_Yield_GLYOX_JPL.csv'); % Read the csv file
wl_qy   = data(:,1);
QY_HCO  = data(:,2);
QY_H2   = data(:,3);
QY_HCHO = data(:,4);

% do it
QYield = QY_HCHO;
