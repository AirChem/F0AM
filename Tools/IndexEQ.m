function iEQ = IndexEQ(varargin)
% function iEQ = IndexEQ(varargin)
% Identifies all reactions that can be classified as equilibria, defined such that the reactants and
% products of one reaction are the same as the products and reactants of the other reaction.
%
% INPUT can either be:
% a structure containing model output
% the "f" matrix containing stoichiometric coefficients, with dim = # of reactions x # of species.
% 
% OUTPUT iEQ is a 2-column vector where each row contains indices for a pair of equilibrium
% reactions.
% 120323 GMW

if isstruct(varargin{1})
    f = varargin{1}.Chem.f;
else
    f = varargin{1};
end

nRx = size(f,1);
iEQ=[];
for i=1:nRx
    fsum1 = f(i:end,:);
    fsum2 = f(1:end-i+1,:); %shift f-matrix
    fsum = fsum1 + fsum2;
    fsumsum = sum(abs(fsum),2);
    j = find(fsumsum==0);   %criteria for an equilibrium reaction is f(i,:) = -f(j,:)
    
    if ~isempty(j)
        [tf,loc] = ismember(j,iEQ); %identify duplicates
        j(find(tf)) = [];
        iEQ = [iEQ; j+i-1 j];
    end
end


