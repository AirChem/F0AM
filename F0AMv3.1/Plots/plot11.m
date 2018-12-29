function hline = plot11(h,lim)
% function hline = plot11(h,lim)
% Plots a 1:1 correlation line, typically on a scatter plot.
%
% INPUTS (all optional)
% h: handle for axes to plot on. Default is current axes.
% lim: two-element vector specifying lower and upper limits. default is current XLim.
%
% OUTPUT hline (optional) is the handle for the line.
%
% 20160321 GMW

if nargin==0
    h = gca;
end

if nargin<2
    lim = get(h,'xlim');
end

hold(h,'on')
h11 = plot(h,lim,lim,'k--');
text(0.9,0.9,'1:1')

if nargout
    hline = h11;
end