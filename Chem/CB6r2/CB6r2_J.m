function J = CB6r2_J(Met,Jmethod)
% function J = CB6r2_J(Met,Jmethod)
% Calculates photolysis frequencies for CB06r2.
%
% INPUTS:
% Met: structure containing required meteorological constraints. Required vars depend on Jmethod.
%       Met.SZA: solar zenith angle in degrees
%       Met.ALT: altitude, meters
%       Met.O3col: overhead ozone column, DU
%       Met.albedo: surface reflectance, 0-1 (unitless)
%       Met.T: temperature, T
%       Met.P: pressure, mbar
%       Met.LFlux: name of a text file containing an actinic flux spectrum
%
% Jmethod: numeric flag or string specifying how to calculate J-values. Default is 'MCM'.
%       0 or 'MCM':      use MCMv3.3.1 parameterization.
%                         Some reactions are not included in MCM. For these, "HYBRID" values are used.
%                         Required Met fields: SZA
%       1 or 'BOTTOMUP': bottom-up integration of cross sections/quantum yields.
%                         See J_BottomUp.m for more info.
%                         Required Met fields: LFlux, T, P
%       2 or 'HYBRID':   Interpolation of hybrid J-values from TUV solar spectra.
%                         See J_TUVhybrid.m for more info.
%                         Required Met fields: SZA, ALT, O3col, albedo
%
% OUTPUTS:
% J: structure of J-values.
%
% 20150218 MM   Adapted from CB05_J
% 20150618 GMW  Adapted from script to function
% 20160304 GMW  Changed output from name/value pairs to structure, added Jmethod.
% 20190501 GMW  Moved hybrid J-value estimation for "MCM" method to MCMv331_J.

% INPUTS
struct2var(Met)

if nargin<2
    Jmethod = 'MCM';
elseif ischar(Jmethod)
    Jmethod = upper(Jmethod);
end

% J-Values
switch Jmethod
    case {0,'MCM'}
        Jmcm = MCMv331_J(Met,'MCM');
        
    case {1,'BOTTOMUP'}
        Jmcm = J_BottomUp(LFlux,T,P);
        
    case {2,'HYBRID'}
        Jmcm = J_Hybrid(SZA,ALT,O3col,albedo);
        
    otherwise
        error(['MCMv331_J: invalid Jmethod "' Jmethod ...
            '". Valid options are "MCM" (0), "BOTTOMUP" (1), "HYBRID" (2).'])
end

%rename
J=struct;
J.JNO2        = Jmcm.J4;
J.JNO3_NO     = Jmcm.J5;
J.JNO3_NO2    = Jmcm.J6;
J.JHNO3       = Jmcm.J8;
J.JO3P        = Jmcm.J2;
J.JO1D        = Jmcm.J1;
J.JHONO       = Jmcm.J7;
J.JH2O2       = Jmcm.J3;
J.JNTR        = Jmcm.J54;
J.JCOOH       = Jmcm.J41;
J.JCCHO_R     = Jmcm.J13;
J.JC2CHO      = Jmcm.J14;
J.JHCHO_M     = Jmcm.J12;
J.JHCHO_R     = Jmcm.J11;
J.JMGLY       = Jmcm.J34;
J.JHPLD       = Jmcm.J20;
J.JGLY        = Jmcm.J31 + Jmcm.J32 + Jmcm.J33;
J.JACET       = Jmcm.J21;
J.JMEK        = Jmcm.J22;

% NO DIRECT MCM ANALOGUES
J.JN2O5       = Jmcm.Jn19 + Jmcm.Jn20;
J.JHO2NO2     = Jmcm.Jn21 + Jmcm.Jn22;
J.JPAN        = Jmcm.Jn14 + Jmcm.Jn15;
J.JACRO       = Jmcm.Jn11;
J.JGLYD       = Jmcm.Jn9;
J.JCRON       = Jmcm.Jn12 + Jmcm.Jn13;


