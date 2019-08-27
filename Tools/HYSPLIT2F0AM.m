function Met = HYSPLIT2F0AM(traj,altFix,outputType)
% function Met = HYSPLIT2F0AM(traj)
% Converts a single HYSPLIT trajectory (as output by HYSPLIT_runModel) to F0AM met inputs.
%
% Note that there are some specific requirements for the trajectory data which require modifying the
% SETUP.CFG file for your trajectory runs.
%
% INPUTS:
% traj: a trajectory output structure containing the following fields:
%   lat: latitude, degrees (-90:90)
%   lon: longitude, degrees (-180:180)
%   alt: altitude above mean sea level. 
%       NOTE: default HYSPLIT output is meters above ground level!
%           You can change this in the SETUP.CFG file (via HYSPLIT GUI), or you can output Terrain
%           height (also via SETUP.CFG) and add it to traj.alt before calling this function.
%   year, month, day, hour, minute: times for endpoints.
%       NOTE: year must be a four-digit number.
%   age: relative age for each endpoint.
%   PRESSURE, AIR_TEMP, MIXDEPTH, RELHUMID: meteorology along transect.
% altFix: flag to correct altitude from above-ground-level to above-sea-level (0=no, 1=yes).
% outputType: optional flag for outputting as a cell array (0, default) or structure (1).
%
% OUTPUTS:
%   Met: F0AM input cell array or structure containing:
%       P
%       T
%       BLH
%       RH
%       ALT
%       SZA
%
% 20190710 GMW

% check inputs
Tnames = fieldnames(traj);
required = {...
    'lat','lon','alt','age',...
    'year','month','day','hour','minute',...
    'PRESSURE','AIR_TEMP','MIXDEPTH','RELHUMID',...
    };
for i=1:length(required)
    assert(ismember(required{i},Tnames),...
        'HYSPLIT2F0AM:MissingInput',...
        'Field "%s" not found in trajectory input structure.',required{i})
end

assert(traj.year(1)/1000 > 1, 'Input traj.year must be 4-digits (e.g. 2013, not 13).')

if nargin<2, altFix = 0; end
if nargin<3, outputType = 0; end

if altFix
    assert(ismember('TERR_MSL',Tnames),...
        'HYSPLIT2F0AM:MissingInput',...
        'Field "TERR_MSL" must be in trajectory input structure to correct altitude.')
    
    traj.alt = traj.alt + traj.TERR_MSL;
end

% flip if backward trajectory
if traj.age(2)<0
    traj = structfun(@flipud,traj,'UniformOutput',0);
end

% Basic Met
Mnames_hysp = {'PRESSURE','AIR_TEMP','MIXDEPTH','RELHUMID','alt'};
Mnames_f0am = {'P','T','BLH','RH','ALT'};
for i = 1:length(Mnames_f0am)
    if isfield(traj,Mnames_hysp{i})
        Met.(Mnames_f0am{i}) = traj.(Mnames_hysp{i});
    end
end

% SZA along trajectory
loc.latitude = traj.lat;
loc.longitude = traj.lon;
loc.altitude = traj.alt;

time.year   = traj.year;
time.month  = traj.month;
time.day    = traj.day;
time.hour   = traj.hour;
time.min    = traj.minute;
time.sec    = zeros(size(traj.year));
time.UTC    = zeros(size(traj.year));

sun = sun_position(time,loc);
Met.SZA = sun.zenith;

% convert to cell array
if ~outputType
    Mets = Met;
    Mnames = fieldnames(Met);
    Met = {};
    for i=1:length(Mnames)
        Met{i,1} = Mnames{i};
        Met{i,2} = Mets.(Mnames{i});
    end
end


