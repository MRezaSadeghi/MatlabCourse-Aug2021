clc; clear;

N = 492876863;
N = 49979687;

%% Method 1
tic()
flag = 0;
for i = 2:N-1
    if rem(N, i) == 0
        flag = flag + 1;
        break;
    end
end
    if flag == 0
        fprintf("%d IS a prime number!\n", N);
    else
        fprintf("%d IS NOT prime number!\n", N);
    end
time = toc();
fprintf("Elapsed time (1) = %3.3f\n", time*1000);

%% Method 2
tic()
flag = 0;
for i = 2:sqrt(N)
    if rem(N, i) == 0
        flag = flag + 1;
        break;
    end
end
    if flag == 0
        fprintf("%d IS a prime number!\n", N);
    else
        fprintf("%d IS NOT prime number!\n", N);
    end
time = toc();
fprintf("Elapsed time (2) = %3.3f\n", time*1000);

%% Method 3

fact = 2:sqrt(N);
flag = 0;

imp_prime =[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37];

for j = imp_prime
    if rem(N, j) == 0
        flag = flag + 1;
    else
        fact(rem(fact, j) == 0) = [];
    end
end
tic()
for i = fact
    if rem(N, i) == 0
        flag = flag + 1;
        break
    end
end

if flag == 0
    fprintf("%d IS a prime number!\n", N);
else
    fprintf("%d IS NOT a prime number!\n", N);
end

time = toc();
fprintf("Elapsed time (3) = %3.3f\n", time*1000);

%% Method 4
tic();

if isprime(N) == 1
    fprintf("%d IS a prime number!\n", N);
else
    fprintf("%d IS NOT a prime number!\n", N);
end

time = toc();
fprintf("Elapsed time (4) = %3.3f\n", time*1000);