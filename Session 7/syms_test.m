clc; clear;

syms x
syms w y
syms z positive
syms k complex
syms 'A%d' [2, 3]

S = syms;

f = x + w*y;
sym_variables = symvar(f + x);


f1 = x^3 - x + 10*cos(x^2);
fplot(x, f1);

ftest = @(x,y) y.*sin(x) + x.*cos(y) - 1
fimplicit(x^3 + y^3 - 3*x*y)
hold on 
fimplicit(x + y + 1, ':r')

factor(x^2 + x*y)

