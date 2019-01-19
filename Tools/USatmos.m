function [T,P] = USatmos(ALT)
% function [T,P] = USatmos(ALT)
% Calculates air temperature and pressure for a 1976 US standard atmosphere.
% See wikipedia for further details.
%
% INPUT: ALT, altitude, m above sea level.
%
% OUTPUTS:
% T, temperature, K
% P, pressure, mbar
%
% 20190117 GMW

ALT = ALT(:);

% check
if any(ALT < 0),     error('USatmos:OutsideRange','This altitude is too damn low!'); end
if any(ALT > 85000), error('USatmos:OutsideRange','This altitude is too damn high!'); end
 
% Layer info
%   Lapse rate  Base Temp       Base Alt         Base Pressure
%    Ki (K/m)   Ti (K)          Hi (m)           Pi (Pa)
D = [-0.0065    292.05          -610             108900     % Unda da sea
     -0.0065    288.15          0                101325     % Troposphere
     0          216.65          11000            22632      % Tropopause
     0.001      216.65          20000            5474.9     % Stratosphere1
     0.0028     228.65          32000            868.02     % Stratosphere2
     0          270.65          47000            110.91     % Stratopause
     -0.0028    270.65          51000            66.939     % Mesosphere1
     -0.002     214.65          71000            3.9564     % Mesosphere2
     0          186.95          84852            0.37338    % Mesopause
     ];
 
% constants
R = 8.3144598; % J/mol/K, gas constant
g = 9.80665;   % m/s/s, gravity
M = 0.0289644; % kg/mol, mass of air

% layer indices
n = nan(size(ALT));
Hi = D(:,3);
for i = 1:length(Hi)-1
    n(ALT>Hi(i) & ALT<=Hi(i+1)) = i;
end

% distribute layer values
Ki = D(n,1);
Ti = D(n,2);
Hi = D(n,3);
Pi = D(n,4);

% temperature
T = Ti + Ki.*ALT;

% pressure
P = nan(size(T));
j = Ki ~= 0;
P(j)  = Pi(j).*(Ti(j)./(Ti(j) + Ki(j).*(ALT(j) - Hi(j)))).^(g.*M./R./Ki(j));
P(~j) = Pi(~j).*exp(-g.*M.*(ALT(~j) - Hi(~j))./R./Ti(~j));
P = P/100; %Pa to hPa/mbar


