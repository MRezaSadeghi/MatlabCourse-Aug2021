clc; clear;

% make an array of zeros
zeros(3)
zeros(3, 2)

% make an array of ones
zeros(6)
zeros(2, 1)

% eye matrix
eye(4)

% Matrix rank
A = [1, 2, 3; 2, 4, 6; 1, 1, 1];
B = magic(3);
rank(A)
rank(B)
rank(zeros(4))

% Sort & index
A = [1, 3, 5, 4, 2, 0, 8];
B = [4, 5, 3, 2, 5, 2, 1];
[i, j] = sort(A);
B(j);

% Max and Min
[ind, val] = max(A)
[ind, val] = min(A)
