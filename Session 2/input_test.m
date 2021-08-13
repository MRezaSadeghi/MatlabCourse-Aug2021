clc; clear;

% Tell'em something
req = "Please enter a random number: ";
the_num = input(req);

fprintf("Input number was: %2.2f\n", the_num)

% Tell'em something
req = "Please enter anything you want: ";
the_str = input(req, 's');

fprintf("Input was: %s\n", the_str)