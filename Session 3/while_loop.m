clc; clear;

% set an arbitraray value to be monitored during while loop
test_val = 0;

while test_val < 15
    disp(test_val)
    test_val = test_val + 1;
end

fprintf("Done!\n")