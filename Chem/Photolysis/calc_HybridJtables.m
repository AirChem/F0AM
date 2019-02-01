function calc_HybridJtables(test_flag,par_flag)
% function calc_HybridJtables(test_flag,par_flag)
% Generates "HybridJtables.mat", which is a set of lookup tables for F0AM J-values.
% Calculation uses TUV-derived solar spectra and CS/QY info from IUPAC/JPL.
%
% Setting test_flag to 1 is recommended if changes are made to J_BottomUp.m.
% This will calculate J's for a single solar cycle and generate an inspection plot
% but will not save outputs.
%
% Setting par_flag to 1 while attempt to speed up code using the parallelization.
% MATLAB's Parallel Computing Toolbox must be present for this to work.
%
% Clear-sky TUVv5.2 solar spectra were calculated with the following inputs:
%   SZA         0:5:90      degrees
%   Altitude    0:1:15      km
%   O3 column   100:50:600  DU
%   albedo      0:0.2:1
%   ground Alt  0           km
%   AOD         0.235       
% TUV solar spectra are contained in "TUV_ActFlux_tables.mat", 
% which was generated via calc_TUV_ActFlux_tables.m (available on request).
% 
% QY and CS information are taken from IUPAC and/or JPL recommendations as documented in 
% PhotoDataSources.xlsx. All J-values found in J_BottomUp.m are computed.
%
% Output J-values are saved as gridded matrices as a function of SZA, altitude, O3 column and albedo.
% Note that running this function can take several hours.
%
% 20160304 GMW
% 20160406 GMW  Modified to include albedo and o3 column dependence.
% 20190117 GMW  Repackaged for general consumption.
%               Replaced old Met profiles (lapse rate = 9.8 K/km) with true US Standard Atmosphere.
%               Added test case and plot code.
% 20190123 GMW  Added parallelization option.

%% DEFAULTS
if nargin<1, test_flag = 0; end
if nargin<2, par_flag = 0; end

%% INITIALIZE PARALLELIZATION

if par_flag
    
    %check
    if ~exist('parfor','builtin') %check
        
        warning('calc_HybridJtables:MissingToolbox',...
            'Parallel computing toolbox not found. Will loop serially.')
        par_flag = 0;
        
    elseif isempty(gcp('nocreate')) % initialize parpool if needed
        
        pID = parcluster;
        parpool(pID,pID.NumWorkers);
        
    end
end

%% LOAD INPUTS

load('TUV_ActFlux_tables.mat','ActFlux','ALT','SZA','O3col','albedo') %generated with calc_TUV_ActFlux_tables.m 

% sub-select test case if needed
if test_flag
    disp('calc_HybridJtables: test case')
    disp('Evaluation at ALT = 1 km, albedo = 0.2, O3col = 300 DU')
    ia = ALT==1;        ALT = ALT(ia);
    ib = albedo==0.2;   albedo = albedo(ib);
    io = O3col==300;    O3col = O3col(io);
    
    ActFlux = ActFlux(ia,io,ib);
end

% make column vectors
SZA     = SZA(:);
ALT     = ALT(:)*1000; %km to m
albedo  = albedo(:);
O3col   = O3col(:);

% lengths
La = length(ALT);
Ls = length(SZA);
Lb = length(albedo);
Lo = length(O3col);

% METEOROLOGY
% uses U.S. Standard Atmosphere (see Wikipedia)
[T,P] = USatmos(ALT);

%% CALCULATE J-VALUES

LFlux = ActFlux{1,1,1}(:,1:2); %initial spectrum
wl = LFlux(:,1); %wavelengths, same for all spectra
Jnow = J_BottomUp(LFlux,300,760); %get Jnames
Jnames = fieldnames(Jnow);
nJ = length(Jnames);
Jall = nan(Ls*La*Lb*Lo,nJ);
for i=1:La
    Ti = T(i);
    Pi = P(i);
    for j=1:Lo
        for k=1:Lb
            fprintf('ActFlux %d of %d\n',k+(j-1)*Lb+(i-1)*Lo*Lb,La*Lo*Lb)
            
            photons = ActFlux{i,j,k}(:,2:end); %spectra
            Jpar = cell(Ls,1); %temporary holding cell array
            
            if par_flag
                parfor m=1:Ls
                    LFlux = [wl photons(:,m)];
                    Jnow = J_BottomUp(LFlux,Ti,Pi);
                    Jpar{m} = breakin(Jnow);
                end
            else
                for m=1:Ls
                    LFlux = [wl photons(:,m)];
                    Jnow = J_BottomUp(LFlux,Ti,Pi);
                    Jpar{m} = breakin(Jnow);
                end
            end
            
            n = (1:Ls) + (k-1)*Ls + (j-1)*Lb*Ls + (i-1)*Lo*Lb*Ls; %index for where to stuff it
            Jall(n,:) = cell2mat(Jpar);
            
        end
    end
end

% Organize by J-value
J = struct;
for i=1:nJ
    J.(Jnames{i}) = reshape(Jall(:,i),Ls,Lb,Lo,La);
    J.(Jnames{i})(SZA==90,:,:,:) = 0; %sometimes not quite zero
end

%% PLOT OR SAVE

if test_flag %plot
    
    [~,noon] = min(SZA); %peak SZA
    
    % plot normalized J values in groups of 10
    nline = 10;
    nfig = ceil(nJ/nline);
    whichfig = sort(repmat((1:nfig)',nline,1)); %figure index
    whichfig = whichfig(1:nJ);
    for i = 1:nfig
        
        % get values
        k = whichfig==i;
        Jn = Jnames(k);
        Jp = Jall(:,k);
        Jpmax = Jp(noon,:); 
        Jpnorm = Jp./Jpmax;
        
        % build legend
        Jpmax_str = num2str(Jpmax(:),'%2.1E');
        for m = 1:sum(k)
            Jn{m} = [Jn{m} ' (' Jpmax_str(m,:) '/s)'];
        end
        
        % colors (assumes 10 lines for now)
        % generated with distColors.m
        c = [
        	0           0           1
            0           1           0
            1           0           0
            0           0           0.2069
            1           0           0.6897
            0           0.3103      0
            1           0.8276      0
            0           0.6207      1
            0.6207      0.3103      0.2759
            0.2069      1           0.7241
            ];
    
        %plot
        figure
        set(gcf,'DefaultAxesColorOrder',c)
        plot(SZA,Jpnorm,'-')
        xlabel('SZA/deg')
        ylabel('J/J_0 (J_0 in legend)')
        legend(Jn,'location','southwest')
        title('calc HybridJtables')
        xlim([0 91])
        ylim([0 1.01])
        
    end
    
else %save
    
    [SZAhybrid,ALBhybrid,O3Chybrid,ALThybrid] = ndgrid(SZA,albedo,O3col,ALT);
    Jhybrid = J;
    
    ScriptDir = fileparts(mfilename('fullpath')); %use directory for this script
    save(fullfile(ScriptDir,'HybridJtables.mat'),'*hybrid')
end

