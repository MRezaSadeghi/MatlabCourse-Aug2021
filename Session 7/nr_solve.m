clc; clear; close all;

% Newton Raphson method

fun = @(x) sin(x) - x + 1;
fund = @(x) cos(x) - 1;

N = 1000;
x = zeros(1, N);
x(1) = 5;

for i = 2:N
    x(i) = x(i - 1) - fun(x(i-1))/fund(x(i-1));
    if abs(x(i) - x(i - 1)) < 0.00001
        disp(i)
        break
    end
end
x(x == 0) = [];
disp(x(end))
figure(1)
x0 = linspace(0, 4, 1200);
plot(x0, fun(x0))
hold on
plot(x, fun(x), 'o')
yline(0, ':');

figure(2)
histogram(x, 20)