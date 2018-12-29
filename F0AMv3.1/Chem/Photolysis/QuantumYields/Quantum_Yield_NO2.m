% File written by W. G. Merrill 06/20/2012
% 20160302 GMW Vectorized.

function [QYield,wl_qy] = Quantum_Yield_NO2(T,P)

% We do not wish to extrapolate beyond IUPAC recommendations
T(T>298)=298;
T(T<248)=248;

data = dlmread('Quantum_Yield_NO2.csv'); % Read the csv file
wl_qy = data(:,1); % First column is wavelengths (in nm)
T298 = data(:,2); % Second column is quantum yield at 298 K
T248 = data(:,3); % Second column is quantum yield at 248 K

QYield = interp1([248;298],[T248'; T298'],T);
QYield = QYield';
    
    

    