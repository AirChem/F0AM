function [yield,yConc] = PlotYield(S,Rname,Pname,varargin)
% function [yield,yConc] = PlotYield(S,Rname,Pname,varargin)
% Calculates and plots a yield curve (stuff produced vs. other stuff lost), typically for a chamber
% experiment. The yield equation is
% yield = ([Reactant](t=0) - [Reactant]) / ([Product] - [Product](t=0))
%
% INPUTS:
%   S: model structure
%   Rname: name of reactant
%   Pname: name of product (string) or products (cell array of strings).

%   varargin: One can specify several options as name-value pairs:
%
%          PlotYield(...,'twindow',[S.Time(1), S.Time(10)])
%              Set the time window for calculation. P-L relationship 
%              should be linear here. Default is to use full window of 
%              input model stuff.
%
%          PlotYield(...,'plotme',1)
%               Specifies whether to generate plot or not.
%               1 = plot, 0 = don't.
%               Default: 1
%
%          PlotYield(...,'parent',axis)
%              Specifies the axis handle you want to plot on (useful for putting
%              this into subfigures... Default is to create a new figure. 
%
% OUTPUT:
%   yield: yield fraction
%   yConc: 2-column matrix of reactant and product concentrations used for yield calculation.
%
% 20160419 GMW
% 20210625 JDH added vargin option like other plotting functions and
%          "parent" option for using in a subplot. 

%options
varInfo = {...
    %name       %default     %valid
    'twindow'       []          [];...
    'plotme'        1           [0 1];...
    'parent'        0            [];...   
    };
ParsePairs(varargin,varInfo);

if isempty(twindow)
    i = 1:length(S.Time);
else
    if length(twindow)~=2
        error("PlotYield: 'twindow' must be a len 2 array.");
    end
    i = S.Time>=twindow(1) & S.Time<=twindow(2);
end

% get reactants and products
R = S.Conc.(Rname)(i);
if iscell(Pname)
    P = 0;
    for Pnow=Pname
        P = P + S.Conc.(char(Pnow))(i);
    end
    Pname = [Pname{1} '++']; %for plot label
else
    P = S.Conc.(Pname)(i);
end

%remove starting concentrations
R = R(1) - R;
P = P - P(1);

%simple least-squares fit
mb = polyfit(R,P,1);
yield = mb(1);

%plot
if plotme
    if parent == 0 % no axis was passed, create a new figure. 
        figure;
        ax=gca;% parent axis is just the one we made. 
    else
        tf= isa(parent,'matlab.graphics.axis.Axes'); % make sure user passed axis handle.
        if tf== 0; error("PlotReactivity: 'parent' must be an axis handle."); end  
        ax= parent; % assign axis to plot on as the handle passed. 
    end 
    
    plot(R,P,'o','Parent', ax)
    xlabel(ax,['\Delta ' Rname ' (ppbv)'])
    ylabel(ax,['\Delta ' Pname ' (ppbv)'])

    hold on
    Pfit = polyval(mb,R);
    plot(R,Pfit,'k--','Parent', ax)
    text(0.05,0.95,['yield = ' num2str(yield,'%0.3f')])
end

%outputs
if nargout==0
    clear yield
else
    yConc = [R P];
end


