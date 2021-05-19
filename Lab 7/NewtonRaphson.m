clc
clear

syms x;
str = input("Enter the function in x: ",'s');
f = str2func(append('@(x)',str));
df(x) = diff(f,x);
maxIter = input("Enter the maximum iterations: ");
tolerance = input("Enter tolerance: ");
x0 = input("Enter the initial approximation: ");
iter = 1;
dif = 99;

while iter<=maxIter
    x1 = x0 - f(x0)/df(x0);
    dif = abs(x1-x0);
    if dif<tolerance
        break
    end
    x0 = x1;
    iter = iter + 1;
end

fprintf("The approximate root of the equation is: %f\n", x0);