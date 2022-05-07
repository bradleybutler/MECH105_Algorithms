function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
%square matrix, one variable works to find value of size
[m,n]=size(A);
I=0
if m==n
    P=eye(m)
    L=eye(m)
    U=eye(m)
    %for I=1:n
     %   U=[n,n+1]
else
    error("not a square matrices")
    end
end