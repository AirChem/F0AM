function [Met_ext,InitConc_ext,BkgdConc_ext,repIndex, ModelOptions] = ...
    InputReplicate(Met,InitConc,BkgdConc,nRep, ModelOptions)
% Replicates inputs for F0AM. Useful if, for example, you want to model the same day multiple times
% (e.g. with the first several days as a "spin-up").
% Currently, replication operates only on non-scalar numeric values.
%
% INPUTS:
% Met, InitConc, BkgdConc: F0AM inputs. See any F0AM example for format.
% nRep: scalar specifying number of times to replicate.
% ModelOptions: F0AM input- If passed the ModelOptions.TimeStamp is 
%               adjusted for the # of days replicated so that the time 
%               monotonically increases throughout run even on repeat days
%               (useful if you want to plot timeseries of whole run to
%               ensure that your "spin up" time is appropriate and that your 
%               variables that are building up have reached steady state. 
%               In this case, ModelOptions.TimeStamp must be a matlab datetime array, and the assumption is that the total time for 1 repetition is 1 day.
%
% OUTPUTS:
% Met_ext, InitConc_ext, BkgdConc_ext: just like inputs, except with all cell array values
%   replicated.
% repIndex: index specifying repetition #. Useful for splitting up ran afterward (e.g. with
%   SplitRun.m).
% ModelOptions: same as input except ModelOptions.Timestamp is adjusted nRep days
%               if this arg was passed 
%
% 20200414 GMW  Created
% 20210623 JDH  Added adjust timestamp option. 


% Count input vars to decide if ModelOptions.Timestamp was passed. 
if nargin==5 
    adjust_time=1;
    if isdatetime(ModelOptions.TimeStamp)==0 % Error check. 
        error('InputReplicate: To adjust the ModelOptions.Timestamp,'+ ...
        'the var passed as "ModelOptions.Timestamp" must be a datetime array.');
    end
else
    adjust_time=0;
end
    
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

% Adjust timetamp if asked. 
if adjust_time==1
    ModelOptions.TimeStamp=repmat(ModelOptions.TimeStamp,nRep,1);  % replicate the timestamp. 
    for d=1:(L):(nRep-1)*L %(don't adjust the last day's date.)
        
        % Each time you reach a multiple of the input length, 
        % then subtract the appropriate # of days from the dateime array.  
        ModelOptions.TimeStamp(d:d+L-1)= ModelOptions.TimeStamp(d:d+L-1)- days(nRep-(d+L-1)/L);
    end
end


end


