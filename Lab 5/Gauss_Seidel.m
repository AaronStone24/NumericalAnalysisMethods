clc
clear

A = input("Enter the Coefficient matrix: ");
[row, col] = size(A);
b = input("Enter the vector b: ");
x = input("Enter the initial x: ");
tolerance = input("Enter the tolerance: ");

check = inputCheck(A,b);
if check == -1
    return
end

n = row;
D = zeros(size(A)); L = zeros(size(A)); U = zeros(size(A));

for i=1:n
    for j = 1:n
        if i==j
            D(i,j) = A(i,j);
        elseif i>j
            L(i,j) = A(i,j);
        else
            U(i,j) = A(i,j);
        end
    end
end

error = norm(b-A*x);
epsilon = tolerance;

while error > epsilon
    X = (L+D)\(b-U*x);
    x = X;
    error = norm(b-A*x);
end

fprintf("The solution is:\n");
disp(x);