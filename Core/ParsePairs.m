function ParsePairs(pairs,varInfo)
% function ParsePairs(pairs,varInfo)
% Does error checking and assigns values for optional inputs of a calling function.
% Said inputs are entered as name-value paired arguments and captured in varargin of said calling function.
% Variables are written directly to the caller workspace.
%
% INPUTS
% pairs: a cell array of length 2*n, where n is the number of name-value pairs.
%           This is typically the "varargin" argument of a function.
% varInfo: a 3-column cell array containing information for all possible name-value pairs.
%           1st column: character string specifying name of parameter
%           2nd column: default value for this parameter
%           3rd column: cell or vector array containing all valid values of the parameter. Make this
%           empty ([]) to skip this check.
%
% 20151114 GMW
% 20220810 GMW  Added some error checking to mitigate possible issues with incorrect input of "pairs."
%               Not totally bullet proof, but it should help.

ST = dbstack; %In case of errors
caller = ST(end).name;

%deal with special case of empty pairs input
if isempty(pairs)
    inputNames = varInfo(:,1);
    inputVal = varInfo(:,2);
else
    inputNames = pairs(1:2:end-1);
    inputVal = pairs(2:2:end);
    
    % error checks
    assert(rem(length(pairs),2) == 0,'%s: optional function arguments not consistent. Are you missing a name or a value?',caller)
    assert(iscellstr(inputNames),'%s: optional function arguments not consistent. Are you missing a name or a value?',caller)
end

% loop through each row of varInfo
for i = 1:size(varInfo,1)    
    nameNow = varInfo{i,1};
    check = strcmp(nameNow,inputNames);
    if any(check)
        valNow = inputVal{check};
        if ~isempty(varInfo{i,3}) && ~ismember(valNow,varInfo{i,3})
            error('%s: Invalid input value "%s" for parameter "%s".',caller,valNow,nameNow)
        end
    else
        valNow = varInfo{i,2};
    end
    assignin('caller',nameNow,valNow)
end

%check for junk inputNames too
ok = ismember(inputNames,varInfo(:,1));
if any(~ok)
    error('%s: Invalid parameter "%s".',caller,inputNames{find(~ok,1,'first')})
end


