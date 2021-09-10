clc; clear; close all

figure
h1 = animatedline('Color', 'r');
h2 = animatedline('Color', 'b');

%axis([0 4*pi -1 1])
axis off
set(gcf,'color','w');

% for x = linspace(0,16*pi,1000)
%     y = sin(x);
%     addpoints(h,x,y)
%     drawnow %limitrate
% end

x = 0;
while true
    x = 0.5 + x;
    y = sin(x);
    addpoints(h1,x,y - 0.01*x)
    addpoints(h2,x,-y + 0.01*x)
    drawnow %limitrate
end