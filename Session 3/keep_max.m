clc; clear;

% get data
data = [3, 5, 6, 5, 4, 5, 6, 8, 9, 12, 4, 5, 7, 2, 6];

n = length(data);
max_values = zeros(1, n);

% allocating the first value
max_values(1) = data(1);

for i = 2:n
    if max_values(i - 1) < data(i)
        max_values(i) = data(i);
    else
        max_values(i) = max_values(i - 1);
    end
end

% plot(data)
% hold on
% plot(max_values)