clc; clear; close all

opt= optimoptions('fsolve','PlotFcn',@optimplotfirstorderopt);
[x,fval] = fsolve(@need2solve, [-1, 1], opt);

function F = need2solve(x)
    F = [x(1) - x(1)^2 - sin(x(2)),...
         x(2) - x(1)^2 + 1];
end