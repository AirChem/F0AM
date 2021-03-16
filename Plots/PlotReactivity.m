function [Reactivity,ReactivityNames] = PlotReactivity(Spname,S,Rct2plot,varargin)
% function [Reactivity,ReactivityNames] = PlotReactivity(Spname,S,Rct2plot,varargin)
% Generates a plot of speciated reactivity (inverse lifetime) versus time.
% Typically used to look at oxidant reactivity (e.g. OH or O3).
%
% INPUTS:
% Spname: name of species of interest.
%
% S: structure of model outputs. Must contain the following fields:
%    Time, Cnames, Chem.Rnames, Chem.Rates, Chem.f
%
% Rct2plot: cell array of reactant names to plot individually. This can also contain nested cell
%   arrays that define groups of reactants to lump together. In this case, the name of the group (for
%   the plot legend) should be the first string in the sub-cell array.
%   There are also two special cases for this input:
%   'sum': the total reactivity will be output.
%   'all': all reactants will be speciated.
%			Note, using 'all' for something with many reactions, like OH/MCM, might break Matlab due to memory limitations.
%			In such a case it is best to set plotme = 0 (see below).
%
% varargin: One can specify several options as name-value pairs:
%
%           PlotReactivity(...,'sumEq',value)
%               Specifies a 0-1 flag for combining equilibrium reactions
%               (e.g. HO2 + NO2 = HO2NO2 and its reverse reaction).
%               Default: 0
% 
%           PlotReactivity(...,'ptype',value)
%               Indicates type of plot.
%               Values can include 'fill', 'bar' or 'line'.
%               Default: 'fill'
%
%           PlotReactivity(...,'unit',value)
%               Changes the rate unit.
%               Valid values include 's','m','h' for inverse seconds, minutes and hours.
%               Default: 's'
% 
%           PlotReactivity(...,'scale',value)
%               Specifies an additonal scalar multiplier.
%               SPECIAL CASE: setting this to 0 causes normalization by total reactivity.
%               Default: 1
%
%           PlotReactivity(...,'plotme',value)
%               Specifies whether to generate plot or not.
%               1 = plot, 0 = don't.
%               Default: 1
%
% OUTPUTS:
% Reactivity: matrix of reactivities.
%             One row for each model point, one column for each reactivity class.
%
% ReactivityNames: names of each reactivity class.
% 
% Example Use (for OH reactivity):
% Inorg = {'Inorganic';'CO';'H2';'O3';'HO2';'H2O2'};
% Reactants = {'CH4'; Inorg; 'C5H8'; 'MBO'; 'NO2'};
% PlotReactivity('OH',S,Reactants);
%
% 20120319 GMW
% 20120725 GMW    Updated for UWCMv2.1.
% 20120904 GMW    Added output arguments.
% 20151118 GMW    Updated for F0AMv3, added options.
% 20210226 GMW    Added option to plot sum or all reactants and disable plotting.


%%%%%DEAL WITH INPUTS%%%%%

% check inputs
allflag = 0; sumflag = 0;
if ischar(Rct2plot)
    switch Rct2plot
        case 'sum', sumflag = 1;
        case 'all', allflag = 1;
        otherwise
          error('PlotReactivity:InvalidInput','Input "Rct2plot" not valid. Seek help.')  
    end
elseif ~iscell(Rct2plot)
    error('PlotReactivity:InvalidInput','Input "Rct2plot" not valid. Seek help.')
end

%options
varInfo = {...
    %name       %default    %valid
    'unit'      's'         {'s','m','h'};...
    'scale'     1           [];...
    'ptype'     'fill'      {'fill','bar','line'};...
    'sumEq'     0           [0 1];...
    'plotme'    1           [0 1];...
    };
ParsePairs(varargin,varInfo);

%get unit multiplier and string
switch unit
    case 's',   unitX = 1;       unitS = 's^-^1';
    case 'm',   unitX = 60;      unitS = 'm^-^1';
    case 'h',   unitX = 3600;    unitS = 'h^-^1';
end

if scale==0
    unitS = 'norm';
elseif scale~=1
    unitS = [num2str(1./scale,'%1.2G') ' ' unitS];
end
scale = unitX*scale;

%%%%%BREAKOUT VARIABLES%%%%
Cnames = S.Cnames;
rates  = S.Chem.Rates;
iG     = S.Chem.iG;
Time   = S.Time;
CSp    = S.Conc.(Spname);

CSp(CSp==0) = 1e-14; %avoid /0 nan issues in reactivity calculation

nTm = size(rates,1);       %number of time-points

%%%%REMOVE GROUP NAMES AND GENERATE LEGEND%%%%%

if sumflag || allflag
    Rct2plot = Cnames;
    Rct2plot(strcmp(Rct2plot,Spname)) = []; %remove reactant
    lnames = Rct2plot;
    nRx = length(Rct2plot);
else
    nRx = length(Rct2plot)+1; %number of reactions to plot
    lnames = cell(nRx,1);
    for i=1:length(Rct2plot)
        Rnow = Rct2plot{i};
        if iscell(Rnow)
            lnames{i} = Rnow{1};
            Rct2plot{i}(1) = [];
        else
            lnames{i} = Rnow;
        end
    end
    lnames{end} = 'Other';
end

%%%%%GRAB RATES AND REACTANTS%%%%%
[rSp,rSpnames,iRx] = ExtractRates(Spname,S,sumEq);
iL = sum(rSp,1)<0; %only want loss terms
nL = sum(iL);
Reactivity = -rSp(:,iL)./repmat(CSp,1,nL);
rSpnames = rSpnames(iL);
iRx = iRx(iL);
Rctnames = Cnames(iG(iRx,:)); %2-column cell array of reactant names for each reaction

%scale
if scale(1)==0,         Reactivity = Reactivity./repmat(sum(Reactivity,2),1,nL);
elseif length(scale)>1, Reactivity = Reactivity.*repmat(scale,1,nL);
else                    Reactivity = Reactivity.*scale;
end
Reactivity(isnan(Reactivity)) = 0; %potential for NaNs in normalizing

%%%%%%COMBINE REACTIONS FOR SPECIFIED REACTANTS%%%%%
R2plot = nan(nTm,nRx);
iUsed=[];
for i=1:length(Rct2plot)
    Rnow = Rct2plot{i};
    tf = ismember(Rctnames,Rnow);
    iRct = find(sum(tf,2)); %index for reactions where Rnow is present
    if ~isempty(iRct)
        R2plot(:,i) = sum(Reactivity(:,iRct),2);
        iUsed = [iUsed;iRct];
    else
        R2plot(:,i) = zeros(nTm,1);
    end
end

%%%%%DEAL WITH OTHER REACTANTS OR NON-REACTIVE SPECIES%%%%%
if allflag
    sumR = sum(R2plot,1);
    junk = sumR == 0;
    R2plot(:,junk) = [];
    lnames(junk) = [];
elseif sumflag
    R2plot = sum(R2plot,2);
    lnames = 'Total';
else
    iOther = setdiff(1:nL,iUsed);
    ReactivityOther = Reactivity(:,iOther);
    rSpOtherNames = rSpnames(iOther);
    AverageReactivity = mean(ReactivityOther,1);
    [RMax,iMax] = max(AverageReactivity); %identify largest contribution in "other"
    
    disp(['PlotReactivity: ' Spname])
    disp(['  Number of reactions in "other" = ' num2str(length(iOther))])
    disp(['  Largest contribution in "other" is ' rSpOtherNames{iMax} ' at ' num2str(RMax) ' ' unitS])
    
    R2plot(:,end) = sum(ReactivityOther,2);
end

%%%%%PLOT%%%%%
if plotme
    figure;
    load fillcolors.mat
    colormap(fillcolors);
    
    switch ptype
        case 'fill'
            area(Time,R2plot);
        case 'line'
            plot(Time,R2plot,'LineWidth',2)
        case 'bar'
            bar(Time,R2plot,'stack');
    end
    
    %Plot Decorations
    xlabel('Model Time');
    ylabel([Spname ' reactivity (' unitS ')'])
    legend(lnames)
    
    tspacing = mean(diff(Time),'omitnan');
    xlim([min(Time)-tspacing max(Time)+tspacing])
    
    purtyPlot
    
end

%%%%% OUTPUT %%%%%
if nargout
    Reactivity = R2plot;
    ReactivityNames = lnames;
end


