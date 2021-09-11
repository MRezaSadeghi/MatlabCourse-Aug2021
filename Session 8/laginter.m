clc; clear; close all;

x = [1, 4, 6];
y = [0, 1.3862, 1.7917];

xs = 2;
n = length(x);

S = 0;
for i = 1:n
    P = 1;
    for j = 1:n
        if i ~=j
            P = P*(xs - x(j))/(x(i) - x(j));
        end
    end
    S = S + P*y(i);
end

S

        
    