clc; clear;

% Define an array
a = [3, 6, 2, 9];

% Use for to analyze the components of the array
for i = a
    disp(i + 1)
    % the array a can't be changed here
end

for j = 1:4
    disp(2^j)
end