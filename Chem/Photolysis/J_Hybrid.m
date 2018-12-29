function J = J_Hybrid(SZA,ALT,O3col,albedo)
% function J = J_Hybrid(SZA,ALT,O3col,albedo)
% Interpolates hybrid J-values to desired SZA, altitude,O3column and albedo.
% The J-values found in Jhybrid.mat were derived using a combination of TUV solar spectra
% and custom-compiled quantum yields (QY) and cross sections (CS).
%
% Clear-sky TUVv5.2 solar spectra were calculated with the following inputs:
%   SZA         0:5:90      degrees
%   Altitude    0:1:15      km
%   O3 column   100:50:600  DU
%   albedo      0:0.2:1
%   ground Alt  0           km
%   AOD         0.235       
% For more detailed info on TUV setup, see TUV_ActinicFlux.m and TUV_WriteInputFile_ActinicFlux.m.
% 
% QY and CS information was taken from IUPAC and/or JPL recommendations as documented in 
% PhotoDataSources.xlsx. For more info on the calculation, see J_BottomUp.m.
%
% INPUTS:
% SZA: solar zenith angles, degrees. can be scalar or vector.
% ALT: altitudes, m. Same size as SZA.
% O3col: overhead ozone column, dobson units.
% albedo: surface reflectance, 0-1 (unitless).
%
% OUTPUTS:
% J: structure of J-values interpolated to input SZA and ALT.
%       J-value names will match those found in J_BottomUp.m
%
% 20160304 GMW
% 20160406 GMW  Added O3col and albedo inputs


SZA(SZA>90)=90;

load HybridJvalues.mat %structure Jhybrid, matrices SZAhybrid, ALThybrid, O3Chybrid, ALBhybrid

J = struct;
Jnames = fieldnames(Jhybrid);
for i=1:length(Jnames)
    J.(Jnames{i}) = interpn(SZAhybrid,ALBhybrid,O3Chybrid,ALThybrid,...
        Jhybrid.(Jnames{i}),SZA,albedo,O3col,ALT,'linear');
end


