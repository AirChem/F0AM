function E = Emit_soilNO_HD12(EF,Ts,theta)
% function E = Emit_soilNO_HD12(EF,Ts,theta)
% Calculates soil NO emission rates following Hudman et al. ACP (2012).
%
% INPUTS:
% EF: Basal factor at standard conditions, ng/m^2/s
% Ts: soil temperature, K
% theta: soil moisture parameter, ranging from >0 - 1. Ignored if set to nan.
%
% OUTPUT:
% E: soil NO emission flux, molec/cm^2/s
% 
% 20160718 GMW  Created from old scripts in CAFEv2.1.

MM = 30; %molar mass
u = 1/1e9/MM*6.022e23/1e4; %convert ng/m^2/s to molec/cm^2/s

%temperature
Ts = Ts - 273.15; %deg C
if Ts>30, Ts = 30; end
fT = exp(0.103.*Ts);

%water
a = 5.4675; %emperically determined for g=1 at theta=0.3
b = 5.5;
if isnan(theta)
    g = 1;
else
    g = a.*theta.*exp(-b*theta.^2);
end

%put it together
E = u.*EF.*fT.*g;


