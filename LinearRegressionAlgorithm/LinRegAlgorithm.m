function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%Bradley Butler 4/27/2022
%Code should take an array of numbers and perform a linear regression that discards outlier values
%Check that X and Y are the same size
if length(x)~=length(y)
    error('given x any y arrays are not the same length')
end
%put values in order
[sortedY, sortOrder] = sort(y)
sortedX = x(sortOrder)
%compute quartiles
x=sortedX
y=sortedY
l=length(x);
Q1=floor((l+1)/4)
Q3=floor(((3*l)+3)/4)
QV1=y(Q1)
QV3=y(Q3)
IQR=QV3-QV1
x=x
fprintf('values before')
y=y
fprintf('values before')
for I=l:-1:1
        if y(I)<QV1-1.5*IQR
            %if y(I)<2
        y(I)=[]
        x(I)=[]
        elseif y(I)>QV3+1.5*IQR
        y(I)=[]
        x(I)=[]
        end
end
l=length(x)
fX=x
fY=y
sy=sum(y)
sx=sum(x)
sxy=sum(x.*y)
sxsquared=sum(x.^2)
sysquared=sum(y.^2)
slope=((l*sxy)-(sx*sy))/((l*sxsquared)-sx^2)
intercept=((sy*sxsquared)-(sx*sxy))/((l*sxsquared)-sx^2)
m=mean(y)
linreg=[intercept+x*slope]
Rsquared=(sum((linreg-m).^2))/sum((y-m).^2)
    

%linearRegression Computes the linear regression of a data set
%   Compute the linear regression based on inputs:
%     1. x: x-values for our data set
%     2. y: y-values for our data set
%
%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

end