%function k=k_mass_transfer_A(rp,Dg,g,w)
%referenced to aerosol AREA per cm3 of air
%rp is particle radius in cm!
%Dg is gas-phase diffusion constant in cm2/s
%g is mass accomodation coeff or reaction probability
%w is mean molecular speed in cm/s

function k=k_mass_transfer_A(rp,Dg,g,w)


kmt = ((rp./Dg)+(4./w./g)).^-1; 

k=kmt;