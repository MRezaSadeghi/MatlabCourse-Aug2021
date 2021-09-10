clc; clear;

syms x

f = @(x) log(sin(x));
integral(f, 0.3, 0.35)
integral(f, 4, 5)

f2 = @(x, y) x.*sin(y);
integral2(f2, 0.3, 0.35, 3, 4)

f3 = @(a, b, c) a.*sin(b).*c.^3;
integral3(f3, 0.3, 0.35, 3, 4, 6, 7)

f1 = @(t) t.^2 + sin(log(t));
Tseq = linspace(5, 8);
trapz(f1(Tseq), Tseq)