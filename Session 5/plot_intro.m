clc; clear; close all

%% Part 1
y = [5, 6, 7, 2, -1, 3, 5, 7];
plot(y)

%% Part 2
x = linspace(-2, 8, 50);
y = x .* 2 + sin(x);
y(10:20) = NaN;
% y(10:20) = 1;
plot(x, y)

% Adding Bounds
xlim([-5, 50])
ylim([min(y) - 2, max(y)*1.2])

%% Part 3
x = linspace(-2, 8, 10);
y = x .* 2 + sin(x);
P = plot(x, y, 'k', 'LineWidth', 4);
P.Marker = 'o';
P.MarkerSize = 12;
P.Color = [0.5, 0.8, 0.1];
P.MarkerEdgeColor = [0.9, 0.8, 0.6];
P.MarkerFaceColor = 'r';
gcf.Color = [0.1, 0.1, 0.9];

%% Part 4
x = linspace(0.1, 8, 10);
y = x .* 2 + sin(x);
xlabel("Axis X")
ylabel("Axis Y")
title("plot")


ax = gca;
% ax.XScale = 'log';
ax.YTick = [1, 3, 4, 5.1, 10];
ax.YTickLabel=  ["Here", "1", "1.1", "Here", "yo"];
ax.XTick = [];

%% Part 5
xline(3, ':')
yline(4, '--')
yline(1, '-.')
