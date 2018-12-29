% function HumidityOut = ConvertHumidity(T,P,HumidityIn,UnitIn,UnitOut)
% Converts humidity between its various and sundry units.
% INPUTS:
% T: temperature, K
% P: pressure, hPa
% HumidityIn: values to be converted
% UnitIn, UnitOut: input and output units. Choices are:
%   - PartialPressure: h2o pressure, hPa
%   - RH: relative humidity, %
%   - SpecificHumidity: kg h2o per kg moist air
%   - MixingRatio: kg h2o per kg dry air
%   - NumberDensity: molecules per cm^3
%   - DewPoint: K (output is accurate to within .1%)
%   - VPD:    vapor pressure deficit, hPa
%
% OUTPUT is humidity in desired units.
%
% Example use: H2O = ConvertHumidity(T,P,RH,'RH','NumberDensity')
%
% 20120618 GMW
% 20121215 GMW    Added VPD option
% 20160316 GMW    Added h2o_pvap_calc as a subfunction

function HumidityOut = ConvertHumidity(T,P,HumidityIn,UnitIn,UnitOut)

eta = 0.622; %ratio of weights of dry and moist air
es = h2o_pvap_calc(T).*1013./760; %saturation vapor pressure, hPa
R = 8.3145.*1e6./100; %gas constant, cm^3 hPa /mol /K
Na = 6.022e23; %avogadro
M = P.*Na./(R.*T); %number density, molec/cm^3

% Convert to partial pressure of water vapor
switch UnitIn
    case 'PartialPressure'
        e = HumidityIn;
    case 'RH'
        RH = HumidityIn;
        e = RH./100.*es;
    case 'SpecificHumidity'
        q = HumidityIn;
        e = (q.*P)./(eta + (1 - eta).*q);
    case 'MixingRatio'
        r = HumidityIn;
        e = (r.*P)./(r + eta);
    case 'NumberDensity'
        c = HumidityIn;
        e = c./M.*P;
    case 'DewPoint'
        Td = HumidityIn;
        e = h2o_pvap_calc(Td).*1013./760;
    case 'VPD'
        e = es - HumidityIn;
    otherwise
        error(['UnitIn ' UnitIn ' not recognized.']);
end

% if any(e>es)
%     warning('ConvertHumidity: Supersaturated conditions.');
% end

% Convert to desired output unit
switch UnitOut
    case 'PartialPressure'
        HumidityOut = e;
    case 'RH'
        RH = 100.*e./es;
        HumidityOut = RH;
    case 'SpecificHumidity'
        Pd = P - e; %partial pressure of dry air
        q = (e.*eta)./(e.*eta + Pd);
        HumidityOut = q;
    case 'MixingRatio'
        Pd = P - e;
        r = (e./Pd).*eta;
        HumidityOut = r;
    case 'NumberDensity'
        c = e./P.*M;
        HumidityOut = c;
    case 'DewPoint'
        %determined iteratively because we can't invert h2o_pvap_calc
        esd = es;
        Td = T;
        tol=.001; %tolerance for estimate of Td relative to true value
        r = e./esd;
        while any(abs(1-r)>tol)
            Td = Td + log(r)*10; %guessed dew point
            esd = h2o_pvap_calc(Td).*1013./760; %guessed saturation vapor pressure
            r = e./esd;
        end
        HumidityOut = Td;
    case 'VPD'
        HumidityOut = es - e;
    otherwise
        error(['UnitOut ' UnitOut ' not recognized.']);
end

%subfunctions
function h2o_pvap = h2o_pvap_calc(T)
% function h2o_pvap = h2o_pvap_calc(T)
% Calculates saturation vapor pressure of water as a function of
% temperature.
% Pressure is in torr, temperature is in Kelvin
% 082708 TPR

aSAT = 0.750061683;
bSAT = 6.112;
cSAT = 6816;
dSAT = 5.1309;
T0 = 273.15;

h2o_pvap = aSAT.*bSAT.*exp(cSAT.*(1/T0-1./T)+dSAT.*log(T0./T)); %saturation vapor pressure, Torr
end

end


    