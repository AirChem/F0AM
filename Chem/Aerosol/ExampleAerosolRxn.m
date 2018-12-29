%ExampleAerosolRxn.m
%An example, in case it is needed.
%20111218 GMW

%particle parameters
rp = 150e-7;    %mean particle radius, cm
gamma = 0.1;    %uptake coefficient
S = 68e-6;      %total surface area, cm2/cm3
Dg = 0.042;     %gas diffusion coefficient, cm2/s

%gas parameters
MM = 136; %molecular mass, g/mol
w = mean_speed(MM,T); %mean molecular speed, cm/s

kmt = ((rp./Dg)+(4./w./gamma)).^-1; % mass transfer velocity, cm/s

i=i+1;
Rnames{i} = 'StickyThing = AER';
k(:,i) = kmt.*S;
Gstr{i} = 'StickyThing';
fStickyThing(i)=-1; fAER(i)=1;

