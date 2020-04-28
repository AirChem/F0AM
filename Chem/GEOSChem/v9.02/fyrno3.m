function [ FYRNO3 ] = fyrno3( XCARBN,ZDNUM, TT )

%******************************************************************************
%  Function FYRNO3 returns organic nitrate yields YN = RKA/(RKA+RKB)
%  from RO2+NO reactions as a function of the number N of carbon atoms.
%  (lwh, jyl, gmg, djj, bmy, 1/1/89, 6/26/03)

%  Arguments as Input:
%  ============================================================================
%  (1 ) XCARBN (REAL*8) : Number of C atoms in RO2
%  (2 ) ZDNUM  (REAL*8) : Air density   [molec/cm3 ]
%  (3 ) TT     (REAL*8) : Temperature   [K         ]
%    
%  NOTES: 
%  (1 ) Original code from Larry Horowitz, Jinyou Liang, Gerry Gardner,
%        and Daniel Jacob circa 1989/1990.
%  (2 ) Updated following Atkinson 1990.
%  (3 ) Change yield from Isoprene Nitrate (ISN2) from 0.44% to 12%,
%        according to Sprengnether et al., 2002. (amf, bmy, 1/7/02)

      % Initialize static variables
      Y300 =  0.826;
      ALPHA = 1.94E-22;
      BETA = 0.97;
      XM0 = 0.;
      XMINF = 8.1;
      XF = 0.411;
      %=================================================================
      % FYRNO3 begins here!
      %=================================================================
      XXYN   = ALPHA*exp(BETA*XCARBN).*ZDNUM.*((300./TT).^XM0);
      YYYN   = Y300*((300./TT).^XMINF);
      AAA    = log10(XXYN./YYYN);
      ZZYN   = 1./(1.+ AAA.*AAA );
      
      RARB   = (XXYN/(1.+ (XXYN./YYYN)))*(XF.^ZZYN);
      FYRNO3 = RARB./(1. + RARB);
      

end


