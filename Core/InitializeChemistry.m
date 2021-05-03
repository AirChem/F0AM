function [Cnames,Rnames,k,f,iG,iRO2,jcorr,jcorr_all,iLR] = InitializeChemistry(Met,ChemFiles,ModelOptions,firstCall)
% function [Cnames,Rnames,k,f,iG,iRO2,jcorr,jcorr_all,iLR] = InitializeChemistry(Met,ChemFiles,ModelOptions,FirstCall)
% Generates parameters for calculating time rate of change of chemical species
% used in the dydt_eval function.
%
% INPUTS:
% Met: a structure containing any numer of meteorological variables.
%       See InitializeMet.m for a list of valid variables (which users can modify as needed).
%       Also might contain the following optional fields: 
%       jcorr_all:  array of correction factors for all J-values. Generated as an output
%                   on first call to this function. Used for scaling j-values during a solar cycle
%                   run.
%       Jx:         Any photolysis rates (J values) to be replaced. The name should be the same as that of
%                   the mechanism J-value (e.g., J4 for NO2 photolysis in MCM). units of /s.
% ChemFiles: a cell array containing the names of all sub-mechanism scripts.
%            The first cell is assumed to be a function or script to create generic rate
%            constants for a given mechanism. The output must be a structure.
%            The second cell is assuemd to be a function or script to create J-values for a given
%            mechanism. The output must be a structure.
%            Either or both of the first two cells can also be empty strings.
%            All subsequent cells are scripts for mechanisms or sub-mechanisms.
% ModelOptions: a structure containing various options. See F0AM_UserManual.pdf.
% firstCall: a flag to let the function know whether or not it is being called for the first time in F0AM_ModelCore.
%
% OUTPUTS:
% Cnames: cell array of species names
% Rnames: cell array of reaction names
% k: matrix of rate constants. dimensions are (# of steps) x length(Rnames)
% f: sparse stoichiometric coefficient matrix, used in dydt_eval to calculate dydt for each species.
%    dimensions are length(nRx) x (# of species).
% iG: 2-column vector containing indices of reactants for each reaction
% iRO2: 1-column index of RO2 species locations.
% jcorr: generic scaling factor for un-constrained j-values
% jcorr_all: matrix of scaling factors for all J-values.
% iLR:  1-column index for "limiting reagent" reactions.
% 
% 20120713 GMW
% 20131022 GMW  Modified for UWCMv2.2 to accomodate Met input as structure
% 20140108 GMW  Added minor hack for CB05 rate constants
% 20150604 GMW  Major modifications for UWCMv3:
%               - Added code to bring in generic K and J rate constant scripts through ChemFiles
%               - Added code to scale non-constrained J-values multiple ways (with a constant scalar,
%                 with a constrained J-value, or with the average of several constrained J-values).
%               - Added outputs/inputs jcorr and jcorr_all, which will allow scaling of J-values in
%                 SolarCycle mode.
%               - Added code to check for duplicate reactions (based on Rnames).
% 20150913 GMW  Added line in j-correction code to set jcorr to 1 if SZA>=90.
%               This prevents issues when feeding in nighttime j-value data.
% 20160304 GMW  Modified to accept J, K function outputs as structures.
% 20190123 GMW  Added iLR output

%% INITIALIZE VARIABLES
struct2var(Met)
struct2var(ModelOptions)
Mnames = fieldnames(Met);

nRx = 20000;     %number of reactions (try to over-guess)
nSp = 7000;      %number of species (try to over-guess)
nIc = length(T); %number of initial conditions

fstr     = [];             %horizontal string for concatenating coefficient (f) vectors
Rnames   = cell(nRx,1);    %reaction name cell array
k        = zeros(nIc,nRx); %reaction rate constant matrix
Gstr     = cell(nRx,3);    %cell array to collect reactant names
Cnames   = cell(nSp,1);    %cell array of species names
RO2names = cell(nSp,1);    %cell array of RO2 names
lr_flag  = zeros(nRx,1);   %boolean flag for "limiting reagent" reactions

SpeciesToAdd = {'ONE';'RO2'}; %Placeholder species
AddSpecies

%% GENERIC RATE CONSTANTS
% assume first input in ChemFiles is a function for rate constants
if ~isempty(ChemFiles{1})
    K = eval(ChemFiles{1});
    struct2var(K);
end

%% PHOTOLYSIS FREQUENCIES
% assume second input in ChemFiles is a function for J-values
if ~isempty(ChemFiles{2})
     J = eval(ChemFiles{2});
     [jval,Jnames] = breakin(J);
    
    % scaling
    % jcorr_all should be field in Met after first call to this function in F0AM_ModelCore.m
    if firstCall %first time thru only
        
        % calculate scaling factors for all constrained J
        jcorr_all = ones(size(jval));
        [iCon,Mloc] = ismember(Jnames,Mnames); %flag for Jnames appearing in Mnames, and location in Mnames
        if any(iCon)
            jvalCon = eval(['[' cellstr2str(Mnames(Mloc(iCon))) ']']); %matrix of constrained J
            jcorr_all(:,iCon) = jvalCon./jval(:,iCon); %might get /0 warning
            jcorr_all(jval==0) = 1;
            jcorr_all(SZA>=90,:) = 1;
        end
        
        % determine generic scaling factor for non-constrained J
        if iscellstr(jcorr)
            [tf,Jloc] = ismember(jcorr,Jnames);
            if any(~tf) %isempty(Jloc)
                j = find(~tf,1,'first');
                error('InitializeChemistry:InvalidInput',...
                    'Met.jcorr variable "%s" not output by ChemFiles function "%s".',jcorr{j},ChemFiles{2})
            end
            jcorr = mean(jcorr_all(:,Jloc),2); %grab and average and replace string with numeric array
        end
        jcorr_all(:,~iCon) = repmat(jcorr,1,sum(~iCon));
    end
    
    jval = jcorr_all.*jval;
    breakout(jval,Jnames); %create variables in workspace
end

%% ACCUMULATE CHEMISTRY
i=0; %index for adding reactions
for j=3:length(ChemFiles)
    eval(ChemFiles{j});
end

%% CLEAN UP
iC = ~cellfun('isempty',Cnames); %flag non-empty cells
Cnames = Cnames(iC);

iR = ~cellfun('isempty',RO2names); %flag non-empty cells
RO2names = RO2names(iR);
[~,iRO2] = ismember(RO2names,Cnames); %generate index, iRO2, for RO2 locations

eval(['f=sparse([' fstr ']);']); %concatenate coefficient vectors
f = f(1:i,:);
Rnames = Rnames(1:i);
k = k(:,1:i);

iLR = find(lr_flag); %index

Gstr = Gstr(1:i,:);
iempty = cellfun('isempty',Gstr);
Gstr(iempty) = {'ONE'}; %replace empty cells with name of "ONE" species (all 1's)
[~,iG] = ismember(Gstr,Cnames); %generate index, iG, for reactant locations

if sum(iC)>nSp
    warning('InitializeChemistry:MemoryAllocation',...
        ['Number of species under-guessed (guess: %u, actual: %u). '...
        'Consider revising parameter nSp in InitializeChemistry.m.'],nSp,sum(iC));
end

if sum(iC)>nSp
    warning('InitializeChemistry:MemoryAllocation',...
        ['Number of reactions under-guessed (guess: %u, actual: %u). '...
        'Consider revising parameter nRx in InitializeChemistry.m.'],nRx,sum(iR));
end

%% CHECK FOR DUPLICATE REACTIONS
if nargin<4 || firstCall
    [repRx,~,POS,IR] = repval(Rnames); %get repeated reaction names
    if isempty(repRx), repRx = {}; end %deal with empty return from repval
    notRep=false(size(repRx));
    
    % filter further by rate constants
    for j=1:length(repRx) 
        repK = k(:,POS(IR==j));
        if isempty(repval(repK'))
            notRep(j)=1;
        end
    end
    repRx(notRep)=[];
    
    % filter for known "duplicate-like" reactions in MCM
    % these reactions have the same reactants, products, and numerical J-values in the MCM, but are legit separate reactions.
    Rnames_exc = {
            'BZEMUCCO2H + hv = C5DIALO2 + HO2'
            'BZEMUCCO3H + hv = C5DIALO2 + OH'
            'C3M2COCO2H + hv = CH3COCO2H + CH3CO3 + HO2 + CO'
            'C3MCOCO2H + hv = HCOCO2H + HO2 + CO + CH3O2 + CO'
            'C5CO14OH + hv = CH3CO3 + HCOCO2H + HO2 + CO'
            'C5DIALCO + hv = MALDIALCO3 + CO + HO2'
            'C5DIALOH + hv = MALDIAL + CO + HO2 + HO2'
            'C5DIALOOH + hv = MALDIAL + CO + HO2 + OH'
            'C6125CO + hv = C5CO14O2 + CO + HO2'
            'C615CO2OH + hv = C5DICARB + CO + HO2 + HO2'
            'C615CO2OOH + hv = C5DICARB + CO + HO2 + OH'
            'C6M5CO2OH + hv = C3MDIALOH + CH3CO3 + HO2 + CO'
            'C6M5CO2OOH + hv = C3MDIALOOH + CH3CO3 + HO2 + CO'
            'C715CO2OH + hv = C6DICARB + CO + HO2 + HO2'
            'C7236CO + hv = C5CO14O2 + CH3CO3'
            'C726CO3OH + hv = CH3CO3 + C5DICARB + HO2'
            'C726CO5OOH + hv = C726CO5O + OH'
            'C7M15CO2OH + hv = IC7DICARB + CO + HO2 + HO2'
            'C815CO2OH + hv = C7DICARB + CO + HO2 + HO2'
            'C816CO + hv = MACO3 + MEKAO2'
            'DETLMUO2H + hv = C9M2CO6O2 + HO2'
            'DETLMUO3H + hv = C9M2CO6O2 + OH'
            'DMEBMUO2H + hv = C8M2CO6O2 + HO2'
            'DMEBMUO3H + hv = C8M2CO6O2 + OH'
            'EBZMUCCO2H + hv = C715CO2O2 + HO2'
            'EBZMUCCO3H + hv = C715CO2O2 + OH'
            'IP3ODBCO2H + hv = IPGLYOXOH + HO2 + CO + HO2 + CO'
            'IPBZMUCO2H + hv = C7M15CO2O2 + HO2'
            'IPBZMUCO3H + hv = C7M15CO2O2 + OH'
            'MALDALCO2H + hv = HCOCO2H + HO2 + CO + HO2 + CO'
            'MC3ODBCO2H + hv = CH3COCO2H + HO2 + CO + HO2 + CO'
            'MC6CO2OH + hv = C4MCO2OH + HO2 + CO + HO2 + CO'
            'MC6CO2OOH + hv = C4MCO2OOH + HO2 + CO + HO2 + CO'
            'MC7CO2OH + hv = MC7CO2O + HO2'
            'MC7CO2OOH + hv = MC7CO2O + OH'
            'METLMUCO2H + hv = C826CO3O2 + HO2'
            'METLMUCO3H + hv = C826CO3O2 + OH'
            'MXYMUCCO2H + hv = C726CO5O2 + HO2'
            'MXYMUCCO3H + hv = C726CO5O2 + OH'
            'OETLMUCO2H + hv = MC7CO2O2 + HO2'
            'OETLMUCO3H + hv = MC7CO2O2 + OH'
            'OXYMUCCO2H + hv = MC6CO2O2 + HO2'
            'OXYMUCCO3H + hv = MC6CO2O2 + OH'
            'PBZMUCCO2H + hv = C815CO2O2 + HO2'
            'PBZMUCCO3H + hv = C815CO2O2 + OH'
            'PC3ODBCO2H + hv = PGLYOXOH + HO2 + CO + HO2 + CO'
            'PETLMUCO2H + hv = C7M6CO2O2 + HO2'
            'PETLMUCO3H + hv = C7M6CO2O2 + OH'
            'PXYMUCCO2H + hv = C6M5CO2O2 + HO2'
            'PXYMUCCO3H + hv = C6M5CO2O2 + OH'
            'TLEMUCCO2H + hv = C615CO2O2 + HO2'
            'TLEMUCCO3H + hv = C615CO2O2 + OH'
            'TM124MUO2H + hv = EPXM2DCO2H + HO2 + CO + CH3CO3'
            'TM124MUO3H + hv = EPXM2DCO3H + CH3CO3 + HO2 + CO'
            'TM135MUO2H + hv = C7M2CO5O2 + HO2'
            'TM135MUO3H + hv = C7M2CO5O2 + OH'
            };
    repRx = setdiff(repRx,Rnames_exc); %removed excepted names from list
    
    % warn user of any potential duplicates
    if ~isempty(repRx)
        warning('InitializeChemistry:DuplicateReactions',...
            'Potential duplicate reactions found:')
        disp(repRx)
    end
end
    
