clc; clear; close all

syms x(t) y(t) a

eqn = diff(x, t) == x;
S1 = dsolve(eqn);

eqn = [diff(x, t) == y + 1, diff(y, t) == x + y];
cond = [y(0) == 3, x(0) == 2.25];
S2 = dsolve(eqn, cond);

eqn = [diff(x, t) == y + 1, diff(y, t) == x + y];
cond = [y(0) == 3, x(a) == 2.25];
S3 = dsolve(eqn, cond);