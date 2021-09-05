clc; clear; close all

%% Pie chart
x = [20, 51, 75, 8];
ex = [1, 0, 0, 0];
text_label = {'Group1','Group2','Group3', 'Aptitude'};
pie(x, ex);%, text_label)
title("Pie")
lgd = legend(text_label);
lgd.Location = 'southwest';

%% Bar Chart
y = [3, 5, 6, 7, 2, 3, 0.1];
y = rand(4, 5)*10 + 1;
x = [1990, 2000, 2010, 2020, 2030];

b = bar(x, y);%, 'stacked')
b(1).CData(1, :) = [.5 0.90 .9];

%% Histo

x = rand(1, 300);
% histogram(x, 15)
