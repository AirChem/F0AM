% File written by Jin Liao 02/23/2016
% 20160303 GMW  Checked. Removed spreadsheet read and vectorized.


function [QYield,wl_qy] = Quantum_Yield_Acrolein(T,P)

wl_qy = (282:2:390)'; %same range as cross section
M = NumberDensity(P,T);
QYield = 1./( 0.086 + 1.613e-17.*M')+0.004;
QYield=repmat(QYield,length(wl_qy),1);

end
