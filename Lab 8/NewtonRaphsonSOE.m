clc
clear

syms x y
str = input("Enter the function f=f(x,y): ",'s');
f = str2func(append('@(x,y)',str));
str1 = input("Enter the function g=g(x,y): ",'s');
g = str2func(append('@(x,y)',str1));
x0 = input("Enter the initial approximation: ");
tolerance = input("Enter the tolerance: ");

dfx = str2func(['@(x,y)',char(diff(f,x))]);
dfy = str2func(['@(x,y)',char(diff(f,y))]);
dgx = str2func(['@(x,y)',char(diff(g,x))]);
dgy = str2func(['@(x,y)',char(diff(g,y))]);

error = 99;

while error > tolerance
    A = [f(x0(1),x0(2));g(x0(1),x0(2))];
    J = [dfx(x0(1),x0(2)) dgx(x0(1),x0(2)); dfy(x0(1),x0(2)) dgy(x0(1),x0(2))];
    x1 = x0 - J\A;
    error = double(norm(x1-x0)/norm(x1));
    x0 = x1;
end

fprintf("The solution for the given set of equations is: (%f,%f)\n",x0(1),x0(2));