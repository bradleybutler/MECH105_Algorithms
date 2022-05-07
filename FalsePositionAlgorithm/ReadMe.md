# False Postition
### This algorithm takes a formula and two guesses to determine an f(x) value between the two guesses at which f(x)=0. It will do this by utilizing the false position formula for root finding
#### Inputs=
* func - Function
  + Function y=mx+b of which the root will be found
* xl - Lower Bounds X Guess
  + Value to the left of f(x)=0. Proximity to root will determine iterations required to find the root
* xu - Upper Bounds X Guess
  + Value to the right of f(x)=0. Proximity to root will determine iterations required to find the root
* es - Terminating closeness value
  + Once the guess at the root falls close enough to the es percentage the function will terminate. The lower the value the more accuract the guess.
* maxit - Maximum Iterations
  + If the value does not reach es by this number the function will terminate. Prevents function from indefinetely running if es is unable to be reached. Once this amount of iterations have run the function terminates. 
#### Outputs=
* root - f(x) that the function believes to be the root
  + The value the function finds within error of es to be the root
* fx - The value of f(root)
  + Should be sufficiently close to 0, but depending on es and maxit will be further or closer to exact 0
* ea - Approximate error of root value
  + Done by finding previous approximation and current approximation and using relative error finding method
* iter - Iterations
  + Amount of iteration to reach es or maxiter
#### How it works
* The function first makes sure that certain requirements are meant that are required for the false position formula to perform.
  + The xl and xu values are checked to be of different signs to confirm that a root exists between the values
* A while loop tests whether the old guess and newest guess at the root have an error close enough to terminate the loop
  + If a guess ever equals 0 exactly, the loop breaks as the root has been found
* While this while loop is running, the false position formula is computing the root, with every iteration of the while loop changing the lower and upper bounds guess for the formula
  + The while loop acts as a clock for the iteration, adding one to its index every run of the loop
  + Once any of the stopping critereon have been met, the while loop exits and all values have been properly computed


