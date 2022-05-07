# Linear Regression
### This algorithm takes a set of values and performs linear regression equations to find the equation of the line, as well as the R^2 value of the data set. This algorithm also gets rid of outlier values and filters the data set to perform the equations.
#### Inputs=
* x = The x data points
  + Independant values of the data set
* y = The y data points
  + Dependent values of the data set
#### Outputs=
* fX = The sorted and filtered x data points
  + X values properly put into order with outliers removed
* fY = The sorted and filtered y data points
  + Y values properly put into order as x values were reordered, with outlier values removed. 
* Slope = Slope of the linear regression line
  + The m value for y=mx+b as a linear regression line
* Intercept = f(0) value of the linear regression line
  + Using linear regression formulas to find the value at which x is 0
* Rsquared = The R^2 value of the linear regression
  + How correlated the x value is to the y value
#### How it works
* First the length of the x and y are checked to make sure that they are the same length, if not an error is shown.
* Using the sort function the y values are sorted in order and the x values are moved with their corresponding y value.
* Bounds are created in which values are not outliers
* Values outside those bounds are erased
* With the new data set, linear regression equations are performed to find the linear regression equation, and corresponding values are plugged in as outputs
