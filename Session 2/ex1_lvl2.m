clc; clear;

% Read data
data = xlsread('data');

% Calc. BMI
bmi = data(:, 1)./((data(:, 2)/100).^2);

% Show results
fprintf("w = %3.0f[kg]\th = %3.0f[cm]\t BMI=%2.2f\n", [data, bmi]')