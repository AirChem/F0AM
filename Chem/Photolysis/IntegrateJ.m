function [J,wl_out,QY_out,CS_out,LF_out] = IntegrateJ(CSin,QYin,LFin,T,P,wl_bounds,plotem)
% function J = IntegrateJ(Cross,QYield,LFlux,T,P,wl_bounds,plotem)
% Explicitly calculates a photolysis frequency by integrating the product of
% cross section, quantum yield and actinic flux over wavelength.
% Based on an ancient file from JD Crounse and F Paulot.
%
% INPUTS
% CSin: absorption cross-section (cm^2) and corresponding wavelength (nm).
% QYin: quantum yield (unitless) and corresponding wavelength (nm). 
% LFin: light flux (quanta/cm^2/s/nm) and corresponding wavelength (nm).
% T: temperature (in K). Can be scalar or 1-D array.
% P: pressure (in mbar). Same size as T.
% wl_bounds: an optional 2-element vector of min and max cutoff wavelengths.
% plotem: optional flag to plot CS, QY, LF and their product. 0 or 1.
%
% For each of the first three inputs, there are several options for input format.
% (1) string: name of text file where 1st column is wavelength and 2nd column is CS/QY/PF.
% (2) array: 2-column numeric array of wavelength and CS/QY/PF.
% (3) function: a handle for a function with CS/QY/PF as 1st output and wavelength as 2nd.
%               Function must have inputs of T and P (in that order) AND
%               be vectorized such that it returns a matrix with one column for each T input.
% (4) scalar: assumed constant at all wavelengths (QUANTUM YIELD ONLY)
%
% OUTPUTS
% J: photolysis frequency, /s
% wl_out: wavelength grid for integration, nm
% QY_out: gridded quantum yield
% CS_out: gridded cross section, cm^2
% LF_out: gridded light flux, quanta/cm^2/s/nm
%
% 20120620 WGM      Creation.
% 20120727 GMW      Modified to work with T and P inputs as arrays.
%                     Also changed integration over wavelength to operate with 
%                     coarsest wavelength resolution of given data.
% 20151024 GMW      Changed name from "Photolysis" to "IntegrateJ."
%                     Also modified commenting and error messages to match UWCM style.
%                     Also identified a major error in final integration and fixed it.
%                     Also added better error handlers at the end.
% 20160215 GMW      Added option for LFlux, QYield and Cross to be specified as matrices.
%                     Cleaned up comments, made some tweaks to conditional criteria.
%                     Fixed behavior of wl_bounds input (this should just be limits).
%                     Modified CS/QY convolution from linear interpolation (bad) to an
%                     integral-based convolution as done in TUV (better).
% 20160302 GMW      Modified for vectorized CS/QY functions.
% 20160425 GMW      Added plotting option.
% 20190222 GMW      Added *_out outputs.

%% DEAL WITH INPUTS
nT = length(T);
if length(P)~=length(T)
    error('IntegrateJ: P and T inputs must be same length.')
end

if nargin<6 || isempty(wl_bounds), wl_bounds = [0 100000]; end

if nargin<7, plotem=0; end

%% LIGHT FLUX
if ischar(LFin)            %text file
    lf = dlmread(LFin);
    wl_lf = lf(:,1);
    LF    = lf(:,2);
elseif isnumeric(LFin)     %2-column array
    wl_lf = LFin(:,1);
    LF    = LFin(:,2);
else                        %function
    [LF,wl_lf] = feval(LFin);
end
LF(LF<0) = 0;

%% CROSS SECTION
if ischar(CSin)            %text file
    cs = dlmread(CSin);
    wl_cs = cs(:,1);
    CS =    cs(:,2);
elseif isnumeric(CSin)     %2-column array
    wl_cs = CSin(:,1);
    CS    = CSin(:,2);
else                        %function
    [CS,wl_cs] = feval(CSin,T,P);
end

%% QUANTUM YIELD
if ischar(QYin)           %text file
    qy = dlmread(QYin);
    wl_qy = qy(:,1);
    QY    = qy(:,2);
elseif isnumeric(QYin) && isscalar(QYin)     %scalar
    wl_qy = wl_lf;
    QY    = QYin*ones(size(wl_qy));
elseif isnumeric(QYin)    %2-column array
    wl_qy = QYin(:,1);
    QY    = QYin(:,2);
else                        %function
    [QY,wl_qy] = feval(QYin,T,P);
end

%% TRUNCATE AND INTERPOLATE
% get common wavelenth grid
wl_out = wl_lf;
iwl = wl_out>=wl_bounds(1) & wl_out<=wl_bounds(2);
wl_out = wl_out(iwl);
LF_out = LF(iwl);

% define start and stop points for QY/CS smearing
% assumes LF wavelengths are mid-points
% also assumes equal spacing on ends
dwl = diff(wl_out);
dwl(end+1) = dwl(end);
dwl2 = dwl./2;
wllim = [wl_out(1) - dwl2(1); wl_out + dwl2];
dwl = diff(wllim);

% convolute Cross, QY to output grid
% integration/smearing mimics that done in TUV file "numer.f interp2"
N = length(wl_out);
CS_out=zeros(N,1);
QY_out=zeros(N,1);
for i=1:N
    wll = wllim(i);
    wlu = wllim(i+1);
    
    if    wlu<min(wl_cs) || wll>max(wl_cs) %skip if outside CS window
    else, CS_out(i) = smear(wl_cs,CS,wll,wlu); %smear function defined below
    end
    
    if    wlu<min(wl_qy) || wll>max(wl_qy) %skip if outside QY window
    else, QY_out(i) = smear(wl_qy,QY,wll,wlu);
    end
end

% OLD METHOD, REPLACED 20160219 GMW
% wlmin = max([min(wl_bounds),min(wl_qy),min(wl_lf),min(wl_cs)]);
% wlmax = min([max(wl_bounds),max(wl_qy),max(wl_lf),max(wl_cs)]);
% dwl = max([diff(wl_qy);diff(wl_lf);diff(wl_cs)]); %determine wavelength spacing by worst resolution
% wlavg = [wlmin:dwl:wlmax]';
% wlavg = wl_out;
% CS_out = interp1(wl_cs,CS,wlavg);
% QY_out = interp1(wl_qy,QY,wlavg);
% LF_out = interp1(wl_lf,LF,wlavg);

%Expand if running for multiple T/P inputs
if nT>1
    if size(LF_out,2)==1
        LF_out = repmat(LF_out,1,nT);
    end
    
    if size(CS_out,2)==1
        CS_out = repmat(CS_out,1,nT);
    end
    
    if size(QY_out,2)==1
        QY_out = repmat(QY_out,1,nT);
    end
    
    if size(dwl,2)==1
        dwl = repmat(dwl,1,nT);
    end
end

%% EVALUATE J
J = trapz(wl_out,QY_out.*CS_out.*LF_out)';

if any(J < 0)
    error(['Negative J Value Calculated. '...
        'Check photolysis files. QYield:' char(QYin) ' Cross: ' char(CSin)])
elseif any(isnan(J))
    error(['NaN J Value Calculated. '...
        'Check photolysis files. QYield:' char(QYin) ' Cross: ' char(CSin)])
end

%% OPTIONAL PLOTS
if plotem
    figure
    s2=subplot(221);
    plot(wl_cs,CS,'b+-',wl_out,CS_out,'ro')
    ylabel('Cross Section (cm^2)')
    legend('Input','Convolved')
    s3=subplot(222);
    plot(wl_qy,QY,'b+-',wl_out,QY_out,'ro')
    ylabel('Quantum Yield')
    s1=subplot(223);
    plot(wl_out,LF_out,'k*-')
    ylabel('Light Flux (#/s/cm^2/nm)')
    xlabel('wavelength (nm)')
    s4=subplot(224);
    plot(wl_out,QY_out.*CS_out.*LF_out.*dwl,'k*-')
    ylabel('LF*QY*CS*dw (/s)')
    xlabel('wavelength (nm)')
    linkaxes([s1 s2 s3 s4],'x')
end

%% SUB-FUNCTION FOR INTEGRAL CONVOLUTION
% function yg = smear(x,y,xgl,xgu)
% Convolutes a cross section or quantum yield to another wavelength resolution
% by trapezoidal integration over wavelength and then re-destributing evenly over the output grid.
% stolen/borrowed directly from the TUV routine numer.f/interp2
    function yg = smear(x,y,xgl,xgu)
        
        area = 0;
        for k=1:length(x)-1
            if x(k+1)<xgl || x(k)>xgu %outside window
                continue
            end
            
            a1 = max(x(k),xgl);
            a2 = min(x(k+1),xgu);
            
            slope = (y(k+1) - y(k))/(x(k+1) - x(k));
            b1 = y(k) + slope*(a1 - x(k));
            b2 = y(k) + slope*(a2 - x(k));
            area = area + (a2 - a1)*(b2 + b1)/2;
        end
        yg = area./(xgu-xgl);
    end
    
end


