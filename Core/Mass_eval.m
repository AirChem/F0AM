function mass = Mass_eval(~,conc,param)
% function mass = Mass_eval(t,conc,param)
% Calculates mass matrix for use with ODE solver.
% Specifically useful for family conservation.
% For info on inputs, see dydt_eval.m.
% OUTPUT is the mass matrix, with dimensions nSp x nSp.
%   It has 1's along diagonals except for conserved species, which have 0.
% For more info on how it is used, see the odeset help.
%
% 20190115 GMW
        
%%%%%BREAKOUT PARAMETERS%%%%%
Family        = param{11};

%initialize
nSp = length(conc);
mass = speye(nSp); 
 
 % family conservation
 % choose member with lowest concentration for family conservation 
 Fnames = fieldnames(Family);
 for i = length(Fnames)
     j = Family.(Fnames{i}).index;
     [~,m] = min(conc(j));
     mass(j(m),j(m)) = 0;
 end
 
 
 