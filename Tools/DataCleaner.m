function [Dclean,timeclean] = DataCleaner(D,time,dataInfo,filterIn,var2plot)
% function [Dclean,timeclean] = DataCleaner(D,time,dataInfo,filterIn,var2plot)
% Perform various cleaning operations on a dataset to remove or replace NaNs and negatives.
% The output dataset should be appropriate for input into a box model.
%
% THIS FUNCTION IS STILL A WORK IN PROGRESS!!! But, it should work. Comments welcome.
%
% INPUTS
% time: time vector for data in D.
% D: structure containing all data to be cleaned. Can contain fields not specified in dataInfo, but
%       these will not be passed through to the output strucutre.
% dataInfo: a four-column cell array containing information on how to clean each variable.
%           Column 1: name of variable
%           Column 2: flag for whether or not variable is required (0 or 1).
%                     If set to 1, all bad rows in the variable (nans and/or negatives) will be
%                     removed from the entire dataset.
%           Column 3: nanFill - specifies how to treat NaNs. Options include
%                       - a scalar
%                       - 'mean' to fill with mean value
%                       - 'median' to fill with median value
%                       - 'interp' to fill with linearly-interpolated points
%                       - [] (empty) to do nothing (only valid for "required" variables)
%           Column 4: negFill - specifies how to treat negative values. Options include
%                       - a scalar
%                       - NaN. In this case, negatives will be treated the same as NaNs as specified
%                         in the nanFill column.
%                       - [] (empty) to do nothing.
% filterIn: OPTIONAL logical index specifying additional points to discard. 1=keep, 0=discard.
%           Must be same length as time input.
% var2plot: OPTIONAL cell array defining which variables to plot. Both the original and cleaned
%           variable will be plotted. Can be set to 'all' to plot all variables in dataInfo.
%
% OUTPUTS
% Dclean:       structure contained cleaned variables. 
%               Only those variables defined in dataInfo will be passed through to this output.
% timeclean:    time vector shortened to the same length as variables in Dclean.
%
% 20160401 GMW


%% CHECK AND PARSE INPUTS  
vars    = dataInfo(:,1);
req     = dataInfo(:,2);
nanFill = dataInfo(:,3); %options include scalar, mean, median, interp, or []
negFill = dataInfo(:,4); %options include scalar, nan, or [] (do nothing)

% check for vars not in D (e.g. typos)
Dnames = fieldnames(D);
tf = ismember(vars,Dnames);
if any(~tf)
    error(['DataCleaner: variables ' char(vars(~tf))  ' not found in input structure D.'])
end
    
% initialize output structure, check lengths
N = length(vars);
L = nan(N,1);
for i = 1:N
    Dclean = D.(vars{i});
    L(i) = length(D.(vars{i}));
end

if length(unique(L))>1
    error('DataCleaner: all variables specified in dataInfo must be same length.')
end
L = L(1);

% define starting filter flag
if nargin<4 || isempty(filterIn)
    filt = true(L,1);
else
    filt = filterIn;         
end

% check var2plot input
if nargin<5
    var2plot=[];
elseif strcmp('all',var2plot)
    var2plot = vars;
else
    tf = ismember(var2plot,vars);
    if any(~tf)
        error(['DataCleaner: var2plot vars ' char(var2plot(~tf))  ' not found in dataInfo.'])
    end
end

%% FILL NANS/NEGS
for i=1:N
    Dnow = Dclean.(vars{i});
    
    % deal with negatives
    j = Dnow<0;
    if isscalar(negFill{i}) || isnan(negFill{i})
        Dnow(j) = negFill{i};
    end
    
    % deal with nans
    j = isnan(Dnow);
    if isscalar(nanFill{i})
        Dnow(j) = nanFill{i};
    elseif strcmp(nanFill{i},'mean')
        Dnow(j) = nanmean(Dnow);
    elseif strcmp(nanFill{i},'median')
        Dnow(j) = nanmedian(Dnow);
    elseif strcmp(nanFill{i},'interp')
        Dnow = ReplaceNaN(Dnow,time);
    end
    
    % add required variables to filter
    if req{i}
        filt = filt & ~isnan(Dnow);
    end
    
    Dclean.(vars{i}) = Dnow;
end

%% APPLY FILTER
for i=1:N
     Dclean.(vars{i}) =  Dclean.(vars{i})(i);
end
timeclean = time(i);

%% PLOTTING
if ~isempty(var2plot)
    for i = 1:length(var2plot)
        figure
        plot(time,D.(var2plot{i}),'b*-')
        hold on
        plot(timeclean,Dclean.(var2plot{i}),'ro--')
        xlabel('Time')
        ylabel(var2plot{i})
        legend('Original','Cleaned')
    end
end


