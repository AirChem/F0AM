function MetInfo = InitializeMet()
% function MetInfo = InitializeMet()
% Generates a cell array specifying meteorological variables and their default values.
% Any parameter specified here will be available when initializing F0AM chemistry scripts.
% 
% INPUTS: none.
%
% OUTPUTS: MetInfo is a cell array with three columns:
%   1) The name of the variable
%   2) A logical flag for whether or not it is required (typically 0 except for P and T)
%   3) Default value (scalar)
%
% 20180219 GMW  Moved from F0AM_ModelCore.m

MetInfo = {...
    %Name           %Required?      %Default Value
    
    % BASICS
    'P'             1               [];... % Pressure, mb
    'T'             1               [];... % Temperature, K
    'RH'            0               [];... % relative humidity. note, water is handled as a special case in F0AM_ModelCore input checking
    'H2O'           0               [];... % water concentration, /cm^3
    'kdil'          0                0;... % dilution constant, /s
    'tgauss'        0              inf;... % initial timescale for Gaussian dilution, s
    
    % PHOTOLYSIS
    'SZA'           0               0;...   % solar zenith angle, degrees
    'jcorr'         0               1;...   % j-value correction factor
    'LFlux'         0               [];...  % actinic flux spectrum
    'ALT'           0               500;... % altitude, m asl
    'O3col'         0               300;... % overhead ozone column, DU
    'albedo'        0               0.1;... % surface albedo
    
    % EMISSIONS/DEPOSITION
    'BLH'           0               1000;... % boundary layer depth, m
    'PPFD'          0               0;...    % umol/m^2/s
    'LAI'           0               1;...    % m^2/m^2
    
    % AEROSOL (ORGANIC)
    'rpaerosol'     0               0;... % mean aerosol particle radius, cm
    'Naerosol'      0               0;... % aerosol number density, #/cm^3
    'Saerosol'      0               0;... % mean aerosol particle surface area concentration cm^2/cm^3
    'Vaerosol'      0               0;... % mean aerosol particle volume concentration cm^3/cm^3
    
    % AEROSOL (AQUEOUS)
    'pH'            0               7;... % liquid drop pH
    'rpaqueous'     0               0;... % mean liquid drop radius, cm
    'Naqueous'      0               0;... % liquid drop number density, #/cm^3
    'Saqueous'      0               0;... % mean aqueous particle surface area concentration cm^2/cm^3
    'Vaqueous'      0               0;... % mean aqueous particle volume concentration cm^3/cm^3
    
    % AEROSOL (ICE)
    'rpice'         0               0;... % mean ice radius, cm
    'Nice'          0               0;... % ice number density, #/cm^3
    'Sice'          0               0;... % mean ice particle surface area concentration cm^2/cm^3
    'Vice'          0               0;... % mean ice particle volume concentration cm^3/cm^3

    };


