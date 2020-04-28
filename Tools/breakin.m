function [X,Xnames] = breakin(S)
% function [X,Xnames] = breakin(S)
% Essesntially does the opposite of breakout.
% INPUT, S, is a structure where all fields are numeric arrays. All fields must have the same
% dimensionality (column vectors).
% OUTPUT is the normal name-value pairs:
% X: a matrix of values, with one column for each variable.
% Xnames: cell array of variable names
%
% Note that this preserves the order of the matrix that was originally "broken out" so long as the
% structure has not been sorted (i.e. using orderfields).
% 20120724 GMW

Xnames = fieldnames(S);
Xcell = struct2cell(S);
X = cell2mat(Xcell');
