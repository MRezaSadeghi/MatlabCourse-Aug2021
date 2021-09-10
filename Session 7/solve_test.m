clc; clear; close all

syms x y

eqn = x - x^2 == 1;
var = x;
S = solve(eqn, var);

for i = 1:length(S)
    disp(double(S(i)));
end


eqn = [x - x^2 == sin(y), x + y - y^2];
var = [x, y];
S = solve(eqn, var);

for i = 1:length(S.x
    disp(double(S.x(i)));
end
for i = 1:length(S.y)
    disp(double(S.y(i)));
end


