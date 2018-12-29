function ktroe = Troe_GC(LPL,HPL)
% sub-function to calculate 3-body rate constant based on Troe formulation.
% See JPL Handbook for more info.
% Note this assumes the power law base is 0.6, which may not always be the case.
% LPL: low pressure limit k.
% HPL: high-pressure limit k.
% specifically for use with GEOSCHEM mechanism.
% 20160321 GMW

ktroe = (LPL./(1+LPL./HPL)).*0.6.^(1./(1+log10(LPL./HPL).^2));
