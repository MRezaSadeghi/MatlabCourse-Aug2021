clc; clear; close all;

%% Part 1
t = linspace(-50, 19, 400);
x = 8*sin(3*t) + t.^2/10;
y = x + t/3;
z = t + -0.5*t.^4;

plot3(x, y, z)
xlabel("X")
ylabel("Y")
zlabel("Z")
grid on

%% Part 2
k = 32;
t = 0:pi/500:40*pi;
xt = (5 + cos(sqrt(k)*t)).*cos(t);
yt = 3*sin(sqrt(32) * t);
zt = (5 + cos(sqrt(k)*t)).*sin(t);
plot3(xt, yt, zt)
axis equal
xlabel("X")
ylabel("Y")
zlabel("Z")