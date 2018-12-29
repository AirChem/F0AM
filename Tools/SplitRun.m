function SplitRun(S,mode,customIndex)
% function SplitRun(S,mode,customIndex)
% Takes a model output structure, S, and splits it into a series of new structures
% where each structure contains results from a single step or series of steps. 
% The new structures are written to the caller workspace with the names
% S1, S2, ... Sn.
%
% INPUTS:
% S: The structure you want to split.
% mode: is an optional string that specifies how to separate the model run:
%   'step':  separate each step (defined by each set of initial conditions)
%   'rep':   separate each repetition of all steps (defined by ModelOptions.Repeat)
%   'custom': separate using a custom-defined index (see below).
%   default mode is "step".
%
% customIndex: a custom index used for divying up the model structure.
%               This is a column vector and must be the same size as the
%               number of input initial conditions used for the model run.
%               This is useful, for example, if one were simulating a whole aircraft mission and
%               wanted to split up results by flight number, day vs night, etc.
%               
% 20120728 GMW
% 20151031 GMW Updated to accomodate additional output variables Met.jcorr_all, Met.LFlux, and SolarParam.
%              Added option for custom index and re-jiggered indexing and input-checking.
%              Removed reset of S.Time when mode='rep'.

%%%%%CHECK INPUTS%%%%%
if nargin<2
    mode = 'step';
else
    valid = {'step','rep','custom'};
    if ~any(strcmp(mode,valid));
        error('SplitRun: Invalid mode. Valid options are "step", "rep" and "custom".')
    elseif strcmp(mode,'custom')
        if nargin<3
            error('SplitRun: "iCustom" argument must be included for "custom" index option.')
        elseif length(customIndex)~=length(S.Met.T)
            error('SplitRun: "iCustom" argument must be same length as # of model inputs.')
        end
    end
end

%%%%%BREAK IN VARIABLES%%%%%
[conc,Cnames] = breakin(S.Conc);
dilrate = breakin(S.Chem.DilRates);
[initconc,Inames] = breakin(S.InitConc);

% Met
jcorr_all = S.Met.jcorr_all;
if isfield(S.Met,'LFlux')
    LFlux = S.Met.LFlux;
    S.Met = rmfield(S.Met,'LFlux');
end
[met,Mnames] = breakin(S.Met);

if isstruct(S.BkgdConc)
    [bkgdconc,Bnames] = breakin(S.BkgdConc);
end

%%%%%GET INDICES%%%%%
iStep = S.StepIndex;
iRep = S.RepIndex;

%iInp is index for divying up input variables (e.g. InitConc)
%iOut is index for divying up output variables (e.g. Conc)
switch mode
    case 'step'
        iInp = unique(iStep);
        iOut = iStep + (iRep-1)*max(iStep); %second bit monotonizes repeated steps
    case 'rep'
        iInp = unique(iStep);
        iOut = iRep;
    case 'custom'
        iInp = customIndex;
        iOut = customIndex(iStep);
end
each = unique(iOut);
L = length(each);

%%%%%CREATE NEW STRUCTURES AND WRITE TO WORKSPACE%%%%%
for k = 1:L
    
    % flag subsets to grab
    if strcmp(mode,'rep')
        fInp = iInp; %grab all inputs
    else
        fInp = iInp == each(k);
    end
    fOut = iOut == each(k);
    
    Sk = struct;
    Sk.BkgdConc         = breakout(bkgdconc(fInp,:),Bnames);
    Sk.Chem.ChemFiles   = S.Chem.ChemFiles;
    Sk.Chem.DilRates    = breakout(dilrate(fOut,:),Cnames);
    Sk.Chem.Rates       = S.Chem.Rates(fOut,:);
    Sk.Chem.Rnames      = S.Chem.Rnames;
    Sk.Chem.f           = S.Chem.f;
    Sk.Chem.iG          = S.Chem.iG;
    Sk.Chem.k           = S.Chem.k(fInp,:);
    Sk.Chem.iHold       = S.Chem.iHold;
    Sk.Cnames           = S.Cnames;
    Sk.Conc             = breakout(conc(fOut,:),Cnames);
    Sk.InitConc         = breakout(initconc(fInp,:),Inames);
    Sk.Met              = breakout(met(fInp,:),Mnames);
    Sk.ModelOptions     = S.ModelOptions;
    Sk.RepIndex         = S.RepIndex(fOut);
    Sk.StepIndex        = S.StepIndex(fOut);
    Sk.iRO2             = S.iRO2;
    Sk.Time             = S.Time(fOut);
    
    Sk.Met.jcorr_all    = jcorr_all(fInp,:);
    if exist('LFlux','var'), Sk.Met.LFlux = LFlux; end
    
    Sk.SolarParam.lat       = S.SolarParam.lat(fInp,:);
    Sk.SolarParam.lon       = S.SolarParam.lon(fInp,:);
    Sk.SolarParam.alt       = S.SolarParam.alt(fInp,:);
    Sk.SolarParam.startTime = S.SolarParam.startTime(fInp,:);
    Sk.SolarParam.nDays     = S.SolarParam.nDays;
    
    assignin('caller',['S' num2str(k)],Sk);
end


