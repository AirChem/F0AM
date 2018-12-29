function E = Emit_expT(EF,beta,MM,Tleaf,LAI)
% function E = Emit_expT(EF,beta,MM,Tleaf,LAI)
% Calculates an emission rate/flux using the exponential temperature dependence
% algorithm of MEGAN v2.1 (Guenther et al., GMD (2012), herin called G12).
%
% INPUTS:
% EF:       emission factor at standard conditions, ug/m^2/h (G12 Table 2)
% beta:     temperature correction factor, /K (G12 Table 4)
% MM:       molar mass of compound, g/mol
% Tleaf:    leaf temperature, K
% LAI:      leaf area index, m^2 leaf per m^2 ground
%
% OUTPUT:
% E: Emission flux molec/cm^2/s.
%
% 20160718 GMW  Created from old CAFEv2.1 scripts.

u = 1/1e6/MM*6.022e23/1e4/3600; % unit conversion, ug/m^2/h to molecules/cm^2/s

Ts = 297; %standard leaf temperature
CT = exp(beta.*(Tleaf - Ts)); %temperature correction

E = u.*EF.*CT.*LAI;


