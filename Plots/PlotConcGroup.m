function [X2plot,Xnames] = PlotConcGroup(Sp2plot,S,n2plot,varargin)
% function PlotConcGroup(Sp2plot,S,n2plot,varargin)
% Generates a time series of concentrations for multiple species.
% This is useful, for example, in plotting the speciation of RO2, MTs, etc.
% INPUTS:
% Sp2plot: species to plot. this should be a cell array of species names...
% S: structure of model outputs. Must contain the following fields:
%    Time, Cnames, Conc
% n2plot: number of individual species to plot.
%         The first n2plot species in the structure will be plotted.
%         The rest will be grouped into an "other" category.
%         If this is empty or not specified, all species will be plotted.
% varargin: One can  specify several options as name-value pairs:
% 
%           PlotConcGroup(...,'ptype',value)
%               Indicates type of plot.
%               Values can include 'fill', 'bar' or 'line'.
%               Default: 'fill'
%
%           PlotConcGroup(...,'unit',value)
%               Changes the concentration unit.
%               Value may be 'ppb', 'ppt', or 'percc' (the last is number density).
%               Default: 'ppb'
% 
%           PlotConcGroup(...,'scale',value)
%               Specifies a multiplier for concentrations.
%               Value is a scalar. For example, 1E-6 might be used when plotting OH number density.
%               SPECIAL CASE: setting this to 0 causes values to be normalized by sum.
%               Default: 1
%
%           PlotConcGroup(...,'name',value)
%               Specifies the name of your group.
%               Value is a string, used for the y axis label
%               Default: '[X]'
%
%           PlotConcGroup(...,'sortem',value)
%               Flag for whether or not to sort the group.
%               Value is a scalar, 0 (no) or 1 (yes).
%               Default: 1
%
% OUTPUTS are optional.
% X2plot: matrix of species plotted.
% Xnames: names of species plotted.
% if desired, you can use the "breakin" command to make variables from these.
%
% 20120724 GMW  Creation Date.
% 20151102 GMW  Modified for F0AMv3, including addition of name-value option inputs.
%               Also added outputs.
% 20160321 GMW  Removed option to input Sp2plot as an index, for consistency w/other function.
%               Added ability to input sub-groups a la PlotReactivity.
%               Added "sortem" option.

%%%%%INPUT CHECKING%%%%%
if ~iscell(Sp2plot)
    error('PlotConcGroup: input "Sp2plot" must be a cell array.')
end

if nargin<3 || isempty(n2plot)
    n2plot = length(Sp2plot);
end

%%%%%OPTIONS%%%%%
%options
varInfo = {...
    %name       %default    %valid
    'unit'      'ppb'       {'ppb','ppt','percc','ppbv','pptv'};...
    'scale'     1           [];...
    'ptype'     'fill'      {'fill','bar','line'};...
    'name'      '[X]'       [];...
    'sortem'    1           [0 1];...
    };
ParsePairs(varargin,varInfo);

%get unit multiplier and string
M = S.Met.M;
switch unit
    case {'ppb','ppbv'},  unitX = 1;        unitS = 'ppb';
    case {'ppt','pptv'},  unitX = 1e3;      unitS = 'ppt';
    case 'percc',         unitX = M./1e9;   unitS = 'cm^-^3';
end

if scale==0 %normalize option
    unitS = 'norm';
elseif scale~=1
    unitS = [num2str(1./scale,'%1.2G') ' ' unitS];
end
scale = unitX*scale;

%%%%SUM SUB-GROUPS%%%%%
for i=1:length(Sp2plot)
    Sp = Sp2plot{i};
    if iscell(Sp)
        group = ExtractSpecies(Sp(2:end),S);
        S.Conc.(Sp{1}) = sum(breakin(group),2); %temporary summed sub-group
        Sp2plot{i} = Sp{1};
    end
end
S.Cnames = fieldnames(S.Conc);

%%%%%GET CONCENTRATIONS%%%%%
Conc = ExtractSpecies(Sp2plot,S,sortem); % get concs
[Xmat,Xnames] = breakin(Conc);
Time = S.Time;

%scale it
L = size(Xmat,2);
if scale(1)==0,         Xmat = Xmat./repmat(sum(Xmat,2),1,L); %normalize
elseif length(scale)>1, Xmat = Xmat.*repmat(scale,1,L);
else                    Xmat = Xmat*scale;
end
Xmat(isnan(Xmat)) = 0; %potential for NaNs when normalizing

X2plot = Xmat(:,1:n2plot); %assumes already sorted

%group "other"
if n2plot<length(Xnames)
    Xother = Xmat(:,n2plot+1:end);
    Xothernames = Xnames(n2plot+1:end);
    
    X2plot(:,end+1) = sum(Xother,2);
    Xnames = [Xnames(1:n2plot); 'Other'];
    
    [XoMax,iMax] = max(max(Xother)); %identify largest contribution in "other"
    disp(['PlotConcGroup: ' name])
    disp(['  Number of species in "other" = ' num2str(length(Xothernames))])
    disp(['  Largest contribution in "other" is ' Xothernames{iMax} ' at ' num2str(XoMax) ' ' unitS])
end

% flip it
% X2plot = fliplr(X2plot);
% Xnames = flipud(Xnames);

%%%%%PLOT%%%%%
figure
switch ptype
    case 'fill'
        area(Time,X2plot);
    case 'line'
        plot(Time,X2plot,'LineWidth',2)
    case 'bar'
        bar(Time,X2plot,'stack');
end

%Plot decorations
load fillcolors.mat
colormap(fillcolors);

legend(Xnames,'Location','NorthEast')
ylabel([name ' (' unitS ')'])
xlabel('Model Time')
xlim([min(Time) max(Time)])
purtyPlot

%%%%%OUTPUT%%%%%
if nargout==0, clear X2plot Xnames; end
    

