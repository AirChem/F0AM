function [Cross,wl_cs] = Cross_Section_Br2(T,P)


wl_cs = [200:2:650];

Cross = 1.06e-20*exp(-52.3*(log(223.3./wl_cs)).^2)+6.19e-19*exp(-108.5*(log(411.9./wl_cs)).^2)...
    +3.39e-19*exp(-106.8*(log(480.2./wl_cs)).^2)+3.78e-20*exp(-112.0*(log(549.3./wl_cs)).^2);

end 
