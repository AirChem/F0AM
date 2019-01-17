function [Xbroad,Xslice] = struct2parvar(X)
% function [Xbroad,Xslice] = struct2parvar(X)
% Takes a structure of variables and converts it into a format appropriate for input into a parallel loop (parfor).
% This is done to reduce overhead associated with passing lots of data to individual workers.
% Use parvar2struct to reconstruct the input structure X inside of the parfor loop.
% 
% INPUT X is a structure containing variables of various types.
%   This function inherently assumes certain things about the fields of X:
%   1) They are only numeric scalars, arrays, structures, or strings. Cell arrays and sub-structures
%       are not supported right now.
%   2) All arrays and matrices have the same number of rows.
%
% OUTPUTS:
% Xbroad: a structure containing variables that will be broadcast to all workers (scalars and strings).
%   Also contains two fields that allow reconstruction of the variables in Xslice:
%       names: cell array of names of variables used to make Xslice.
%       ncol:  number of columns for each variable in names.
% Xslice: a 2-D matrix containing all slicable arrays and matrices.
%   Meant to be sliced along rows.
%
% 20180226 GMW

% check for non-supported variable classes
bad = structfun(@iscell,X) | structfun(@isstruct,X);
if any(bad)
    Xnames = fieldnames(X);
    Xbad = Xnames(bad); Xbad = Xbad{1};
    error('struct2parvar:InvalidFieldType',...
        'Input field %s not a valid class (numerical or string).',Xbad)
end

% broadcast vars
Xnames = fieldnames(X);
ibd = structfun(@isscalar,X) | structfun(@ischar,X); %flag broadcast vars
Xbroad = rmfield(X,Xnames(~ibd)); % broadcast variable structure

% sliced vars
Xslice = rmfield(X,Xnames(ibd));
[nrows,Xbroad.ncol] = structfun(@size,Xslice); %size for each sliced variable

if length(unique(nrows))>1
    error('struct2parvar:InconsistentFieldLengths',...
        'All non-scalar numerical array/matrix input fields must have the same number of rows.')
end

Xbroad.names = fieldnames(Xslice);
Xslice = cell2mat(struct2cell(Xslice)'); %convert to matrix


