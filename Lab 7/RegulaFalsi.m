clc 
clear

syms x;
str = input("Enter the function in x: ",'s');
f = str2func(append('@(x)',str));
a0 = input("Enter the lower bound: ");
b0 = input("Enter the upper bound: ");
tolerance = input("Enter tolerance: ");

if f(a0)*f(b0)>0
    fprintf("Wront initial bounds.\n");
    return;
end
error = 99;

while error > tolerance
    c0 = a0 - ((a0-b0)*f(a0))/(f(a0)-f(b0));
    a1 = a0;
    b1 = b0;
    c1 = c0;
    error=abs(f(c0));
    
    if f(a0)*f(c0) < 0
        b0 = c0;
    else
        a0 = c0;
    end
end

fprintf("The root of the equation is: %f \n", c0);