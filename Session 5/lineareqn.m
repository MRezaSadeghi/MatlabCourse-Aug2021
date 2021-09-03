clc; clear;

A = [1, 5, 6;...
     4, 5, 6;...
     7, 9, 0;];
 
B = [19; 19; 45];

N = 500;
A = randi([0, 50], N);
B = randi([0, 30], N, 1);

%% Method 1
tic()
X = inv(A) * B;
toc()

%% Method 2
tic()
X = A\B;
toc()

%% Method 3
tic()
sols = zeros(N, 1);
for i = 1:N
    D = A;
    D(:, i) = B;
    sols(i) = det(D)/det(A);
end
toc()

err = sqrt(mean((sols - X).^2))./mean(X)