clc
clear

A = input("Enter the Coefficient matrix: ");
[row, col] = size(A);
b = input("Enter the vector b: ");
x = input("Enter the initial x: ");
tolerance = input("Enter the tolerance: ");

%finding the optimal parameter for A
D = diag(diag(A));
L = tril(A,-1);
U = A - tril(A); %Earlier the problem was that I wrote U = tril(A,1) which wasn't giving the upper triangular matrix
w = optimalPar(D,L,U);

%initial variables
H = (D+w*L)\((1-w)*D-w*U);      %H matrix for SOR method
C = (D+w*L)\(w*b);              %C matrix for SOR method
error = 99;
iter = 0;

while error >= tolerance
    x1 = H*x + C;
    error = norm(x1-x,inf)/norm(x1,inf);
    x = x1;
    iter = iter + 1;
end

fprintf("The solution x obtained in %d iterations is: \n", iter);
disp(x);