clc
clear

syms x
str = input("Enter the function in x: ",'s');
f = str2func(append('@(x)',str));

a0 = input("Enter a0: ");
b0 = input("Enter b0: ");
maxIter = input("Enter the maximum iterations: \n");
c0 = 0;

if f(a0)*f(b0)<0
    c0 = (a0+b0)/2;
else
    fprintf("Enter a valid interval.\n");
    return
end

iter = 0;
while iter <= maxIter
    a1 = a0;
    b1 = b0;
    c1 = c0;
    if f(a0)*f(c0)<0
        b0 = c0;
    else
        a0 = c0;
    end
    c0 = (a0+b0)/2;
    iter = iter+1;
end

fprintf("The approximate roor of f(x) is: %f\n",c0);