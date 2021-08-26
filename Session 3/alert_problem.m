clc; clear;

% get data
data = [3, 5, 6, 5, 4, 5, 6, 8, 9, 12, 4, 5, 7, 2, 6];
threshold = 10;

ind = 1;
while data(ind) < threshold
    fprintf("Healthy state\n")
    ind = ind + 1;
end

fprintf("Degredation state starts!\n")