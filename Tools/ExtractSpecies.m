function [Xconc,iX] = ExtractSpecies(Sp2Extract,S,sorted)
% function [Xconc,iX] = ExtractSpecies(Sp2Extract,S,sorted)
% Grab and sort a subset of chemical species.
% INPUTS:
% Sp2Extract: this can be either:
%              1) an index for species to grab within Cnames
%              2) a cell array of species names
% S:  UWCM output structure containing the following fields:
%     Conc:     structure of species concentrations
%     Cnames:   cell array of species names
% sorted: option flag specifying whether or not to sort outputs. 0=no, 1=yes. Default: 1.
%
% OUTPUTS:
% Xconc:  structure containing extracted species.
%         This will be sorted by integrated concentrations in descending order.
% iX: index identifying location of species in input arrays.
%
% EXAMPLE USES (for UWCMv2.1):
%       RO2spec = ExtractSpecies(S.iRO2,S)
%       [NOx,iNOx] = ExtractSpecies({'NO';'NO2'},S)
%
% 20120311 GMW
% 20120724 GMW Modified to work with UWCMv2.1 output.
% 20160321 GMW  Add sorted option.

%%%%%CHECK INPUTS%%%%%
if iscell(Sp2Extract)
    [tf,iX] = ismember(Sp2Extract,S.Cnames);
    if any(~tf)
        error(['Species ' Sp2Extract{~tf} ' not found in Cnames']);
    end
else
    iX = Sp2Extract;
end

if nargin<3
    sorted = 1;
end

%%%%%GRAB SPECIES%%%%%
[conc,Cnames] = breakin(S.Conc);
Xnames = Cnames(iX);
Xconc = conc(:,iX);

%%%%%SUM AND SORT%%%%%%
if sorted
    Xsum = sum(Xconc,1); %pseudo-integrate each species
    [~,j] = sort(Xsum,'descend');
    Xconc = Xconc(:,j);
    Xnames = Xnames(j);
    iX = iX(j);
end

%%%%%CONVERT BACK TO STRUCTURE%%%%%
Xconc = breakout(Xconc,Xnames);

