function y_noNaN = ReplaceNaN(y,x,method)
% function y_noNaN = ReplaceNaN(y,x,'method');
% Replaces NaNs in a vector y with a linear interpolation of non-NaN values.
% If no x vector is provided, the y vector is assumed to be evenly spaced.
% Also, if NaNs appear at the beginning or end of y, these will be replaced with
% the first and last non-NaN values of y, respectively.
% optional 'method' input can be "nearest" or "linear".
% 120220 GMW
%
% 20120717 GMW  Modified to also accept a 1-D column cell array as input.
%               If x is also specified, all cells must contain 1-D arrays with the same dimensionality as x.
% 20181101 GMW  Added "method" option.

if nargin<3, method = 'linear'; end
    
[nrow,ncol] = size(y);
y_noNaN = y;

if iscell(y)
    ny = nrow;
else
    ny = ncol;
end

for i=1:ny
    %grab data and check lengths
    if iscell(y)
        ynow = y{i};
    else
        ynow = y(:,i);
    end
    
    if all(~isnan(ynow)) || ~isnumeric(ynow)
        continue
    end
    
    if nargin<2
        x = 1:length(ynow);
    elseif length(x)~=length(ynow)
        error(['ReplaceNaN: lengths of x and y do not match for column ' num2str(i)]);
    end
    
    %Interpolate good points
    good = find(~isnan(ynow));
    y_good = ynow(good);
    x_good = x(good);
    y2rep = interp1(x_good,y_good,x,method);

    %deal with edges by doing a flat extrapolation
    first = find(~isnan(y2rep),1,'first'); %first good row
    if first>1
        y2rep(1:first) = y2rep(first);
    end

    last =  find(~isnan(y2rep),1,'last');  %last good row
    if last<length(y2rep)
        y2rep(last:end) = y2rep(last);
    end

    %build new array
    if iscell(y)
        y_noNaN{i} = y2rep;
    else
        y_noNaN(:,i) = y2rep;
    end
end


