clc; clear;

% 1D array
v1 = [1, 3, 4, 2, 7];
v2 = [7 4 4 7];

% 2D array
m1 = [1, 2; 4, 6; 5, 7];
m2 = [3, 4; 6, 5];

% merging arrays
m3 = [m1, m1];
m4 = [m1; m2];
% Err: m5 = [m1, m3];

% size
[i, j] = size(m1);
size_test_1 = size(m1);
size_test_2 = size(v1);

