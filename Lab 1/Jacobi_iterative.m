A = input("Enter the Coefficient matrix: ");
[row, col] = size(A);
b = input("Enter the vector b: ");
x = input("Enter the initial x: ");

if inputCheck(A,b) == -1
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

