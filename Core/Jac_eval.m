function Jac = Jac_eval(t,conc,param)
% function Jac = Jac_eval(t,conc,param)
% HERE BE DRAGONS
% Calculates the Jacobian of the chemical ODEs used in the dydt_eval function.
% For info on inputs, see dydt_eval.m.
% OUTPUT is the Jacobian matrix dF/dy, which has dimensions of nSp x nSp.
%   Rows correspond to each set of equations for a species.
%   Columns correspond to each species.
% For more info on how it is used, see the odeset help.
%
% 20120723 GMW
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
% conc_bkgd   = param{8};
% IntTime     = param{9};
% Verbose     = param{10};
Family      = param{11};
iLR         = param{12};
% Jac_flag    = param{13};
t_start = param{14};

[nRx,nSp] = size(f);

conc = conc'; %ODE solver feeds this in as 1 row for each species

%% LIMITING REAGENT REACTIONS
% handle these by identifying limiting reagent and replacing iG for other with 1
[~,lr] = min([conc(iG(iLR,1));conc(iG(iLR,2))],[],1); %lr is index for iG w/ smallest conc and is wrt iLR
iG(iLR(lr==1),2) = 1;
iG(iLR(lr==2),1) = 1;

%% CALCULATE JACOBIAN MATRIX

conc(:,2) = sum(conc(:,iRO2),2); %sum RO2

% partial derivatives for 1st-order reactions
% f = k*x*y, then df/dx = k*y
DratesDy1 = k.*conc(:,iG(:,2)).*conc(:,iG(:,3));
DratesDy2 = k.*conc(:,iG(:,1)).*conc(:,iG(:,3));
DratesDy3 = k.*conc(:,iG(:,1)).*conc(:,iG(:,2));

% distribute derivatives
% one row for each reaction
% one column for each species
Rxindex = [1:nRx 1:nRx 1:nRx]; 
Spindex = [iG(:,1)' iG(:,2)' iG(:,3)'];
DratesDy = sparse(Rxindex,Spindex,[DratesDy1 DratesDy2 DratesDy3],nRx,nSp);

% correct second-order reactions
% f = k*x*x, then df/dx = 2*k*x
i2 = iG(:,1)==iG(:,2);
DratesDy(i2,iG(i2,1)) = 2*DratesDy(i2,iG(i2,1));
i2 = iG(:,1)==iG(:,3);
DratesDy(i2,iG(i2,1)) = 2*DratesDy(i2,iG(i2,1));
i2 = iG(:,3)==iG(:,2);
DratesDy(i2,iG(i2,3)) = 2*DratesDy(i2,iG(i2,3));

% calculate Jacobian
% f is matrix of stoichiometric coefficients for each species & reaction, dim = nRx x nSp
% matrix multiplication sums up over all reactions for each species
% Units are /s
Jac = f'*DratesDy;

%% DILUTION
% treated as first-order
if ~isinf(tgauss),  dilrate = 1./(tgauss + 2*(t+t_start)); %gaussian dispersion
else,               dilrate = kdil;              %1st-order dilution
end
idg = sub2ind([nSp nSp],3:nSp,3:nSp); %get diagonal indices
Jac(idg) = Jac(idg) - dilrate;
        
%% FAMILY CONSERVATION

% fic = fi + ni*C*r
% dfic/dxj = dfi/dxj + r*C*dni/dxj + r*ni*dC/dxj + ni*C*dr/dxj
% dni/dxj = -sj*si*xi/Fc^2 (all) + si/Fc (i==j only)
% dC/dxj = -sum(si*dfi/dxj)
% dr/dxj = -sj*Fi/Fc^2

Fnames = fieldnames(Family);

% loop through families
for i = 1:length(Fnames)
    
    % get vars
    j  = Family.(Fnames{i}).index;
    s  = Family.(Fnames{i}).scale;
    Ft = Family.(Fnames{i}).conc; %initial family concentration
    Fc = sum(conc(j).*s); %current family concentration
    Jac_F = Jac(j,j);

    if 0 %patch leak
        
        % get dydt
        if ~isempty(Fnames)
            param{13} = 1; %Jac_flag
            dydt = dydt_eval(t,conc',param);
        end
        
        % raw correction terms
        C = -sum(dydt(j).*s); %total family correction
        n = conc(j).*s./Fc; % apportionment fraction
        
        % dndx term
        sx = conc(j).*s; % 1 x j
        ssx = s(:)*sx; % j x j
        sF = diag(s*Fc); % diagonals only
        dndx = (sF - ssx)./Fc.^2;
        c1 = dndx.*C.*r;
        
        % dCdx term
        dCdx = -s*Jac_F; % 1 x j, applies to all columns
        c2 = n(:)*dCdx.*r; % j x j
        
        % put em together
        Jac_F = Jac_F + c1 + c2;
        Jac(j,j) = Jac_F;
        
        % mass matrix combo
        % For algebreic family member, derivative is 1 (or scale) for all family members, 0 otherwise
%         m = 1; %constant
%         Jac(j(m),:) = 0; %wipe conserved species
%         Jac(j(m),j) = s;
        
    else
        % mass matrix conservation
%         [~,m] = max(conc(j).*s);
        m = 1; %constant
        % For algebreic family member, derivative is 1 (or scale) for all family members, 0 otherwise
        Jac(j(m),:) = 0; %wipe conserved species
        Jac(j(m),j) = Family.(Fnames{i}).scale;
    end

end

%% FIXED SPECIES
% derivative of a constant is 0
Jac(iHold,:) = 0;


