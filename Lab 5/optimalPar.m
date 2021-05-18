%2019MCB1223
% Kartik Upadhyay
%.....1(b)....
function [w] = optimalPar(D,L,U)
%   Function to find the optimal parameter

%finding H matrix of Jacobi iteration method
H = -1*(D\(L+U));

%finding the spectral radius of H
spRad = eigs(H,1);

%finding optimal parameter from spectral radius
w = 2/(1+sqrt(1-spRad^2));
end

