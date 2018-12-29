function M = NumberDensity(P,T)
% function M = NumberDensity(P,T)
% Calculated number density of an ideal gas (like air).
% n/V = P/RT
% INPUTS:
% P: pressure in mbar (or hPa, if you prefer)
% T: temperature in K
% OUTPUT, M, is number density in molecules per cm^3.
% 
% 20140221 GMW

Na = 6.022e23; %molecules per mole
R = 8.314e4; % cm^3 mbar /K /mol

M = Na.*P./R./T;


