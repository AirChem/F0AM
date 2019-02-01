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
%   iLR: index for "limiting reagent" reactions.
%        dydt for these reactions will be k*min(conc(iG))
%   Jac_flag: boolean 0/1 indicating if function is being called by Jac_eval.m
%
% OUTPUTS:
% dydt: matrix of rate of change of species, dim = nZ x nSp
%
% 20080918 GMW
% 20120212 GMW  Modified for use with UWCM_v2. See ChangeLog for details.
% 20180320 GMW  Added Gaussian dispersion option.
% 20190123 GMW  Added accomodations for family conservation and limiting reagent reactions.

%% BREAKOUT PARAMETERS
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
iLR         = param{12};
Jac_flag    = param{13};

conc = conc'; %ODE solver feeds this in as 1 row for each species

%calculations for vectorization of dydt (needed by ode15s if Jacobian not specified)
s = size(conc,1);
if s > 1
    o = ones(s,1);
    conc_bkgd = o*conc_bkgd;
    k = o*k;
end

%% LIMITING REAGENT REACTIONS
% handle these by identifying limiting reagent and replacing iG for other with 1
[~,lr] = min([conc(iG(iLR,1));conc(iG(iLR,2))],[],1); %lr is index for iG w/ smallest conc and is wrt iLR
iG(iLR(lr==1),2) = 1;
iG(iLR(lr==2),1) = 1;

%% CHEMICAL RATES
conc(:,2) = sum(conc(:,iRO2),2); %calculate sum of RO2 species
G = conc(:,iG(:,1)).*conc(:,iG(:,2)); %1 column for each reaction
rates = k.*G; %chemical rates
dydt = rates*f; %multiply rates for each reactant by coefficients and sum up

%% DILUTION
if ~isinf(tgauss)
    dilrate = -1./(tgauss + 2*t).*(conc - conc_bkgd); % gaussian dispersion
else
    dilrate = -kdil.*(conc - conc_bkgd); % 1st-order dilution
end
dydt = dydt + dilrate;

%% STOP HERE IF USING INSIDE JACOBIAN
if Jac_flag
    return
end

%% FAMILY CONSERVATION
Fnames = fieldnames(Family);
for i = 1:length(Fnames)
    
    % get vars
    j = Family.(Fnames{i}).index;
    s = Family.(Fnames{i}).scale;
    Ft = Family.(Fnames{i}).conc; %true family concentration
    Fc = sum(conc(:,j).*s,2); %current family concentration
    
    if 0
        % patch leaks directly
        C = -sum(dydt(:,j).*s,2); %total correction term
        n = conc(:,j).*s./Fc; %fraction for each member
        
        dydt(:,j) = dydt(:,j) + n.*C;
        
        % combo with mass matrix?
%         m = 1; %constant
%         dydt(:,j(m)) = Fc - Ft;
    
    else
        % mass matrix conservation
        % algebraic equation replacement
%         [~,m] = max(conc(j).*s);
        m = 1; %constant
        dydt(:,j(m)) = Fc - Ft;
    end
    
end

%% FINAL BITS

% no change for held species
dydt(:,iHold) = 0; 

dydt = dydt'; %flip it back for ODE solver

% print percent complete
if Verbose>=3, meter(IntTime,t,10); end


