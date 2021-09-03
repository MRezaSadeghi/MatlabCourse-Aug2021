clc; clear; close all

sr = 100;
Tend = 2.2;
n = floor(Tend*sr);
t = linspace(0, Tend, n);

subplot(3, 1, 1)
y1 = sin(3*t) + sin(0.2*t);
plot(t, y1)

subplot(3, 1, 2)
y2 = y1 + rand(1, n)*0.2;
plot(t, y2);

subplot(3, 1, 3)
y2 = y1 + randn(1, n)*0.2;
plot(t, y2);