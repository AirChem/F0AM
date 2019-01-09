%==============================
%Halogen Uptake to Aerosols
%==============================
AerSA_invm = Saerosol.*100;
gamma_BrNO3 = 0.1;
gamma_INO3 = 0.1;
gamma_ClNO3 = 0.1;
gamma_INO2 = 0.02;
gamma_HOBr_HCl = 0.061;
gamma_HOBr_HBr = 0.1;
gamma_HOI = 0.01;
gamma_ClNO3_HBr = 0.4;
avg_speed = @(MW) sqrt(8*8.314*T./pi./MW);

%R1 - R3 are Iodine uptake that doesn't seem to do anything interesting?

i = i + 1; %R4
Rnames{i} = 'ClNO3 + AerSA = HOCl + HNO3';
k(:,i) = avg_speed(97.0/1000).*gamma_ClNO3./4 .* AerSA_invm; %0.024 = gamma ClONO2, 
Gstr{i,1} = 'ClNO3';
fClNO3(i) = -1; fHOCl(i) = 1; fHNO3(i) = 1;

i = i + 1; %R5
Rnames{i} = 'BrNO3 + AerSA = HOBr + HNO3';
k(:,i) = avg_speed(0.14191).*gamma_BrNO3./4 .* AerSA_invm; %0.02 = gamma BrONO2, 0.14191 = Molec W. of BrONO2 (kg/mol)
Gstr{i,1} = 'BrNO3'; 
fBrNO3(i) = -1; fHOBr(i) = 1; fHNO3(i) = 1;

i = i + 1; %R6
Rnames{i} = 'INO3 + AerSA = 0.85*ICl + 0.15*IBr + HNO3';
k(:,i) = avg_speed(0.188909).*gamma_INO3./4 .* AerSA_invm; %0.01 = gamma IONO2
Gstr{i,1} = 'INO3';
fINO3(i) = -1; fHNO3(i) = 1; fI(i) = 1;

i = i + 1; %R7
Rnames{i} = 'INO2 + AerSA = 0.85*ICl + 0.15*IBr + HNO3';
k(:,i) = avg_speed(0.17291).*gamma_INO2./4 .* AerSA_invm; %0.01 = gamma IONO2
Gstr{i,1} = 'INO2';
fINO3(i) = -1;  fHNO3(i) = 1; fI(i) = 1; 
% 
i = i + 1; %R8
Rnames{i} = 'HOBr + HCl + AerSA = BrCl';  
k(:,i) = avg_speed(0.09691).*gamma_HOBr_HCl./4 .* AerSA_invm; %0.061 = gamma HOBr, 0.09691 = Molec W. of HOBr (kg/mol)
Gstr{i,1} = 'limiting_HOBr'; Gstr{i,2} = 'limiting_HCl'; 
fHOBr(i) = -1; fHCl(i) = -1; fBrCl(i) = 1;

i = i + 1; %R9
Rnames{i} = 'HOBr + HBr + AerSA = Br2'; %Lots of uncertainty in what gamma for this reaction should be. Parrella uses 0.1-0.2
k(:,i) = avg_speed(0.08891).*gamma_HOBr_HBr./4 .* AerSA_invm; %0.15 = gamma HOBr, 0.09691 = Molec W. of HOBr (kg/mol)
Gstr{i,1} = 'limiting_HOBr'; Gstr{i,2} = 'limiting_HBr';
fHOBr(i) = -1; fHBr(i) = -1; fBr2(i) = 1; 


i = i + 1; %R10
Rnames{i} = 'HOI + AerSA = 0.85*ICl + 0.15*IBr';
k(:,i) = avg_speed(	143.89./1000).*gamma_HOI./4 .* AerSA_invm; %0.01 = gamma HOI
Gstr{i,1} = 'HOI';
fHOI(i) = -1; fI(i) = 1; %fICl(i) = 0.85; fIBr(i) = 0.15; %fHBr(i) = -0.15; fHCl(i) = -0.85;
% 
i = i + 1; %R11
Rnames{i} = 'ClNO3 + HBr + AerSA = BrCl + HNO3';
k(:,i) = avg_speed(97.0 /1000) .* gamma_ClNO3_HBr ./4 .* AerSA_invm; %gamma = 0.3 according to Sander et al(JPL 2011), Table 5-2 Note 102
Gstr{i,1} = 'limiting_ClNO3'; Gstr{i,2} = 'limiting_HBr';
fClNO3(i) = -1; fHBr(i) = -1; fBrCl(i) = 1; fHNO3(i) = 1;

i =i  + 1; %R12
Rnames{i} = 'O3 + HBr + AerSA = HOBr + O2'; %This reaction had the most complicated dependence, which I did not include in F0AM, instead estimating a single reaction rate
k(:,i) = 1.2e-19; 
Gstr{i,1} = 'O3'; Gstr{i,2} = 'HBr';
fO3(i) = -1; fHBr(i) = -1; fHOBr(i) = 1; 