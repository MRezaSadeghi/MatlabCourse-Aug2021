clc; clear; close all

sr = 3500;
Tend = 0.2;
n = Tend * sr;
t = linspace(0, Tend, n);

x = 1.2*sin(2*pi*100*t) + 2.8*sin(2*pi*180*t) + 2.5*sin(2*pi*380*t) + 3.6*randn(1, n);
fftplot(x, sr)

function fftplot(x, sr)
    FFT = fft(x);
    n = length(x);
    A = abs(FFT)/n*2;
    A = A(1:floor(n/2));
    f = linspace(0, sr/2, floor(n/2));
    plot(f, A)
end

