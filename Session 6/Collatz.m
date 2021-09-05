clc; clear; close all


n = 1:33200;
N = length(n);
data = zeros(1, N);


for i = 1:N
    data(i) = collatz(n(i));
end

plot(n, data, '.k')

function n = collatz(x)
    n = 1;
    while x ~= 1
        n = n + 1;
        if rem(x, 2) == 0
            x = x/2;
        else
            x = 3*x + 1;
        end
    end
end