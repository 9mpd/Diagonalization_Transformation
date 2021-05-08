# Diagonalization_Transformation
Matrix polynomials calculation using diagonalization transformation.

## What is Diagonalization Transformation? 
Diagonalization Transformation is the process of transforming <br>
a matrix into diagonal form. Diagonal matrices represent <br>
the eigenvalues of a matrix in a clear manner. <br>
A Square matrix A of order n over a field F is said to be diagonalizable, <br>
if it is similar to a diagonal matrix over the field F. <br> 
i.e <br>
**D = P<sup>-1</sup>AP, or P<sup>-1</sup>AP = diag(x<sub>1</sub>,x<sub>2</sub>....x<sub>n</sub>)** <br>
where x<sub>1</sub>,x<sub>2</sub>....x<sub>n</sub> are the eigen values of matrix A.

## Conditions for Diagonalization :
**1.** *Square Matrix A of dimension ‘n’ is diagonalizable if* <br>
*A has ‘n’ linearly independent eigen vectors.* <br>
**2.** *A matrix A is also diagonalizable if minimal* <br>
*polynomial is the product of distinct linear factors.* <br>

## Matrix Polynomials :
General form of matrix polynomail :
**f(A) = a<sub>n</sub>A<sup>n</sup> + a<sub>n-1</sub>A<sup>n-1</sup> + .....+ kI**

But, we don't calculate this polynomial by computing all the different powers of A. <br>
Intsead of A, we compute different powers of diagonal matrix D <br>
which is a very easy & time saving task in comparison to the former one. <br>

To get the value of f(A) we use the following relation. <br>
**f(A) = Pf(D)P<sup>-1</sup>** <br>
where P is the modal matrix, matrix of eigen vectors of A, and <br>
D is the diagonal/spectral matrix, matrix of eigen values of A. <br>
