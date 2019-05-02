function J = RACM2_J(Met,Jmethod)
% function J = RACM2_J(Met,Jmethod)
% Calculates photolysis frequencies for RACM2.
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
% J: structure of J values
%
% 20150618 SR, MM First Creation
% 20160224 GMW Updated values for UALD, BALD, KET, HKET, PAA, PAN
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

% Rename
J = struct;
J.JO1D       = Jmcm.J1; 
J.JO3P       = Jmcm.J2; 
J.JH2O2      = Jmcm.J3;
J.JHO2NO2    = Jmcm.J3;
J.JNO2       = Jmcm.J4;  
J.JNO3_NO    = Jmcm.J5; 
J.JNO3_NO2   = Jmcm.J6; 
J.JHONO      = Jmcm.J7;  
J.JHNO3      = Jmcm.J8;
J.JHCHO_HO2  = Jmcm.J11; 
J.JHCHO_H2   = Jmcm.J12; 
J.JACD       = Jmcm.J13; 
J.JALD       = Jmcm.J14;
J.JMACR      = Jmcm.J18 + Jmcm.J19;
J.JACT       = Jmcm.J21;
J.JMEK       = Jmcm.J22;
J.JMVK       = Jmcm.J23 + Jmcm.J24;
J.JGLY1      = Jmcm.J31;
J.JGLY2      = Jmcm.J32;
J.JGLY3      = Jmcm.J33; 
J.JMGLY      = Jmcm.J34; 
J.JDCB1      = Jmcm.J34;
J.JDCB2      = Jmcm.J34;
J.JOP1       = Jmcm.J41;
J.JOP2       = Jmcm.J41;
J.JONIT      = Jmcm.J54; %not clear from Goliff (2013) which nitrate to use

% NO DIRECT MCM ANALOGUES
J.JUALD      = Jmcm.Jn1; %crotonaldehyde
J.JBALD      = Jmcm.Jn2; %benzaldehyde
J.JKET       = Jmcm.Jn3; %ketones (based on diethyl ketone)
J.JHKET      = Jmcm.Jn3; %hydroxy ketone (RACM assumes same as KET)
J.JPAA       = Jmcm.Jn4; %peroxyacetic acid
J.JPAN1      = Jmcm.Jn14; %PAN=ACO3+NO2
J.JPAN2      = Jmcm.Jn15; %PAN=MO2+NO3+CO2


