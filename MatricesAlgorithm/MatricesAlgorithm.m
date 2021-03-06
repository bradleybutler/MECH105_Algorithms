function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns
% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m)
% Now the real challenge is to fill in the correct values of A
A(1,:) = 1:m;
A(:,1) = 1:n;
if nargin == 2
    for x=2:n
        for y=2:m
            A(x,y)=(A(x-1,y)+A(x,y-1))
        end
    end
else
    error('invalid inputs')
end