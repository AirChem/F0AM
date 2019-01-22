function k_TM = ThreeBodyK_LH(ko,kinf,M,Fc,N)
%Where ko, kinf, and M are all vectors that already include the T
%dependence, all in some permutation of molec/cc and t;
if ~exist('Fc','var')
    Fc = 0.3;
end
if ~exist('N','var')
    N =  0.75-1.27.*log10(Fc);
end

pre_factor = (ko.*M)./(1 + (ko.*M)./kinf);

%N = 1; %PhyS;
exp_factor = log10(Fc)./( 1 + (log10(ko.*M./kinf)./N).^2);
k_TM = pre_factor .* 10.^exp_factor;


