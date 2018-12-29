% ReplaceRxn.m
% Script to replace a reaction rate constant.
% Required variables for this script to work:
% Rnames: cell array of reaction names
% RxnToReplace: name of reaction to modify
% kToReplace: new value for rate constant
% 
% 20120713 GMW
% 20151030 GMW  Added warning message if reaction not found

iRxn = LocateString(Rnames,RxnToReplace);
if isempty(iRxn)
    fprintf('CAUTION: ReplaceRxn: reaction "%d" not found.',RxnToReplace)
else
    k(:,iRxn) = kToReplace;
end
clear iRxn RxnToReplace kToReplace

