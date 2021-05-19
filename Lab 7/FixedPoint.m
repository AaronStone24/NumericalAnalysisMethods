clc
clear

syms x;
str = input("Enter the function in x: ",'s');
f = str2func(append('@(x)',str));
x0 = input("Enter the initial approximation: ");
tolerance = input("Enter tolerance: ");

error = 99;
iter = 1;
while error > tolerance
    x1 = f(x0);
    error = abs(x1-x0);
    a1 = x0;
    b1 = x1;
    x0 = x1;
    iter = iter + 1;
end

fprintf('The fixed point is: %f\n', x1);
fprintf('Number of iterations required is: %d\n', iter - 1)