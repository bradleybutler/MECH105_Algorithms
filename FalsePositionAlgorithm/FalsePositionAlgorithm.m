function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit)
%before loop one iteration is done, so starting interation is 1
iter=1;
%starting iteration
xr=xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
%plotting function
fplot(func);
%creating a line for the axis
axisline=@(x)0;
%bounds for function
xlim([(xl-2),(xu+2)]);
ylim([func(xl)-2,func(xu)+2]);
hold on
grid on
%plot axis line
fplot(axisline);
%plot user defined bounds
xline(xl);
xline(xu);
%if user defined bounds do not multiply to negative value, root does not
%exist
if func(xl)*func(xu)>0
    fprintf('given values may not border a root, please use f(xl)*f(xu) values that exist and produce opposite signs')
else
    %calculate error, divide by 100 since user given error is in percentage
    %form
while (xr-xl)/(xr)>(es/100)
    %if the function as the expected root = 0, break
    if func(xr)==0
        break
    else
       if func(xr)*func(xl)<0
           xu=xr;
       end
       if func(xr)*func(xu)<0
           xl=xr;
       end
       xr=xu-(func(xu)*(xl-xu))/(func(xl)-func(xu));
        iter=iter+1;  
        if iter>maxit-1
            break
        end
    end
end
xline(xr)
root=xr
fx=func(xr)
ea=(xr-xl)/xr
iter=iter
end
end