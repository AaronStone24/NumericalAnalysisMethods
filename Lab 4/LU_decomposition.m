A = input("Enter the Coefficient matrix: ");
[row, col] = size(A);
b = input("Enter the vector b: ");

if inputCheck(A,b) == -1
    return
end

L = zeros(row,col)+diag(ones(1,row));
U = A;

for i=1:row-1
    L(i+1:n,i) = U(i+1:n,i)/U(i,i);
    for j=i+1:row
        U(j,i:n) = U(j,i:n) - L(j,i)*U(i,i:n);
    end
end

z = zeros(row,1);
z(1) = b(1)/L(1,1);
for i=2:row
    sum = 0;
    for j=1:i-1
        sum = sum + L(i,j)*z(j);
    end
    z(i) = (b(i) - sum)/L(i,i);
end

x = zeros(row,1);
n = row;
x(n) = z(n)/U(n,n);

for i=n-1:-1:1
    sum=0;
    for j=i+1:n
        sum = sum + U(i,j)*x(j);
    end
    x(i) = (z(i)-sum)/U(i,i);
end

fprintf("The matrices L and U are as follows:\n");
fprintf("L: \n");
disp(L);
fprintf("U: \n");
disp(U);
fprintf("The solution is: \n");
disp(x);