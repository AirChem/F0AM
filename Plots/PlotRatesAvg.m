function SpRates = PlotRatesAvg(Spname,S,n2plot,varargin)
% function SpRates = PlotRatesAvg(Spname,S,n2plot,varargin)
% Generates a plot of production and loss rates for a single species, averaged over time.
% The largest rates will be plotted individually (determined by n2plot), 
% while the rest are grouped into an "other" category.
% NOTE: the pie-chart option works but doesn't look great. If you use this and decide to fix the
%           issues with plot/legend position and size, please share your work.
%
% INPUTS:
% Spname: name of species
% S: structure of model outputs. Must contain the following fields:
%    Time, Cnames, Chem.Rnames, Chem.Rates, Chem.f, Dil
% n2plot: number of individual rates to plot. 
% varargin: One can specify several options as name-value pairs:
%
%           PlotRatesAvg(...,'pts2avg',value)
%               Logical flag specifying which points to average.
%               Length must be same as number of model output points.
%               Default: true(size(S.Time)) (include all points)
%
%           PlotRatesAvg(...,'sumEq',value)
%               Specifies a 0-1 flag for combining equilibrium reactions
%               (e.g. HO2 + NO2 = HO2NO2 and its reverse reaaction).
%               Default: 0
% 
%           PlotRatesAvg(...,'ptype',value)
%               Indicates type of plot.
%               Values can include 'hbar','pie'.
%               Default: 'hbar'
%
%           PlotRatesAvg(...,'unit',value)
%               Changes the rate unit.
%               Valid values include any combination of cocentration (ppb, ppt, percc) and
%               time (s, m, h), separated by _.
%               Default: 'ppb_s'
% 
%           PlotRatesAvg(...,'scale',value)
%               Specifies an additonal scalar multiplier.
%               SPECIAL CASE: setting this to 0 causes P/L to be normalized by total P/L.
%               In this case, the "dilution" term is normalized to total loss.
%               Default: 1
% 
%           PlotRatesAvg(...,'parent',axis)
%              Specifies the axis handle you want to plot on (useful for putting
%              this into subfigures... Default is to create a new figure. 
%              Note: Does not work for the ptype 'pie' option. 
%
% OUTPUT (optional) is a structure containing names and rates of plotted reactions.
%
% 20120319 GMW
% 20120725 GMW    Updated for UWCMv2.1. Now also includes dilution term.
% 20121028 GMW    Modified behavior of FilterEquilibria code to better handle cases where net
%                 reaction rates change sign (as per suggestion of SBH).
% 20131126 GMW    Moved Equilibrium filter code to ExtractRates.
% 20151106 GMW    Updates for F0AMv3.
%                 Changed options for ptype and sumEq to name-value pairs.
%                 Added options for unit and scale.
%20210625  JDH    Added 'parent' option to plot to a specific subplot/ axis.
%20220810  GMW    Modified averaging to use trapezoidal integration if model output is not
%                 evenly-spaced in time.
% 20230831 GMW    Further modifications to averaging to handle variable time spacing.

%%%%%DEAL WITH INPUTS%%%%%
%options
varInfo = {...
    %name       %default            %valid
    'unit'      'ppb_s'             {'ppb_s','ppb_m','ppb_h',...
                                    'ppt_s','ppt_m','ppt_h',...
                                    'percc_s','percc_m','percc_h'};...
    'scale'     1                   [];...
    'ptype'     'hbar'              {'hbar','pie'};...
    'sumEq'     0                   [0 1];...
    'pts2avg'   true(size(S.Time))  [];...
     'parent'    0                  [];...    
    };
ParsePairs(varargin,varInfo);

%get unit multiplier and string
M = S.Met.M;
switch unit
    case 'ppb_s',   unitX = 1;           unitS = 'ppb s^-^1';
    case 'ppb_m',   unitX = 60;          unitS = 'ppb m^-^1';
    case 'ppb_h',   unitX = 3600;        unitS = 'ppb h^-^1';
    case 'ppt_s',   unitX = 1e3;         unitS = 'ppt s^-^1';
    case 'ppt_m',   unitX = 1e3*60;      unitS = 'ppt m^-^1';
    case 'ppt_h',   unitX = 1e3*3600;    unitS = 'ppt h^-^1';
    case 'percc_s', unitX = M./1e9;      unitS = 'cm^-^3 s^-^1';
    case 'percc_m', unitX = M./1e9*60;   unitS = 'cm^-^3 m^-^1';
    case 'percc_h', unitX = M./1e9*3600; unitS = 'cm^-^3 h^-^1';
end

if scale==0
    unitS = 'norm';
elseif scale~=1
    unitS = [num2str(1./scale,'%1.2G') ' ' unitS];
end
scale = unitX*scale;

%%%%%GRAB AND SORT RATES%%%%%
[rSp,rSpnames] = ExtractRates(Spname,S,sumEq);

%%%% INTEGRATE/AVERAGE %%%%%
dT = unique(diff(S.Time));
if length(dT) == 1 || S.ModelOptions.LinkSteps == 0
    rSp = mean(rSp(pts2avg,:),1); %straight average
else
    % if steps linked but dT variable, need to integrate

    % divide into contiguous subsets
    i = find(pts2avg); %index
    j = find(diff(i)~=1);
    chunkstart = [i(1); i(j+1)];
    chunkstop = [i(j); i(end)];
    chunks = [chunkstart chunkstop];
    Nc = size(chunks,1);
    
    % loop over chunks
    rSp_chunk = nan(Nc,size(rSp,2));
    dT = nan(Nc,1);
    for i = 1:Nc
        c = chunks(i,1):chunks(i,2); % index for chunk
        dT(i) = S.Time(c(end)) - S.Time(c(1)); % time interval
        rSp_chunk(i,:) = trapz(S.Time(c),rSp(c,:)); %integrate rates over chunk
    end
    rSp = sum(rSp_chunk,1) ./ sum(dT); %sum up
end

%%%%%COMBINE LIKE REACTIONS%%%%%
[rct,prd] = Rparts(rSpnames);
rct_unique = unique(rct);
rSp_unique = nan(size(rSp,1),length(rct_unique));
for i=1:length(rct_unique)
    j = ismember(rct,rct_unique{i});
    rSp_unique(:,i) = sum(rSp(:,j),2);
end
rct = rct_unique;
rSp = rSp_unique;

%%%%%SORT%%%%%
rSpsum = sum(rSp,1);
[rSpsum,n] = sort(rSpsum);
rSp = rSp(:,n);
rSpnames = rSpnames(n);
rct = rct(n);

%%%%%SEPARATE LOSS AND PRODUCTION%%%%%
iL = rSpsum<0;
Lall = rSp(:,iL);
Lnames = rct(iL);
Lsum = sum(Lall);

if scale(1)==0,         Lall = Lall./-Lsum;
elseif length(scale)>1, Lall = Lall.*repmat(scale,1,sum(iL));
else                    Lall = Lall.*scale;
end

if sum(iL)<=n2plot
    L2plot = Lall;
else
    [MaxRate,iMax] = max(max(Lall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRatesAvg: ' Spname])
    disp(['  Number of Loss Reactions in "other" = ' num2str(sum(iL)-n2plot)])
    disp(['  Largest contribution in "other" is ' Lnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Lother = sum(Lall(:,n2plot+1:end),2);
    L2plot = [Lall(:,1:n2plot) Lother];
    Lnames = [rct(iL(1:n2plot));'Other'];
end

iP = rSpsum>0;
Pall = fliplr(rSp(:,iP));
Pnames = flipud(rct(iP));
Psum = sum(Pall);

if scale(1)==0,         Pall = Pall./Psum;
elseif length(scale)>1, Pall = Pall.*repmat(scale,1,sum(iP));
else                    Pall = Pall.*scale;
end

if sum(iP)<=n2plot
    P2plot = Pall;
else
    [MaxRate,iMax] = max(max(Pall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRatesAvg: ' Spname])
    disp(['  Number of Production Reactions in "other" = ' num2str(sum(iP)-n2plot)])
    disp(['  Largest contribution in "other" is ' Pnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Pother = sum(Pall(:,n2plot+1:end),2);
    P2plot = [Pall(:,1:n2plot) Pother];
    Pnames = [Pnames(1:n2plot);'Other'];
end

if isempty(P2plot),P2plot=nan; end
if isempty(L2plot),L2plot=nan; end

%%%%%DILUTION%%%%%
dil = S.Chem.DilRates.(Spname);
if scale(1)==0, dil = dil./-Lsum;
else            dil = dil.*scale;
end
dil = mean(dil(pts2avg));

%%%%%PLOTS%%%%%
defUnit = get(0,'DefaultTextUnits');
set(0,'DefaultTextUnits','normalized'); %have to do this for labels
defSize = get(0,'DefaultTextFontSize');
set(0,'DefaultTextFontSize',12);

if parent == 0 % no axis was passed, create a new figure. 
    figure
    ax=gca;% parent axis is just the one we made. 
else
    tf= isa(parent,'matlab.graphics.axis.Axes'); % make sure user passed axis handle.
    if tf== 0; error("PlotConcGroup: 'parent' must be an axis handle."); end  
    ax= parent; % assign axis to plot on as the handle passed. 
end 

switch ptype
    case 'hbar'
        hold on
        barh(P2plot','group','FaceColor',[0.9 0.9 0.9],'Parent', ax)
        barh(L2plot','group','FaceColor',[0.9 0.9 0.9], 'Parent', ax)
        
        %set axes limits
        xmin = min(min(L2plot));
        xmax = max(max(P2plot));
        xl = max(abs([xmin xmax]))*1.1; %make axes square
        xlim(ax,[-xl xl]);
        ylim(ax,[0.5 n2plot + 1.5]);
        
        %decorations
        set(ax,'YTick',[])
        xlabel(ax,[Spname ' Rates (' unitS ')'])
        yrange = n2plot+1;
        for i=1:length(Pnames)
              text(0.98,(i-0.5)/yrange,Pnames{i},...
                'FontSize',12,...
                'FontWeight','Bold',...
                'HorizontalAlignment','Right',...
                'VerticalAlignment','middle');
        end
        for i=1:length(Lnames)
              text(0.02,(i-0.5)/yrange,Lnames{i},...
                'FontSize',12,...
                'FontWeight','Bold',...
                'HorizontalAlignment','Left',...
                'VerticalAlignment','middle');
        end
        
        %Add dilution
        if any(dil)
            hold on
            d=plot([dil dil],[0.5 n2plot+1.5],'b--','LineWidth',2, 'Parent', ax);
            legend(d,'dilution')
        end
        
        purtyPlot
        
    case 'pie'
        load fillcolors.mat
        colormap(fillcolors);
        explodeP = ones(size(P2plot));
        explodeL = ones(size(L2plot));
        
        figure 
        ax1 = subplot(1,2,1);
        Ptotal = sum(P2plot);
        pie(P2plot./Ptotal,explodeP, 'Parent', ax1)
        title(ax1,['Production' 10 'Total = ' num2str(Ptotal,'%2.2G') ' ' unitS],'HorizontalAlignment','center')
        legend(ax1,Pnames,'Location','SouthOutside','fontsize',12)
        
        ax2 = subplot(1,2,2);
        Ltotal = sum(L2plot);
        pie(L2plot./Ltotal,explodeL, 'Parent', ax2)
        title(ax2,['Loss' 10 'Total = ' num2str(Ltotal,'%2.2G') ' ' unitS],'HorizontalAlignment','center')
        legend(ax2,Lnames,'Location','SouthOutside','fontsize',12)
end
set(0,'DefaultTextUnits',defUnit)
set(0,'DefaultTextFontSize',defSize)

%%%%%OUTPUT%%%%%
if nargout
    SpRates.Pnames = Pnames;
    SpRates.Prod = P2plot;
    SpRates.Lnames = Lnames;
    SpRates.Loss = L2plot;
end


