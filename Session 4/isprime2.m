function b = isprime2(N)
    b = 0;
    for i = 2:sqrt(N)
        if rem(N, i) == 0
            b = b + 1;
            break;
        end
    end
end