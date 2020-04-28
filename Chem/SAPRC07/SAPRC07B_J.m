function J = SAPRC07_J(Met,Jmethod)
% function J = SAPRC07_J(Met,Jmethod)
% Calculates photolysis frequencies for CB05.
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
% 20150618 GMW
% 20160131 GMW  Minor changes to names for HCHO to match CB05 doc.
% 20160304 GMW  Changed output from name/value pairs to structure, added Jmethod.
% 20190501 GMW  Moved hybrid J-value estimation for "MCM" method to MCMv331_J.
% 20200420 GMW  Modified from CB05_J to use SAPRC07B names, with help from Hongyu Chen.

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
J.JNO2_06       = Jmcm.J4;
J.JNO3NO_06     = Jmcm.J5;
J.JNO3NO2_6     = Jmcm.J6;
J.JO3O1D_06     = Jmcm.J1;
J.JO3O3P_06     = Jmcm.J2;
J.JHONO_06      = Jmcm.J7;
J.JHNO3         = Jmcm.J8;
J.JHNO4_06      = Jmcm.Jn21;
J.JH2O2         = Jmcm.J3;
J.JPAN          = Jmcm.Jn14 + Jmcm.Jn15;
J.JHCHOR_06     = Jmcm.J11;
J.JHCHOM_06     = Jmcm.J12;
J.JCCHO_R       = Jmcm.J13;
J.JC2CHO        = Jmcm.J14;
J.JACET_06      = Jmcm.J21;
J.JMEK_06       = Jmcm.J22;
J.JCOOH         = Jmcm.J41;
J.JGLY_07R      = Jmcm.J33;
J.JGLY_07M      = Jmcm.J31 + Jmcm.J32;
J.JMGLY_06      = Jmcm.J34;
J.JBACL_07      = Jmcm.J35;
J.JBALD_06      = Jmcm.Jn2;
J.JAFG1         = Jmcm.J4*0.14; %assuming MCM MALDIAL + hv as a surrogate
J.JMACR_06      = Jmcm.J18 + Jmcm.J19;
J.JMVK_06       = Jmcm.J23 + Jmcm.J24;
J.JIC3ONO2      = Jmcm.J54;
J.JCL2          = Jmcm.Jn32;
J.JCLNO_06      = Jmcm.Jn53;
J.JCLONO        = Jmcm.Jn54;
J.JCLNO2        = Jmcm.Jn23;
J.JCLONO2_1     = Jmcm.Jn35;
J.JCLONO2_2     = Jmcm.Jn34;
J.JHOCL_06      = Jmcm.Jn36;
J.JCLCCHO       = Jmcm.Jn55;
J.JCLACET       = Jmcm.Jn56;

% Included in mechanism description, but not used
% J.JNO2EX        = Jmcm.J4; %not used
% J.JMITC         = Jmcm.
% J.JCS2          = Jmcm.
% J.JCLPICERI     = Jmcm.
% J.JCONO         = Jmcm.
% J.JCH3I         = Jmcm.
% J.JBRNO2        = Jmcm.Jn27;
% J.JHI           = Jmcm.
% J.JHOI          = Jmcm.Jn41;
% J.JBRONO2       = Jmcm.
% J.JPAA          = Jmcm.Jn4;
% J.JHOCCHO       = Jmcm.
% J.JACRO_09      = Jmcm.Jn11;


%SZA parameterization used in Carter (2010) mechanism evaluation
%  % created by Hongyu Chen 03/29/2020       
% case {3,'SAPRC'}
%     
%     %%%%%INITIALIAZATION%%%%%
%     nj = 49; %number of rate constants
%     I = nan(1,nj);
%     m = nan(1,nj);
%     n = nan(1,nj);
%     Jnames = cell(nj,1);
%     i=0;
%     
%     %%%%%INDIVIDUAL VALUES%%%%%
%     i=i+1;
%     Jnames{i} = 'JNO2_06';
%     I(i) = 1.37875428865744;
%     m(i) = -0.196;
%     n(i) = 0.643;
%     
%     i=i+1;
%     Jnames{i} = 'JNO2EX';
%     I(i) = 	3.29666384;
%     m(i) = 	-0.201;
%     n(i) =	0.391;
%     
%     i=i+1;
%     Jnames{i} = 'JNO3NO_06';
%     I(i) = 	2.535988623;
%     m(i) = 	-0.199;
%     n(i) =	0.280;
%     i=i+1;
%     Jnames{i} = 'JNO3NO2_6';
%     I(i) = 	21.2052209;
%     m(i) = 	-0.202;
%     n(i) =	0.316;
%     
%     i=i+1;
%     Jnames{i} = 'JO3O1D_06';
%     I(i) = 	0.009384263;
%     m(i) = 	0.990;
%     n(i) =	1.121;
%     
%     i=i+1;
%     Jnames{i} = 'JO3O3P_06';
%     I(i) = 	0.039872969;
%     m(i) = 	0.317;
%     n(i) =	0.060;
%     
%     i=i+1;
%     Jnames{i} = 'JHONO_06';
%     I(i) = 	0.234239929;
%     m(i) = 	-0.216;
%     n(i) =	0.718;
%     
%     i=i+1;
%     Jnames{i} = 'JNO3NO2_6';
%     I(i) = 	21.2052209;
%     m(i) = 	-0.202;
%     n(i) =	0.316;
%     
%     i=i+1;
%     Jnames{i} = 'JHNO3';
%     I(i) = 	9.03848E-05;
%     m(i) = 	1.167;
%     n(i) =	0.506;
%     
%     i=i+1;
%     Jnames{i} = 'JHNO4_06';
%     I(i) = 	0.001212281;
%     m(i) = 	0.424;
%     n(i) =	0.804;
%     
%     i=i+1;
%     Jnames{i} = 'JH2O2';
%     I(i) = 	0.001286069;
%     m(i) = 	0.179;
%     n(i) =	0.824;
%     
%     i=i+1;
%     Jnames{i} = 'JPAN';
%     I(i) = 	0.000113033;
%     m(i) = 	0.738;
%     n(i) =	0.609;
%     
%     i=i+1;
%     Jnames{i} = 'JHCHOR_06';
%     I(i) = 	0.007201146;
%     m(i) = 	0.079;
%     n(i) =	0.956;
%     
%     i=i+1;
%     Jnames{i} = 'JHCHOM_06';
%     I(i) = 	0.007393807;
%     m(i) = 	-0.079;
%     n(i) =	0.861;
%     
%     %added J20 jbk 150323
%     i=i+1;
%     Jnames{i} = 'JCCHO_R';
%     I(i) = 	0.001217703;
%     m(i) = 	0.544;
%     n(i) =	1.073;
%     
%     i=i+1;
%     Jnames{i} = 'JC2CHO';
%     I(i) = 	0.003719619;
%     m(i) = 	0.446;
%     n(i) =	0.974;
%     
%     i=i+1;
%     Jnames{i} = 'JACET_06';
%     I(i) = 	0.000188575;
%     m(i) = 	0.986;
%     n(i) =	1.068;
%     
%     i=i+1;
%     Jnames{i} = 'JMEK_06';
%     I(i) = 	0.002609475;
%     m(i) = 	0.463;
%     n(i) =	0.993;
%     
%     i=i+1;
%     Jnames{i} = 'JCOOH';
%     I(i) = 	0.00086289;
%     m(i) = 	0.167;
%     n(i) =	0.782;
%     
%     i=i+1;
%     Jnames{i} = 'JGLY_07R';
%     I(i) = 	0.015585461;
%     m(i) = 	-0.045;
%     n(i) =	0.539;
%     
%     i=i+1;
%     Jnames{i} = 'JGLY_07M';
%     I(i) = 	0.006493216;
%     m(i) = 	0.201;
%     n(i) =	0.712;
%     
%     i=i+1;
%     Jnames{i} = 'JMGLY_06';
%     I(i) = 	0.025931699;
%     m(i) = 	-0.068;
%     n(i) =	0.502;
%     
%     i=i+1;
%     Jnames{i} = 'JBACL_07';
%     I(i) = 	0.045997461;
%     m(i) = 	-0.176;
%     n(i) =	0.539;
%     
%     i=i+1;
%     Jnames{i} = 'JBALD_06';
%     I(i) = 	0.11200553;
%     m(i) = 	-0.123;
%     n(i) =	0.786;
%     
%     i=i+1;
%     Jnames{i} = 'JAFG1';
%     I(i) = 	0.744127624;
%     m(i) = 	0.037;
%     n(i) =	0.651;
%     
%     i=i+1;
%     Jnames{i} = 'JMACR_06';
%     I(i) = 	0.000448546;
%     m(i) = 	0.090;
%     n(i) =	0.821;
%     
%     i=i+1;
%     Jnames{i} = 'JMVK_06';
%     I(i) = 	0.000160923;
%     m(i) = 	0.194;
%     n(i) =	0.759;
%     
%     i=i+1;
%     Jnames{i} = 'JIC3ONO2';
%     I(i) = 	0.00056518;
%     m(i) = 	0.543;
%     n(i) =	0.875;
%     
%     i=i+1;
%     Jnames{i} = 'JCL2';
%     I(i) = 	0.344375075;
%     m(i) = 	-0.091;
%     n(i) =	0.684;
%     
%     i=i+1;
%     Jnames{i} = 'JCLNO_06';
%     I(i) = 	0.40431047;
%     m(i) = 	-0.064;
%     n(i) =	0.493;
%     
%     i=i+1;
%     Jnames{i} = 'JCLONO';
%     I(i) = 	0.675579228;
%     m(i) = 	-0.001;
%     n(i) =	0.776;
%     
%     i=i+1;
%     Jnames{i} = 'JCLNO2';
%     I(i) = 	0.060872011;
%     m(i) = 	0.038;
%     n(i) =	0.804;
%     
%     i=i+1;
%     Jnames{i} = 'JCLONO2_1';
%     I(i) = 	0.001464061;
%     m(i) = 	0.316;
%     n(i) =	0.825;
%     
%     i=i+1;
%     Jnames{i} = 'JCLONO2_2';
%     I(i) = 	0.005943759;
%     m(i) = 	0.058;
%     n(i) =	0.627;
%     
%     i=i+1;
%     Jnames{i} = 'JHOCL_06';
%     I(i) = 	0.042021758;
%     m(i) = 	0.004;
%     n(i) =	0.708;
%     
%     i=i+1;
%     Jnames{i} = 'JCLCCHO';
%     I(i) = 	0.015792449;
%     m(i) = 	0.116;
%     n(i) =	0.912;
%     
%     i=i+1;
%     Jnames{i} = 'JCLACET';
%     I(i) = 	0.01716328;
%     m(i) = 	0.216;
%     n(i) =	0.928;
%     
%     i=i+1;
%     Jnames{i} = 'JMITC';
%     I(i) = 	0.001357634;
%     m(i) = 	0.390;
%     n(i) =	0.947;
%     
%     i=i+1;
%     Jnames{i} = 'JCS2';
%     I(i) = 	0.029193496;
%     m(i) = 	0.008;
%     n(i) =	0.944;
%     
%     i=i+1;
%     Jnames{i} = 'JCLPICERI';
%     I(i) = 	0.009742289;
%     m(i) = 	0.191;
%     n(i) =	0.744;
%     
%     i=i+1;
%     Jnames{i} = 'JCONO';
%     I(i) = 	0.329144882;
%     m(i) = 	-0.177;
%     n(i) =	0.730;
%     
%     i=i+1;
%     Jnames{i} = 'JCH3I';
%     I(i) = 	0.00118962;
%     m(i) = 	0.528;
%     n(i) =	0.833;
%     
%     i=i+1;
%     Jnames{i} = 'JBRNO2';
%     I(i) = 	0.691614289;
%     m(i) = 	-0.145;
%     n(i) =	0.527;
%     
%     i=i+1;
%     Jnames{i} = 'JHI';
%     I(i) = 	0.00216403;
%     m(i) = 	0.361;
%     n(i) =	0.891;
%     
%     i=i+1;
%     Jnames{i} = 'JHOI';
%     I(i) = 	12.58813835;
%     m(i) = 	-0.158;
%     n(i) =	0.544;
%     
%     i=i+1;
%     Jnames{i} = 'JBRONO2';
%     I(i) = 	0.190873018;
%     m(i) = 	-0.020;
%     n(i) =	0.539;
%     
%     i=i+1;
%     Jnames{i} = 'JPAA';
%     I(i) = 	0.000132337;
%     m(i) = 	0.415;
%     n(i) =	0.787;
%     
%     i=i+1;
%     Jnames{i} = 'JHOCCHO';
%     I(i) = 	0.00150768;
%     m(i) = 	0.516;
%     n(i) =	0.961;
%     
%     i=i+1;
%     Jnames{i} = 'JACRO_09';
%     I(i) = 	0.000395666;
%     m(i) = 	0.067;
%     n(i) =	0.804;
%     
%     %%%%%CALCULATE J-VALUES%%%%%
%     ns = length(SZA);
%     SZAbig = repmat(SZA,1,nj);
%     Ibig = repmat(I,ns,1);
%     mbig = repmat(m,ns,1);
%     nbig = repmat(n,ns,1);
%     
%     warning off %secd gives /0 warning for SZA=90
%     j=Ibig.*cosd(SZAbig).^mbig.*exp(-nbig.*secd(SZAbig))/60; %last big converts /min to /s
%     warning on
%     j(SZA>=90,:) = 0;
%     
%     % accumulate
%     J = struct;
%     for i=1:length(Jnames)
%         J.(Jnames{i}) = j(:,i);
%     end
