clc; clear; close all;

xMax = 30;
yMax = 40;
N = 80;

x = linspace(0, xMax, N);
y = linspace(0, yMax, N);
[X, Y] = meshgrid(x, y);

Z = X + (Y - 20).^2;
Z = Z + 20*randi([0, 15], N);

surf(X, Y, Z)