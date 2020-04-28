function k = GCARR(T, A, B, EoverR)
% function k = GCARR(T, A, B, EoverR)
% calculates Arrhenius-like rate coefficients a la GEOS-Chem.
% assumes T in K.
% 20200426 GMW

k = A .* (T./300).^B .* exp(EoverR./T);


