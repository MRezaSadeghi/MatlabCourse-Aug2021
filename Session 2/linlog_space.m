clc; clear;

Tstart = 0;
Tend = 10;
n = 1200;

% linear space (default n = 50)
% Suggestion: test it for complex values

a = linspace(Tstart, Tend, n);

% log space logspace(a, b, m): 10^a ... 10^b

% Sample rate: Number of samples per second

sr = 50;
n = Tend*sr;
t = linspace(Tstart, Tend, n);