clc; clear; close all

s = 120000;
Tend = 5;

h = Tend/s;
t = linspace(0, Tend, s);
y0 = zeros(1, s);
y1 = zeros(1, s);

% dy/dt = a*y -> y = 4*exp(a*t)


a = 2;
y0(1) = 4;
ydot = @(y, t) -a*y + sin(t)/y;

for i = 1:s - 1
    y1(i) = ydot(y0(i), t(i));
    y0(i + 1) = h*y1(i) + y0(i);
end

plot(t, y0,'DisplayName','Numeric Solution')
legend

