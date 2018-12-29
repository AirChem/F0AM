% AddSpecies.m
% Adds chemical species to the Cnames, RO2names and "f strings" lists.
% Also creates an "fX" variable for each new species X.
%
% Variables required to run this script:
% SpeciesToAdd: cell array of species names to add
% Cnames:       cell array that will contain names of all species
% fstr:         string containing names of all f arrays
% nRx:          number of (guessed) reactions
% RO2ToAdd:     cell array of RO2 names to add (optional)
% RO2names:     cell array of all RO2 names in mechanism (optional)
%
% 20120713 GMW

%%%%%ADD TO Cnames, fstr, AND GENERATE INDIVIDUAL fX%%%%%
iC = find(cellfun('isempty',Cnames),1,'first'); %index for first empty cell
for iSp = 1:length(SpeciesToAdd)
    SpNow = SpeciesToAdd{iSp};
    if ismember(SpNow,Cnames(1:iC-1)), continue;
    else
        Cnames{iC} = SpNow;
        eval(['f' SpNow '=zeros(nRx,1);']); %writes new f
        fstr = [fstr ' f' SpNow];
        iC = iC + 1; %increment species index
    end
end
clear iC iSp SpNow SpeciesToAdd

%%%%%ADD RO2%%%%%
if exist('RO2ToAdd','var')
    iC = find(cellfun('isempty',RO2names),1,'first'); %index for first empty cell
    for iSp = 1:length(RO2ToAdd)
        SpNow = RO2ToAdd{iSp};
        if ismember(SpNow,RO2names(1:iC-1)), continue;
        else
            RO2names{iC} = SpNow;
            iC = iC + 1; %increment species index
        end
    end
    clear iC iSp SpNow RO2ToAdd
end


