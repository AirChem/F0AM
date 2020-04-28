function J = GEOSCHEM_J(Met,Jmethod)
% function J = GEOSCHEM_J(Met,Jmethod)
% Calculates photolysis frequencies for GEOSCHEM.
% Mapping is based on the information found in the source files "ratj.d" and "jv_spec.dat".
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
% J: structure of J-values
%
% 20151108 KRT
% 20160224 GMW Checked and cleaned.
% 20160304 GMW  Changed output from name/value pairs to structure, added Jmethod.
% 20190501 GMW  Moved hybrid J-value estimation for "MCM" method to MCMv331_J.
% 20200424 GMW  Added definitions for GC v12.07 (mostly halogens)

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

% RENAME
J=struct;
J.JO1D        = Jmcm.J1;
J.JO3P        = Jmcm.J2;
J.JH2O2       = Jmcm.J3;
J.JNO2        = Jmcm.J4;
J.JNO3_NO     = Jmcm.J5;
J.JNO3_NO2    = Jmcm.J6;
J.JHONO       = Jmcm.J7;
J.JHNO3       = Jmcm.J8;
J.JHCHO_HO2   = Jmcm.J11;
J.JHCHO_H2    = Jmcm.J12;
J.JALD2a      = Jmcm.J13; % MCM only considers radical channel
J.JRCHO       = Jmcm.J14;
J.JMACR       = Jmcm.J18 + Jmcm.J19;
J.JHPALD      = Jmcm.J20;
J.JMVK        = Jmcm.J23 + Jmcm.J24; %put 60/20/20 branching in reaction file
J.JACETa      = Jmcm.J21; %MCM only considers this channel
J.JMEK        = Jmcm.J22;
J.JGLYXc      = Jmcm.J32;
J.JGLYXb      = Jmcm.J31;
J.JGLYXa      = Jmcm.J33;
J.JMGLY       = Jmcm.J34;
J.JMP         = Jmcm.J41;
J.JMENO3      = Jmcm.J51; %renamed from JR4N2
J.JETNO3      = Jmcm.J52;
J.JNPRNO3     = Jmcm.J53;
J.JIPRNO3     = Jmcm.J54;
J.JONIT1      = Jmcm.J54; %not totally sure about this, but no documentation on x-section source

% NOTE: for these carbonyl nitrates, GEOS-CHEM/FAST-JX uses cross sections calculated
% following Muller et al., ACP (2014). For now we have just assigned these to the scaling
% factors given in MCMv3.3.1.
J.JPROPNN     = Jmcm.J56;
J.JETHLN      = Jmcm.J56*4.3;
J.JMVKN       = Jmcm.J56*1.6;
J.JMACRN      = Jmcm.J56*10;

% NO DIRECT MCM ANALOGUES
J.JALD2b        = Jmcm.Jn5; % ch3cho; MCM only considers radical channel; FAST JX has QY=0
J.JACETb        = Jmcm.Jn8; %acetone
J.JHAC          = Jmcm.Jn10;
J.JGLYC         = Jmcm.Jn9;
J.JHNO4_HO2     = Jmcm.Jn21;
J.JHNO4_OH      = Jmcm.Jn22;
J.JN2O5_NO2     = Jmcm.Jn19; % N2O5 --> NO3 + NO2
J.JN2O5_NO      = Jmcm.Jn20; % N2O5 -> NO3+NO+O, turned off in GC
J.JPAN          = Jmcm.Jn14 + Jmcm.Jn15; %70/30 quantum yields set in chem file
J.JMPN          = Jmcm.Jn16 + Jmcm.Jn17; %95/5 quantum yields set in chem file
J.JBr2          = Jmcm.Jn24;
J.JBrO          = Jmcm.Jn25; 
J.JHOBr         = Jmcm.Jn26;
J.JBrNO2        = Jmcm.Jn27;
J.JBrNO3_Br     = Jmcm.Jn28;
J.JBrNO3_BrO    = Jmcm.Jn29;
J.JCHBr3        = Jmcm.Jn30;
J.JBrCl         = Jmcm.Jn31;
J.JCl2          = Jmcm.Jn32;
J.JClO          = Jmcm.Jn33;
J.JOClO         = Jmcm.Jn37;
J.JCl2O2        = Jmcm.Jn38;
J.JClNO2        = Jmcm.Jn23;
J.JClNO3_Cl     = Jmcm.Jn34;
J.JClNO3_ClO    = Jmcm.Jn35;
J.JHOCl         = Jmcm.Jn36;
J.JClOO         = Jmcm.Jn39;
J.JI2           = Jmcm.Jn40;
J.JHOI          = Jmcm.Jn41;
J.JIO           = Jmcm.Jn42;
J.JOIO          = Jmcm.Jn43;
J.JINO          = Jmcm.Jn44;
J.JIONO         = Jmcm.Jn45;
J.JIONO2        = Jmcm.Jn46;
J.JI2O2         = Jmcm.Jn47;
J.JI2O4         = Jmcm.Jn48;
J.JI2O3         = Jmcm.Jn49;
J.JIBr          = Jmcm.Jn51;
J.JICl          = Jmcm.Jn50;



