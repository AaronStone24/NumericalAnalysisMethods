clc
clear

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
    index = 0;
    for j=i+1:row
        if abs(C(j,i))>abs(C(i,i))
            index = j;
        end
    end
    temp = C(i,:);
    C(i,:) = C(index,:);
    C(index,:) = temp;
    
    for j=i+1:row
        if C
end