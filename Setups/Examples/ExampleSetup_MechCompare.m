% ExampleSetup_MechCompare.m
% Executes all mechanism options in the "ExampleSetup_FlightSS" example
% and makes some plots for comparison.
% 20160321 GMW

clear
allmech = {'MCMv331','MCMv32','CB05','CB6r2','RACM2','GEOSCHEM'};
Sall = cell(size(allmech));
makeplots = 0; %for FlightSS script
for a = 1:length(allmech)
    MECHANISM = allmech{a};
    ExampleSetup_FlightSS;
    
    %fix names for plotting
    switch MECHANISM
        case {'MCMv331','MCMv32','RACM2'}
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
        case {'CB05','CB6r2'}
            S.Conc.HCHO = S.Conc.FORM;
            S.Conc.MVKMAC = S.Conc.ISPD;
        case 'GEOSCHEM'
            S.Conc.HCHO = S.Conc.CH2O;
            S.Conc.MVKMAC = S.Conc.MVK + S.Conc.MACR;
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

