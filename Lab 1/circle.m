function plt = circle(x,y,r)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
theta = linspace(0,2*pi,200);
x = r*cos(theta) + x;
y = r*sin(theta) + y;
h = plot(x,y);
end

