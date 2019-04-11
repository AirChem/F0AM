function S = Check4NanNeg(S,pickOne)
% function S = Check4NanNeg(S,pickOne)
% Checks variables in a structure S for NaNs and negative values.
% If any are found, it returns an error.
% optional input "pickOne" can be set to 'nan' or 'neg' to only check for one of these.
%
% 20131022 GMW
% 20150602 GMW  added optional input "pickOne".
% 20151015 GMW  Modified to skip cell array inputs
% 20160623 GMW  Modified "any" checks near bottom to work on multi-D matrices.
% 20190411 GMW  Commented out column vectorization bit at the bottom. It breaks SolarParam.startTime
%               when only one time is input.

Iname = inputname(1);
Snames = fieldnames(S);

%decide screening type
if nargin==2
    switch lower(pickOne)
        case 'nan'
            NAN = 1; NEG = 0;
        case 'neg'
            NAN = 0; NEG = 1;
        otherwise
            warning('Check4NanNeg:invalidOption',...
                'pickOne input not recognized. Will screen for both nans and negs.')
            NAN = 1; NEG = 1;
    end
else
    NAN = 1; NEG = 1;
end

% screen
for i=1:length(Snames)
    if iscell(S.(Snames{i}))
        continue
    elseif NAN && any(isnan(S.(Snames{i})(:)))
        error(['NaNs in variable ' Iname '.' Snames{i}])
    elseif NEG && any(S.(Snames{i})(:)<0)
        error(['Negative values in variable ' Iname '.' Snames{i}])
    else
%         if ~ischar(S.(Snames{i})) && isvector(S.(Snames{i}))
%             S.(Snames{i}) = S.(Snames{i})(:); %ensure column vector
%         end
    end
end


