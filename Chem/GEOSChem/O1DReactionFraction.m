function [fO1D_H2O,fO1D_H2] = O1DReactionFraction(T,M,H2O)
% function [fO1D_H2O,fO1D_H2] = O1DReactionFraction(T,M,H2O)
% Calculates the steady-state branching ratio for O1D radical fates.
% NOTE: Assumes a constant H2 value of 500 ppbv.
%
% INPUTS:
% T: Temperature, K
% M: air number density, molec/cm^3
% H2O: water number density, molec/cm^3
%
% OUTPUTS:
% fO1D_H2O: fraction of O1D reacting with water
% fO1D_H2: fraction of O1D reacting with H2
%
% 20160226 GMW Modified from KRT's JO3_GC.m

 CONCN2 = 0.7808.*M;
 CONCO2 = 0.2095.*M;
 CONCH2 = 0.5E-6.*M;
 
 RO1DplH2O = 1.63E-10.*exp(60.0./T).*H2O; %reaction rate with H2O
 RO1DplH2  = 1.2e-10.*CONCH2; %reaction rate with H2
 RO1DplM   = 2.15E-11.*exp(110.0./T).*CONCN2 + 3.30E-11.*exp(55.0./T).*CONCO2; %quenching
 RO1D      = RO1DplH2O + RO1DplH2 + RO1DplM;
 
 fO1D_H2O = RO1DplH2O./RO1D;
 fO1D_H2  = RO1DplH2./RO1D;

 
 