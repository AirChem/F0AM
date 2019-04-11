function J = J_Hybrid(SZA,ALT,O3col,albedo)
% function J = J_Hybrid(SZA,ALT,O3col,albedo)
% Interpolates hybrid J-values to desired SZA, altitude,O3column and albedo.
% The J-value lookup tables found in HybridJtables.mat are derived from TUV solar spectra 
% and literature cross sections (CS) and quantum yields (QY).
% QY and CS information are from IUPAC and/or JPL recommendations as documented in PhotoDataSources.xlsx.
% The lookup tables are compiled offline using calc_HybridJtables.m and J_BottomUp.m. 
% Information on generating new lookup tables is provided in F0AM_UserManual.pdf.
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
% 20180118 GMW  Renamed "HybridJvalues.mat" to "HybridJtables.mat."
%               Regenerated tables using correct US Standard Atmosphere T/P profiles.
%               Cleaned comments.
% 20190210 GMW  Added check for interpolation limits


SZA(SZA>90)=90;

load('HybridJtables.mat','Jhybrid','SZAhybrid','ALThybrid','O3Chybrid','ALBhybrid')

% check limits
xnames = {'SZA','ALT','O3col','albedo'};
ynames = {'SZAhybrid','ALThybrid','O3Chybrid','ALBhybrid'};
for i = 1:length(xnames)
    x = eval(xnames{i});
    y = eval(ynames{i});
    r = [min(y(:)) max(y(:))];
    if any(x<r(1) | x>r(2))
        error('J_Hybrid:RangeExceeded',...
        ['Met input "%s" exceeds interpolation range of HybridJtables.mat. ' ...
        'Valid range: %f to %f.'],xnames{i},r(1),r(2));
    end
end

% interpolate
J = struct;
Jnames = fieldnames(Jhybrid);
for i=1:length(Jnames)
    J.(Jnames{i}) = interpn(SZAhybrid,ALBhybrid,O3Chybrid,ALThybrid,...
        Jhybrid.(Jnames{i}),SZA,albedo,O3col,ALT,'linear');
end


