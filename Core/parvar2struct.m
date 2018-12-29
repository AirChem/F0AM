function X = parvar2struct(Xbroad,Xslice)
% function X = parvar2struct(Xbroad,Xslice)
% Undoes the decomposition of struct2parvar.
%
% INPUTS Xbroad and Xslice are the same as those output by struct2parvar.
%
% OUTPUT X is the reconstructed structure.
%
% 20180226 MW

% broadcast vars
names = Xbroad.names;
ncol = Xbroad.ncol;
X = rmfield(Xbroad,{'names','ncol'});

% reconstruct sliced vars
c = 1; %column indicator
for i=1:length(names)
    X.(names{i}) = Xslice(:,c:(c+ncol(i)-1));
    c = c + ncol(i);
end