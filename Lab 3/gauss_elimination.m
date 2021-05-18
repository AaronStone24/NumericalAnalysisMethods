A = input("Enter the Coefficient matrix: ");
if size(A,1) ~= size(A,2)
   fprintf("A is not a square matrix\n")
   return
end

[row, col] = size(A);

b = input("Enter the vector b: ");
if size(A,1) ~= size(b,1)
    fprintf("The dimensions of A and b are not compatible \n")
    return
end

C = [A b];

if det(A) == 0
    fprintf("No unique solution exists\n")
    return
end

for i=1:row-1
    for j=i+1:row
        lambda = C(j,i)/C(i,i);
        C(j,:) = C(j,:) - lambda*C(i,:);
    end
end

n = row;
x = zeros(n,1);
x(n) = C(n,n+1)/C(n,n);

for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum = sum + x(j)*C(i,j);
    end
    x(i) = (C(i,n+1) - sum)/C(i,i);
end

fprintf("The solution is: \n");
disp(x)