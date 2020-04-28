function [Met_ext,InitConc_ext,BkgdConc_ext,repIndex] = ...
    InputReplicate(Met,InitConc,BkgdConc,nRep)
% function [Met_ext,InitConc_ext,BkgdConc_ext] = ...
%    InputReplicate(Met,InitConc,BkgdConc,nRep)
% Replicates inputs for F0AM. Useful if, for example, you want to model the same day multiple times
% (e.g. with the first several days as a "spin-up").
% Currently, replication operates only on non-scalar numeric values.
% INPUTS
% Met, InitConc, BkgdConc: F0AM inputs. See any F0AM example for format.
% nRep: scalar specifying number of times to replicate.
%
% OUTPUTS
% Met_ext, InitConc_ext, BkgdConc_ext: just like inputs, except with all cell array values
%   replicated.
% repIndex: index specifying repetition #. Useful for splitting up ran afterward (e.g. with
%   SplitRun.m).
%
% 20200414 GMW

L = nan; %length of inputs (determined below)

Met_ext = repCells(Met);
InitConc_ext = repCells(InitConc);
BkgdConc_ext = repCells(BkgdConc);

% create repIndex
repIndex = sort(repmat((1:nRep)',L,1));

% helper function doing the actual work
    function X_ext = repCells(X)
        N = size(X,1);
        X_ext = X;
        for i = 1:N
            x = X{i,2};
            if isnumeric(x) && ~isscalar(x)
                L = length(x);
                X_ext{i,2} = repmat(x(:),nRep,1);
            end
        end
    end

end

