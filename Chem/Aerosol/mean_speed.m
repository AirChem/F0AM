%function k=mean_speed(MW,T)
%output is mean molecular velocity in cm/s
%MW is molecular weight in g/mol and T in Kelvin
function v = mean_speed(MW,T)
R=8.3145.*((100).^2).*1000; %unit conversion for gas constant
v = sqrt((8.*R.*T)./(pi.*MW));