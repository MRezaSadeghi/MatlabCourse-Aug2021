clc; clear; close all

n = 80;
for i= 1:n
    % write your code here
    fprintf('Progress: %2.1f %%\n', i/n*100);
    pause(0.05);
end

f = waitbar(0, 'Starting');
pause(1)
n = 100;
for i= 1:n
    % write your code here
    waitbar(i/n, f, sprintf('Progress: %d %%', floor(i/n*100)));
    pause(0.02);
end
close(f)


f = uifigure;
d = uiprogressdlg(f,'Title','Please Wait',...
        'Message','Opening the application');
    
d.Message = 'Loading your data';
pause(1)
n = 43;
for i= 1:n
    % write your code here
    d.Value = i/n;
    d.Message = sprintf('Progress: %2.1f %%', i/n*100);
    pause(0.01);
end
d.Message = 'Finishing';
pause(0.5)

close(d)
close(f)

   
