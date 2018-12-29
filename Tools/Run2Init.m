function [InitConc,Met] = Run2Init(S,pts2grab)
% function [InitConc,Met] = Run2Init(S,pts2grab)
% Grabs a subset of model results and puts them in the correct format for
% input as initial model conditions.
% INPUTS:
% S: Model output structure.
% pts2grab: an index for which row(s) of model results to grab.
% OUTPUTS:
% InitConc: a 3-column cell array containing initial concentrations.
% Met: a 2-column cell array containing met constraints.
%
% 20121004 GMW
% 20160327 GMW  Modified to deal with new Met fields.

%%%%% CONCENTRATIONS %%%%%
nSp = length(S.Cnames);
HoldMe = zeros(nSp,1);
HoldMe(S.Chem.iHold) = 1;
InitConc=cell(nSp,3);
for i=1:nSp
    InitConc{i,1} = S.Cnames{i};
    InitConc{i,2} = S.Conc.(S.Cnames{i})(pts2grab);
    InitConc{i,3} = HoldMe(i);
end

%%%%% METEOROLOGY %%%%%
S.Met = rmfield(S.Met,{'M','jcorr_all'});
Mnames = fieldnames(S.Met);
Met = cell(length(Mnames),2);
for i=1:length(Mnames)
    Met{i,1} = Mnames{i}; %name
    Metfield = S.Met.(Mnames{i});
    if size(Metfield,1)==1 || ischar(Metfield)
        Met{i,2} = Metfield;
    else
        Met{i,2} = Metfield(pts2grab,:);
    end
end


