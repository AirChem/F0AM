 function [ GAMMA ] = gamma_n2o5(  AEROTYPE, TEMP, RH )

%      !=================================================================
%      ! Internal function N2O5 computes the GAMMA sticking factor
%      ! for N2O5 hydrolysis. (mje, bmy, 8/7/030
%      ! 
%      ! Arguments as Input:
%      ! ----------------------------------------------------------------
%      ! (1 ) AEROTYPE (INTEGER) : # denoting aerosol type (cf FAST-J)
%      ! (2 ) TEMP     (REAL*8 ) : Temperature [K]
%      ! (3 ) RH       (REAL*8 ) : Relative Humidity [fraction]
%      !
%      ! NOTES:
%      !=================================================================
      
%      !=================================================================
%      ! N2O5 begins here!
%      !=================================================================

%      ! Convert RH to % (max = 100%)
      RH_P  = RH * 100;

      %! Default value
      GAMMA = 0.01;

      %! Special handling for various aerosols
      if  AEROTYPE == 'dust'
        % !----------------
        % ! Dust 
        % !----------------
                                
            %! Based on unpublished Crowley work
            GAMMA = 0.01;
      elseif AEROTYPE == 'sulfate'
        % !----------------
        % ! Sulfate
        % !----------------
    
         %   !===========================================================
         %   ! RH dependence from Kane et al., Heterogenous uptake of 
         %   ! gaseous N2O5 by (NH4)2SO4, NH4HSO4 and H2SO4 aerosols
         %  ! J. Phys. Chem. A , 2001, 105, 6465-6470 
         %  !===========================================================
         %  ! No RH dependence above 50.0% (lzh, 10/26/2011)
         %  ! According to Bertram and Thornton, ACP, 9, 8351-8363, 2009
            if RH_P > 50
                RH_P = 50
            end
            GAMMA = 2.79d-4 + RH_P*(  1.30E-4 + RH_P*( -3.43d-6 + RH_P*(  7.52E-8 ) ) );

          %  !===========================================================
          %  ! Temperature dependence factor (Cox et al, Cambridge UK) 
          %  ! is of the form:
          %  !
          %  !          10^( LOG10( G294 ) - 0.04 * ( TTEMP - 294 ) )
          %  ! FACT = -------------------------------------------------
          %  !                     10^( LOG10( G294 ) )
          %  !
          %  ! Where G294 = 1e-2 and TTEMP is MAX( TEMP, 282 ).
          %  ! 
          %  ! For computational speed, replace LOG10( 1e-2 ) with -2
          %  ! and replace 10^( LOG10( G294 ) ) with G294 
          %  !===========================================================
          
             TTEMP = MAX( TEMP, 282d0 );
             FACT  = 10.d0^( -2d0 - 4E-2*( TTEMP - 294.0 ) ) / 1E-2;

          %  ! Apply temperature dependence
            GAMMA = GAMMA * FACT;
            
      elseif AEROTYPE == 'bc'

    %         !----------------
    %     ! Black Carbon
    %     !----------------
     
     %        ! From IUPAC
                GAMMA = 0.005;
                
      elseif AEROTYPE == 'oc'

        % !----------------
        % ! Organic Carbon
        % !----------------           

          %  !===========================================================
          %  ! Based on Thornton, Braban and Abbatt, 2003
          %  ! N2O5 hydrolysis on sub-micron organic aerosol: the effect
          %  ! of relative humidity, particle phase and particle size
          %  !===========================================================
            if RH_P >= 57 
               GAMMA = 0.03;
            else
               GAMMA = RH_P * 5.2E-4;
            end
            
      elseif AEROTYPE == 'seasalt'

        % !----------------
        % ! Sea salt
        % ! accum & coarse
        % !----------------
        
        %    ! Based on IUPAC recomendation
            if  RH_P >= 62 
               GAMMA = 0.03;
            else
               GAMMA = 0.005;
            end
      end
 end