clc; clear;

% get data
data = [3, 5, 6, 5, 4, 5, 6, 8, 9, 12, 4, 5, 7, 2, 6];

for i = data
    fprintf("start, data = %d\n", i)
    if i > 10
         fprintf("higher bound, data = %d\n", i)
         break
    elseif i < 5
        fprintf("lower bound, data = %d\n", i)
        continue
    end
    fprintf("result, data = %d\n", i)    
end