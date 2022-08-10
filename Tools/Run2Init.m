function [InitConc,Met] = Run2Init(S,pts2grab,InitConc_overwrite)
% function [InitConc,Met] = Run2Init(S,pts2grab,InitConc_overwrite)
% Grabs a subset of model results and puts them in the correct format for
% input as initial model conditions.
%
% INPUTS:
% S: Model output structure.
% pts2grab: an index for which row(s) of model results to grab.
% InitConc_overwrite: a 3-column cell array identical in structure to InitConc, 
%           which contains the values you want to overwrite the 
%           values in the Run you're initializing to.  Useful if you do a 
%           spin up letting things evolve, but want to nudge the things 
%           that were actually measured back to their concentrations. 
%
% OUTPUTS:
% InitConc: a 3-column cell array containing initial concentrations.
% Met: a 2-column cell array containing met constraints.
%
% 20121004 GMW
% 20160327 GMW  Modified to deal with new Met fields.
% 20200427 GMW  Changes to accomodate empty fields and family definitions.
% 20210625 JDH  Add option to push overwrite of certain Initial Conditions.
%               with observed values in InitConc_obs.
% 20220810 GMW  Minor tweaks to variable naming.
%               Changed indexing for overwriting InitConc.

%%%%% CONCENTRATIONS %%%%%

% create new InitConc
nSp = length(S.Cnames);
HoldMe = zeros(nSp,1);
HoldMe(S.Chem.iHold) = 1;
InitConc=cell(nSp,3);
 for i=1:nSp
     InitConc{i,1} = S.Cnames{i};
     InitConc{i,2} = S.Conc.(S.Cnames{i})(pts2grab);
     InitConc{i,3} = HoldMe(i);
 end
 
 % overwrite as desired with InitConc_overwrite
 if nargin == 3
     Onames = InitConc_overwrite(:,1);
     [tf,loc] = ismember(Onames,S.Cnames); %loc gives location of each Oname in Cnames
     
     % do some checks before attempting overwrite
     assert(all(tf),'Run2Init: species in InitConc_overwrite not found in S.Cnames.');
     assert(length(pts2grab) == length(InitConc_overwrite{1,2}),'Run2Init: length of concentration vectors in InitConc_overwrite does not match length of pts2grab.');
     
     InitConc(loc,2:3) = InitConc_overwrite(:,2:3); %replace concentrations and holdme
 end

 % Jessica's code for observation replacement
% for i=1:nSp
%     % Determine if this species is in the list of observations .
%     mtch = strcmp({InitConc_overwrite{:,1}}, S.Cnames{i});
%     obs_ind= find(mtch);
%     
%     if isempty(obs_ind)==1 % this species is not in InitConc_overwrite. 
%         InitConc{i,1} = S.Cnames{i}; % so use values from the run. 
%         InitConc{i,2} = S.Conc.(S.Cnames{i})(pts2grab);
%         InitConc{i,3} = HoldMe(i);
%         
%     else  % we have an observed value we want to use instead. 
%         conc= cell2mat(InitConc_overwrite(obs_ind,2)); % 2nd column is conc.
%         holdme_flag=InitConc_overwrite(obs_ind,3); % 3rd is the hold me flag. 
% 
%         InitConc{i,1} = S.Cnames{i};
%         InitConc{i,2} = double(conc);
%         InitConc{i,3} = vertcat(holdme_flag{:});        
%     end
% end

% families
if ~isempty(S.Chem.Family)
    Fnames = fieldnames(S.Chem.Family);
    for i = 1:length(Fnames)
        InitConc{end+1,1} = Fnames{i};
        InitConc{end,2} = S.Chem.Family.(Fnames{i}).names;
        InitConc{end,3} = [];
    end
end

%%%%% METEOROLOGY %%%%%
S.Met = rmfield(S.Met,{'M','jcorr_all'});
Mnames = fieldnames(S.Met);
Met = cell(length(Mnames),2);
for i=1:length(Mnames)
    Met{i,1} = Mnames{i}; %name
    Metfield = S.Met.(Mnames{i});
    if isscalar(Metfield) || ischar(Metfield) || isempty(Metfield)
        Met{i,2} = Metfield;
    else
        Met{i,2} = Metfield(pts2grab,:);
    end
end


