function istring = LocateString(CellArray,S2find)
% function istring = LocateString(CellArray,S2find)
% Locates a string within a larger cell array.
% Basically uses the ismember function, but with some added code to:
%  - work with cell arrays that have empty cells
%  - return an error if the string isn't found.
% INPUTS:
% CellArray: cell array of strings.
% S2find: string to look for.
% OUTPUT:
% istring: index for where reaction was found
%
% 20120210 GMW
% 20151030 GMW  Modified to not give an error if string not found,
%               and to return an empty string instead.

igood = find(~cellfun('isempty',CellArray)); %index for non-empty cells
[tf,istring] = ismember(S2find,CellArray(igood)); %locate string
istring = igood(istring);
