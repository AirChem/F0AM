% ExampleDepositionRxn.m
% Example of a 1st-order deposition reaction.
% Assumes BLH (boundary layer height, m) is included in Met input.
% 20180320 GMW

vd = 1; % deposition velocity, cm/s. Typical happy forest value.

i=i+1;
Rnames{i} = 'O3 = Dep';
Gstr{i,1} = 'O3';
k(:,i) = vd./(BLH*100); %/s
fO3(i) = -1; 