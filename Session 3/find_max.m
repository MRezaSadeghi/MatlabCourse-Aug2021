clc; clear;

vals = [1, 5, 7, 10, 4, 3, 7, 4, 8, 9, -5];

% max_val = -inf; % Method 1
max_val = vals(1); % Method 2

% Approach 1 (Classic method)
n = length(vals);
for i = 1:n
    disp(max_val)
    if max_val < vals(i)
        max_val = vals(i);
    end
end
fprintf("2- The maximum value was %d\n", max_val)

max_val = vals(1);
% Approach 2
for i = vals
    disp(max_val)
    if max_val < i
        max_val = i;
    end
end

fprintf("1- The maximum value was %d\n", max_val)
