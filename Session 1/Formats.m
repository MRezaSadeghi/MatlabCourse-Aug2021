clc; clear;

% Sample numbers
a = 862.5743132;
b = 0.0156454;

% Default format
format short
disp('Format: Short')
disp(b)
disp(a)

format long
disp('Format: long')
disp(b)
disp(a)

format compact
disp('Format: Compact')
disp(b)
disp(a)
a

format loose % Opposite of compact
format short e
disp('Format: Loose + Short e')
disp(b)
disp(a)

format rat
disp('Format: Loose + rat')
disp(b)
disp(a)

