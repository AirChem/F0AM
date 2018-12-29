function X = ScaleData(x,Xmin,Xmax)
% function X = ScaleData(x,Xmin,Xmax)
% Linearly scales a vector to another set of values.
%
% INPUTS:
% x: Row or column vector of data to be scaled.
% Xmin: minimum value for scaled output.
% Xmax: maximum value for scaled output.
%
% OUTPUT X is the linearly-scaled x:
% If Xmin is empty, x is scaled by the ratio of Xmax/max(x).
% If Xmax is empty, x is scaled by the ratio of Xmin/min(x).
% If both values are specified, x is scaled to the range Xmin:Xmax.
%
% 20120803 GMW

if nargin<3
    error('Not enough input arguments.')
end

xmin = min(x);
xmax = max(x);

if isempty(Xmin)
    Scale = Xmax./xmax;
elseif isempty(Xmax)
    Scale = Xmin./xmin;
else
    Scale = (Xmax-Xmin)./(xmax-xmin);
end

X = x.*Scale;

