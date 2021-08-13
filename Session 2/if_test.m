clc; clear;

x = 50;
y = 100;
z = 150;

% test 0
if false
    disp("yo")
end
    
% test 1
if y > x
    fprintf("state a1\n");
else
    fprintf("state a2\n");
end

% test 2
if x < 150
    fprintf("state b1\n");
elseif x < 100
    fprintf("state b2\n");
elseif x < 50
    fprintf("state b3\n");
else
    fprintf("state b4\n");
end

% test 3
% test 2
if x < 150
    fprintf("state c1\n");
end

if x < 100
    fprintf("state c2\n");
end

if x < 50
    fprintf("state c3\n");
else
    fprintf("state c4\n");
end


