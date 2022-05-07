# False Postition
### This algorithm takes a formula and two guesses to determine an f(x) value between the two guesses at which f(x)=0. It will do this by utilizing the false position formula for root finding
imputs=
* func - Function
** Function y=mx+b of which the root will be found
* xl - Lower Bounds X Guess
** Value to the left of f(x)=0. Proximity to root will determine iterations required to find the root
* xu - Upper Bounds X Guess
** Value to the right of f(x)=0. Proximity to root will determine iterations required to find the root
* es - Terminating closeness value
** Once the guess at the root falls close enough to the es percentage the function will terminate. The lower the value the more accuract the guess.
* maxit - Maximum Iterations
** If the value does not reach es by this number the function will terminate. Prevents function from indefinetely running if es is unable to be reached. Once this amount of iterations have run the function terminates. 
