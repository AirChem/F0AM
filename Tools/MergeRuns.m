function Smerged = MergeRuns(fileinfo)
% function Smerged = MergeRuns(filenames)
% Merges output structures from separate F0AM runs into a single structure.
% Assumes that all runs were done with the same basic setup.
%
% INPUTS
% fileinfo: specifies files to merge. This can be either:
% 1) a cell array of file names to merge. Each file should contain one F0AM output structure S.
% 2) a string specifying a specific directory. All files in the directly will be merged. ONLY model
%    output files should be in this directory.
%
% OUTPUTS
% Smerged: a single F0AM output structure. Can be used with all plotting/analysis functions.
% This also contains two additional fields:
%  filenames: cell array of file names used in merge
%  RunIndex: index specifying which file output came from. Corresponds to order of files in filenames.
%
% 20200507 GMW

%% get model outputs

% parse input
if isfolder(fileinfo)
    fileinfo = dir(fileinfo);
    L = length(fileinfo);
    filenames = cell(L,1);
    [filenames{:}] = fileinfo(:).name;
    good = contains(filenames,'.mat'); %filter
    filenames = filenames(good);
elseif iscell(fileinfo)
    filenames = fileinfo;
else
    error('MergeRuns: invalid input type. See header.')
end

% get output structures
L = length(filenames);
Sall = cell(L,1);
for i = 1:L
    load(filenames{i}) %structure S
    if ~exist('S','var')
        error('MergeRuns: file %s does not contain F0AM output structure S.',filenames{i})
    end
    S.RunIndex = i*ones(size(S.Time));
    Sall{i} = S;
    clear S
end

%% combine fields

% INPUTS
Smerged.Met                     = catStruct(Sall,'Met');
Smerged.InitConc                = catStruct(Sall,'InitConc');
Smerged.BkgdConc                = catStruct(Sall,'BkgdConc');
Smerged.ModelOptions            = Sall{1}.ModelOptions;

Smerged.SolarParam              = catStruct(Sall,'SolarParam');
temp                            = catStruct(Sall,{'SolarParam','Converge'},'Days2Converge');
Smerged.SolarParam.Converge.Days2Converge = temp.Days2Converge;

% OUTPUTS
Smerged.Time            = cell2mat(cellfun(@(x) x.Time,Sall,'UniformOutput',0));
Smerged.StepIndex       = cell2mat(cellfun(@(x) x.StepIndex,Sall,'UniformOutput',0));
Smerged.iRO2            = Sall{1}.iRO2;
Smerged.Cnames          = Sall{1}.Cnames;
Smerged.Conc            = catStruct(Sall,'Conc');
Smerged.Chem            = Sall{1}.Chem; %copy f, iG, a few other constants

temp = catStruct(Sall,'Chem',{'Rates','k'});
Smerged.Chem.Rates      = temp.Rates;
Smerged.Chem.k          = temp.k;
Smerged.Chem.DilRates   = catStruct(Sall,{'Chem','DilRates'});

Smerged.RunIndex = cell2mat(cellfun(@(x) x.RunIndex,Sall,'UniformOutput',0));
Smerged.filenames = filenames;

Smerged = orderfields(Smerged);

%% function to concatenate variables in sub-structures
% Sall is the cell array containing model output structures
% Xname is the name of the model substructure
% Vnames is optional specific variables to cat (if you don't want all of them)
% Xout is a structure with concatenated variables
    function Xout = catStruct(Sall,Xname,Vnames)
        
        %drill into structure
        if ischar(Xname)
            Xin = cellfun(@(x) x.(Xname),Sall,'UniformOutput',0); % get sub-structure
        else %hande multiple substructures
            Xin = cellfun(@(x) x.(Xname{1}),Sall,'UniformOutput',0); % get sub-structure
            for j = 2:length(Xname)
                Xin = cellfun(@(x) x.(Xname{j}),Xin,'UniformOutput',0); % get sub-structure
            end
        end
        
        % get var names
        if nargin<3
            Vnames = fieldnames(Xin{1});
        elseif nargin==3 && ischar(Vnames)
            Vnames = {Vnames};
        end
        
        % concatenate
        for j = 1:length(Vnames)
            v = cellfun(@(x) x.(Vnames{j}),Xin,'UniformOutput',0); %get a var from each run
            v1 = v{1};
            if ischar(v1) || isscalar(v1) || isempty(v1) || isstruct(v1)
                Xout.(Vnames{j}) = v1;
            else
                Xout.(Vnames{j}) = cell2mat(v);
            end
        end
    end

end


