# Systems of Equations

Systems involve multiple equations with multiple unknowns. The solution is the set of values that satisfy all equations simultaneously.

## Algebratic Methods for Linear Systems

Linear systems consist of linear equations with multiple variables.

### 1. Substitution Method

Solve one equation for one variable, then substitute into the other equation(s).

**Example:** Solve the system:
$$\begin{aligned}
2x + y &= 7 \\
x - y &= 2
\end{aligned}$$

1. From the second equation: $x = y + 2$
2. Substitute into the first equation: $2(y + 2) + y = 7$
3. Simplify: $2y + 4 + y = 7 \Rightarrow 3y = 3 \Rightarrow y = 1$
4. Back-substitute: $x = 1 + 2 = 3$
5. Solution: $(x, y) = (3, 1)$

### 2. Elimination Method

Add or subtract equations to eliminate one variable.

**Example:** Solve the system:
$$\begin{aligned}
3x + 2y &= 12 \\
2x - y &= 1
\end{aligned}$$

1. Multiply the second equation by 2: $4x - 2y = 2$
2. Add to the first equation: $(3x + 2y) + (4x - 2y) = 12 + 2$
3. Simplify: $7x = 14 \Rightarrow x = 2$
4. Substitute back: $2(2) - y = 1 \Rightarrow y = 3$
5. Solution: $(x, y) = (2, 3)$

### 3. Basic Algebraic Methods for Larger Systems

For systems with three or more variables, we can extend the substitution and elimination methods:

**Example:** Solve the system:
$$\begin{aligned}
x + y + z &= 6 \\
2x - y + z &= 3 \\
x + 2y - z &= 1
\end{aligned}$$

**Using Elimination:**

1. Add equations 1 and 3 to eliminate $z$:
   $(x + y + z) + (x + 2y - z) = 6 + 1$
   $2x + 3y = 7$ ... (equation 4)

2. Add equations 2 and 3 to eliminate $z$:
   $(2x - y + z) + (x + 2y - z) = 3 + 1$
   $3x + y = 4$ ... (equation 5)

3. Now solve the 2×2 system of equations 4 and 5:
   From equation 5: $y = 4 - 3x$
   Substitute into equation 4: $2x + 3(4 - 3x) = 7$
   $2x + 12 - 9x = 7$
   $-7x = -5$
   $x = \frac{5}{7}$

4. Find $y$: $y = 4 - 3(\frac{5}{7}) = 4 - \frac{15}{7} = \frac{13}{7}$

5. Find $z$ using equation 1: $z = 6 - x - y = 6 - \frac{5}{7} - \frac{13}{7} = \frac{24}{7}$

**Solution:** $(x, y, z) = \left(\frac{5}{7}, \frac{13}{7}, \frac{24}{7}\right)$

<!--- TODO: Add back link when Linear Algebra section is active --->
**Note:** For larger systems or more complex cases, matrix methods (covered in the Linear Algebra section) provide more systematic approaches.

## Nonlinear Systems

Systems containing at least one nonlinear equation require specialized techniques.

### Substitution Method for Nonlinear Systems

**Example:** Solve the system:
$$\begin{aligned}
x^2 + y^2 &= 25 \\
x + y &= 7
\end{aligned}$$

1. From the second equation: $y = 7 - x$
2. Substitute into the first: $x^2 + (7 - x)^2 = 25$
3. Expand: $x^2 + 49 - 14x + x^2 = 25$
4. Simplify: $2x^2 - 14x + 24 = 0 \Rightarrow x^2 - 7x + 12 = 0$
5. Factor: $(x - 3)(x - 4) = 0$
6. Solutions: $x = 3, y = 4$ or $x = 4, y = 3$

### Graphical Methods

For nonlinear systems, plotting the equations and finding intersection points provides geometric insight.

### Numerical Approximation Methods

- **Newton-Raphson method** for systems
- **Fixed-point iteration**
- **Computational software** (for complex systems)
