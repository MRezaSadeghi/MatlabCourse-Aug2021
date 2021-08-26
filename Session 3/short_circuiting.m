clc; clear;

%% test 1
tic()
% A = testfunc1() && testfunc2();
time = toc();
fprintf("Elapsed time (1) = %3.3f\n", time*1000);

%% test 2
a = [0, 0, 1, 1];
b = [0, 1, 0, 1];

disp(a & b)
%disp(a && b)
disp(a | b)
% disp(a || b)

%% functions
function x = testfunc1()
    pause(3)
    x = true;
end

function x = testfunc2()
    pause(2)
    x = false;
end