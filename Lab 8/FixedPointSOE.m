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

if abs(dfx(x0(1),x0(2))+dfy(x0(1),x0(2)))>=1 || abs(dgx(x0(1),x0(2))+dgy(x0(1),x0(2)))>=1
    fprintf("Convergence condition not met.\n");
    return
end

error =99;
while error > tolerance
    X = [double(f(x0(1),x0(2))); double(f(x0(1),x0(2)))];
    error = norm(X-x0);
    x0 = X;
end

fprintf("The solution for the given set of equations is: (%f,%f)\n",x0(1),x0(2));