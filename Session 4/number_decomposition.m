clc; clear;
% EP Decomposition

n = 1001;
fact = zeros(1, floor(sqrt(n)));
c = 0;

for i = 2:n
    if isprime(i) && ~rem(n, i)
        fact(c + 1) = i;
        c = c + 1;
    end
end

fact(fact == 0) = [];
ex = zeros(1, length(fact));

for i = 1:length(ex)
    temp = n;
    while rem(temp, fact(i)) == 0
        temp = temp/fact(i);
        ex(i) = ex(i) + 1;
    end
end

fprintf("%d^%d\n", [fact; ex])