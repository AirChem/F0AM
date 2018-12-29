function [yield,yConc] = PlotYield(S,Rname,Pname,twindow,plotme)
% function [yield,yConc] = PlotYield(S,Rname,Pname,twindow,plotme)
% Calculates and plots a yield curve (stuff produced vs. other stuff lost), typically for a chamber
% experiment. The yield equation is
% yield = ([Reactant](t=0) - [Reactant]) / ([Product] - [Product](t=0))
%
% INPUTS:
% S: model structure
% Rname: name of reactant
% Pname: name of product (string) or products (cell array of strings).
% twindow: OPTIONAL time window for calculation. P-L relationship should be linear here. Leave empty
%           to use full window of input model stuff.
% plotme: OPTIONAL flag for plotting. 1=yes (defualt), 0=no.
%
% OUTPUT:
% yield: yield fraction
% yConc: 2-column matrix of reactant and product concentrations used for yield calculation.
%
% 20160419 GMW

% input defaults
if nargin<5
    plotme = 1;
end

if nargin<4 || isempty(twindow)
    i = 1:length(S.Time);
else
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
    figure
    plot(R,P,'o')
    xlabel(['\Delta ' Rname ' (ppbv)'])
    ylabel(['\Delta ' Pname ' (ppbv)'])

    hold on
    Pfit = polyval(mb,R);
    plot(R,Pfit,'k--')
    text(0.05,0.95,['yield = ' num2str(yield,'%0.3f')])
end

%outputs
if nargout==0
    clear yield
else
    yConc = [R P];
end


