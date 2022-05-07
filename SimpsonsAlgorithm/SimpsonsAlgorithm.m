function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated
%check for equal spacing
I=0
IS=0
n=-1
for index=2:(length(x)-1)
    if x(index)-x((index)-1)~=x(index+1)-x(index)
        error('uneven x distribution')
    end
end
%check for too few values
if length(x)==1
    error('not enough values')
%check that matrix sizes match
elseif length(x)~=length(y)
    error('dependent variable and independent variable are different length matrixes')
%do trapezoid rule for 2 values
elseif length(x)==2
    I=((y(1)+y(2))/2)*(x(2)-x(1))
    warning('trapezoid rule was used because of two given values')
%automatically do simpsons rule for 3 values
elseif length(x)==3
   I=((x(2)-x(1))/3)*(y(1)+4*y(2)+y(3))
end
%more complex length, check whether to use simpsons or if trapezoid must be used too
if length(x)>3
l=length(x);
x0=min(x);
%find out if l is odd or even, if odd use jsut simpsons 1/3
if rem(l,2)~=0
    %if evenly spaced, midpoint should be mean value
    x1=mean(x);
    %if evenly spaced, x2 will be the last x value
  for index=1:2:l
    n=n+1
end
for p=0:n-1
    in=((x(2)-x(1))/3)*(y(1+2*p)+4*y(2+2*p)+y(3+2*p))
    I=I+in
end
else
    %if not evenly spaced, midpoint should be near floor of mean value to
    %allow for trapezoid on last value
for index=1:2:l
    n=n+1
end
for p=0:n-1
    in=((x(2)-x(1))/3)*(y(1+2*p)+4*y(2+2*p)+y(3+2*p))
    IS=IS+in
end
    %calculate trapezoid integral
    IT=((y(l)+y(l-1))/2)*(x(l)-x(l-1))
    %calculate integral
    I=IS+IT
    %warn that trapezoid was used
    warning('Trapezoid was used on last interval in conjunction with simpsons 1/3 rule')
end
end