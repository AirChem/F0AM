% ExampleSetup_MechCompare.m
% Executes all mechanism options in the "ExampleSetup_FlightSS" example
% and makes some plots for comparison.
% 20160321 GMW
% 20251103 GMW  Added CRACMM1/2 and CB7.
%               Added some code for comparing production and loss rates.

clear
% allmech = {'MCMv331','MCMv32','CB05','CB6r2','RACM2','SAPRC07B','GEOSCHEMv902','GEOSCHEMv1207',...
%     'CRACMM1','CRACMM2','CB7'};
allmech = {'CB6r2','CB7'};
Sall = cell(size(allmech));
makeplots = 0; %for FlightSS script
for a = 1:length(allmech)
    MECHANISM = allmech{a};
    ExampleSetup_FlightSS;
    
    %fix names for plotting
    switch MECHANISM
        case {'MCMv331','MCMv32','RACM2'}
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
        case {'CB05','CB6r2','CB7'}
            S.Conc.HCHO = S.Conc.FORM;
            S.Conc.MVKMAC = S.Conc.ISPD;
        case {'GEOSCHEMv902','GEOSCHEMv1207'}
            S.Conc.HCHO = S.Conc.CH2O;
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
        case 'SAPRC07B'
            S.Conc.H2O2 = S.Conc.HO2H;
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
        case {'CRACMM1','CRACMM2'}
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
            S.Conc.OH = S.Conc.HO;
    end
        
    Sall{a} = S;
end
    

%% PLOTS
PlotConc('OH',Sall,'lnames',allmech,'unit','percc','scale',1e-6)
PlotConc('HO2',Sall,'lnames',allmech,'unit','percc','scale',1e-8)
PlotConc('H2O2',Sall,'lnames',allmech)

PlotConc('NO',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.NO_ppbv,'k--')

PlotConc('NO2',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.NO2_ppbv,'k--')

PlotConc('HNO3',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.HNO3_ppbv,'k--')

PlotConc('PAN',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.PAN_ppbv,'k--')

PlotConc('HCHO',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.HCHO_ppbv,'k--')

PlotConc('MVKMAC',Sall,'lnames',allmech)
hold on
plot(D.AOCTimewave,D.MVK_MACR_pptv/1000,'k--')

%% S'MORE PLOTS FOR COMPARING RATES

S1 = Sall{1};
S2 = Sall{2};
t = S1.Time;

Sp = 'OH'; %species to examine

R1 = PlotRates(Sp,S1,5,'ptype','line','sumEq',1); %rates
P1 = sum(R1.Prod,2); %total production
L1 = sum(R1.Loss,2); %total loss
tau1 = -S1.Conc.(Sp)./L1; %lifetime, s
yl = ylim;

R2 = PlotRates(Sp,S2,5,'ptype','line','sumEq',1);
P2 = sum(R2.Prod,2);
L2 = sum(R2.Loss,2);
tau2 = -S2.Conc.(Sp)./L2;
ylim(yl)

figure
ax(1) = subplot(311);
plot(t,S1.Conc.(Sp),'k-',t,S2.Conc.(Sp),'r-')
ylabel([Sp '/ppb'])

ax(2) = subplot(312);
plot(t,P6,'k-',t,P7,'r-')
ylabel('Prod')

ax(3) = subplot(313);
plot(t,tau6,'k-',t,tau7,'r-')
ylabel('tau/s')
xlabel('Model Time')
legend('S1','S2');

linkaxes(ax,'x') %so that axes stay aligned when zooming/scrolling

