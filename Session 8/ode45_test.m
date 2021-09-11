clc; close all; clear;

mu = 0.95;
a = 0.1;
w = 3;

act_fun = @(t, y) fun(t, y, mu, a, w);

[t, y] = ode45(act_fun, linspace(0, 30, 1000), [0.5; 0]);

figure('Name', 'y and ydot')
subplot(1, 2, 1)
plot(t, y(:, 1), '.')

subplot(1, 2, 2)
plot(t, y(:, 2), '.')

figure('Name', 'Phase')
plot(y(:, 1), y(:, 2))

function dydt = fun(~, y, mu, a, w)
dydt = [y(2); mu*(a^2-y(1)^2)*y(2)-w^2*y(1)];
end

