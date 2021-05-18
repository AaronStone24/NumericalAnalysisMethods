t = linspace(0,2*pi,200);
%surf(sin(t.^2),cos(t.^(-1)),t);
%[X,Y] = meshgrid(sin(t.^2),cos(t.^(-1)));
%mesh(X,Y,t);
plot3(sin(t.^2),cos(t.^(-1)),t);