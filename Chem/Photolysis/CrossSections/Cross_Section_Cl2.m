% File written by Jin Liao 02/24/2016
% 20160508 GMW  Fixed T parameterization.


function [Cross,wl_cs] = Cross_Section_Cl2(T,P)

data = dlmread('Cross_Section_Cl2.csv'); 
wl_cs = data(:,1);

[Tg,wlg] = meshgrid(T,wl_cs);
alpha = tanh(402.676./Tg);
Cross = alpha.^0.5.*27.3.*exp(-99.0.*alpha.*(log(329.5./wlg)).^2) ...
       + alpha.^2.*0.932.*exp(-91.6.*alpha.*(log(406.5./wlg)).^2);

Cross = Cross.*1e-20;

