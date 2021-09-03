clc; clear;

A = [1, 1, 3, 15];
B = [1, 0, 5, -5];

Ahat = A/norm(A);
Bhat = B/norm(B);

theta = acosd(dot(Bhat, Ahat));