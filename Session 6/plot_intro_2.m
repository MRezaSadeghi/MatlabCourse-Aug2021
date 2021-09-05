clc; clear; close all

%% Part 1
x1 = linspace(-5, 9, 140);
y1 = sin(x1);
y2 = x1*2 + 10*sin(x1)/5;

plot(x1, y1);
hold on
plot(x1, y2, ':');

%% Part 2

N = 8;
x = linspace(0, 15, N);
y = randi([0, 20], 10, N);

subplot(2, 3, 1)
xx = linspace(min(x), max(x), 100);
yy = spline(x, y(1, :), xx);
plot(x, y(1, :), xx, yy)

subplot(2, 3, 2)
plot(x, y(2, :))

subplot(2, 3, 3)
plot(x, y(3, :))

subplot(2, 3, [4, 5])
plot(x, y(4, :))

subplot(2, 3, 6)
plot(x, y(6, :))
