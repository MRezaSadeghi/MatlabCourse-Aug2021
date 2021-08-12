clc; clear;

% char
ch1 = 't1';
ch2 = 't2';
ch3 = 't3';

% Stirng
str1 = 'ab';
str2 = 'ab';
str3 = ' ab';

% Make an empty string array
m = 3; n = 5;
str_arr = strings(m, n);

%% Merging
joint_str = join([str1, str2]);
cat_str = strcat(str1, str2);
merged_char = [ch1, ch2];
merged_str_1 = str1 + str2;
merged_str_2 = "test1" + "test2";

%% New line
NL_merged_char = [ch1, newline, ch2];
NL_merged_str_2 = "test1" + newline + "test2";

