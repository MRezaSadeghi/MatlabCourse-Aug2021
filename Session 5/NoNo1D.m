clc; clear;

M = randi([0, 1], 3, 4);
M
[H, W] = size(M);

fprintf("Section 1\n")
for i = 1:H
    disp(nono(M(i, :)))
end

fprintf("Section 2\n")
for i = 1:W
    disp(nono(M(:, i)))
end

function merged_s = nono(a)
    s = 0;
    sec = 0;
    N = length(a);
    
    merged_s = zeros(1, round(N/2));
    merg_count = 1;
    
    %fprintf("i, a, s, sec\n")

    for i = 1:N
        if (a(i) == 1) && (sec == 0) && (i ~= N)
            s = 1;
            sec = 1;
        elseif (a(i) == 1) && (sec == 1) && (i ~= N)
            s = s + 1;
        elseif (a(i) == 0) && (sec == 1)
            merged_s(merg_count) = s;
            merg_count = merg_count + 1;
            s = 0;
            sec = 0;
        elseif (a(i) == 1) && (i == N)
            s = s + 1;
            merged_s(merg_count) = s;
            merg_count = merg_count + 1;
            sec = 0;
        else
            s = 0;
            sec = 0;
        end
        %fprintf("%d, %d, %d, %d\n", [i, a(i), s, sec])
    end

    merged_s(merged_s == 0)= [];
    %merged_s(end) = s;
end