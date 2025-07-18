

## Linear Algebra Methods for Systems of Linear Equations

Linear algebra provides powerful methods for solving systems of linear equations, especially when dealing with larger systems or when systematic approaches are needed.

## Matrix Representation of Linear Systems

A system of linear equations can be represented in matrix form as $A\mathbf{x} = \mathbf{b}$, where:

- $A$ is the coefficient matrix
- $\mathbf{x}$ is the vector of unknowns
- $\mathbf{b}$ is the constant vector

### Example System

Consider the system:
$$\begin{aligned}
x + 2y + z &= 9 \\
2x + y - z &= 3 \\
3x - y + 2z &= 8
\end{aligned}$$

This can be written as:
$$\begin{bmatrix}
1 & 2 & 1 \\
2 & 1 & -1 \\
3 & -1 & 2
\end{bmatrix}
\begin{bmatrix}
x \\ y \\ z
\end{bmatrix}
=
\begin{bmatrix}
9 \\ 3 \\ 8
\end{bmatrix}$$

## Gaussian Elimination

Gaussian elimination uses row operations to transform the augmented matrix to row-echelon form.

### Row Operations

The three elementary row operations are:

1. **Row swapping:** $R_i \leftrightarrow R_j$
2. **Row scaling:** $kR_i \rightarrow R_i$ (where $k \neq 0$)
3. **Row addition:** $R_i + kR_j \rightarrow R_i$

### Example: Gaussian Elimination

Solve the system:
$$\begin{aligned}
x + 2y + z &= 9 \\
2x + y - z &= 3 \\
3x - y + 2z &= 8
\end{aligned}$$

**Step 1:** Write the augmented matrix
$$\left[\begin{array}{ccc|c}
1 & 2 & 1 & 9 \\
2 & 1 & -1 & 3 \\
3 & -1 & 2 & 8
\end{array}\right]$$

**Step 2:** Eliminate below the first pivot
- $R_2 - 2R_1 \rightarrow R_2$: $[0, -3, -3, -15]$
- $R_3 - 3R_1 \rightarrow R_3$: $[0, -7, -1, -19]$

$$\left[\begin{array}{ccc|c}
1 & 2 & 1 & 9 \\
0 & -3 & -3 & -15 \\
0 & -7 & -1 & -19
\end{array}\right]$$

**Step 3:** Eliminate below the second pivot
- $R_3 - \frac{7}{3}R_2 \rightarrow R_3$: $[0, 0, 6, 16]$

$$\left[\begin{array}{ccc|c}
1 & 2 & 1 & 9 \\
0 & -3 & -3 & -15 \\
0 & 0 & 6 & 16
\end{array}\right]$$

**Step 4:** Back-substitution
- From row 3: $6z = 16 \Rightarrow z = \frac{8}{3}$
- From row 2: $-3y - 3z = -15 \Rightarrow y = 3$
- From row 1: $x + 2y + z = 9 \Rightarrow x = 1$

**Solution:** $(x, y, z) = \left(1, 3, \frac{8}{3}\right)$

## Gauss-Jordan Elimination

Gauss-Jordan elimination continues the process to reduced row-echelon form (RREF), where the solution can be read directly.

### Example: Gauss-Jordan Method

Starting from the row-echelon form above, continue to RREF:

**Step 5:** Make leading coefficients equal to 1
- $\frac{1}{6}R_3 \rightarrow R_3$
- $-\frac{1}{3}R_2 \rightarrow R_2$

$$\left[\begin{array}{ccc|c}
1 & 2 & 1 & 9 \\
0 & 1 & 1 & 5 \\
0 & 0 & 1 & \frac{8}{3}
\end{array}\right]$$

**Step 6:** Eliminate above pivots
- $R_1 - R_3 \rightarrow R_1$: $[1, 2, 0, \frac{19}{3}]$
- $R_2 - R_3 \rightarrow R_2$: $[0, 1, 0, \frac{7}{3}]$
- $R_1 - 2R_2 \rightarrow R_1$: $[1, 0, 0, \frac{5}{3}]$

$$\left[\begin{array}{ccc|c}
1 & 0 & 0 & \frac{5}{3} \\
0 & 1 & 0 & \frac{7}{3} \\
0 & 0 & 1 & \frac{8}{3}
\end{array}\right]$$

**Solution:** $(x, y, z) = \left(\frac{5}{3}, \frac{7}{3}, \frac{8}{3}\right)$

## Cramer's Rule

For systems with $n$ equations and $n$ unknowns, if the determinant of the coefficient matrix is non-zero, Cramer's rule provides:

$$x_i = \frac{\det(A_i)}{\det(A)}$$

where $A_i$ is the matrix $A$ with the $i$-th column replaced by the constant vector $\mathbf{b}$.

### Example: Cramer's Rule

For the system:
$$\begin{aligned}
2x + y &= 5 \\
x - y &= 1
\end{aligned}$$

**Step 1:** Calculate $\det(A)$
$$A = \begin{bmatrix} 2 & 1 \\ 1 & -1 \end{bmatrix}, \quad \det(A) = 2(-1) - 1(1) = -3$$

**Step 2:** Calculate $x$ using $A_1$
$$A_1 = \begin{bmatrix} 5 & 1 \\ 1 & -1 \end{bmatrix}, \quad \det(A_1) = 5(-1) - 1(1) = -6$$
$$x = \frac{\det(A_1)}{\det(A)} = \frac{-6}{-3} = 2$$

**Step 3:** Calculate $y$ using $A_2$
$$A_2 = \begin{bmatrix} 2 & 5 \\ 1 & 1 \end{bmatrix}, \quad \det(A_2) = 2(1) - 5(1) = -3$$
$$y = \frac{\det(A_2)}{\det(A)} = \frac{-3}{-3} = 1$$

**Solution:** $(x, y) = (2, 1)$

## Matrix Inverse Method

If the coefficient matrix $A$ is invertible (non-singular), the solution is:
$$\mathbf{x} = A^{-1}\mathbf{b}$$

### Example: Matrix Inverse Method

For the system $A\mathbf{x} = \mathbf{b}$ where:
$$A = \begin{bmatrix} 2 & 1 \\ 1 & -1 \end{bmatrix}, \quad \mathbf{b} = \begin{bmatrix} 5 \\ 1 \end{bmatrix}$$

**Step 1:** Find $A^{-1}$
$$A^{-1} = \frac{1}{\det(A)} \begin{bmatrix} -1 & -1 \\ -1 & 2 \end{bmatrix} = \frac{1}{-3} \begin{bmatrix} -1 & -1 \\ -1 & 2 \end{bmatrix} = \begin{bmatrix} \frac{1}{3} & \frac{1}{3} \\ \frac{1}{3} & -\frac{2}{3} \end{bmatrix}$$

**Step 2:** Calculate $\mathbf{x} = A^{-1}\mathbf{b}$
$$\mathbf{x} = \begin{bmatrix} \frac{1}{3} & \frac{1}{3} \\ \frac{1}{3} & -\frac{2}{3} \end{bmatrix} \begin{bmatrix} 5 \\ 1 \end{bmatrix} = \begin{bmatrix} 2 \\ 1 \end{bmatrix}$$

**Solution:** $(x, y) = (2, 1)$

## Special Cases

### Inconsistent Systems

A system is inconsistent if it has no solution. This occurs when the augmented matrix has a row of the form $[0, 0, \ldots, 0 | c]$ where $c \neq 0$.

### Infinitely Many Solutions

A system has infinitely many solutions when there are free variables. This occurs when there are fewer pivot columns than variables.

**Example:**

$$\begin{aligned}
x + 2y + z &= 3 \\
2x + 4y + 2z &= 6
\end{aligned}$$

The second equation is twice the first, so we have infinitely many solutions:
$$\mathbf{x} = \begin{bmatrix} 3 - 2s - t \\ s \\ t \end{bmatrix}$$
where $s$ and $t$ are free parameters.

## Homogeneous Systems

A homogeneous system has the form $A\mathbf{x} = \mathbf{0}$. Such systems always have the trivial solution $\mathbf{x} = \mathbf{0}$.

For non-trivial solutions to exist, $\det(A) = 0$ (the matrix must be singular).

### Example: Homogeneous System

$$\begin{aligned}
x + 2y - z &= 0 \\
2x + 4y - 2z &= 0 \\
x + 2y - z &= 0
\end{aligned}$$

Since all equations are equivalent, the solution space is:
$$\mathbf{x} = \begin{bmatrix} -2s + t \\ s \\ t \end{bmatrix}$$
where $s$ and $t$ are free parameters.

## Applications

### Engineering Applications

- **Circuit analysis:** Kirchhoff's laws lead to systems of linear equations
- **Structural analysis:** Force equilibrium in trusses and frames
- **Control systems:** State-space representations

### Economic Applications

- **Input-output models:** Leontief models in economics
- **Linear programming:** Optimization problems
- **Market equilibrium:** Supply and demand analysis

### Computer Graphics

- **Transformations:** Rotation, scaling, and translation matrices
- **Projection:** 3D to 2D coordinate transformations
- **Interpolation:** Smooth curves and surfaces
