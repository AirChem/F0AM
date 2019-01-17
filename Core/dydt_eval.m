function dydt = dydt_eval(t,conc,param)
% function dydt = dydt_eval(t,conc,param)
% Evaluates chemical rates. For use within matlab ODE solver.
%
% INPUTS:
% t: current integration time, s
% conc: matrix of species concentrations in molec/cm3, dim = 1 x nSp
% param: a cell array containing the following parameters:
%   k: matrix of rate constants for reaction/photolysis/deposition/emission, dim = 1 x nRx
%   f: SPARSE matrix of stoichiometric coefficients for each species and reaction, dim = nRx x nSp
%   iG: index for species to be multiplied for each reaction. dim = nRx x 2.
%   iRO2: index to identify RO2 species
%   iHold: index for species to hold constant.
%   kdil: dilution rate constant (/s). If this is 0, dilution is ignored.
%   tgauss: alternative gaussian dilution timescale (s). Ignored if = Inf.
%   conc_bkgd: background concentrations, used for dilution
%   IntTime: total integration time, used to calculate % complete.
%   Verbose: set to 1 to include "% complete" display.
%   Family: structure containing information for family conservation.
%           For each family name 'Fn', fields are
%           Family.Fn.names: names of species in family (not needed here)
%           Family.Fn.index: index for species
%           Family.Fn.scale: scaling value for species (usually 1, maybe 2)
%           Family.Fn.conc: total family concentration
%
% OUTPUTS:
% dydt: matrix of rate of change of species, dim = nZ x nSp
%
% 20080918 GMW
% 20120212 GMW  Modified for use with UWCM_v2. See ChangeLog for details.
% 20180320 GMW  Added Gaussian dispersion option.

%%%%%BREAKOUT PARAMETERS%%%%%
k           = param{1};
f           = param{2};
iG          = param{3};
iRO2        = param{4};
iHold       = param{5};
kdil        = param{6};
tgauss      = param{7};
conc_bkgd   = param{8};
IntTime     = param{9};
Verbose     = param{10};
Family      = param{11};

conc = conc'; %ODE solver feeds this in as 1 row for each species

%calculations for vectorization of dydt (needed by ode15s if Jacobian not specified)
s = size(conc,1);
if s > 1
    o = ones(s,1);
    conc_bkgd = o*conc_bkgd;
    k = o*k;
end

%%%%%CALCULATE RATES%%%%%
conc(:,2) = sum(conc(:,iRO2),2); %calculate sum of RO2 species
G = conc(:,iG(:,1)).*conc(:,iG(:,2)); %1 column for each reaction
rates = k.*G; %chemical rates
dydt = rates*f; %multiply rates for each reactant by coefficients and sum up

%dilution
if ~isinf(tgauss)
    dilrate = -1./(tgauss + 2*t).*(conc - conc_bkgd); % gaussian dispersion
else
    dilrate = -kdil.*(conc - conc_bkgd); % 1st-order dilution
end
dydt = dydt + dilrate;

% family conservation (algebraic equation replacement)
Fnames = fieldnames(Family);
for i = 1:length(Fnames)
    j = Family.(Fnames{i}).index;
    [~,m] = min(conc(:,j)); % choose member with lowest concentration 
    
    % matrix multiplication perform summation and scaling
    % note, scale is normally 1
    dydt(:,j(m)) = conc(:,j)*Family.(Fnames{i}).scale(:) - Family.(Fnames{i}).conc;
end

% no change for held species
dydt(:,iHold) = 0; 

dydt = dydt'; %flip it back for ODE solver

% print percent complete
if Verbose>=3, meter(IntTime,t,10); end


