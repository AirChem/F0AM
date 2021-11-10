function [rct,prd] = Rparts(Rnames)
% function [rct,prd] = Rparts(Rnames)
% takes a cell array of reaction names and breaks them apart into cell
% arrays containing reactants and products.
%
% 20100317 GMW
% 20120311 GMW updated.
% 20210914 GMW Added removal of outer white space.

nRx = length(Rnames);
rct = cell(nRx,1);
prd = cell(nRx,1);

for i=1:nRx;
    name = Rnames{i};
    arrow = regexp(name,'=','start'); %reactant/product divider index
    rct{i} = name(1:arrow-1);
    prd{i} = name(arrow+1:end);
end

% remove outer white space
rct = strtrim(rct);
prd = strtrim(prd);