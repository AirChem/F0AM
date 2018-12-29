function PlotConc(Spname,Splot,varargin)
% function PlotConc(Spname,Splot,varargin)
% Script for generating time-series plots to compare the same species from multiple model runs.
% 
% INPUTS:
% Spname: names of species to plot. This can also be a string containing an arithmetic combination of
%     species, e.g. 'HO2+RO2', 'NO./NO2', etc..
% Splot: cell array containing all model output structures to plot.
%        The plot legend follows the order of these inputs.
% varargin: One can also specify several options as name-value pairs:
% 
%           PlotConc(...,'unit',value)
%               Changes the concentration unit.
%               Value may be 'ppb', 'ppt', or 'percc' (the last is number density).
%               Default: 'ppb'
% 
%           PlotConc(...,'scale',value)
%               Specifies a multiplier for concentrations.
%               Value is a scalar. For example, 1E-6 might be used when plotting OH number density.
%               Default: 1
%
%           PlotConc(...,'lnames',value)
%               Legend names.
%               Value is a cell array of strings. Length should match # of model structures in Splot.
%               Default: 1:length(Splot)
% 
% 20120320 GMW  Creation Date.
% 20120725 GMW  Updated for UWCMv2.1.
% 20131101 GMW  Updated for F0AMv3, changed S inputs and added scaling option.

%%%%%DEAL WITH INPUTS%%%%%
if isstruct(Splot), Splot = {Splot}; end
L = length(Splot);

%options
varInfo = {...
    %name       %default        %valid
    'unit'      'ppb'           {'ppb','ppt','percc','ppbv','pptv'};...
    'scale'     1               [];...
    'lnames'    num2str((1:L)') [];...
    };
ParsePairs(varargin,varInfo);

%%%%%PLOTTING%%%%%
figure
hold all
symbols = 'o*^+sxp.v';
t_all=[];
for j=1:L
    S = Splot{j};
    t = S.Time;
    t_all = [t_all;t];
    struct2var(S.Conc);
    c = eval(Spname).*scale; %use of eval allows Spname to be an arithmetic function too
    
    switch unit
        case {'ppbv','ppb'}
        case {'pptv','ppt'}
            c = c.*1000;
        case {'percc'}
            M = S.Met.M;
            if length(S.Met.M)>1
                M = S.Met.M(S.StepIndex);
            end
            c = c./1e9.*M;
    end
    
    plot(t,c,'Marker',symbols(j))
end

%%%%%PLOT DECORATIONS%%%%%
switch unit
    case {'percc'}
        unit = 'cm^-^3';
end

if scale~=1
    unit = [num2str(1./scale,'%1.2G') ' ' unit];
end

xlabel('Model Time')
ylabel([Spname ' (' unit ')'])
legend(lnames)
xlim([min(t_all) max(t_all)])
purtyPlot


