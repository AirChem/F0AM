function [ ARSL1K ] = arsl1k(  AREA, RADIUS, DENAIR, STKCF, STK, SQM )

% !
% ! !ROUTINE: arsl1k
% !
% ! !DESCRIPTION: Function ARSL1K calculates the 1st-order loss rate of species 
% !  on wet aerosol surface.
% 
% ! !INPUT PARAMETERS: 
% !
%       ! Surface  area of wet aerosols/volume of air [cm2/cm3]
%       REAL*8, INTENT(IN) :: AREA     
% 
%       ! Radius of wet aerosol [cm], order of 0.01-10 um;
%       ! Note that radius here is Rd, not Ro
%       REAL*8, INTENT(IN) :: RADIUS 
%   
%       ! Density of air [#/cm3]
%       REAL*8, INTENT(IN) :: DENAIR  
%  
%       ! Sticking coefficient [unitless], order of 0.1
%       REAL*8, INTENT(IN) :: STKCF  
%   
%       ! Square root of temperature [K]
%       REAL*8, INTENT(IN) :: STK  
%     
%       ! Square root of molecular weight [g/mole]
%       REAL*8, INTENT(IN) :: SQM      
% !
% ! !REMARKS:
% !  The 1st-order loss rate on wet aerosol (Dentener's Thesis, p. 14)
% !  is computed as:
% !                                                                             .
% !      ARSL1K [1/s] = area / [ radius/dfkg + 4./(stkcf * xmms) ]        
% !                                                                             .
% !  where XMMS = Mean molecular speed [cm/s] = sqrt(8R*TK/pi/M) for Maxwell 
% !        DFKG = Gas phase diffusion coeff [cm2/s] (order of 0.1)
% 
% ! !REVISION HISTORY:
% !  01 Jul 1994 - lwh, jyl, gmg, djj - Initial version 
% !  04 Apr 2003 - R. Yantosca - Updated comments, cosmetic changes
% !  07 Apr 2004 - R. Yantosca - Now return w/ default value if RADIUS is zero 
% !                              (i.e. is smaller than a very small number)
% !  03 Dec 2009 - R. Yantosca - Prevent div-by-zero errors by returning the
% !                              default value if any of the args are zero 
% !  03 Dec 2009 - R. Yantosca - Added ProTeX Header
% !  20 Aug 2013 - R. Yantosca - Removed "define.h", this is now obsolete
% !EOP
% !------------------------------------------------------------------------------
% !BOC

%      !=================================================================
%      ! ARSL1K begins here!
%      !=================================================================
if AREA < 0d0   || DENAIR < 1E-30 || RADIUS < 1d-30  || SQM  < 1d-30 || STK  < 1d-30 || STKCF  < 1d-30;
         % Use default value if any of the above values are zero
         % This will prevent div-by-zero errors in the eqns below
         % Value changed from 1d-3 to 1d-30 (bhh, jmao, eam, 7/18/2011)
         ARSL1K = 1E-30;
else
    % DFKG = Gas phase diffusion coeff [cm2/s] (order of 0.1)
    DFKG  = 9.45E17/DENAIR * STK * sqrt(3.472E-2 + 1.0/(SQM*SQM));

    % Compute ARSL1K according to the formula listed above
    ARSL1K = AREA / ( RADIUS/DFKG + 2.749064E-4*SQM/(STKCF*STK) );
end
end
