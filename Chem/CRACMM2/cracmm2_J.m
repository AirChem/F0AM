function J = CRACMM2_J(Met,Jmethod)
% Calculates photolysis frequencies for the cracmm2 mechanism in the CMAQ model
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
%                         Some reactions are not included in MCM. For these, 'HYBRID' values are used.
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
        error(['MCM option not functional for cracmm2 mechanism.'])

    case {1,'BOTTOMUP'}
        Jmcm = J_BottomUp(LFlux,T,P);

    case {2,'HYBRID'}
        Jmcm = J_Hybrid(SZA,ALT,O3col,albedo);

    otherwise
        fprintf('Jmethod = %f\n',Jmethod);
        error(['MCMv331_J: invalid Jmethod option selected'])

end
%rename
J=struct;
J.JO3O3P_NASA06 = Jmcm.J2;
J.JO3O1D_NASA06 = Jmcm.J1;
J.JH2O2_RACM2 = Jmcm.J3;
J.JNO2_RACM2 = Jmcm.J4;
J.JNO3NO_RACM2 = Jmcm.J5;
J.JNO3NO2_RACM2 = Jmcm.J6;
J.JHONO_RACM2 = Jmcm.J7;
J.JHNO3_RACM2 = Jmcm.J8;
J.JHNO4_RACM2 = Jmcm.J4;
J.JHCHO_MOL_JPL19 = Jmcm.J12;
J.JHCHO_RAD_JPL19 = Jmcm.J11;
J.JCH3CHO_RACM2 = Jmcm.J13;
J.JALD_JPL19 = Jmcm.J14;
J.JCH3COCH3A_JPL19 = Jmcm.J21;
J.JCH3COCH3B_JPL19 = Jmcm.J21;
J.JMEK_JGR19 = Jmcm.J22;
J.JMACR_RACM2 = Jmcm.J18 + Jmcm.J19;
J.JMVK_RACM2 = Jmcm.J23 + Jmcm.J24;
J.JGLYH2_RACM2 = Jmcm.J31;
J.JGLYF_RACM2 = Jmcm.J32;
J.JGLYHX_RACM2 = Jmcm.J33;
J.JMGLY_RACM2 = Jmcm.J34;
J.JOP1_RACM2 = Jmcm.J41;
J.JONIT_RACM2 = Jmcm.J54;
J.JACRO_09 = Jmcm.J18 + Jmcm.J19;

% no direct MCM analogues
J.JUALD_RACM2      = Jmcm.Jn1;  %crotonaldehyde
J.JKET_JGR19       = Jmcm.Jn3;  %ketones (based on diethyl ketone)
J.JHKET_RACM2      = Jmcm.Jn3;  %hydroxy ketone (RACM assumes same as KET)
J.JBALD_RACM2      = Jmcm.Jn2;  %benzaldehyde
J.JPAA_RACM2       = Jmcm.Jn4;  %peroxyacetic acid
J.JPAN1_RACM2      = Jmcm.Jn14; %PAN=ACO3+NO2
J.JPAN2_RACM2      = Jmcm.Jn15; %PAN=MO2+NO3+CO2
