clc; clear;

% True & False
a = true;
b = a + 0;

% test some logical operations
v1 = 3 == 3;
v2 = 3 ~= 3;
v3 = 3 <= 3;
v4 = 3 <  3;
v5 = 5 >= 3;

% and & or
L1 = (1 == 1) & (6 == 6);
L2 = (1 == 1) & (6 <  6);
L3 = (1 == 1) | (6 <  6);
L4 = (1 == 1) & (6 <  6) & (5 > 3);

% Logical array
A = [1, 2, 3, 6, 8, 4, 9];
LogA = A > 4;
B = A(LogA);

% Logical Array
C = A((A > 2) & (A < 8));
disp(C)
