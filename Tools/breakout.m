function S = breakout(X,Xnames,prefix)
% function S = breakout(X,Xnames,prefix)
% Breaks out variables from name/value array pairs.
%
% INPUTS:
% X: matrix of values, where each column corresponds to a variable.
%    This can also be a cell array, where each cell is a variable.
% Xnames: cell array of variable names
% prefix: string prefix for output variable names (optional)
%
% If no output is requested, variables are written to the workspace of the caller.
% If an output is requested, variables are written to the structure S with a field for each Xname.
% 
% 20081115 GMW
% 20120221 GMW  Modified to optionally return structure output.
% 20120712 GMW  Modified to also accept a cell array as X.

if nargin<3, prefix = ''; end

if nargout==0
    for i=1:length(Xnames)
        if isnumeric(X)
            assignin('caller', [prefix Xnames{i}], X(:,i));
        elseif iscell(X)
            assignin('caller',[prefix Xnames{i}], X{i});
        else
            error('breakout: datatype of X not recognized.')
        end
    end

else
    
    for i=1:length(Xnames)
        if isnumeric(X)
            S.(Xnames{i}) =  X(:,i);
        elseif iscell(X)
            S.(Xnames{i}) =  X{i};
        else
            error('breakout: datatype of X not recognized.')
        end
    end
end


