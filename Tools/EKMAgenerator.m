function [InitConcEKMA,EKMAvars] = EKMAgenerator(InitConc,VOCnames,VOCfactors,NOxnames,NOxfactors)
% function [InitConcEKMA,EKMAvars] = EKMAgenerator(InitConc,VOCnames,VOCfactors,NOxnames,NOxfactors)
%
% Code to perform VOC and NOx perturbations for an examination of ozone sensitivities via the
% Empirical Kinetics Modeling Approach (EKMA).
% EKMA was originally developed by the US EPA to ozone mitigation strategies. 
% Technically, "EKMA" is a specific modeling approach using a Lagrangian frame with explicit emissions and mixing.
% See "EKMAcity.pdf" in /Docs for further background.
% Modern applications are more "EKMA-esque" as they will use a more constrained framework, 
% such as constraining VOC and NOx to observations) to do an analogous calculation.
% Users are enouraged to look in the literature for examples of F0AM EKMA applications.
%
% For example use, see ExampleSetup_EKMA.m
%
% INPUTS:
% InitConc:     3-column cell array of Initial Concentrations that is an input for F0AM.
%               All concentrations must be scalars (length of 1).
% VOCnames:     cell array of names of VOC to perturb. These must be in InitConc.
% VOCfactors:   1-d array of VOC scaling factors
% NOxnames:     cell array of names of NOx species to perturb (typically, NO and NO2).
% NOxfactors:   1-d array of NOx scaling factors
%
% OUTPUTS:
% InitConcEKMA:     Cell array with extended combinations of rescaled NOx and VOC.
% EKMAvars:         Structure of EKMA-relevant variables    
% EKMAvars.fVOC:    full set of VOC scaling factors. Will be same length as model output.
% EKMAvars.fNOx:    full set of NOx scaling factors. Will be same length as model output.
% EKMAvars.VOCnames: same as VOCnames input
% EKMAvars.NOxnames: same as NOxnames input
% EKMAvars.nVOC:    number of VOC perturbations
% EKMAvars.nNOx:    number of NOx perturbtions
%
% 20251104 GMW

%% CHECK INPUTS
tf = ismember(VOCnames,InitConc(:,1));
if any(~tf)
    error('F0AM_EKMA: VOC species not found in InitConc (%s)',join(string(VOCnames(tf))))
end

tf = ismember(NOxnames,InitConc(:,1));
if any(~tf)
    error('F0AM_EKMA: NOx species not found in InitConc (%s)',join(string(NOxnames(tf))))
end

L1 = cellfun(@length,InitConc(:,2));
L1(cellfun(@iscell,InitConc(:,2))) = 1; %in case families are specified
if any(L1 > 1)
    error('F0AM_EKMA: All inputs in InitConc must have a length of 1.')
end

%% EXTEND INPUTS

[fNOx,fVOC] = meshgrid(NOxfactors,VOCfactors); % matrices of scale factor pairs
fVOC = fVOC(:); % column vectorize
fNOx = fNOx(:);

VOCflag = ismember(InitConc(:,1),VOCnames); %logical flag
InitConc(VOCflag,2) = cellfun(@(x) fVOC*x,InitConc(VOCflag,2),'UniformOutput',0);

NOxflag = ismember(InitConc(:,1),NOxnames);
InitConc(NOxflag,2) = cellfun(@(x) fNOx*x,InitConc(NOxflag,2),'UniformOutput',0);

InitConcEKMA = InitConc;

% store variables
EKMAvars.fVOC = fVOC;
EKMAvars.fNOx = fNOx;
EKMAvars.VOCnames = VOCnames;
EKMAvars.NOxnames = NOxnames;
EKMAvars.nVOC = length(VOCfactors);
EKMAvars.nNOx = length(NOxfactors);


