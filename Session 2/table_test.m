clc; clear;

% Create a table
T = table([4; 5; 6], ['c'; 'c'; 'y'], [100; 200; 150]);

% Change Columns name
T.Properties.VariableNames = ["c1", "c2", "c3"];

% Change Rows name
T.Properties.RowNames = ["r1", "r2", "r3"];

% Properties
T.Properties.Description = "test table";

T.Properties.VariableNames(2) = {'22'};
T.Properties.VariableNames([1, 3]) = {'g1', 'j1'};
T.Properties.VariableNames({'g1', '22'}) = {'g2', '33'};

table2array(T(:, 1))
