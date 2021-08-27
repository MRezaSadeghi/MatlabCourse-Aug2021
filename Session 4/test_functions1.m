clc; clear;

fun1 = @(x) x + 1;
fprintf("Answer = %d\n", fun1(3))

fun2 = @(x) x^2 + x;
fprintf("Answer = %d\n", fun2(3))

fun3 = @(n) fibo2(n+1)/fibo2(n);
fprintf("Answer = %1.5f\n", fun3(50))

nargil(1)

function f = fibo(n)
    if n == 1
        f = 1;
    elseif n == 2
        f = 2;
    else
        f = fibo(n - 1) + fibo(n - 2);
    end
end

function f = fibo2(n)
    a = sqrt(5)/2;
    f = ((0.5 + a)^n - (0.5 - a)^n)/(2*a);
end

function f = nargil(n, m)
    f = nargin;
end
