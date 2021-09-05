clc; clear; close all

n1 = 60; n2 = 80;

x = linspace(-14, 18, n1);
y = linspace(-25, 19, n2);

[X, Y] = meshgrid(x, y);

Z = sqrt(X.^2/4 + Y.^2/6);

% color
CO(:,:,1) = normalize(X, 'range').^2; % red
CO(:,:,2) = normalize(X.*X, 'range');%ones(n2, n1)/2; % green
CO(:,:,3) = normalize(Z*1, 'range'); % blue

surfc(X, Y, Z, CO)

function nor = normali(X)
    nor = (X - min(X(:)))/(max(X(:)) - min(X(:)));
end


%contourf(X, Y, Z)
