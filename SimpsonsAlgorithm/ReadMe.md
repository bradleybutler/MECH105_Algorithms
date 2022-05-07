# Simpson's 1/3 Algorithm
### This algorithm computes the integral by using Simpson's 1/3 rule and a single appliction of the trapezoidal rule if necessary
#### Inputs=
* x = The x values
  + A length only matrix of equally spaced x values
* y = The y values
  + The corrosponding values to the x values
#### Outputs=
* I = The value of the integral
  + The numerical value of the integral calculated with this algorithm
#### How it works
* Firstly the x matrix is checked to be of equal spacing, if not an error code is thrown
* The matrix is checked to have enough values, if not an error code is thrown
* The x and y matrices are checked to have the same length, if not an error code is thrown
* If the length is equal to two an appliation of the trapezoidal rule is used and the user is notified
* If the values is equal to three a single application of the Simpson's 1/3 rule is used
* If the value is greater than three, the Simpson's 1/3 rule is used for every three points, and if there is a remainder a single application of the trapezoidal rule calculates it and the user is notified that the trapezoidal rule was used
* The values computed from the applications are added together and put as output I
