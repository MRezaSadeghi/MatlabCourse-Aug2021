clc; clear;

syms x y

eqn = [sin(x)^2 + cos(x) - y, sin(y)/x == sqrt(x)];
var = [x, y];
S1 = vpasolve(eqn, var);

eqn = [x - x^2 - sin(y), x - y^2 + 1];
var = [x, y];
S2 = vpasolve(eqn, var);

