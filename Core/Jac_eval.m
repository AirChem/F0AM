function Jac = Jac_eval(t,conc,param)
% function Jac = Jac_eval(t,conc,param)
% HERE BE DRAGONS
% Calculates the Jacobian of the chemical ODEs used in the dydt_eval function.
% For info on inputs, see dydt_eval.m.
% OUTPUT is the Jacobian matrix dF/dy, which has dimensions of nSp x nSp.
% For more info on how it is used, see the odeset help.
% 20120723 GMW 

%%%%%BREAKOUT PARAMETERS%%%%%
k = param{1};
f = param{2};
iG = param{3};
iRO2 = param{4};
iHold = param{5};
kdil = param{6};

[nRx,nSp] = size(f);

conc = conc'; %ODE solver feeds this in as 1 row for each species

%%%%%CALCULATE JACOBIAN MATRIX%%%%%
conc(:,2) = sum(conc(:,iRO2),2); %sum RO2

%partial derivatives for 1st-order reactions
DratesDy1 = k.*conc(:,iG(:,2));
DratesDy2 = k.*conc(:,iG(:,1));

%distribute derivatives
DratesDy = sparse(repmat(1:nRx,1,2),[iG(:,1);iG(:,2)],[DratesDy1, DratesDy2],nRx,nSp);

%correct second-order reactions
i2 = find(iG(:,1)==iG(:,2));
DratesDy(i2,iG(i2,1)) = 2*DratesDy(i2,iG(i2,1));

%calculate Jacobian
Jac = f'*DratesDy;
i = sub2ind([nSp nSp],3:nSp,3:nSp); %get diagonal indices
Jac(i) = Jac(i) - kdil; %dilution
Jac(iHold,:) = 0; %fixed species

