clc; clear;

PowerFun(2, 12, 8)

function res = PowerFun(n, xp, dig)
    res = n;
    for i = 1:xp-1
        res = rem(res * n, 10^dig);
    end
end

