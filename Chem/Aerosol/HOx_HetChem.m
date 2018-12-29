% HOX_HetChem.m
% Another example of heterogeneous chemistry, in this case for uptake of OH and HO2.
% Generously provided by William Brune & co. at Penn State.
% Designed as a F0AM chemistry script; assumes the following variables are already present in
% workspace (see InitializeMet.m):
% T
% rpice
% Sice
% rpaerosol
% Saerosol
%
% 2018xxxx WB
% 20180320 GMW  Edits for readability.

%% GET RATE CONSTANTS FOR OH AND HO2 WITH ICE AND AEROSOL

% molar masses
MM_OH = 17; %g/mol
MM_HO2 = 33;

% Gas-phase diffusion coefficients (cm^2/s)
% values taken from Tang et al, 2014. ACP. HO2 was not measured or calculated for air, 
% so scaled the calculated HO2 value in helium to the calculated OH value in helium and 
% multiplied it by the OH value in air.
D_OH  = ((1013*170)./(760.*P)).*(T./296).^1.75;
D_HO2 = (410/660) .* D_OH;

% ICE reactions
alpha_ice = 1; %accomodation coefficient, JPL 2017
khet_OH_ice  = k_massTransfer(T,MM_OH,D_OH,rpice,Sice,alpha_ice);
khet_HO2_ice = k_massTransfer(T,MM_HO2,D_HO2,rpice,Sice,alpha_ice);

% AEROSOL reactions
alpha_aer = 0.2; % assumption
khet_OH_aer  = k_massTransfer(T,MM_OH,D_OH,rpaerosol,Saerosol,alpha_aer);
khet_HO2_aer = k_massTransfer(T,MM_HO2,D_HO2,rpaerosol,Saerosol,alpha_aer);

%% WRITE REACTIONS

SpeciesToAdd = {'ICE'; 'AER';};
AddSpecies

i=i+1;
Rnames{i} = 'OH = ICE';
k(:,i) = khet_OH_ice;
Gstr{i,1} = 'OH';
fOH(i)=-1;

i=i+1;
Rnames{i} = 'HO2 = ICE';
k(:,i) = khet_HO2_ice;
Gstr{i,1} = 'HO2';
fHO2(i)=-1;

i=i+1;
Rnames{i} = 'OH = AER';
k(:,i) = khet_OH_aer;
Gstr{i,1} = 'OH';
fOH(i)=-1;

i=i+1;
Rnames{i} = 'HO2 = AER';
k(:,i) = khet_HO2_aer;
Gstr{i,1} = 'HO2';
fHO2(i)=-1;

% ta-da


