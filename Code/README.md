## Code Files

### Running Fast Johnson-Lindenstrauss Transform Projections

File: run_fjlt.m

Variable Parameters: sample size (n), reduced dimension (k, FJLT 1 only)

### Running FJLT Comparison Tests

File: run_comparison.m

Variable Parameters: distortion error, original dimension, reduced dimension upper bound, sample size, beta value (FJLT 2 only)

### Running K-Nearest Neighbours Tests

File: run_knn_test.m

Variable Parameters: number of test points (TestPoints)

This test was used for analysing the classification

File: run_knn_correctness.m

Variable Parameters: number of test points (TestPoints)

This test was used for cross-validation tests with a broad range of reduced dimensions


### createRandomDiagonal(d)

The random diagonal matrix is created where its diagonal elements are +1 or -1 with probability 0.5.

### createWalshHadamard(d,x)

This creates the Walsh Hadamard matrix. This is a deterministic matrix.

$$
H_1 = \bigg(\begin{array}{cc} 
1 & 1\\
1 & -1
\end{array}\bigg)
$$

$$
H_q = \bigg(\begin{array}{cc} 
H_{q/2} & H_{q/2}\\
H_{q/2} & -H_{q/2}
\end{array}\bigg)
$$

The x parameter is to enable the normalisation where the matrix $H$ will be multiplied by $d^{-1/2}$

### createSubCodeMatrix(k,beta)

This creates the sub matrix $B_k$ with is copied side by side to make the code matrix. The columns of this matrix are vectors of unit length.

### createFJLT2projectionMatrix(k, d, beta)

This creates the projection matrix for the Fast JL Transform Method 2.

1. The submatrix is multiplied by the random diagonal matrix
2. The Walsh-Hadamard matrix is multiplied by the random diagonal matrix
3. Multiply results from step 1 & 2
4. Copy the resulting matrix from step 3 $d/beta$ times side by side.
