function [result] = inputCheck(A,b)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

[row, ~] = size(A);
result = 0;
if size(A,1) ~= size(A,2)
   fprintf("A is not a square matrix\n")
   result = -1;
   return
end

if size(A,1) ~= size(b,1)
    fprintf("The dimensions of A and b are not compatible \n");
    result = -1;
    return
end

for i=1:row
    if A(i,i) == 0
        fprintf("Pivoting required");
        result = -1;
        return
    end
end
end