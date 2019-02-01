function [Conc,Time,StepIndex,RepIndex,k_solar,SZA_solar] = ...
    IntegrateStep(istep,irep,nIc,conc_init,conc_last,conc_bkgd,ModelOptions,Chem,k,Sbroad,Sslice,Mbroad,Mslice)
% function [Conc,Time,StepIndex,RepIndex,k_solar,SZA_solar] = ...
%     IntegrateStep(istep,irep,nIc,conc_init,conc_last,conc_bkgd,ModelOptions,Chem,k,Sbroad,Sslice,Mbroad,Mslice)
% Performs integration of chemical ODEs for a single set of inputs/constraints.
%
% INPUTS:
%   istep:          scalar index for current step
%   jrep:           scalar index for current repetition
%   nIC:            total number of steps
%   conc_init:      1-D vector if initial concentrations
%   conc_last:      1-D vector of output from previous step. Only needed if steps are linked.
%   conc_bkgd:      1-D vector of background concentrations
%   ModelOptions:   structure of model options
%   Chem:           structure of chemistry variables (ChemFiles,f,iG,iRO2,Family,iHold,lr_flag)
%   k:              1-D vector of reaction rate coefficients
%   Sbroad:         SolarParam broadcast variable structure, generated from struct2parvar
%   Sslice:         SolarParam sliced variable 1-D array
%   Mbroad:         Met broadcast variable structure
%   Mslice:         Met sliced variable 1-D array
%
% OUTPUTS (size depends on ModelOptions)
%   Conc:       matrix of calculated concentrations
%   Time:       integration time, s
%   StepIndex:  linear index for step
%   RepIndex:   linear index for rep
%   k_solar:    rate constants used in solar cycle calculation
%   SZA_solar:  SZA cycle used in solar cycle calculation
%
% 20180227 GMW

% print message
if ModelOptions.Verbose>=1
    fprintf('Step %u of %u\n',istep,nIc)
    tic
end

%% MASSAGE INPUTS

Met         = parvar2struct(Mbroad,Mslice);
SolarParam  = parvar2struct(Sbroad,Sslice);

if ~isnan(SolarParam.nDays), SolarFlag = 1;
else,                        SolarFlag = 0;
end

nSp = length(conc_init);

%% GET SOLAR-EVOLVING CHEMISTRY
if SolarFlag
    
    %%%%% CALCULATE SZA CYCLE %%%%%
    cycleTime  = ModelOptions.IntTime:ModelOptions.IntTime:86400; %cycle for one day
    extendTime = repmat(cycleTime,1,SolarParam.nDays);
    nSolar = length(extendTime);
    
    % sun_position inputs are structures
    sTime.year  = SolarParam.startTime(1); 
    sTime.month = SolarParam.startTime(2);
    sTime.day   = SolarParam.startTime(3); 
    sTime.hour  = SolarParam.startTime(4);
    sTime.min   = SolarParam.startTime(5); 
    sTime.sec   = SolarParam.startTime(6) + extendTime;
    sTime.UTC   = 0;
    
    location.longitude  = SolarParam.lon;
    location.latitude   = SolarParam.lat;
    location.altitude   = SolarParam.alt;
    
    sun = sun_position(sTime,location); %zenith and azimuth angles of sun
    sun.zenith(sun.zenith>90) = 90;
    
    %%%%% EXTEND MET %%%%%
    Mnames = fieldnames(Met);
    for m = 1:length(Mnames)
        solarMet.(Mnames{m}) = repmat(Met.(Mnames{m}),nSolar,1);
    end
    solarMet.SZA = sun.zenith;
    
    %calculate rate constants
    [~,~,k] = InitializeChemistry(solarMet,Chem.ChemFiles,ModelOptions,0);
    
else
    nSolar = 1; %dummy variable for integration loop
end

%% DO INTEGRATION

Conc = nan(nSolar,nSp); %placeholder only; might get overwritten if output is single-point
Time = nan(nSolar,1);

for h = 1:nSolar
    
    if ModelOptions.Verbose>=2 && SolarFlag
        fprintf('Solar Cycle %u of %u\n',h,nSolar);
    end
    
    %%%%% INITIALIZE CONCENTRATIONS %%%%%
    if ~isempty(conc_last)
        conc_init_step = conc_last; %carry over end concs from previous step
        conc_init_step(Chem.iHold) = conc_init(Chem.iHold); % override for held species
    else
        conc_init_step = conc_init;
    end
    
    % family init
    Fnames = fieldnames(Chem.Family);
    for i = 1:length(Fnames)
        j = Chem.Family.(Fnames{i}).index;
        s = Chem.Family.(Fnames{i}).scale;
        
        % total family conc to conserve
        Chem.Family.(Fnames{i}).conc = sum(conc_init(j).*s); 
        
        % determine partitioning using current conditions
        conc_init_step(j) = Chem.Family.(Fnames{i}).conc .* s.*conc_init_step(j)./sum(conc_init_step(j).*s);
    end
    
    %%%%% CALL ODE SOLVER %%%%%
    param = {...    %parameters for dydt_eval
        k(h,:),...
        Chem.f,...
        Chem.iG,...
        Chem.iRO2,...
        Chem.iHold,...
        Met.kdil,...
        Met.tgauss,...
        conc_bkgd,...
        ModelOptions.IntTime,...
        ModelOptions.Verbose,...
        Chem.Family,...
        Chem.iLR,...
        0,... %Jac_flag
        };
    
    options = odeset;
    
    %Jacobian speeds integration
    options = odeset(options,'Jacobian',@(t,conc_out) Jac_eval(t,conc_out,param));
    
    % mass matrix for family treatment
    options = odeset(options,'Mass',@(t,conc_out) Mass_eval(t,conc_out,param));
    options = odeset(options,'InitialSlope',dydt_eval(0,conc_init_step',param));
%     options = odeset(options,'MStateDependence','strong');

    % call ode solver
    [time_out,conc_out] = ode15s(@(t,conc_out) dydt_eval(t,conc_out,param),...
        [0 ModelOptions.IntTime],conc_init_step',options);
    
    %%%%% TIME OFFSETS %%%%%
    if SolarFlag
        time_out = time_out + (h-1).*ModelOptions.IntTime;
    elseif ModelOptions.LinkSteps
        time_out = time_out + (istep-1).*ModelOptions.IntTime + (irep-1).*nIc.*ModelOptions.IntTime;
    end
    
    %%%%% OUTPUT %%%%%
    if ModelOptions.EndPointsOnly
        Conc = conc_out(end,:);
        Time = time_out(end);
    elseif SolarFlag
        % in this case (EndPointsOnly = 0 + Solar cycle), output end of each mini-step
        Conc(h,:) = conc_out(end,:);
        Time(h) = time_out(end);
    else
        % EndPointsOnly = 0 but not Solar
        Conc = conc_out;
        Time = time_out;
    end
    
    % initialize next step if needed
    conc_last = conc_out(end,:);
    
end %end Solar for-loop

%%%%% OTHER OUTPUTS %%%%%
StepIndex = istep.*ones(size(Time));
RepIndex  = irep.*ones(size(Time));
        
if SolarFlag
    SZA_solar = solarMet.SZA;
    if ModelOptions.EndPointsOnly,  k_solar = k(end,:);
    else,                           k_solar = k;
    end
else
    SZA_solar = [];
    k_solar = [];
end

if ModelOptions.Verbose>=1
    dt = datestr(toc/86400,'HH:MM:SS');
    fprintf('  Step %u time: %s\n',istep,dt)
end


