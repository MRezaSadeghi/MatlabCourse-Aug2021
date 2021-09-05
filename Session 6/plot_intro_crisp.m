clc; clear; close all
n = 300;
b = 3; a = 4;

x = linspace(-5, 5, n);
y = linspace(-5, 5, n);
[X, Y] = meshgrid(x, y);

Z = X.*Y;
for i = 1:n
    for j = 1:n
        if X(i, j)^2/a^2 + Y(i, j)^2/b^2 > 1
            Z(i, j) = nan;
        end
    end
end
surfc(X,Y,Z);
shading interp
grid off
axis off