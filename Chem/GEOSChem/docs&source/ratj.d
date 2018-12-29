#------------------------------------------------------------------------------
#          Harvard University Atmospheric Chemistry Modeling Group            !
#------------------------------------------------------------------------------
#BOP
#
# !MODULE: ratj.d
#
# !DESCRIPTION: This is the master photolysis mechanism file for GEOS-Chem.
#  It is a look-up table which cross-references the GEOS-Chem species names
#  with the FAST-J species names.  Branches of a reaction are listed as
#  multiple reactions with the same species name.
#\\
#\\
#  This file describes the GEOS-Chem STANDARD chemical mechanism.
#\\
#\\
# !REMARKS:
#  Original documentation:
#  PHOTOLYSIS REACTIONS - MASTER RATEFILE
#  Paul Brown, Oliver Wild & David Rowley
#  Centre for Atmospheric Science, Cambridge, U.K.  
#  Release date:  22 November 1993
#  SCCS version information: @(#)photol.d	1.2 5/11/94
#
# !REVISION HISTORY:
#
#  24 Sep 2014 (jaf)
#  ----------------------
#     Add ISN1 photolysis. From Muller et al. 2014, products are
#     ISN1 -> NO2 + HO2 + PACALD
#     Use HPALD as proxy since Stavrakou et al. 2010 give products
#     HPALD -> OH + HO2 + PACALD
#     So assume same products as HPALD, with NO2 instead of OH
#     Chris Miller recommends using same cross section as HPALD.
#
#  9 Jun 2014 (eam, 2014)
#  ----------------------
#     Updates from J. Mao and Seb Eastham (IUPAC and FAST-JX v7.0b):
#     (1) Update j-acetone photolysis to include pressure-dependent photolysis.
#     (2) Update HAC photolysis: Scale quantum yield to 60% of AcetA and 
#                                zero wavelength bins above 335nm are zeroed out.
#     (3) Change glyoxal products and yields
#     (4) Change PAN product yields
#     (5) Add P-dependent acetaldehyde photolysis. 
#     (6) Turn off ALD2 --> CH4 + CO photolysis
#
#  12 Feb 2013 (v9-02g)
#  ----------------------
#     Updates from F. Paulot, E. Marais, J. Mao, and M. Evans:
#     (1) Adopt the Paulot isoprene scheme as standard
#
#  17 Jan 2013 (v9-02f)
#  -----------------------
#     Update from B. Henderson, J. Mao, and E. Marais (7/18/11):
#     (1) Included the photolysis reaction of O3 (Line 56):
#        O3 + hv --> O2 + O(1D) (from JPL 10-6 document)
#
#     Update from E. Browne:
#     (1) Add photolysis reactions for MPN chemistry
#
#  27 Dec 2011 (v9-01-03m)
#  -----------------------
#     Update from J. Parrella:
#     (1) Add photolysis reactions for bromine chemistry
#
#  07 Nov 2011 (v9-01-03a) 
#  ----------------------
#     Update from F. Paulot:
#     (1) I have physically removed GLCO3, GLP, GPAN, MNO3, ISNO3, MNO3, 
#          O2CH2OH, MVN2 and their associated reactions from "globchem.dat".  
#          Note that MNO3 and GLP have photolysis reactions.  Therefore, 
#          I had to also delete these species from "ratj.d" as well.
#                                                                             .
#  27 Oct 2009 (v8-02-04)
#  -----------------------
#     Updates from J. Mao:
#     (1) Updated the branching ratio of HNO4.  Changed the lines:
#            Line 13 HNO4 from 33.3 to 5.0
#            Line 14 HNO4 from 66.7 to 95.0
#         This is based on Jimenez et al, "Quantum yields of OH, HO2 and NO3
#         in the UV photolysis of HO2NO2"
#                                                                             .
#  20 Apr 2009 (v8-02-01)
#  -----------------------
#     Update from J. Mao & C. Carouge)
#     (1) Add new cross-sections etc. from FAST-JX
#                                                                             .
#  20 Apr 2000:
#  -----------------------
#     Update from R. Martin & R. Yantosca:
#     (1) The new peroxide recycling scheme now activates the following 
#         photolysis species: GP,IAP,INPN,ISN1,ISNP,MAOP,MRP,PP,PRPN,RIP,VRP.
#     (2) Also be sure to set parameter JPMAX = 55 in "cmn_fj.h". 
#                                                                             .
#  13 Apr 1998:
#  -----------------------
#     Update from P. Murti
#     (1) Modified for Harvard chemistry: several reactions added, re-ordered 
#         per chem.dat
#     (2) Also putting in the Harvard names in col 1, the UCI x-sec names 
#         in the last column.
#EOP
#------------------------------------------------------------------------------
#BOC
#
# Harvard species             Products - UCI notation                              UCI xsec
# ===============           ===============================                        ========
    1 H2O        PHOTON     OH         HO2                  0.00E+00  0.00      0.0         
    2 HO2        PHOTON     OH         O(3P)                0.00E+00  0.00      0.0         
    3 O2         PHOTON     O(3P)      O(3P)                0.00E+00  0.00    100.0  O2     
    4 O3_P       PHOTON     O2         O(3P)                0.00E+00  0.00    100.0  O3     
    5 O3         PHOTON     O2         O(1D)                0.00E+00  0.00    100.0  O3_1d  
    6 NO2        PHOTON     NO         O(3P)                0.00E+00  0.00    100.0  NO2    
    7 H2O2       PHOTON     OH         OH                   0.00E+00  0.00    100.0  H2O2   
    8 MP         PHOTON     HCHO       OH         HO2       0.00E+00  0.00    100.0  ROOH   
    9 CH2O       PHOTON     CO         HO2        HO2       0.00E+00  0.00    100.0  HCHO=H+
   10 CH2O       PHOTON     CO         H2                   0.00E+00  0.00    100.0  HCHO=H2
   11 HNO3       PHOTON     OH         NO2                  0.00E+00  0.00    100.0  HONO2  
   12 HNO2       PHOTON     OH         NO                   0.00E+00  0.00    100.0  HONO   
   13 HNO4       PHOTON     OH         NO3                  0.00E+00  0.00      5.0  HO2NO2 
   14 HNO4       PHOTON     HO2        NO2                  0.00E+00  0.00     95.0  HO2NO2 
   15 NO3        PHOTON     NO         O2                   0.00E+00  0.00    100.0  NO3=O2+
   16 NO3        PHOTON     NO2        O(3P)                0.00E+00  0.00    100.0  NO3=O+ 
   17 N2O5       PHOTON     NO3        NO         O(3P)     0.00E+00  0.00      0.0  N2O5   
   18 N2O5       PHOTON     NO3        NO2                  0.00E+00  0.00    100.0  N2O5   
   19 ALD2       PHOTON     CH4        CO                   0.00E+00  0.00      0.0  Acet=R+
   20 ALD2       PHOTON     MeOO     HO2    CO    MeCO3     0.00E+00  0.00    100.0  Acet=RO
   21 PAN        PHOTON     MeCO3      NO2                  0.00E+00  0.00    100.0  PAN    
   22 RCHO       PHOTON     EtO2       HO2        CO        0.00E+00  0.00    100.0  RCHO   
   23 ACET       PHOTON     MeCO3      MeOO                 0.00E+00  0.00    100.0  AcetA 
   24 ACET       PHOTON     MeOO       MeOO       CO        0.00E+00  0.00    100.0  AcetB 
   25 MEK        PHOTON     MeCO3      EtOO                 0.00E+00  0.00    100.0  EtCOMe
   26 GLYC       PHOTON     HCHO     HO2      CO     MOH    0.00E+00  0.00    100.0  HOMeCHO
   27 GLYX       PHOTON     H2         CO         HCHO      0.00E+00  0.00    100.0  Glyxla 
   28 GLYX       PHOTON     CO         HO2                  0.00E+00  0.00    100.0  Glyxlb 
   29 MGLY       PHOTON     MeCO3      CO         HO2       0.00E+00  0.00    100.0  MeCOCHO
   30 MGLY       PHOTON     Acet       CO                   0.00E+00  0.00      0.0  MeCOCHO
   31 MVK        PHOTON     PRPE       CO                   0.00E+00  0.00     60.0  MeCOVi 
   32 MVK        PHOTON     MeCO3      HCHO       CO  HO2   0.00E+00  0.00     20.0  MeCOVi 
   33 MVK        PHOTON     MeOO       MAO3                 0.00E+00  0.00     20.0  MeCOVi 
   34 MACR       PHOTON     CO  HO2  MGLY  HO2  MeCO3  HCHO 0.00E+00  0.00    100.0  MACR   
   35 HAC        PHOTON     MeCO3      HCHO       HO2       0.00E+00  0.00     60.0  AcetA  
   36 ETP        PHOTON     OH         HO2        Acet      0.00E+00  0.00    100.0  ROOH   
   37 RA3P       PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH   
   38 RB3P       PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH   
   39 R4P        PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH   
   40 RP         PHOTON     OH         HO2        Acet      0.00E+00  0.00    100.0  ROOH   
   41 R4N2       PHOTON     NO2 MeCOMe MEK MO2 HO2 ALD2 ... 0.00E+00  0.00    100.0  MeNO3  
   42 MAP        PHOTON     OH         MO2                  0.00E+00  0.00    100.0  ROOH   
   43 INPN       PHOTON     OH         HO2        RCHO NO2  0.00E+00  0.00    100.0  ROOH
   44 PRPN       PHOTON     OH         HO2        RCHO NO2  0.00E+00  0.00    100.0  ROOH
   45 PP         PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH
   46 RIP        PHOTON     OH HO2 CH2O MVK MACR RIO1 IALD  0.00E+00  0.00    100.0  ROOH
   47 IAP        PHOTON     OH HO2  CO  H2  HAC  GLYC  MGLY 0.00E+00  0.00    100.0  ROOH
   48 ISNP       PHOTON     OH HO2  CO  H2  HAC  GLYC  MGLY 0.00E+00  0.00    100.0  ROOH
   49 VRP        PHOTON     OH  HO2  CH2O  MCO3  GLYC  MGLY 0.00E+00  0.00    100.0  ROOH
   50 MRP        PHOTON     OH  HO2  MGLY  HAC  CO  CH2O    0.00E+00  0.00    100.0  ROOH 
   51 MAOP       PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH
   52 MACRN      PHOTON     NO2  HAC  MGLY  CH2O  HO2  CO   0.00E+00  0.00    100.0  MCRNit
   53 MVKN       PHOTON     GLYC       NO2        MCO3      0.00E+00  0.00    100.0  MVKNit
   54 ISOPNB     PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ONIT1
   55 ISOPND     PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ONIT1   
   56 PROPNN     PHOTON     CH2O  NO2  CO         MO2       0.00E+00  0.00    100.0  ProNit
   57 ATOOH      PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  ROOH
   58 Br2        PHOTON     Br         Br                   0.00E+00  0.00    100.0  Br2
   59 BrO        PHOTON     Br         O(3P)                0.00E+00  0.00    100.0  BrO
   60 HOBr       PHOTON     Br         OH                   0.00E+00  0.00    100.0  HOBr
   61 BrNO3      PHOTON     Br         NO3                  0.00E+00  0.00     85.0  BrNO3
   62 BrNO3      PHOTON     BrO        NO2                  0.00E+00  0.00     15.0  BrNO3
   63 BrNO2      PHOTON     Br         NO2                  0.00E+00  0.00    100.0  BrNO2
   64 CHBr3      PHOTON     Br         Br         Br        0.00E+00  0.00    100.0  CHBr3
   65 O3         PHOTON     O2         O(1D)                0.00E+00  0.00    100.0  O3_1d
   66 MPN        PHOTON     HO2        NO3        HCHO      0.00E+00  0.00      5.0  MPN
   67 MPN        PHOTON     MO2        NO2                  0.00E+00  0.00     95.0  MPN
   68 PMN        PHOTON     MAO3   NO2 CO2 CH2O MCO3  NO3   0.00E+00  0.00    100.0  PAN
   69 HPALD      PHOTON     HO2   CH2O GLYX MGLY            0.00E+00  0.00    100.0  HPALD
   70 ETHLN      PHOTON     HO2    NO2 CH2O  CO             0.00E+00  0.00    100.0  EthNit
   71 ISN1       PHOTON     HO2 NO2 CH2O GLYX MGLY GLYX HAC 0.00E+00  0.00    100.0  HPALD
   72 PIP        PHOTON     OH         HO2        RCHO      0.00E+00  0.00    100.0  H2O2
   73 MONITS     PHOTON     NO2        MEK                  0.00E+00  0.00    100.0  ONIT1
   74 MONITU     PHOTON     NO2        RCHO                 0.00E+00  0.00    100.0  ONIT1
   75 HONIT      PHOTON     NO2        HKET                 0.00E+00  0.00    100.0  ONIT1
 9999                                                       0.00E-00  0.00      0.0         



#  NOTES:                                                                     
#  -----                                                                 
#  [4/15/98]
#  Oliver Wild: All reaction data from JPL '97, IUPAC IV. IUPAC V is soon
#  expected. - ppm
# 
#  All reaction data taken from IUPAC supplement IV unless otherwise indicated.
# 
#  JPL - data from JPL (latest assessment as far as possible)
#                                     
#    ? - reaction products unknown
#    * - user strongly advised to consult source material
#    B - branching ratio assumed equal for all channels in the absence 
#         of more information
#    U - upper limit for rate coefficient
#  
#  Changes since 08/3/93 release:
#   O now written as O(3P)
#                                                                             
# (Note that the second of the acetaldehyde channels above occurs at 
#  wavelengths less than 289 nm, and therefore doesn't appear in the 
#  Fast-J region at all -  I've simply included it here for completeness) 
#  - [from Oliver, 3/7/98]
