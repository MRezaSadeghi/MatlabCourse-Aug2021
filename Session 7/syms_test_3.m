clc; clear;

syms x y

int(x^2, x, [y, 4])
int(sin(x)/sqrt(y), y)

diff(x^2 + y, y)
diff(x^4, x, 4)

subs(x + y*2, [x, y], [4, 5])

T = taylor(sin(x), 'ExpansionPoint', 1, 'Order', 21);
% Variable-precision arithmetic
vpa(T, 3)
