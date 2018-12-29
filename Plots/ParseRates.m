function [P,Pnames,L,Lnames] = ParseRates(rates,Rnames,Pout,Lout)
% This function is supposed to help split up rates into production and loss categories, and combine
% them as desired. I stopped when I couldn't decide how best to parse a cell array input.
% assume Pout of the form {'X + Y'}, Lout of the form {'X'}

%%%%%COMBINE REACTIONS WITH SAME REACTANTS%%%%%
rct = Rparts(Rnames);
rct_unique = unique(rct);
rates_unique = nan(size(rates,1),length(rct_unique));
for i=1:length(rct_unique)
    j = ismember(rct,rct_unique{i});
    rates_unique(:,i) = sum(rates(:,j),2);
end
rct = rct_unique;
rates = rates_unique;

%%%%%SORT BY MEAN VALUES%%%%%
[rsum,n] = sort(sum(rates,1));
rates = rates(:,n);
rct = rct(n);

%%%%%SEPARATE LOSS AND PRODUCTION%%%%%
iL = rsum<0;
Lall = rates(:,iL);
if isscalar(Lout)
    if Lout==0 || sum(iL)<=Lout
        L = Lall;
        Lnames = rct(iL);
    else
        Lother = sum(Lall(:,Lout+1:end),2);
        L2plot = [Lall(:,1:Lout) Lother];
        Lnames = [rct(iL(1:Lout));'Other'];
    end
elseif iscell(Lout)
    for i=1:length(Lout)
        Rnow = Lout{i};
        if iscell(Rnow)
            Lnames{i} = Rnow{1}; %remove group name
            Rnow(1) = [];
        else
            Lnames{i} = Rnow;
        end
        %and...?
        
        
        
        tf = ismember(rct,Rnow);
        iRct = find(sum(tf,2)); %index for reactions where Rnow is present
        R2plot(:,i) = -sum(rSp(:,iRct),2)./CSp;
        iUsed = [iUsed;iRct];
        
    end
end
    







iP = rsum>0;
Pall = fliplr(rates(:,iP));
Pnames = flipud(rct(iP));
if length(iP)<=n2plot
    P2plot = Pall;
    Pnames = Pnames;
else
    Pother = sum(Pall(:,n2plot+1:end),2);
    P2plot = [Pall(:,1:n2plot) Pother];
    Pnames = [Pnames(1:n2plot);'Other'];
end

if isempty(P2plot),P2plot=nan; end
if isempty(L2plot),L2plot=nan; end



