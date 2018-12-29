% k_3rd_iupac
% 3-body troe formulation for rate constants.
% used by MECCA_Halogens.
%
% 20150928 DA

function k_out = k_3rd_iupac(T,M,k0_300,n,kinf_300,m,fc)
zt=300./T;
k0_T=k0_300.*zt.^(n).*M;
kinf_T=kinf_300.*zt.^(m);
k_ratio=k0_T./kinf_T;
nu=0.75-1.27.*log10(fc);
k_out=k0_T./(1+k_ratio).*fc.^(1./(1+(log10(k_ratio)./nu).^2));
end