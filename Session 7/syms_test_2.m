clc; clear;

syms x y z

f = 1/x + x^2;
g = tan(y);
compose(f, g)
compose(g, f)

expand(x*(x + y))
factor(4*x^2 + 2*y*x)
factor(45452)
pretty(x/y + y)

simplify(sin(x) + cos(x))
simplify(1 + 1/cos(x)^2)
simplify(exp(x*log(sqrt(y+z))))

u = symunit;
expr = 300*u.km + 40*u.inch + 2*u.mile;
res = simplify(expr)