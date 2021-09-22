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
% 20210722 GMW      Changed error messages to warnings (still throws error if nan/neg)
%                   Added filename text to plots
%                   Added warnings for negative LF/QY/CS and removed a line that corrected negative
%                   LF to 0.
% 20210922 GMW      Tweaked plots to only show first QS/QY in case of multiple outputs

%% DEAL WITH INPUTS
nT = length(T);
if length(P)~=length(T)
    error('IntegrateJ: P and T inputs must be same length.')
end

if nargin<6 || isempty(wl_bounds), wl_bounds = [0 100000]; end

if nargin<7, plotem=0; end

% define component names
if isnumeric(CSin), CSname = 'CS is array input';
else, CSname = char(CSin);
end

if isnumeric(QYin) && ~isscalar(QYin), QYname = 'QY is array input';
else, QYname = char(QYin);
end

if isnumeric(LFin), LFname = 'LF is array input';
else, LFname = char(LFin);
end

%% LIGHT FLUX
if ischar(LFin)            %text file
    if verLessThan('matlab','9.6') %R2019a is when readmatrix came out
        lf = dlmread(LFin);
        zerojunk = lf(:,1) == 0; %sometimes get bad values from csv files
        lf(zerojunk,:) = [];
    else
        lf = readmatrix(LFin);
    end
    
    wl_lf = lf(:,1);
    LF    = lf(:,2);
    
elseif isnumeric(LFin)     %2-column array
    wl_lf = LFin(:,1);
    LF    = LFin(:,2);
    
else                        %function
    [LF,wl_lf] = feval(LFin);
    
end

if any(LF<0)
    warning(['IntegrateJ: negative values in actinic flux. Data source: ' LFname])
end

%% CROSS SECTION
if ischar(CSin)            %text file
    if verLessThan('matlab','9.6') %R2019a is when readmatrix came out
        cs = dlmread(CSin);
        zerojunk = cs(:,1) == 0; %sometimes get bad values from csv files
        cs(zerojunk,:) = [];
    else
        cs = readmatrix(CSin);
    end
    
    wl_cs = cs(:,1);
    CS =    cs(:,2);
    
elseif isnumeric(CSin)     %2-column array
    wl_cs = CSin(:,1);
    CS    = CSin(:,2);
    
else                        %function
    [CS,wl_cs] = feval(CSin,T,P);
    
end

if any(CS<0)
    warning(['IntegrateJ: negative values in cross section. Data source: ' CSname])
end

%% QUANTUM YIELD
if ischar(QYin)           %text file
    if verLessThan('matlab','9.6') %R2019a is when readmatrix came out
        qy = dlmread(QYin);
        zerojunk = qy(:,1) == 0; %sometimes get bad values from csv files
        qy(zerojunk,:) = [];
    else
        qy = readmatrix(QYin);
    end
    
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

if any(QY<0)
    warning(['IntegrateJ: negative values in quantum yield. Data source: ' QYname])
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

%% PROBLEM CHECKS
nanneg = 0; %flag for terminating run
if any(J < 0)
    warning(['Negative J Value Calculated. '...
        'Check photolysis files. QYield: ' QYname '; Cross: ' CSname '; LFlux: ' LFname])
		plotem = 1;
        nanneg = 1;
elseif any(isnan(J))
    warning(['NaN J Value Calculated. '...
        'Check photolysis files. QYield: ' QYname '; Cross: ' CSname '; LFlux: ' LFname])
		plotem = 1;
        nanneg = 1;
end

%% OPTIONAL PLOTS
if plotem
    figure
    s2=subplot(221);
    p1 = plot(wl_cs,CS(:,1),'b+-',wl_out,CS_out(:,1),'ro');
    ylabel('Cross Section (cm^2)')
    legend('Input','Convolved')
	text(0.05,0.95,CSname,'fontsize',12,'units','normalized')
    s3=subplot(222);
    plot(wl_qy,QY(:,1),'b+-',wl_out,QY_out(:,1),'ro')
    ylabel('Quantum Yield')
	text(0.05,0.95,QYname,'fontsize',12,'units','normalized')
    s1=subplot(223);
    plot(wl_out,LF_out,'*-')
    ylabel('Light Flux (#/s/cm^2/nm)')
    xlabel('wavelength (nm)')
    text(0.05,0.95,LFname,'fontsize',12,'units','normalized')
    s4=subplot(224);
    plot(wl_out,QY_out.*CS_out.*LF_out.*dwl,'*-')
    ylabel('LF*QY*CS*dw (/s)')
    xlabel('wavelength (nm)')
    linkaxes([s1 s2 s3 s4],'x')
end

%% terminate if nan or neg
if nanneg
    error('IntegrateJ:InvalidOutput','Calculated J is NaN or negative. Presumably, that is a problem.')
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


