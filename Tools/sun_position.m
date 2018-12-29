function sun = sun_position(time, location)
% sun = sun_position(time, location)
%
% This function compute the sun position (zenith and azimuth angle at the observer
% location) as a function of the observer local time and position. 
%
% It is an implementation of the algorithm presented by Reda et Andreas in:
%   Reda, I., Andreas, A. (2003) Solar position algorithm for solar
%   radiation application. National Renewable Energy Laboratory (NREL)
%   Technical report NREL/TP-560-34302. 
% This document is avalaible at www.osti.gov/bridge
%
% This algorithm is based on numerical approximation of the exact equations.
% The authors of the original paper state that this algorithm should be
% precise at +/- 0.0003 degrees. I have compared it to NOAA solar table
% (http://www.srrb.noaa.gov/highlights/sunrise/azel.html) and to USNO solar
% table (http://aa.usno.navy.mil/data/docs/AltAz.html) and found very good
% correspondance (up to the precision of those tables), except for large
% zenith angle, where the refraction by the atmosphere is significant 
% (difference of about 1 degree). Note that in this code the correction 
% for refraction in the atmosphere as been implemented for a temperature 
% of 10C (283 kelvins) and a pressure of 1010 mbar. See the subfunction 
% «sun_topocentric_zenith_angle_calculation» for a possible modification 
% to explicitely model the effect of temperature and pressure as describe
% in Reda & Andreas (2003). 
%
% Input parameters:
%   time: a structure that specify the time when the sun position is
%   calculated. 
%       time.year: year. Valid for [-2000, 6000]
%       time.month: month [1-12]
%       time.day: calendar day [1-31]
%       time.hour: local hour [0-23]
%       time.min: minute [0-59]
%       time.sec: second [0-59]
%       time.UTC: offset hour from UTC. Local time = Greenwich time + time.UTC
%   This input can also be passed using the Matlab time format ('dd-mmm-yyyy HH:MM:SS'). 
%   In that case, the time has to be specified as UTC time (time.UTC = 0)
%
%   location: a structure that specify the location of the observer
%       location.latitude: latitude (in degrees, north of equator is
%       positive)
%       location.longitude: longitude (in degrees, positive for east of
%       Greenwich)
%       location.altitude: altitude above mean sea level (in meters) 
% 
% Output parameters
%   sun: a structure with the calculated sun position
%       sun.zenith = zenith angle in degrees (angle from the vertical)
%       sun.azimuth = azimuth angle in degrees, eastward from the north. 
% Only the sun zenith and azimuth angles are returned as output, but a lot
% of other parameters are calculated that could also extracted as output of
% this function. 
%
% Exemple of use
%
% location.longitude = -105.1786; 
% location.latitude = 39.742476; 
% location.altitude = 1830.14;
% time.year = 2003;
% time.month = 10;
% time.day = 17;  
% time.hour = 12;
% time.min = 30;
% time.sec = 30;
% time.UTC = -7;
%
% sun = sun_position(time, location);
%
% sun = 
% 
%      zenith: 50.1080438859849
%      azimuth: 194.341174010338
%
% History
%   09/03/2004  Original creation by Vincent Roy (vincent.roy@drdc-rddc.gc.ca)
%   10/03/2004  Fixed a bug in julian_calculation subfunction (was
%               incorrect for year 1582 only), Vincent Roy
%   18/03/2004  Correction to the header (help display) only. No changes to
%               the code. (changed the «elevation» field in «location» structure
%               information to «altitude»), Vincent Roy
%   13/04/2004  Following a suggestion from Jody Klymak (jklymak@ucsd.edu),
%               allowed the 'time' input to be passed as a Matlab time string. 
%   22/08/2005  Following a bug report from Bruce Bowler
%               (bbowler@bigelow.org), modified the julian_calculation function. Bug
%               was 'MATLAB has allowed structure assignment  to a non-empty non-structure 
%               to overwrite the previous value.  This behavior will continue in this release, 
%               but will be an error in a  future version of MATLAB.  For advice on how to 
%               write code that  will both avoid this warning and work in future versions of 
%               MATLAB,  see R14SP2 Release Notes'. Script should now be
%               compliant with futher release of Matlab...
%
%   17/07/2012  Modified to accept multiple inputs. GMW
%   25/10/2012  Fixed issue with input replication. GMW

% 0. Replicate inputs to be the same size if needed
tfields = fieldnames(time);
Lt = nan(1,length(tfields));
for i=1:length(Lt)
    Lt(i) = length(time.(tfields{i}));
end

lfields = fieldnames(location);
Ll = nan(1,length(lfields));
for i=1:length(Ll)
    Ll(i) = length(location.(lfields{i}));
end

Lu = unique([Lt, Ll]);
if length(Lu)>2 || (length(Lu)==2 && ~any(Lu==1))
    error(['sun_position: length of inputs is inconsistent. ' ...
        'Location lengths are [' num2str(Ll) ']. ' ...
        'Time lengths are [' num2str(Lt) '].'])
end
Lex = max(Lu);

for i=1:length(Lt)
    if Lt(i)==1
        time.(tfields{i}) = repmat(time.(tfields{i}),Lex,1);
    else
        time.(tfields{i}) = time.(tfields{i})(:);
    end
end
timeBig = struct(...
    'year',mat2cell(time.year,ones(Lex,1)),...
    'month',mat2cell(time.month,ones(Lex,1)),...
    'day',mat2cell(time.day,ones(Lex,1)),...
    'hour',mat2cell(time.hour,ones(Lex,1)),...
    'min',mat2cell(time.min,ones(Lex,1)),...
    'sec',mat2cell(time.sec,ones(Lex,1)),...
    'UTC',mat2cell(time.UTC,ones(Lex,1)));

for i=1:length(Ll)
    if Ll(i)==1
        location.(lfields{i}) = repmat(location.(lfields{i}),Lex,1);
    else
        location.(lfields{i}) = location.(lfields{i})(:);
    end
end
locationBig = struct(...
    'longitude',mat2cell(location.longitude,ones(Lex,1)),...
    'latitude',mat2cell(location.latitude,ones(Lex,1)),...
    'altitude',mat2cell(location.altitude,ones(Lex,1)));

% loop through inputs
sza = nan(Lex,1); saa = nan(Lex,1);
for i = 1:Lex
    time = timeBig(i);
    location = locationBig(i);
    % 1. Calculate the Julian Day, and Century. Julian Ephemeris day, century
    % and millenium are calculated using a mean delta_t of 33.184 seconds.
    julian = julian_calculation(time);

    % 2. Calculate the Earth heliocentric longitude, latitude, and radius
    % vector (L, B, and R)
    earth_heliocentric_position = earth_heliocentric_position_calculation(julian);

    % 3. Calculate the geocentric longitude and latitude
    sun_geocentric_position = sun_geocentric_position_calculation(earth_heliocentric_position);

    % 4. Calculate the nutation in longitude and obliquity (in degrees).
    nutation = nutation_calculation(julian);

    % 5. Calculate the true obliquity of the ecliptic (in degrees).
    true_obliquity = true_obliquity_calculation(julian, nutation);

    % 6. Calculate the aberration correction (in degrees)
    aberration_correction = abberation_correction_calculation(earth_heliocentric_position);

    % 7. Calculate the apparent sun longitude in degrees)
    apparent_sun_longitude = apparent_sun_longitude_calculation(sun_geocentric_position, nutation, aberration_correction);

    % 8. Calculate the apparent sideral time at Greenwich (in degrees)
    apparent_stime_at_greenwich = apparent_stime_at_greenwich_calculation(julian, nutation, true_obliquity);

    % 9. Calculate the sun rigth ascension (in degrees)
    sun_rigth_ascension = sun_rigth_ascension_calculation(apparent_sun_longitude, true_obliquity, sun_geocentric_position);

    % 10. Calculate the geocentric sun declination (in degrees). Positive or
    % negative if the sun is north or south of the celestial equator.
    sun_geocentric_declination = sun_geocentric_declination_calculation(apparent_sun_longitude, true_obliquity, sun_geocentric_position);

    % 11. Calculate the observer local hour angle (in degrees, westward from south).
    observer_local_hour = observer_local_hour_calculation(apparent_stime_at_greenwich, location, sun_rigth_ascension);

    % 12. Calculate the topocentric sun position (rigth ascension, declination and
    % rigth ascension parallax in degrees)
    topocentric_sun_position = topocentric_sun_position_calculate(earth_heliocentric_position, location, observer_local_hour, sun_rigth_ascension, sun_geocentric_declination);

    % 13. Calculate the topocentric local hour angle (in degrees)
    topocentric_local_hour = topocentric_local_hour_calculate(observer_local_hour, topocentric_sun_position);

    % 14. Calculate the topocentric zenith and azimuth angle (in degrees)
    sun = sun_topocentric_zenith_angle_calculate(location, topocentric_sun_position, topocentric_local_hour);

    sza(i) = sun.zenith;
    saa(i) = sun.azimuth;
end
sun.zenith = sza;
sun.azimuth = saa;




%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Subfunction definitions %
%%%%%%%%%%%%%%%%%%%%%%%%%%%




function julian = julian_calculation(t_input)
% This function compute the julian day and julian century from the local
% time and timezone information. Ephemeris are calculated with a delta_t=0
% seconds. 

% If time input is a Matlab time string, extract the information from
% this string and create the structure as defined in the main header of
% this script.
if ~isstruct(t_input)
    tt = datevec(t_input);
    time.UTC=0;
    time.year = tt(1);
    time.month = tt(2);
    time.day = tt(3);
    time.hour = tt(4);
    time.min = tt(5);
    time.sec = tt(6);
else
    time = t_input;
end

if(time.month == 1 | time.month == 2)
    Y = time.year - 1;
    M = time.month + 12;
else
    Y = time.year;
    M = time.month; 
end
ut_time = ((time.hour - time.UTC)/24) + (time.min/(60*24)) + (time.sec/(60*60*24)); % time of day in UT time. 
D = time.day + ut_time; % Day of month in decimal time, ex. 2sd day of month at 12:30:30UT, D=2.521180556


% In 1582, the gregorian calendar was adopted
if(time.year == 1582)
    if(time.month == 10)
        if(time.day <= 4) % The Julian calendar ended on October 4, 1582
            B = 0;    
        elseif(time.day >= 15) % The Gregorian calendar started on October 15, 1582
            A = floor(Y/100);
            B = 2 - A + floor(A/4);    
        else
            disp('This date never existed!. Date automatically set to October 4, 1582');
            time.month = 10;
            time.day = 4; 
            B = 0;
        end
    elseif(time.month<10) % Julian calendar 
        B = 0;
    else % Gregorian calendar
        A = floor(Y/100);
        B = 2 - A + floor(A/4);
    end
    
elseif(time.year<1582) % Julian calendar
    B = 0;
else
    A = floor(Y/100); % Gregorian calendar
    B = 2 - A + floor(A/4);
end

julian.day = floor(365.25*(Y+4716)) + floor(30.6001*(M+1)) + D + B - 1524.5;

delta_t = 0; % 33.184;
julian.ephemeris_day = julian.day + (delta_t/86400);

julian.century = (julian.day - 2451545) / 36525; 

julian.ephemeris_century = (julian.ephemeris_day - 2451545) / 36525;

julian.ephemeris_millenium = julian.ephemeris_century / 10; 


function earth_heliocentric_position = earth_heliocentric_position_calculation(julian)
% This function compute the earth position relative to the sun, using
% tabulated values. 

% Tabulated values for the longitude calculation
% L terms  from the original code. 
 L0_terms = [175347046.0 0 0  
 3341656.0 4.6692568 6283.07585  
 34894.0 4.6261 12566.1517  
 3497.0 2.7441 5753.3849  
 3418.0 2.8289 3.5231  
 3136.0 3.6277 77713.7715  
 2676.0 4.4181 7860.4194  
 2343.0 6.1352 3930.2097  
 1324.0 0.7425 11506.7698  
 1273.0 2.0371 529.691  
 1199.0 1.1096 1577.3435  
 990 5.233 5884.927  
 902 2.045 26.298
 857 3.508 398.149  
 780 1.179 5223.694  
 753 2.533 5507.553  
 505 4.583 18849.228  
 492 4.205 775.523  
 357 2.92 0.067  
 317 5.849 11790.629  
 284 1.899 796.298  
 271 0.315 10977.079  
 243 0.345 5486.778  
 206 4.806 2544.314  
 205 1.869 5573.143  
 202 2.4458 6069.777  
 156 0.833 213.299  
 132 3.411 2942.463  
 126 1.083 20.775  
 115 0.645 0.98  
 103 0.636 4694.003  
 102 0.976 15720.839  
 102 4.267 7.114  
 99 6.21 2146.17  
 98 0.68 155.42  
 86 5.98 161000.69  
 85 1.3 6275.96  
 85 3.67 71430.7  
 80 1.81 17260.15  
 79 3.04 12036.46  
 71 1.76 5088.63  
 74 3.5 3154.69  
 74 4.68 801.82  
 70 0.83 9437.76  
 62 3.98 8827.39  
 61 1.82 7084.9  
 57 2.78 6286.6  
 56 4.39 14143.5  
 56 3.47 6279.55  
 52 0.19 12139.55  
 52 1.33 1748.02  
 51 0.28 5856.48  
 49 0.49 1194.45  
 41 5.37 8429.24  
 41 2.4 19651.05  
 39 6.17 10447.39  
 37 6.04 10213.29  
 37 2.57 1059.38  
 36 1.71 2352.87  
 36 1.78 6812.77  
 33 0.59 17789.85  
 30 0.44 83996.85  
 30 2.74 1349.87  
 25 3.16 4690.48];
 
L1_terms = [628331966747.0 0 0  
 206059.0 2.678235 6283.07585  
 4303.0 2.6351 12566.1517  
 425.0 1.59 3.523  
 119.0 5.796 26.298  
 109.0 2.966 1577.344  
 93 2.59 18849.23  
 72 1.14 529.69  
 68 1.87 398.15  
 67 4.41 5507.55  
 59 2.89 5223.69  
 56 2.17 155.42  
 45 0.4 796.3  
 36 0.47 775.52  
 29 2.65 7.11  
 21 5.34 0.98  
 19 1.85 5486.78  
 19 4.97 213.3  
 17 2.99 6275.96  
 16 0.03 2544.31  
 16 1.43 2146.17  
 15 1.21 10977.08
 12 2.83 1748.02  
 12 3.26 5088.63  
 12 5.27 1194.45  
 12 2.08 4694  
 11 0.77 553.57  
 10 1.3 3286.6  
 10 4.24 1349.87  
 9 2.7 242.73  
 9 5.64 951.72  
 8 5.3 2352.87  
 6 2.65 9437.76  
 6 4.67 4690.48]; 
  
L2_terms = [52919.0 0 0  
 8720.0 1.0721 6283.0758  
 309.0 0.867 12566.152  
 27 0.05 3.52  
 16 5.19 26.3  
 16 3.68 155.42  
 10 0.76 18849.23  
 9 2.06 77713.77  
 7 0.83 775.52  
 5 4.66 1577.34  
 4 1.03 7.11  
 4 3.44 5573.14  
 3 5.14 796.3  
 3 6.05 5507.55  
 3 1.19 242.73  
 3 6.12 529.69  
 3 0.31 398.15  
 3 2.28 553.57  
 2 4.38 5223.69  
 2 3.75 0.98];

L3_terms =[289.0 5.844 6283.076  
 35 0 0  
 17 5.49 12566.15  
 3 5.2 155.42  
 1 4.72 3.52  
 1 5.3 18849.23  
 1 5.97 242.73]; 
 
L4_terms = [114.0 3.142 0  
 8 4.13 6283.08  
 1 3.84 12566.15];

L5_terms = [1 3.14 0]; 

A0 = L0_terms(:,1);
B0 = L0_terms(:,2);
C0 = L0_terms(:,3);

A1 = L1_terms(:,1);
B1 = L1_terms(:,2);
C1 = L1_terms(:,3);

A2 = L2_terms(:,1);
B2 = L2_terms(:,2);
C2 = L2_terms(:,3);

A3 = L3_terms(:,1);
B3 = L3_terms(:,2);
C3 = L3_terms(:,3);

A4 = L4_terms(:,1);
B4 = L4_terms(:,2);
C4 = L4_terms(:,3);

A5 = L5_terms(:,1);
B5 = L5_terms(:,2);
C5 = L5_terms(:,3);

JME = julian.ephemeris_millenium;

% Compute the Earth Heliochentric longitude from the tabulated values. 
L0 = sum(A0 .* cos(B0 + (C0 * JME)));
L1 = sum(A1 .* cos(B1 + (C1 * JME)));
L2 = sum(A2 .* cos(B2 + (C2 * JME)));
L3 = sum(A3 .* cos(B3 + (C3 * JME)));
L4 = sum(A4 .* cos(B4 + (C4 * JME)));
L5 = A5 .* cos(B5 + (C5 * JME));


earth_heliocentric_position.longitude = (L0 + (L1 * JME) + (L2 * JME^2) + (L3 * JME^3) + (L4 * JME^4) + (L5 * JME^5)) / 1e8; 
% Convert the longitude to degrees. 
earth_heliocentric_position.longitude = earth_heliocentric_position.longitude * 180/pi;
% Limit the range to [0,360[;
earth_heliocentric_position.longitude = set_to_range(earth_heliocentric_position.longitude, 0, 360);

% Tabulated values for the earth heliocentric latitude. 
% B terms  from the original code. 
 B0_terms = [280.0 3.199 84334.662  
 102.0 5.422 5507.553  
 80 3.88 5223.69  
 44 3.7 2352.87  
 32 4 1577.34]; 
  
B1_terms = [9 3.9 5507.55  
 6 1.73 5223.69]; 

A0 = B0_terms(:,1);
B0 = B0_terms(:,2);
C0 = B0_terms(:,3);

A1 = B1_terms(:,1);
B1 = B1_terms(:,2);
C1 = B1_terms(:,3);

L0 = sum(A0 .* cos(B0 + (C0 * JME)));
L1 = sum(A1 .* cos(B1 + (C1 * JME)));

earth_heliocentric_position.latitude = (L0 + (L1 * JME)) / 1e8; 
% Convert the latitude to degrees. 
earth_heliocentric_position.latitude = earth_heliocentric_position.latitude * 180/pi;
% Limit the range to [0,360];
earth_heliocentric_position.latitude = set_to_range(earth_heliocentric_position.latitude, 0, 360);

% Tabulated values for radius vector. 
% R terms from the original code
R0_terms = [ 100013989.0 0 0  
 1670700.0 3.0984635 6283.07585  
 13956.0 3.05525 12566.1517   
 3084.0 5.1985 77713.7715  
 1628.0 1.1739 5753.3849  
 1576.0 2.8469 7860.4194  
 925.0 5.453 11506.77  
 542.0 4.564 3930.21  
 472.0 3.661 5884.927  
 346.0 0.964 5507.553  
 329.0 5.9 5223.694  
 307.0 0.299 5573.143  
 243.0 4.273 11790.629  
 212.0 5.847 1577.344  
 186.0 5.022 10977.079  
 175.0 3.012 18849.228  
 110.0 5.055 5486.778  
 98 0.89 6069.78  
 86 5.69 15720.84  
 86 1.27 161000.69  
 85 0.27 17260.15  
 63 0.92 529.69  
 57 2.01 83996.85  
 56 5.24 71430.7  
 49 3.25 2544.31  
 47 2.58 775.52  
 45 5.54 9437.76  
 43 6.01 6275.96  
 39 5.36 4694  
 38 2.39 8827.39  
 37 0.83 19651.05  
 37 4.9 12139.55  
 36 1.67 12036.46  
 35 1.84 2942.46  
 33 0.24 7084.9  
 32 0.18 5088.63  
 32 1.78 398.15  
 28 1.21 6286.6  
 28 1.9 6279.55  
 26 4.59 10447.39];
   
R1_terms = [ 103019.0 1.10749 6283.07585  
 1721.0 1.0644 12566.1517  
 702.0 3.142 0  
 32 1.02 18849.23  
 31 2.84 5507.55  
 25 1.32 5223.69  
 18 1.42 1577.34  
 10 5.91 10977.08  
 9 1.42 6275.96  
 9 0.27 5486.78];
  
R2_terms = [4359.0 5.7846 6283.0758  
 124.0 5.579 12566.152  
 12 3.14 0  
 9 3.63 77713.77  
 6 1.87 5573.14  
 3 5.47 18849];
 
R3_terms = [145.0 4.273 6283.076  
 7 3.92 12566.15];

R4_terms = [4 2.56 6283.08];


A0 = R0_terms(:,1);
B0 = R0_terms(:,2);
C0 = R0_terms(:,3);

A1 = R1_terms(:,1);
B1 = R1_terms(:,2);
C1 = R1_terms(:,3);

A2 = R2_terms(:,1);
B2 = R2_terms(:,2);
C2 = R2_terms(:,3);

A3 = R3_terms(:,1);
B3 = R3_terms(:,2);
C3 = R3_terms(:,3);

A4 = R4_terms(:,1);
B4 = R4_terms(:,2);
C4 = R4_terms(:,3);

% Compute the Earth heliocentric radius vector
L0 = sum(A0 .* cos(B0 + (C0 * JME)));
L1 = sum(A1 .* cos(B1 + (C1 * JME)));
L2 = sum(A2 .* cos(B2 + (C2 * JME)));
L3 = sum(A3 .* cos(B3 + (C3 * JME)));
L4 = A4 .* cos(B4 + (C4 * JME));

% Units are in AU
earth_heliocentric_position.radius = (L0 + (L1 * JME) + (L2 * JME^2) + (L3 * JME^3) + (L4 * JME^4)) / 1e8; 





function sun_geocentric_position = sun_geocentric_position_calculation(earth_heliocentric_position)
% This function compute the sun position relative to the earth. 

sun_geocentric_position.longitude = earth_heliocentric_position.longitude + 180;
% Limit the range to [0,360];
sun_geocentric_position.longitude = set_to_range(sun_geocentric_position.longitude, 0, 360);

sun_geocentric_position.latitude = -earth_heliocentric_position.latitude;
% Limit the range to [0,360]
sun_geocentric_position.latitude = set_to_range(sun_geocentric_position.latitude, 0, 360);


function nutation = nutation_calculation(julian)
% This function compute the nutation in longtitude and in obliquity, in
% degrees. 

% All Xi are in degrees. 
JCE = julian.ephemeris_century;

% 1. Mean elongation of the moon from the sun 
p = [(1/189474) -0.0019142 445267.11148 297.85036];
% X0 = polyval(p, JCE);
X0 = p(1) * JCE^3 + p(2) * JCE^2 + p(3) * JCE + p(4); % This is faster than polyval...

% 2. Mean anomaly of the sun (earth)
p = [-(1/300000) -0.0001603 35999.05034 357.52772];
% X1 = polyval(p, JCE);
X1 = p(1) * JCE^3 + p(2) * JCE^2 + p(3) * JCE + p(4); 

% 3. Mean anomaly of the moon
p = [(1/56250) 0.0086972 477198.867398 134.96298];
% X2 = polyval(p, JCE);
X2 = p(1) * JCE^3 + p(2) * JCE^2 + p(3) * JCE + p(4); 

% 4. Moon argument of latitude
p = [(1/327270) -0.0036825 483202.017538 93.27191];
% X3 = polyval(p, JCE);
X3 = p(1) * JCE^3 + p(2) * JCE^2 + p(3) * JCE + p(4); 

% 5. Longitude of the ascending node of the moon's mean orbit on the
% ecliptic, measured from the mean equinox of the date
p = [(1/450000) 0.0020708 -1934.136261 125.04452];
% X4 = polyval(p, JCE);
X4 = p(1) * JCE^3 + p(2) * JCE^2 + p(3) * JCE + p(4); 

% Y tabulated terms from the original code
Y_terms =  [0 0 0 0 1  
 -2 0 0 2 2  
 0 0 0 2 2  
 0 0 0 0 2  
 0 1 0 0 0  
 0 0 1 0 0  
 -2 1 0 2 2  
 0 0 0 2 1  
 0 0 1 2 2  
 -2 -1 0 2 2  
 -2 0 1 0 0  
 -2 0 0 2 1  
 0 0 -1 2 2  
 2 0 0 0 0  
 0 0 1 0 1  
 2 0 -1 2 2  
 0 0 -1 0 1  
 0 0 1 2 1  
 -2 0 2 0 0  
 0 0 -2 2 1  
 2 0 0 2 2  
 0 0 2 2 2  
 0 0 2 0 0  
 -2 0 1 2 2  
 0 0 0 2 0  
 -2 0 0 2 0  
 0 0 -1 2 1  
 0 2 0 0 0  
 2 0 -1 0 1  
 -2 2 0 2 2  
 0 1 0 0 1  
 -2 0 1 0 1  
 0 -1 0 0 1  
 0 0 2 -2 0  
 2 0 -1 2 1  
 2 0 1 2 2  
 0 1 0 2 2  
 -2 1 1 0 0  
 0 -1 0 2 2  
 2 0 0 2 1  
 2 0 1 0 0  
 -2 0 2 2 2  
 -2 0 1 2 1  
 2 0 -2 0 1  
 2 0 0 0 1  
 0 -1 1 0 0  
 -2 -1 0 2 1  
 -2 0 0 0 1  
 0 0 2 2 1  
 -2 0 2 0 1  
 -2 1 0 2 1  
 0 0 1 -2 0  
 -1 0 1 0 0  
 -2 1 0 0 0  
 1 0 0 0 0  
 0 0 1 2 0  
 0 0 -2 2 2  
 -1 -1 1 0 0  
 0 1 1 0 0  
 0 -1 1 2 2  
 2 -1 -1 2 2  
 0 0 3 2 2  
 2 -1 0 2 2];

nutation_terms = [ -171996 -174.2 92025 8.9  
 -13187 -1.6 5736 -3.1  
 -2274 -0.2 977 -0.5  
 2062 0.2 -895 0.5  
 1426 -3.4 54 -0.1  
 712 0.1 -7 0  
 -517 1.2 224 -0.6  
 -386 -0.4 200 0  
 -301 0 129 -0.1  
 217 -0.5 -95 0.3  
 -158 0 0 0  
 129 0.1 -70 0  
 123 0 -53 0  
 63 0 0 0  
 63 0.1 -33 0  
 -59 0 26 0  
 -58 -0.1 32 0  
 -51 0 27 0  
 48 0 0 0  
 46 0 -24 0  
 -38 0 16 0  
 -31 0 13 0  
 29 0 0 0  
 29 0 -12 0  
 26 0 0 0  
 -22 0 0 0  
 21 0 -10 0  
 17 -0.1 0 0  
 16 0 -8 0  
 -16 0.1 7 0  
 -15 0 9 0  
 -13 0 7 0  
 -12 0 6 0  
 11 0 0 0  
 -10 0 5 0  
 -8 0 3 0  
 7 0 -3 0  
 -7 0 0 0  
 -7 0 3 0  
 -7 0 3 0  
 6 0 0 0  
 6 0 -3 0  
 6 0 -3 0  
 -6 0 3 0  
 -6 0 3 0  
 5 0 0 0  
 -5 0 3 0  
 -5 0 3 0  
 -5 0 3 0  
 4 0 0 0  
 4 0 0 0  
 4 0 0 0  
 -4 0 0 0  
 -4 0 0 0  
 -4 0 0 0  
 3 0 0 0  
 -3 0 0 0  
 -3 0 0 0  
 -3 0 0 0  
 -3 0 0 0  
 -3 0 0 0  
 -3 0 0 0  
 -3 0 0 0];

% Using the tabulated values, compute the delta_longitude and
% delta_obliquity. 
Xi = [X0
    X1
    X2
    X3
    X4];

tabulated_argument = (Y_terms * Xi) * pi/180;

delta_longitude = ((nutation_terms(:,1) + (nutation_terms(:,2) * JCE))) .* sin(tabulated_argument);
delta_obliquity = ((nutation_terms(:,3) + (nutation_terms(:,4) * JCE))) .* cos(tabulated_argument);

% Nutation in longitude
nutation.longitude = sum(delta_longitude) / 36000000;

% Nutation in obliquity
nutation.obliquity = sum(delta_obliquity) / 36000000;



function true_obliquity = true_obliquity_calculation(julian, nutation)
% This function compute the true obliquity of the ecliptic. 


p = [2.45 5.79 27.87 7.12 -39.05 -249.67 -51.38 1999.25 -1.55 -4680.93 84381.448];
% mean_obliquity = polyval(p, julian.ephemeris_millenium/10);

U = julian.ephemeris_millenium/10;
mean_obliquity = p(1)*U^10 + p(2)*U^9 + p(3)*U^8 + p(4)*U^7 + p(5)*U^6 + p(6)*U^5 + p(7)*U^4 + p(8)*U^3 + p(9)*U^2 + p(10)*U + p(11);


true_obliquity = (mean_obliquity/3600) + nutation.obliquity;


function aberration_correction = abberation_correction_calculation(earth_heliocentric_position)
% This function compute the aberration_correction, as a function of the
% earth-sun distance. 

aberration_correction = -20.4898/(3600*earth_heliocentric_position.radius);


function apparent_sun_longitude = apparent_sun_longitude_calculation(sun_geocentric_position, nutation, aberration_correction)
% This function compute the sun apparent longitude

apparent_sun_longitude = sun_geocentric_position.longitude + nutation.longitude + aberration_correction;


function apparent_stime_at_greenwich = apparent_stime_at_greenwich_calculation(julian, nutation, true_obliquity)
% This function compute the apparent sideral time at Greenwich. 

JD = julian.day;
JC = julian.century;

% Mean sideral time, in degrees
mean_stime = 280.46061837 + (360.98564736629*(JD-2451545)) + (0.000387933*JC^2) - (JC^3/38710000);

% Limit the range to [0-360];
mean_stime = set_to_range(mean_stime, 0, 360);

apparent_stime_at_greenwich = mean_stime + (nutation.longitude * cos(true_obliquity * pi/180));


function sun_rigth_ascension = sun_rigth_ascension_calculation(apparent_sun_longitude, true_obliquity, sun_geocentric_position)
% This function compute the sun rigth ascension. 

argument_numerator = (sin(apparent_sun_longitude * pi/180) * cos(true_obliquity * pi/180)) - ...
    (tan(sun_geocentric_position.latitude * pi/180) * sin(true_obliquity * pi/180));
argument_denominator = cos(apparent_sun_longitude * pi/180);

sun_rigth_ascension = atan2(argument_numerator, argument_denominator) * 180/pi;
% Limit the range to [0,360];
sun_rigth_ascension = set_to_range(sun_rigth_ascension, 0, 360);


function sun_geocentric_declination = sun_geocentric_declination_calculation(apparent_sun_longitude, true_obliquity, sun_geocentric_position)

argument = (sin(sun_geocentric_position.latitude * pi/180) * cos(true_obliquity * pi/180)) + ...
    (cos(sun_geocentric_position.latitude * pi/180) * sin(true_obliquity * pi/180) * sin(apparent_sun_longitude * pi/180));

sun_geocentric_declination = asin(argument) * 180/pi;

function observer_local_hour = observer_local_hour_calculation(apparent_stime_at_greenwich, location, sun_rigth_ascension)

observer_local_hour = apparent_stime_at_greenwich + location.longitude - sun_rigth_ascension;
% Set the range to [0-360]
observer_local_hour = set_to_range(observer_local_hour, 0, 360);


function topocentric_sun_position = topocentric_sun_position_calculate(earth_heliocentric_position, location, observer_local_hour, sun_rigth_ascension, sun_geocentric_declination)
% This function compute the sun position (rigth ascension and declination)
% with respect to the observer local position at the Earth surface. 

% Equatorial horizontal parallax of the sun in degrees
eq_horizontal_parallax = 8.794 / (3600 * earth_heliocentric_position.radius);

% Term u, used in the following calculations (in radians)
u = atan(0.99664719 * tan(location.latitude * pi/180));

% Term x, used in the following calculations
x = cos(u) + ((location.altitude/6378140) * cos(location.latitude * pi/180));

% Term y, used in the following calculations
y = (0.99664719 * sin(u)) + ((location.altitude/6378140) * sin(location.latitude * pi/180));

% Parallax in the sun rigth ascension (in radians)
nominator = -x * sin(eq_horizontal_parallax * pi/180) * sin(observer_local_hour * pi/180);
denominator = cos(sun_geocentric_declination * pi/180) - (x * sin(eq_horizontal_parallax * pi/180) * cos(observer_local_hour * pi/180));
sun_rigth_ascension_parallax = atan2(nominator, denominator);
% Conversion to degrees. 
topocentric_sun_position.rigth_ascension_parallax = sun_rigth_ascension_parallax * 180/pi;

% Topocentric sun rigth ascension (in degrees)
topocentric_sun_position.rigth_ascension = sun_rigth_ascension + (sun_rigth_ascension_parallax * 180/pi);

% Topocentric sun declination (in degrees)
nominator = (sin(sun_geocentric_declination * pi/180) - (y*sin(eq_horizontal_parallax * pi/180))) * cos(sun_rigth_ascension_parallax);
denominator = cos(sun_geocentric_declination * pi/180) - (x*sin(eq_horizontal_parallax * pi/180)) * cos(observer_local_hour * pi/180);
topocentric_sun_position.declination = atan2(nominator, denominator) * 180/pi;


function topocentric_local_hour = topocentric_local_hour_calculate(observer_local_hour, topocentric_sun_position)
% This function compute the topocentric local jour angle in degrees

topocentric_local_hour = observer_local_hour - topocentric_sun_position.rigth_ascension_parallax;


function sun = sun_topocentric_zenith_angle_calculate(location, topocentric_sun_position, topocentric_local_hour)
% This function compute the sun zenith angle, taking into account the
% atmospheric refraction. A default temperature of 283K and a
% default pressure of 1010 mbar are used. 

% Topocentric elevation, without atmospheric refraction
argument = (sin(location.latitude * pi/180) * sin(topocentric_sun_position.declination * pi/180)) + ...
    (cos(location.latitude * pi/180) * cos(topocentric_sun_position.declination * pi/180) * cos(topocentric_local_hour * pi/180));
true_elevation = asin(argument) * 180/pi;

% Atmospheric refraction correction (in degrees)
argument = true_elevation + (10.3/(true_elevation + 5.11));
refraction_corr = 1.02 / (60 * tan(argument * pi/180));

% For exact pressure and temperature correction, use this, 
% with P the pressure in mbar amd T the temperature in Kelvins:
% refraction_corr = (P/1010) * (283/T) * 1.02 / (60 * tan(argument * pi/180));

% Apparent elevation
if(true_elevation > -5)
    apparent_elevation = true_elevation + refraction_corr;
else
    apparent_elevation = true_elevation;
end

sun.zenith = 90 - apparent_elevation;

% Topocentric azimuth angle. The +180 conversion is to pass from astronomer
% notation (westward from south) to navigation notation (eastward from
% north);
nominator = sin(topocentric_local_hour * pi/180);
denominator = (cos(topocentric_local_hour * pi/180) * sin(location.latitude * pi/180)) - ...
    (tan(topocentric_sun_position.declination * pi/180) * cos(location.latitude * pi/180));
sun.azimuth = (atan2(nominator, denominator) * 180/pi) + 180;
% Set the range to [0-360]
sun.azimuth = set_to_range(sun.azimuth, 0, 360);


% This function make sure the variable is in the specified range. 
function var = set_to_range(var, min_interval, max_interval)


% if(var>0)
%     var = var - max_interval * floor(var/max_interval);
% else
%     var = var - max_interval * ceil(var/max_interval);
% end
% 
% if(var<min_interval)
%     var = var + max_interval;
% end

var = var - max_interval * floor(var/max_interval);

if(var<min_interval)
    var = var + max_interval;
end

% Copyright (c) 2004, Vincent Roy
% All rights reserved.
% 
% Redistribution and use in source and binary forms, with or without 
% modification, are permitted provided that the following conditions are 
% met:
% 
%     * Redistributions of source code must retain the above copyright 
%       notice, this list of conditions and the following disclaimer.
%     * Redistributions in binary form must reproduce the above copyright 
%       notice, this list of conditions and the following disclaimer in 
%       the documentation and/or other materials provided with the distribution
%       
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
% POSSIBILITY OF SUCH DAMAGE.
