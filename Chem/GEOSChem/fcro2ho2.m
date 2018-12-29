function [ FCRO2HO2 ] = fcro2ho2( xcarbn )
% function [ FCRO2HO2 ] = fcro2ho2( xcarbn )
% returns  multiplier for RO2+HO2 rate constant based on # of carbons.
% based on saunder 2003 k14
 
      FCRO2HO2 = 1.-exp(-0.245.*xcarbn);

end


