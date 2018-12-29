function [rSp,rSpnames,iRx] = ExtractRates(Spname,S,sumEq)
% function [rSp,rSpnames,iRx] = ExtractRates(Spname,S);
% extracts individual rates for a species.
% INPUTS:
% Spname: name of species (string)
% S: Model output structure containing the following fields:
%       Cnames: cell array of all species names
%       Chem.Rnames: cell array of reaction names
%       Chem.Rates: matrix of reactions rates (dim. = #Z x #rxns)
%       Chem.f: stoichiometric multiplier matrix (dim. = #rxns x #species)
% sumEq: flag for combining equilibria reactions. 0=no (default), 1=yes.
%
% OUTPUTS:
% rSp: rates for individual reactions involving Spname; one column per rxn
% rSpnames: names for each reaction
% iRx: index identifying location of reactions in input arrays.
%
% 20120718 GMW
% 20131126 GMW  Added equilibria summation code (previously in PlotRates.m)

if nargin<3
    sumEq=0;
end

%%%%%BREAKOUT VARIABLES%%%%%
Cnames = S.Cnames;
Rnames = S.Chem.Rnames;
rates = S.Chem.Rates;
f = S.Chem.f;

%%%%%EXTRACT RATES FOR REACTANT%%%%%
[tf,iSp] = ismember(Spname,Cnames);
if ~tf
    error(['Species ' Spname ' not found in Cnames']);
end

fSp = f(:,iSp); %stoichiometric coefficients
iRx = find(fSp); %find reactions that include Sp

fSp = full(fSp(iRx))'; %shorten matricies
rates = rates(:,iRx);

rSp = rates.*repmat(fSp,size(rates,1),1); %rate of change for Sp
rSpnames = Rnames(iRx);

%%%%%COMBINE EQUILIBRIA%%%%%%
if sumEq
    iEQ = IndexEQ(f(iRx,:));
    if ~isempty(iEQ)
        for i=1:size(iEQ,1)
            iEQnow = iEQ(i,:);
            rEQgross = rSp(:,iEQnow);   %gross rates
            rEQnet = sum(rEQgross,2);   %net rates
            rEQint = sum(rEQgross,1);   %integrated rates
            
            [~,iprod] = max(rEQint);    %determine which rxn is production
            tmp_prod=rEQnet;
            tmp_prod(tmp_prod<0)=0;
            rSp(:,iEQnow(iprod))=tmp_prod; %replace with net production
            
            [~,iloss] = min(rEQint);
            tmp_loss=rEQnet;
            tmp_loss(tmp_loss>0)=0;
            rSp(:,iEQnow(iloss))=tmp_loss; %replace with net loss
        end
    end
end

%%%%% SORT %%%%%
rSpsum = nansum(rSp,1);
[rSpsum,n] = sort(rSpsum);
rSp = rSp(:,n);
rSpnames = rSpnames(n);
iRx = iRx(n);


