function E = Emit_IsopreneG95(EF,MM,Tleaf,PPFD,LAI)
% function E = Emit_IsopreneG95(EF,MM,Tleaf,PPFD,LAI)
% Calculates an emission rate for isoprene using the algorithm of Guenther et al. (1995) JGR.
% Should eventually be updated to MEGANv2.1, when someone has time.
%
% INPUTS:
% EF:       emission factor at standard conditions, ug/m^2/h (G12 Table 2)
% MM:       molar mass of compound, g/mol
% Tleaf:    leaf temperature, K
% PPFD:     photosynthetic photon flux density, umol/m^2/s
% LAI:      leaf area index, m^2 leaf per m^2 ground
%
% OUTPUT:
% E: Emission flux, molec/cm^2/s
%
% 20160718 GMW  Created from old CAFEv2.1 scripts.
% 20170322 MRM  Checked and corrected for consistency with documentation

u = 1/1e6/MM*6.022e23/1e4/3600; % unit conversion, ug/m^2/h to molecules/cm^2/s

%light
alpha = 0.0027;
cl1 = 1.066;
CL = alpha.*cl1.*PPFD./sqrt(1 + (alpha.*PPFD).^2);

%temperature
ct1 = 95; %energy of deactivation, kJ/mol
ct2 = 230; %energy of activation, kJ/mol
Tm = 314; %optimal emission temperature
Ts = 297; %standard leaf temperature: MRM changed from 303.15
R = 0.00831; %gas constant, kJ/mol/K
x1 = (1./Ts - 1./Tleaf)./R;
x2 = (1./Ts - Tm./(Ts.*Tleaf))./R;
CT = exp(ct1.*x1)./(1 + exp(ct2.*x2));

%put it together
E = u.*EF.*CT.*CL.*LAI;


