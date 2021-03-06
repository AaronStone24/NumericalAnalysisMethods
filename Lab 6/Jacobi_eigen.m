
clear

A = input("Enter the square matrix:\n");
[row, col] = size(A);
if row~=col
    fprintf("Matrix is not a square matrix\n");
    return
end

if issymmetric(A) == 0
    fprintf("A is not a symmetric matrix \n");
    return
end

maxIter = input("Enter the maximum number of iterations:\n");

iter = 1;
D = A;
R = eye(row);

while iter<maxIter
    max = 0;
    m = 0; n = 0;
    for i=1:row
        for j=1:row
            if abs(D(i,j))>max && i~=j
                max = abs(D(i,j));
                m = i; n = j;
            end
        end
    end
    if D(m,m) == D(n,n)
        if D(m,n)>0
            theta = pi/4;
        else
            theta = -pi/4;
        end
    else
        theta = 0.5*atan(2*D(m,n)/(D(m,m)-D(n,n)));
    end
    
    R1 = eye(row);
    R1(m,m) = cos(theta);    R1(n,n) = cos(theta);
    R1(m,n) = sin(theta);   R1(n,m) = -sin(theta);
    
    D = R1'*D*R1;
    R = R*R1;
    iter = iter+1;
end

fprintf("The eigen values of the entered matrix are: \n");
disp(diag(D));