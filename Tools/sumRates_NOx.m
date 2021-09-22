function rates = sumRates_NOx(S)
% function rates = sumRates_NOx(S)
% Calculates net rates of production and loss for the NOx family, defined as NO + NO2 + NO3 + 2*N2O5
% This is designed for use with MCM chemistry and will not work for other mechanisms.
%
% INPUTS
% OUTPUTS
%
% 20210914 GMW

% Get net P/L rates
Fnames = {'NOx','NO','NO2','NO3','2*N2O5'}; %family
Frates = PlotRates(Fnames,S,5000,'sumEq',1,'plotme',0);

%% Loss

% get species indices
[~,iRO2] = ismember(S.Cnames(S.Chem.iRO2),S.Cnames); %location of RO2 (speciated)
[~,iNO] = ismember('NO',S.Cnames);
[~,iNO2] = ismember('NO2',S.Cnames);
[~,iNO3] = ismember('NO3',S.Cnames);
APinfo = SearchSMILES('peroxyacylRadical',S.Cnames,'v331');
rOinfo = SearchSMILES('aryloxyRadical',S.Cnames,'v331'); %like alkoxy radicals but attached to conjugated rings
[~,iBB] = ismember({'NRGUAIACOL','NRMGUAIACOL','NRSYRINGOL',...
    'H3BENZENE1O','H3TOLUENE1O','H3OXYLENE1O','H3PXYLENE1O','H3MXYLENE1O','CH3SOO2','CH3SO2O2'},S.Cnames); %NOAA BB mechanism, and a few S-peroxys

% index reactions for each species
iG = S.Chem.iG(Frates.iRx_Loss,:); %reactant indices
jNO = any(iG == iNO,2);
jNO2 = any(iG == iNO2,2);
jNO3 = any(iG == iNO3,2);
jRO2speciated = any(ismember(iG,iRO2),2);
jAP = any(ismember(iG,APinfo.index),2); %peroxyacyl radicals
jrO = any(ismember(iG,rOinfo.index),2);
jBB = any(ismember(iG,iBB),2);

% index full reactions
Lnames = {'OH + NO2';'HO2 + NO2';'PANs';'ArNO2';'RO2 + NO';'NO3 + X';'other'};
jrx1 = strcmp(Lnames{1},Frates.Lnames);
jrx2 = strcmp(Lnames{2},Frates.Lnames);
jPAN = jAP & jNO2;
jArNO2 = (jNO2 & jrO) | (jNO2 & jBB);
jRO2NO = jRO2speciated & jNO;
jNO3X = jNO3;
jother = ~(jrx1 | jrx2 | jRO2NO | jPAN | jArNO2 | jNO3X);
    
% sum
Loss = nan(length(S.Time),length(Lnames));
Loss(:,1) = Frates.Loss(:,jrx1);
Loss(:,2) = Frates.Loss(:,jrx2);
Loss(:,3) = sum(Frates.Loss(:,jPAN),2);
Loss(:,4) = sum(Frates.Loss(:,jArNO2),2);
Loss(:,5) = sum(Frates.Loss(:,jRO2NO),2);
Loss(:,6) = sum(Frates.Loss(:,jNO3X),2);
Loss(:,7) = sum(Frates.Loss(:,jother),2);

% stuff into structure
rates.Loss = Loss;
rates.Lnames = Lnames;
rates.iRx_Loss = {Frates.iRx_Loss(jrx1),...
    Frates.iRx_Loss(jrx2),...
    Frates.iRx_Loss(jPAN),...
    Frates.iRx_Loss(jArNO2),...
    Frates.iRx_Loss(jRO2NO),...
    Frates.iRx_Loss(jNO3X),...
    Frates.iRx_Loss(jother)};

%% Production
% TBD




