x = input("Enter the first input matrix:");
y = input("Enter the second input matrix:");
if size(x)==size(y)
    z = x+y
else
    sprintf("Dimension mismatch")
end