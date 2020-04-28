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
% 20200427 GMW Removed support of repIndex (can still be done with the "custom" index option).
%              Also removed use of breakin/breakout, problematic for some structures with variable
%              data types.

%%%%%CHECK INPUTS%%%%%
if nargin<2
    mode = 'step';
else
    valid = {'step','custom'};
    if ~any(strcmp(mode,valid))
        error('SplitRun: Invalid mode. Valid options are "step" and "custom".')
    elseif strcmp(mode,'custom')
        if nargin<3
            error('SplitRun: "iCustom" argument must be included for "custom" index option.')
        elseif length(customIndex)~=length(S.Met.T)
            error('SplitRun: "iCustom" argument must be same length as # of model inputs.')
        end
    end
end

%%%%%GET INDICES%%%%%
iStep = S.StepIndex;

%iInp is index for divying up input variables (e.g. InitConc)
%iOut is index for divying up output variables (e.g. Conc)
switch mode
    case 'step'
        iInp = unique(iStep);
        iOut = iStep;
    case 'custom'
        iInp = customIndex;
        iOut = customIndex(iStep);
end
each = unique(iOut);
L = length(each);

%%%%%CREATE NEW STRUCTURES AND WRITE TO WORKSPACE%%%%%
for k = 1:L
    
    % flag subsets to grab
    fInp = iInp == each(k);
    fOut = iOut == each(k);
    
    Sk = struct;
    
    % INPUTS
    Sk.Met                  = splitStruct(S.Met,fInp);
    Sk.InitConc             = splitStruct(S.InitConc,fInp);
    Sk.BkgdConc             = splitStruct(S.BkgdConc,fInp);
    Sk.ModelOptions         = S.ModelOptions;
    Sk.SolarParam           = splitStruct(S.SolarParam,fInp);
    Sk.SolarParam.Converge  = splitStruct(S.SolarParam.Converge,fInp);
    
    % OUTPUTS
    Sk.Time             = S.Time(fOut);
    Sk.StepIndex        = S.StepIndex(fOut);
    Sk.iRO2             = S.iRO2;
    Sk.Cnames           = S.Cnames;
    Sk.Conc             = splitStruct(S.Conc,fOut);
    
    Sk.Chem             = S.Chem;
    Sk.Chem.DilRates    = splitStruct(S.Chem.DilRates,fOut);
    Sk.Chem.Rates       = S.Chem.Rates(fOut,:);
    Sk.Chem.k           = S.Chem.k(fInp,:);
    
    Sk = orderfields(Sk);

    assignin('caller',['S' num2str(k)],Sk);
end

% subroutine for splitting structures with variable field datatypes
    function Xsplit = splitStruct(X,flag)
        names = fieldnames(X);
        for i = 1:length(names)
            v = X.(names{i});
            if ischar(v) || isscalar(v) || isempty(v) || isstruct(v)
                Xsplit.(names{i}) = v;
            else
                Xsplit.(names{i}) = v(flag,:);
            end
        end
    end

end
