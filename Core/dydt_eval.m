function dydt = dydt_eval(t,conc,param)
% function dydt = dydt_eval(t,conc,param)
% Evaluates chemical rates.
% Note that, below, nSp = # of species, nRx = # of reactions, nZ = # of boxes.
%
% INPUTS:
% t: current integration time, s
% conc: matrix of species concentrations in molec/cm3, dim = nZ x nSp
% param: a cell array containing the following parameters:
%   k: matrix of rate constants for reaction/photolysis/deposition/emission, dim = nZ x nRx
%   f: SPARSE matrix of species coefficients for each reaction, dim = nRx x nSp
%   iG: index for species to be multiplied for each reaction. dim = nRx x 2.
%   iRO2: index to identify RO2 species
%   kdil: dilution rate constant (/s). If this is 0, dilution is ignored.
%   conc_bkgd: background concentrations, used for dilution
%   iHold: index for species to hold constant.
%   IntTime: total integration time, used to calculate % complete.
%   Verbose: set to 1 to include "% complete" display.
%
% OUTPUTS:
% dydt: matrix of rate of change of species, dim = nZ x nSp
%
% 20080918 GMW
% 20120212 GMW  Modified for use with UWCM_v2. See ChangeLog for details.
% 20180320 GMW  Added Gaussian dispersion option.

%%%%%BREAKOUT PARAMETERS%%%%%
k = param{1};
f = param{2};
iG = param{3};
iRO2 = param{4};
iHold = param{5};
kdil = param{6};
tgauss = param{7};
conc_bkgd = param{8};
IntTime = param{9};
Verbose = param{10};
limited_r = param{11};
fixed_classes = param{12};
fixed_adjust_as    = param{13};
fixed_class_conc = param{14};
dilution_classes = param{15};
dilution_bkgd    = param{16};
dilution_adjust_as = param{17};
% NOxinfo = param{11};
NOxinfo = [];

conc = conc'; %ODE solver feeds this in as 1 row for each species

%calculations for vectorization of dydt
s = size(conc,1);
if s > 1
    o = ones(s,1);
    conc_bkgd = o*conc_bkgd;
    k = o*k;
end

%%%%%CALCULATE RATES%%%%%
conc(:,2) = sum(conc(:,iRO2),2); %calculate sum of RO2 species
G = conc(:,iG(:,1)).*conc(:,iG(:,2)); %1 column for each reaction
%%%%%Modififcation for some limiting reactants
% PSR 190109
I = min(conc(:,iG(limited_r,1)),conc(:,iG(limited_r,2)));
G(:,limited_r) = I;
%End limiting reactant section
rates = k.*G; %chemical rates
dydt = rates*f; %multiply rates for each reactant by coefficients and sum up


%To make class dilution work, we adjust the background concentration on the
%fly
if ~isempty(dilution_classes)
    for classInd = 1:size(dilution_classes,1) %1 row/class
        %For dilution, only species w. adjust_as = 1 have their background
        %concentrations modified. 
        adj_as_conc = sum(conc .* dilution_classes(classInd,:) .* dilution_adjust_as(classInd,:));
        scaled_bkgd_conc = dilution_bkgd(classInd)./adj_as_conc .* conc;
        i = find(dilution_adjust_as(classInd,:)); %Replace the relevant conc_bkgd
        conc_bkgd(i) = scaled_bkgd_conc(i);
    end
end

%dilution
if ~isinf(tgauss)
    dilrate = -1./(tgauss + 2*t).*(conc - conc_bkgd); % gaussian dispersion
else
    dilrate = -kdil.*(conc - conc_bkgd); % 1st-order dilution
end
dydt = dydt + dilrate;

% experimental code to fix total NOx
if ~isempty(NOxinfo)
    persistent tlast
    if isempty(tlast) || t==tlast
        tlast = t;
    else
        dt = t - tlast;
        tlast = t;
        
        iNOx     = NOxinfo(1,:); %index
        cNOx     = NOxinfo(2,:); %constraint concentration
        mNOx     = conc(:,iNOx); %model concentration
        nNOx     = sum(cNOx)./sum(mNOx,2)*mNOx; %new NOx concentrations
        dydt(:,iNOx) = (nNOx - mNOx)./dt + dydt(:,iNOx);
    end
    
    if t==IntTime, clear tlast; end %ready for next step
end


%Expanding the fixed NOx to a more
%general constraint, fixed_classes
if ~isempty(fixed_classes)
    for classInd = 1:size(fixed_classes,1) %1 row/class
        non_adjustable_class_conc = sum(conc.*fixed_classes(classInd,:).*(not(fixed_adjust_as(classInd,:))));
        if non_adjustable_class_conc > fixed_class_conc(classInd)
            error('One of the fixed classes has grown too large to be held constant. Check for non-chemical sources of fixed class members');
        end
        
        total_rate_of_change = sum(dydt.*fixed_classes(classInd,:)); %Figure out how much the class as whole is changing
        goal_rate_of_change = 0; %Constraints are held constant for each step
        adjustment_needed = goal_rate_of_change - total_rate_of_change;
        
        %Then distribute it in proporition to how adjust_as is distributed   
        class_composition = conc.*fixed_adjust_as(classInd,:)./sum(conc.*fixed_adjust_as(classInd,:).*fixed_classes(classInd,:));
        distributed_adj = adjustment_needed.*class_composition; %Add the distributed adj to figure out how much to adjust it by
        
        new_dydt = dydt + distributed_adj;
        dydt = new_dydt;
    end
end

dydt(:,iHold) = 0; %no change for held species
dydt = dydt';

if Verbose>=3, meter(IntTime,t,10); end



