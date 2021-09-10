clc; clear; close all

fun = @(x) 0.02*x + 0.6*sin(4*x) + 1;

x1 = 1;
x2 = 14;

N1 = 1000;
N2 = 10;

xseq1 = linspace(x1, x2, N1);
xseq2 = linspace(x1, x2, N2);

%% Calculation

% Analutical
syms x
actual_value = double(int(fun(x), x1, x2));

% Trapizoidal
trap = trapz(xseq2, fun(xseq2));
err_trap = errval(actual_value, trap);

% Simpson 3/8
h = (x2 - x1)/N2;
sim38 = 0;

for i = 2:(N2/2)
    disp(i)
    sim38 = sim38 + fun(xseq2(2*i - 2)) + 4*fun(xseq2(2*i - 1)) + ...
        fun(xseq2(2*i));
end
sim38 = sim38*h/3;
err_sim38 = errval(actual_value, sim38);

%% Plot
main_color = [170, 113, 191]/256;
topv = 0.4;
delta = 0.08;

% Plot 1
subplot(1, 2, 1)
area(xseq1, fun(xseq1), 'FaceColor', main_color,...
    'FaceAlpha', 0.2, 'EdgeColor', main_color)
xline(x1, '--');
xline(x2, '--');
xlim([x1-1, x2+1])
text(2, topv, sprintf("Actual Area = %2.2f mm^2", actual_value))

% Plot 2
subplot(1, 2, 2)
area(xseq2, fun(xseq2), 'FaceColor', main_color,...
    'FaceAlpha', 0.2, 'EdgeColor', main_color);
hold on
scatter(xseq2, fun(xseq2), 'k')
plot(xseq1, fun(xseq1), '--r')
xline(x1, '--');
xline(x2, '--');
xlim([x1-1, x2+1])

text(2,topv, sprintf("Number of data points = %d", N2))
text(2,topv - delta , sprintf("Trapizoidal: Area = %2.2f mm^2 - Err = %2.2f%%",...
    [trap, err_trap]))
text(2, topv - 2*delta, sprintf("Trapizoidal: Area = %2.2f mm^2 - Err = %2.2f%%",...
    [sim38, err_sim38]))

function e = errval(r, x)
    e = 100*(x/r - 1);
end




