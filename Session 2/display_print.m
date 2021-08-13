clc; clear;

% Define some dummy variables:
a = 12.21684;
b = "test value";
c = [34, 53];

% simple display
disp(a)
disp(b)
disp(c)

% Special usage
html_code = '<a href = "https://www.google.com">Google!</a>';
disp(html_code)

%% F-print

% use \n to go to new line
fprintf("text\n\n")

% print a string
fprintf("%s\n\n", b)

% print a number
fprintf("%f\n\n", a)
fprintf("%2.2f\n\n", a)

% print a number
fprintf("%x\n\n", 156)

% print two numbers
fprintf("n1 = %2.3f\tn2 = %2.1f\n\n", [a, a/2])

%print an array
fprintf("%2.2f\n", c)

% other formats: %d %s %2.2f %c %u %x...
%% Example
a = 3.0256; b = 10.16;
area = a*b;
fprintf("\nwidth = %2.1fmm\t length = %2.2fmmm\narea = %2.2fmm\n",...
    [a, b, area])