# Matrices Algorithm
### This algorithm takes a matrix size and makes a matrix of that size in which the value in the first row of each element is the column number, and the value in the first column of each element is the row number. All other values are the sum of the number above it and to the left.
#### Inputs= 
* n = The number of rows of the wanted matrix
* m = The number of columns of the wanted matrix
#### Outputs=
* A = the matrix with the special properties
#### How it works
* Firstly, a zeroes matrix is created with the size specified
* Then, for all first elements the column is set to the row number and the row set to the column number by setting 1 as the corner and adding off of that
* If there are more than two inputs, the function produces an error
* Using a for loop with the length as the limit the rows and columns are added as needed
* The new matrix is created and set as the output
