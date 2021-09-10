clc; clear;

% Poly
coef = [1.53, 3, 0, 1];
polyval(coef, 2);

roots(coef);

coef
polyder(coef)
polyint(coef, 4) %with Constant
poly2sym(coef)
