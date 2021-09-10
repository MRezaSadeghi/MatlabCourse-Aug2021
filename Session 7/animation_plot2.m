clc; clear; close all

figure
h1 = animatedline('Color', 'r');
h2 = animatedline('Color', 'b');

%axis([0 4*pi -1 1])
%axis off
set(gcf,'color','w');

x = 0; y = 0;
for i = 1:10000
    r = rand();
    if r <= 0.3
        x = x+1;
    elseif r <= 0.65
        y = y+1;
    else
        y = y-1;
    end
    addpoints(h1,x,y)
    drawnow %limitrate
end
