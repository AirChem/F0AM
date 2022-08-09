function rates = sumRates_ROx(S)
% function rates = sumRates_ROx(S)
% Calculates net rates of production and loss for the ROx family, defined as OH + HO2 + RO2 + RO + alkyl radicals + criegee radicals
% Note that rates will reflect total ROx loss, not the rate of the reaction itself.
% For example, LROx(HO2 + HO2) = 2*rate(HO2 + HO2).
% This is designed for use with MCM chemistry and will not work for other mechanisms.
% Note that this make use of the SearchSMILES.m function, and SMILES patterns may not perfectly
% capture all families. It is good practice to confirm that reactions are being grouped as expected.
%
% LOSS REACTION DEFINITIONS
% Lnames = {'OH + HO2';'HO2 + HO2';'HO2 + RO2';'RO2 + RO2';'RO2 + NO';'PNs';'ArNO2';'OH + NO2';'HO2 + NO2';'OH + X';'other'};
%   "RO2 + NO" is typically alkyl nitrate formation
%   "PNs" is all peroxy nitrate formation (including CH3O2NO2 and PANs) and is the net rate
%   (so,adjusted for equilibrium).
%   "ArNO2" is aromatic nitrate formation (e.g., CATEC1O + NO2 -> NCATECHOL)
%   "HO2 + NO2" is peroxynitrate formation and is the net rate. This will be 0 if the net rate
%       favors HO2NO2 decomposition.
%   "OH + NO" is net HONO formation (in equilibrium with HONO + hv). This will be 0 if the net rate
%       favors HONO photolysis.
%   "OH + X" is a small set of reactions where X is typically a PAN (e.g. PPN + OH = CH3CHO + CO + NO2). 
%       Also includes net loss from HONO formation via OH + NO (usually small as it is in
%       equilibrium with HONO + hv).
% 
% PRODUCTION REACTION DEFINITIONS
% Pnames = {'O1D + H2O';'H2O2 + hv';'HCHO + hv';'oVOC + hv';'HONO + hv';'O3 + ene';'PANs';'HO2NO2';'NO3 + X';'other'};
%   "PANs" and "HO2NO2" represent net decomposition of these compounds.
% 
% INPUTS
% S is a F0AM model structure.
%
% OUTPUTS
% rates is structure containing the following fields.
% rates.Prod is a matrix of summed production rates with dimensions of (# model stepx) x (# reactions)
% rates.Pnames is a cell array containing the names of all reaction families.
% rates.iRx_Prod is a cell array containing the indices of all reactions included in a family.
%   You can use this to access those reactions in S.Chem, e.g. 
%   Rnames_oVOChv = S.Chem.Rnames(rates.iRx_Prod{4});
%   This might be handy if you want to look at major contributors to a family.
% rates.Loss - analogous outputs for Loss
% rates.Lnames
% rates.iRx_Loss
%
% 20210920 GMW
% 20210924 GMW Separated OH + NO from OH + X in Loss groups
% 20220601 GMW In "Production", modified jHONO definition to exclude HONO + OH and added special
%               treatment in case there is no net production (HONO is equilibrium reaction).

% Get net P/L rates
RO2names = S.Cnames(S.Chem.iRO2);
ROinfo = SearchSMILES('alkoxyRadical',S.Cnames,'v331');
Fnames = [{'ROx'; 'OH'; 'HO2'}; RO2names; ROinfo.names; {'CISOPA';'CISOPC';'TISOPA';'TISOPC';'HCOCO'}];
Frates = PlotRates(Fnames,S,5000,'sumEq',1,'plotme',0);

%% Loss

% get species indices
[~,iHO2] = ismember('HO2',S.Cnames); %location of HO2
[~,iRO2] = ismember(RO2names,S.Cnames); %location of RO2 (speciated)
[~,iNO] = ismember('NO',S.Cnames); % NO index
[~,iNO2] = ismember('NO2',S.Cnames);
[~,iOH] = ismember('OH',S.Cnames);
rOinfo = SearchSMILES('aryloxyRadical',S.Cnames,'v331'); %like alkoxy radicals but attached to conjugated rings
[~,iBB] = ismember({'NRGUAIACOL','NRMGUAIACOL','NRSYRINGOL',...
    'H3BENZENE1O','H3TOLUENE1O','H3OXYLENE1O','H3PXYLENE1O','H3MXYLENE1O','CH3SOO2','CH3SO2O2'},S.Cnames); %NOAA BB mechanism, and a few S-peroxys

% index reactions for each species
iG = S.Chem.iG(Frates.iRx_Loss,:); %reactant indices
jHO2 = any(iG == iHO2,2);
jRO2sum = any(iG == 2,2); %sum of RO2 is always second species
jRO2speciated = any(ismember(iG,iRO2),2);
jNO = any(iG == iNO,2);
jNO2 = any(iG == iNO2,2);
jOH = any(iG == iOH,2);
jrO = any(ismember(iG,rOinfo.index),2);
jBB = any(ismember(iG,iBB),2);

% index full reactions
Lnames = {'OH + HO2';'HO2 + HO2';'HO2 + RO2';'RO2 + RO2';'RO2 + NO';'PNs';'AromNO2';'OH + NO2';'HO2 + NO2';'OH + NO';'OH + X';'other'};
jOHHO2  = strcmp(Lnames{1},Frates.Lnames);
jHO2HO2 = strcmp(Lnames{2},Frates.Lnames);
jHO2RO2 = jHO2 & jRO2speciated;
jRO2RO2 = jRO2sum & jRO2speciated;
jRO2NO  = jRO2speciated & jNO;
jRO2NO2 = jRO2speciated & jNO2;
jArNO2 = (jNO2 & jrO) | (jNO2 & jBB);
jOHNO2  = jOH & jNO2;
jHO2NO2 = jNO2 & jHO2;
jOHNO   = jOH & jNO;
jOHX    = jOH & ~jOHHO2 & ~jOHNO2 & ~jOHNO;

jother  = ~(jOHHO2 | jHO2HO2 | jHO2RO2 | jRO2RO2 | jRO2NO | jRO2NO2 | jOHNO2 | jOHX | jArNO2 | jHO2NO2 | jOHNO);

% order indices
jall = {jOHHO2;jHO2HO2;jHO2RO2;jRO2RO2;jRO2NO;jRO2NO2;jArNO2;jOHNO2;jHO2NO2;jOHNO;jOHX;jother};

% loop through, sum and store reaction index
rates.Lnames = Lnames;
rates.Loss = zeros(length(S.Time),length(Lnames));
rates.iRx_Loss = cell(length(Lnames),1);
for i = 1:length(Lnames)
    if ~isempty(jall{i})
        rates.Loss(:,i) = sum(Frates.Loss(:,jall{i}),2);
    end
    rates.iRx_Loss{i} = Frates.iRx_Loss(jall{i});
end


%% Production

% get species indices
[~,iO1D] = ismember('O1D',S.Cnames);
[~,iH2O2] = ismember('H2O2',S.Cnames);
[~,iHCHO] = ismember('HCHO',S.Cnames);
% [~,iGLY] = ismember('GLY',S.Cnames);
% [~,iMGLY] = ismember('MGLY',S.Cnames);
[~,iHONO] = ismember('HONO',S.Cnames);
[~,iO3] = ismember('O3',S.Cnames);
[~,iNO3] = ismember('NO3',S.Cnames);
[~,iHO2NO2] = ismember('HO2NO2',S.Cnames);
CRinfo = SearchSMILES('criegee',S.Cnames,'v331');
PANinfo = SearchSMILES('peroxyNitrate',S.Cnames,'v331');

% index reactions
iG = S.Chem.iG(Frates.iRx_Prod,:); %reactant indices
jO1D = any(iG == iO1D,2);
jH2O2 = any(iG == iH2O2,2);
jHCHO = any(iG == iHCHO,2) & ~any(iG == iNO3,2); %exclude HCHO + NO3
% jGLY = any(iG == iGLY,2) & ~any(iG == iNO3,2); %exclude HCHO + NO3
% jMGLY = any(iG == iMGLY,2) & ~any(iG == iNO3,2); %exclude HCHO + NO3
jHONO = any(iG == iHONO,2) & ~any(iG == iOH,2); % exclude HONO + OH
jO3 = any(iG == iO3,2) | any(ismember(iG,CRinfo.index),2); % assume all criegees stem from O3
jNO3 = any(iG == iNO3,2);
joVOC = contains(Frates.Pnames,'hv') & ~(jO1D | jH2O2 | jHCHO | jHONO);
jHO2NO2 = any(iG == iHO2NO2,2);
jPANs = any(ismember(iG,PANinfo.index),2) & ~jHO2NO2;
jother = ~(jO1D | jH2O2 | jHCHO | jHONO | jO3 | joVOC | jNO3 | jPANs | jHO2NO2);

% sum
Pnames = {'O1D + H2O';'H2O2 + hv';'HCHO + hv';'oVOC + hv';'HONO + hv';'O3 + ene';'PANs';'HO2NO2';'NO3 + X';'other'};
Prod = nan(length(S.Time),length(Pnames));
Prod(:,1) = Frates.Prod(:,jO1D);
Prod(:,2) = Frates.Prod(:,jH2O2);
Prod(:,3) = Frates.Prod(:,jHCHO);
Prod(:,4) = sum(Frates.Prod(:,joVOC),2);

if sum(jHONO), Prod(:,5) = Frates.Prod(:,jHONO); %special case for HONO b/c it is equilibrium
else, Frates.Prod(:,5) = 0*Frates.Prod(:,1); end

Prod(:,6) = sum(Frates.Prod(:,jO3),2);
Prod(:,7) = sum(Frates.Prod(:,jPANs),2);
Prod(:,8) = sum(Frates.Prod(:,jHO2NO2),2);
Prod(:,9) = sum(Frates.Prod(:,jNO3),2);
Prod(:,10) = sum(Frates.Prod(:,jother),2);

% stuff into structure
rates.Prod = Prod;
rates.Pnames = Pnames;
rates.iRx_Prod = {Frates.iRx_Prod(jO1D),...
    Frates.iRx_Prod(jH2O2),...
    Frates.iRx_Prod(jHCHO),...
    Frates.iRx_Prod(joVOC),...
    Frates.iRx_Prod(jHONO),...
    Frates.iRx_Prod(jO3),...
    Frates.iRx_Prod(jPANs),...
    Frates.iRx_Prod(jHO2NO2),...
    Frates.iRx_Prod(jNO3),...
    Frates.iRx_Prod(jother)}';

% that's all

%% Old ideas
% other alternate, use of names
    % get reactant names
%     [Lnames1,Lnames2] = strtok(Frates.Lnames,'+'); %extra step here protects against typos in reaction names
%     Lnames2 = strtok(Lnames2,'+');
%     Lnames1 = strtrim(Lnames1);
%     Lnames2 = strtrim(Lnames2);
    
    % alternate use of f's
%     fHO2 = full(Snow.Chem.f(Frates.iRx_Loss,iHO2)); %stoich coeff for HO2
%     fRO2 = Snow.Chem.f(Frates.iRx_Loss,iRO2); %stoich coeff for RO2
%     fRO2 = full(sum(fRO2,2)); %sum along species
%     jHO2RO2 = fHO2 == -1 & fRO2 == -1;

