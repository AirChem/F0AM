function mass = Mass_eval(~,conc,param)
% function mass = Mass_eval(t,conc,param)
% Calculates mass matrix for use with ODE solver.
% Specifically useful for family conservation.
% For info on inputs, see dydt_eval.m.
% OUTPUT is the mass matrix, with dimensions nSp x nSp.
%   It has 1's along diagonals except for conserved species, which have 0.
% For more info on how it is used, see the odeset help.
%
% 20190115 GMW
        
%% BREAKOUT PARAMETERS
k           = param{1};
f           = param{2};
iG          = param{3};
iRO2        = param{4};
iHold       = param{5};
kdil        = param{6};
tgauss      = param{7};
conc_bkgd   = param{8};
% IntTime     = param{9};
% Verbose     = param{10};
Family      = param{11};
iLR         = param{12};

%% initialize
nSp = length(conc);
mass = speye(nSp); 
conc = conc';
 
 %% family conservation
 Fnames = fieldnames(Family);
 for i = length(Fnames)
     j = Family.(Fnames{i}).index;
     
%      [~,m] = min(conc(j).*Family.(Fnames{i}).scale); %member with smallest concentration
     m = 1; %override
     
     mass(j(m),j(m)) = 0;
 end
 
 
 