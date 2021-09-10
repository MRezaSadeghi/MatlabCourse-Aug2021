clc; clear; close all;

% Shuffle/choose
A = [4, 67, 23, 53];
A(randperm(length(A), 2));

% Choose (coefficient or all combinations)
nchoosek(5, 3)

% Diff
diff([5, 6, 7, 2, 12, 43, 5])

A = [3, 4; 5, 6];
repmat(A, 2, 3)

