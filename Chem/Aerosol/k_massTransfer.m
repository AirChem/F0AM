function khet = k_massTransfer(T,MMg,Dg,rp,Sp,alpha)
% function khet = k_massTransfer(T,MMg,Dg,rp,Sp,alpha)
% function for calculating mass transfer of gases to monodisperse aerosol surfaces.
% Equations come from Tang et al., ACP, 14, 9233-9247, 2014, doi: 10.5194/acp-14-9233-2014, and
% references therein.
% 
% INPUTS:
% T: temperature, K.
% MMg: gas molar mass, g/mol.
% Dg: gas diffusion coefficient, cm^2/s.
% rp: particle radius, cm.
% Sp: particle surface area density, cm^2/cm^3.
% alpha: mass accomodation coefficient, 0-1.
%
% OUTPUT khet is the mass tranfer rate constant, /s.
%
% 20180320 GMW

vg      = mean_speed(MMg,T);                  % mean molecular speed, cm/s
Kn     = (6.*Dg)./(vg.*2.*rp);                % Knudsen Number, Tang Eq. 4
G1     = (0.75 + 0.286.*Kn)./(Kn.*(Kn+1));  % Inverse diffusion limitation, Tang Eq. 3
gamma  = (1./alpha + G1).^-1;               % uptake coefficient, Tang Eq. 2

khet  = 0.25.*gamma.*vg.*Sp;                 % rate constant, /s (Tang Eq. 1)


