function Q = SearchSMILES(pattern,Cnames,MCMversion)
% function Q = SearchSMILES(pattern,Cnames)
% Uses the simplified molecular input line-entry system (SMILES) strings to identify MCM species
% containing specific functionalities.
% NOTE: This will NOT work for
%       1) Inorganic species (e.g. OH, NO, etc.)
%       2) any non-MCM molecules added to your species list (e.g. extra monoterpenes)
%
% INPUTS:
% pattern:  a string specifying the function group to search for. See below for a
%           list of available common functional groups. This can also be any regular expression.
%           See help for regexp for info on how to create these.
% Cnames:   a cell array of MCM names to search.
% MCMversion: string specifying which version of MCM to use, 'v32' or 'v331'.
%
% OUTPUTS:
% Q: a structure with the following fields:
%   names:  cell array of MCM names for species
%   index:  vector of indices that map Q.names to the input Cnames
%   MW:     vector of molecular weights
%   nX:     number of a given atom, where X = C,O,N,H,S,F,Cl,Br,I
%
% 20130104 GMW
% 20210303 GMW  Added alkoxyRadical option
%
%%%%%DIRECTIONS FOR CREATING MCMSpeciesInfo.mat%%%%%
% 1) Go to MCM website and select ALL VOCs
% 2) Go to "Extract", select "Molecular Weights for all species in a subset" and download
% 3) Read textfile into matlab with the following (replacing filename and number of header
%   lines as needed):
%   [MCMnames,SMILES,InChI,MolWeight] = textread(flnm,'%s %s %s %f','headerlines',nhead);
%    save MCMvxxx_SpeciesInfo.mat

%%%%%FUNCTIONAL GROUP REGULAR EXPRESSIONS%%%%%
switch pattern
    case 'all'
        p = '.*';
    case 'aromatic'
        p = 'c';
    case 'alkene'
        p = 'C=C|\(=C';
    case 'aldehyde'
        p = 'O=C(?!\d)|(?<!O)C=O';
    case 'ketone'
        p = '(?<!O)C\(=O\)(?!O)|O=C\d|C\d=O';
    case 'acid'
        p = ['C\(=O\)O$|'...
            '^OC\(=O\)|'...
            '(?<=\()OC\(=O\)|'...
            'C\(=O\)O(?=\))|'...
            '\<OC=O\>'];
    case 'alcohol'
        p = ['\(O\)|'...
            '\(CO\)|'...
            '^OC(?!\(=O\))|'...
            'CO$|'...
            '(?<!O|\[O\]|\(=O\)|=)O$'];
    case 'peroxide'
        p = ['\(OO\)|'...
            '\(COO\)|'...
            'OO$|'...
            '^OO'];
    case 'peroxyAcid'
        p = '^OOC\(=O\)|C\(=O\)OO$';
    case 'peroxyRadical'
        p = 'O\[O\]|\[O\]O';
    case 'alkoxyRadical'
        p = 'C\[O\]|\[O\]C';
    case 'APRadical'
        p = ['C\(=O\)O\[O\]|'...
            '\[O\]OC\(=O\)'];
    case 'criegee'
        p = ['\[O-\]\[O\+\]|'...
            '\[O\+\]\[O-\]'];
    case 'alkylNitrate'
        p = ['[^O]ON\(=O\)=O|'...
            '[^O]O\[N\+\]\(=O\)\[O-\]|'...
            'O=N\(=O\)O[^O]|'...
            '\[O-\]\[N\+\]\(=O\)O[^O]'];
    case 'peroxyNitrate'
        p = ['OON\(=O\)=O|'...
            'O=N\(=O\)OO|'...
            'OO\[N\+\]\(=O\)\[O-\]|'...
            '\[O-\]\[N\+\]\(=O\)OO|'];
    otherwise
        p = pattern;
end

%%%%%GRAB SMILES STRINGS%%%%%
% Variables are:
% MCMnames
% SMILES
% MolWeight
switch MCMversion
    case 'v32'
        load MCMv32SpeciesInfo.mat
    case 'v331'
        load MCMv331SpeciesInfo.mat
end


[tf,loc] = ismember(Cnames,MCMnames);
S = cell(size(Cnames));
S(~tf) = {''};
S(tf) = SMILES(loc(tf));
M = nan(size(MolWeight));
M(tf) = MolWeight(loc(tf));

%%%%%DO THE FINDING%%%%%
match = regexp(S,p);
Q.index = find(~cellfun('isempty',match)); %index for matching names
Q.names = Cnames(Q.index);
Q.MW = M(Q.index);

%%%%%COUNT ATOMS%%%%%
Q.nC = cellfun('length',regexp(S(Q.index),'C(?!l)'));
Q.nO = cellfun('length',regexp(S(Q.index),'O'));
Q.nN = cellfun('length',regexp(S(Q.index),'N'));
Q.nS = cellfun('length',regexp(S(Q.index),'S'));
Q.nF = cellfun('length',regexp(S(Q.index),'F'));
Q.nCl = cellfun('length',regexp(S(Q.index),'Cl'));
Q.nBr = cellfun('length',regexp(S(Q.index),'Br'));
Q.nI = cellfun('length',regexp(S(Q.index),'I'));

%estimate hydrogen as residual mass
mH = 1.00794;   mC = 12.0107;   mO = 15.9994;   mN = 14.0067;   mS = 32.065;
mF = 18.998403; mCl = 35.453;   mBr = 79.904;   mI = 126.90447;
Q.nH = round((Q.MW - (Q.nC*mC + Q.nO*mO + Q.nN*mN + Q.nS*mS + ...
    Q.nF*mF + Q.nCl*mCl + Q.nBr*mBr + Q.nI*mI))/mH);


