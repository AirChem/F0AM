function [ax]=PlotConc(Spname,Splot,varargin)
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
%           PlotConc(...,'parent',axis)
%               Specifies the axis handle you want to plot on (useful for putting
%               this into subfigures... Default is to create a new figure. 
% 
% OUTPUTS are optional.  
%  ax: axis handle to figure that was created. 
%
% 20120320 GMW  Creation Date.
% 20120725 GMW  Updated for UWCMv2.1.
% 20131101 GMW  Updated for F0AMv3, changed S inputs and added scaling option.
% 20210623 JDH Added 'parent' option to plot to a specific subplot/ axis.

%%%%%DEAL WITH INPUTS%%%%%
if isstruct(Splot), Splot = {Splot}; end
L = length(Splot);

%options
varInfo = {...
    %name       %default        %valid
    'unit'      'ppb'           {'ppb','ppt','percc','ppbv','pptv'};...
    'scale'     1               [];...
    'lnames'    num2str((1:L)') [];...
    'parent'    0               [];...     
    };
ParsePairs(varargin,varInfo);

%%%%%PLOTTING%%%%%
if parent == 0 % no axis was passed, create a new figure. 
    figure
    ax=gca;% parent axis is just the one we made. 
else
    tf= isa(parent,'matlab.graphics.axis.Axes'); % make sure user passed axis handle.
    if tf== 0; error("PlotConcGroup: 'parent' must be an axis handle."); end  
    ax= parent; % assign axis to plot on as the handle passed. 
end 

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
    
    plot(t,c,'Marker',symbols(j), 'Parent', ax)
end

%%%%%PLOT DECORATIONS%%%%%
switch unit
    case {'percc'}
        unit = 'cm^-^3';
end

if scale~=1
    unit = [num2str(1./scale,'%1.2G') ' ' unit];
end

xlabel(ax,['Model Time']);
ylabel(ax,[string(Spname)+" ("+ string(unit)+")"]);
legend(ax,lnames);
xlim(ax,[min(t_all) max(t_all)]);

purtyPlot


