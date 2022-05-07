# LU Factorization
### This algorithm finds the L and U matrix for LU decomposition, as well as the Pivot matrix
#### Inputs= 
* A = The matrix
  + The matrix for which the decomposition will be performed
#### Outputs=
* L = The L matrix
* U = The U matrix
* P = The pivot matrix
#### How it works
* The formula checks to make sure that the matrix is square, as LU factorization requires a square matrix
* The pivot matrix is creating by creating a triangular matrix by creating a matrix of 0's of the same size as the initial matrix, and putting ones across the main diagnal.
* The L and U matrixes are created using linear algebra and those values are put as the L and U outputs.
