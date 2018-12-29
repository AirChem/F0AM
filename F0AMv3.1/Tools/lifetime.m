function tau = lifetime(Spname,S,sumEq)
% function tau = lifetime(Spname,S,sumEq)
% Calculates the lifetime of a chemicial species.
% NOTE: does not currently include/account for dilution losses.
%
% INPUTS:
% Spname: Species name, string.
% S:      Model structure
% sumEq:  optional flag for combining equilibria reactions. 0=no (default), 1=yes.
%
% OUTPUT:
% tau:  chemical lifetime, seconds.
%
% 20160324 GMW

if nargin<3
    sumEq = 0;
end

rSp = ExtractRates(Spname,S,sumEq);
rSpsum = sum(rSp,1);
iL = rSpsum<0;

tau = -S.Conc.(Spname)./sum(rSp(:,iL),2);


