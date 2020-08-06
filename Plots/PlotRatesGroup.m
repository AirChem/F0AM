function SpRates = PlotRatesGroup(Spname,S,n2plot,varargin)
% PENG
% Generates a plot of production and loss rates vs time for a chemical family.
% Input Spnmae should be a  cell array (the species cannot 
% react with each other, otherwise it might be inaccurate)
% If only 1 species is specified in Spname, this function works the same as
% PlotRates.
% The largest rates will be plotted individually (determined by n2plot), 
% while the rest are grouped into an "other" category.
% 
% INPUTS:
% S: structure of model outputs. Must contain the following fields:
%    Time, Cnames, Chem.Rnames, Chem.Rates, Chem.f, Dil
% Spname: name of chemical family as a cell array. First cell should be descriptive name of the
%         group and CANNOT be a species in mechanism. eg: {'HOx','OH','HO2'}
% n2plot: number of individual rates to plot. 
% varargin: One can specify several options as name-value pairs:
%
%           PlotRatesGroup(...,'sumEq',value)
%               Specifies a 0-1 flag for combining equilibrium reactions
%               (e.g. HO2 + NO2 = HO2NO2 and its reverse reaaction).
%               Default: 0
% 
%           PlotRatesGroup(...,'ptype',value)
%               Indicates type of plot.
%               Values can include 'fill', 'bar' or 'line'.
%               Default: 'fill'
%
%           PlotRatesGroup(...,'unit',value)
%               Changes the rate unit.
%               Valid values include any combination of cocentration (ppb, ppt, percc) and
%               time (s, m, h), separated by _.
%               Default: 'ppb_s'
% 
%           PlotRatesGroup(...,'scale',value)
%               Specifies an additonal scalar multiplier.
%               SPECIAL CASE: setting this to 0 causes P/L to be normalized by total P/L.
%               In this case, the "dilution" term is normalized to total loss.
%               Default: 1
%
% OUTPUT (optional) is a structure containing names and rates of plotted reactions.
%
% 20200427  Peng  Born from a marriage of PlotRates.m and PlotConcGroup.m

%%%%%DEAL WITH INPUTS%%%%%
%options
if ~iscell(Spname)
    error('PlotRatesGroup: input "Spname" must be a cell array.')
end

name = Spname{1}; %name of family
Spname = Spname(2:end); %name of species

if ismember(name,S.Cnames)
    error(['PlotRatesGroup: first cell of input "Spname" is the family name and ' ...
        'cannot match a species in S.Cnames.'])
end

varInfo = {...
    %name       %default    %valid
    'unit'      'ppb_s'     {'ppb_s','ppb_m','ppb_h',...
                             'ppt_s','ppt_m','ppt_h',...
                             'percc_s','percc_m','percc_h'};...
    'scale'     1           [];...
    'ptype'     'fill'      {'fill','bar','line'};...
    'sumEq'     0           [0 1];...
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
Time = S.Time;

for j = 1:length(Spname)
[rSp{j},rSpnames{j}] = ExtractRates(Spname{j},S,sumEq); % get reactions that the species takes part in
[rct{j},prd{j}] = Rparts(rSpnames{j}); % reactants and products
end

%%%%%Exclude interconversion%%%%%
% find where interal reactions are
% i.e. rct{1} = prd{2} or rct{2} = prd{1}  --set these reactions index to 0
ix = cell(length(Spname),length(Spname));
for j = 1:length(Spname)
    for ii = 1:length(Spname)
         if j ~= ii % not the same species in the chemical family
             for jj = 1:length(prd{j}) % number of reactions
                  products = strsplit(char(prd{j}(jj)),' '); % in case there are multiple products
                  reactants = strsplit(char(rct{j}(jj)),' ');
                  % if there is interconversion, set ix => 0
%                 ix{j}(jj) = ~isempty(strfind(products,Spname{ii}));
                   ix{j,ii}(jj) = ~(sum(strcmp(products,Spname{ii})) + sum(strcmp(reactants,Spname{ii}))); % remove reactions 
                   
             end
         else
             ix{j,ii} = true(1,length(prd{j}));
         end
       
    end
    
   x = reshape([ix{j,:}],length(prd{j}),length(Spname));
  rSpnames_new{j} = rSpnames{j}(sum(x,2)>=length(Spname));
  rSp_new{j} = rSp{j}(:,sum(x,2)>=length(Spname));
end

clear rSpnames rSp

% convert cell array to matrix
 rSpnames = [rSpnames_new{1}];
 rSp = [rSp_new{1}];
  
% new variables after excluding interconversions 
for j = 2:length(Spname)
    rSpnames = [rSpnames; rSpnames_new{j}]; 
    rSp = [rSp, rSp_new{j}];
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


%%%%%SEPARATE LOSS AND PRODUCTION, SCALE%%%%%
iL = rSpsum<0;
% iL = iL(iL ~= icycle'); % exclude internal chemistry
Lall = rSp(:,iL);
Lnames = rct(iL);
Lsum = sum(Lall,2);

if scale(1)==0,         Lall = Lall./repmat(-Lsum,1,sum(iL));
elseif length(scale)>1, Lall = Lall.*repmat(scale,1,sum(iL));
else                    Lall = Lall.*scale;
end
Lall(isnan(Lall)) = 0; %potential for NaN if normalizing

if sum(iL)<=n2plot
    L2plot = Lall;
else
    [MaxRate,iMax] = max(max(Lall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRatesGroup: ' Spname{1}])
    disp(['  Number of Loss Reactions in "other" = ' num2str(sum(iL)-n2plot)])
    disp(['  Largest contribution in "other" is ' Lnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Lother = sum(Lall(:,n2plot+1:end),2);
    L2plot = [Lall(:,1:n2plot) Lother];
    Lnames = [rct(iL(1:n2plot));'Other'];
end

iP = rSpsum>0;
Pall = fliplr(rSp(:,iP));
Pnames = flipud(rct(iP));
Psum = sum(Pall,2);

if scale(1)==0,         Pall = Pall./repmat(Psum,1,sum(iP));
elseif length(scale)>1, Pall = Pall.*repmat(scale,1,sum(iP));
else                    Pall = Pall.*scale;
end
Pall(isnan(Pall)) = 0; %potential for NaN if normalizing

if sum(iP)<=n2plot
    P2plot = Pall;
else
    [MaxRate,iMax] = max(max(Pall(:,n2plot+1:end))); %identify largest contribution in "other"
    disp(['PlotRates: ' Spname])
    disp(['  Number of Production Reactions in "other" = ' num2str(sum(iP)-n2plot)])
    disp(['  Largest contribution in "other" is ' Pnames{iMax} ' at ' num2str(MaxRate) ' ' unitS])
    
    Pother = sum(Pall(:,n2plot+1:end),2);
    P2plot = [Pall(:,1:n2plot) Pother];
    Pnames = [Pnames(1:n2plot);'Other'];
end

if isempty(P2plot),P2plot=nan; end
if isempty(L2plot),L2plot=nan; end

%%%%%DILUTION%%%%%
dil = S.Chem.DilRates.(Spname{1});
if scale(1)==0, dil = dil./-Lsum;
else            dil = dil.*scale;
end
dil(isnan(dil)) = 0;

%%%%%PLOTS%%%%%
figure;

load fillcolors.mat
colormap(fillcolors);

ax1 = axes;
ax2 = axes('Position',get(ax1,'Position'),'Color','none','Visible','off');
linkaxes([ax1,ax2])
hold on

switch ptype
    case 'fill'
        area(ax1,Time,P2plot)
        area(ax2,Time,L2plot)
        ylimit = max([max(abs(sum(L2plot,2))) max(sum(P2plot,2)) max(abs(dil))]);
    case 'line'
        plot(ax1,Time,P2plot,'LineWidth',2)
        plot(ax2,Time,L2plot,'LineWidth',2)
        plot([min(Time) max(Time)],[0 0],'k','LineWidth',2)
        ylimit = max([max(max(abs(L2plot))) max(max(P2plot)) max(abs(dil))]);
    case 'bar'
        bar(ax1,Time,P2plot,'stack');
        bar(ax2,Time,L2plot,'stack');
        ylimit = max([max(abs(sum(L2plot,2))) max(sum(P2plot,2)) max(abs(dil))]);
end

%Add dilution
if any(dil)
    hold on
    plot(Time,dil,'k--','LineWidth',2);
    Lnames = [Lnames; 'Dilution'];
end

%Plot decorations
if ~isempty(Pnames)
    legend(ax1,Pnames,'Location','NorthEast')
end

if ~isempty(Lnames)
    legend(ax2,Lnames,'Color','w','Location','SouthEast')
end

ylabel(ax1,[name ' Rates (' unitS ')'])
xlabel(ax1,'Model Time')

tspacing = nanmean(diff(Time));
% xlim([min(Time)-tspacing max(Time)+tspacing]) % PENG
ylim(1.1*[-ylimit ylimit]);


set(ax2,'Position',get(ax1,'Position')) %need this to line up P and L plots
set(ax1,'Position',get(ax2,'Position'))

purtyPlot

%%%%%OUTPUT%%%%%
if nargout
    SpRates.Pnames = Pnames;
    SpRates.Prod = P2plot;
    SpRates.Lnames = Lnames;
    SpRates.Loss = L2plot;
end
