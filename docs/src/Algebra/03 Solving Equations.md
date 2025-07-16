# Solving Equations and Finding Roots

Equations are mathematical statements that assert the equality of two expressions. Solving equations means finding the values of variables that make the equation true. Roots of an equation are the values of the variable that satisfy the equation, making both sides equal. In this document we will discuss algebraic methods for solving equations.

## Linear Equations

Linear equations are equations of the first degree, meaning the highest power of the variable is 1.

### Standard Forms

- **One variable**: $ax + b = 0$
- **Two variables**: $ax + by = c$
- **Slope-intercept form**: $y = mx + b$

### Solving Linear Equations

1. **Isolate the variable** by performing the same operations on both sides
2. **Combine like terms**
3. **Use inverse operations** (addition/subtraction, multiplication/division)

### Example Solution Process

**Example 1**: Solve $2(x - 3) + 4 = 3(1 - x)$

1. Expand: $2x - 6 + 4 = 3 - 3x$
2. Simplify: $2x - 2 = 3 - 3x$
3. Add $3x$ to both sides: $5x - 2 = 3$
4. Add 2 to both sides: $5x = 5$
5. Divide by 5: $x = 1$

**Example 2 (Combining Like Terms)**: Solve $3x + 7 - x + 2 = 5x - 4 + 2x$

1. Combine like terms on left side: $(3x - x) + (7 + 2) = 2x + 9$
2. Combine like terms on right side: $(5x + 2x) - 4 = 7x - 4$
3. Rewrite equation: $2x + 9 = 7x - 4$
4. Subtract $2x$ from both sides: $9 = 5x - 4$
5. Add 4 to both sides: $13 = 5x$
6. Divide by 5: $x = \frac{13}{5}$

## Quadratic Equations

Quadratic equations are second-degree polynomial equations of the form:
$$ax^2 + bx + c = 0$$
where $a \neq 0$.

### Methods for Solving Quadratic Equations

#### 1. Factoring

If the quadratic can be factored as $(px + q)(rx + s) = 0$, then:

- either factor may equal 0: $px + q = 0$ or $rx + s = 0$
- solve for x: $x = -\frac{q}{p}$ or $x = -\frac{s}{r}$

**Example**: Solve $x^2 + 7x + 12 = 0$

1. Find two numbers that multiply to $12$ and add to $7$: $3$ and $4$
2. Factor: $(x + 3)(x + 4) = 0$
3. Set each factor to zero: $x + 3 = 0$ or $x + 4 = 0$
4. Solve: $x = -3$ or $x = -4$

**Note**: Not all quadratics can be factored easily over the integers. For example, $x^2 + x - 1 = 0$ requires the quadratic formula.

#### 2. Completing the Square

Completing the square is a method that rewrites the quadratic in a form that makes it easy to solve and is related to the quadratic formula (see below). The idea is to transform $ax^2 + bx + c = 0$ into $(x + d)^2 = e$ form and then use the square root property to find the roots.

**Example**: Solve $x^2 + 6x + 5 = 0$ by completing the square

1. Move constant: $x^2 + 6x = -5$
2. Add $\left(\frac{6}{2}\right)^2 = 9$ to both sides: $x^2 + 6x + 9 = -5 + 9 = 4$
3. Factor: $(x + 3)^2 = 4$
4. Take square root: $x + 3 = \pm 2$
5. Solve: $x = -3 \pm 2$, so $x = -1$ or $x = -5$

#### 3. Quadratic Formula

The quadratic formula is a general solution for any quadratic equation:

$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

**Using completing the square to derive the quadratic formula:**

Starting with the general quadratic equation $ax^2 + bx + c = 0$ where $a \neq 0$:

1. **Divide by $a$** (if $a \neq 1$): $x^2 + \frac{b}{a}x + \frac{c}{a} = 0$
2. **Move constant to right side**: $x^2 + \frac{b}{a}x = -\frac{c}{a}$
3. **Take half of the coefficient of $x$ and square it**: $\left(\frac{b}{2a}\right)^2$
4. **Add this value to both sides**: $x^2 + \frac{b}{a}x + \left(\frac{b}{2a}\right)^2 = -\frac{c}{a} + \left(\frac{b}{2a}\right)^2$
5. **Factor the left side as a perfect square**: $\left(x + \frac{b}{2a}\right)^2 = -\frac{c}{a} + \left(\frac{b}{2a}\right)^2$
6. **Take the square root of both sides**: $x + \frac{b}{2a} = \pm\sqrt{-\frac{c}{a} + \left(\frac{b}{2a}\right)^2}$
7. **Solve for $x$**: $x = -\frac{b}{2a} \pm \sqrt{-\frac{c}{a} + \left(\frac{b}{2a}\right)^2}$

**Example**: Solve $2x^2 + 5x - 3 = 0$

Here: $a = 2$, $b = 5$, $c = -3$

$$x = \frac{-5 \pm \sqrt{5^2 - 4(2)(-3)}}{2(2)} = \frac{-5 \pm \sqrt{25 + 24}}{4} = \frac{-5 \pm \sqrt{49}}{4} = \frac{-5 \pm 7}{4}$$

Therefore: $x = \frac{-5 + 7}{4} = \frac{1}{2}$ or $x = \frac{-5 - 7}{4} = -3$

**The Discriminant:**

The discriminant $\Delta = b^2 - 4ac$ determines the nature of solutions:

- Two distinct real s: $\Delta > 0$
- One repeated real solution: $\Delta = 0$
- Two complex conjugate solutions: $\Delta < 0$

**Note on Complex Conjugates:** Complex conjugates are pairs of complex numbers of the form $a + bi$ and $a - bi$, where $a$ and $b$ are real numbers and $i = \sqrt{-1}$. They have the same real part but opposite imaginary parts.

**Examples by Type:**

- **Two real roots**: $x^2 - 5x + 6 = 0$
  - Discriminant: $\Delta = (-5)^2 - 4(1)(6) = 25 - 24 = 1 > 0$
  - Solutions: $x = \frac{5 \pm \sqrt{1}}{2} = \frac{5 \pm 1}{2}$, so $x = 3$ or $x = 2$

- **One real root**: $x^2 - 4x + 4 = 0$
  - Discriminant: $\Delta = (-4)^2 - 4(1)(4) = 16 - 16 = 0$
  - Solution: $x = \frac{4 \pm \sqrt{0}}{2} = \frac{4}{2} = 2$ (double root)

- **Complex conjugate roots**: $x^2 + x + 1 = 0$
  - Discriminant: $\Delta = (1)^2 - 4(1)(1) = 1 - 4 = -3 < 0$
  - Solutions: $x = \frac{-1 \pm \sqrt{-3}}{2} = \frac{-1 \pm i\sqrt{3}}{2}$
  - Complex conjugates: $\frac{-1 + i\sqrt{3}}{2}$ and $\frac{-1 - i\sqrt{3}}{2}$

#### 4. Graphical Method

Find x-intercepts of the parabola $y = ax^2 + bx + c$.

**Steps for Graphical Solution:**

1. **Plot the parabola** $y = ax^2 + bx + c$
2. **Find x-intercepts** (where the graph crosses the x-axis, i.e., where $y = 0$)
3. **Read the x-coordinates** of intersection points

**Advantages:**

- Provides visual understanding of the solution
- Shows the number of real solutions immediately
- Useful for approximate solutions

**Limitations:**

- May not give exact solutions
- Requires graphing tools or software for accuracy

**Example**: For $y = x^2 - 3x + 2$, the parabola intersects the x-axis at $x = 1$ and $x = 2$.

## Higher Degree Equations

For equations of degree 3 and higher, various specialized techniques may be needed:

### Cubic Equations

Cubic equations have the form $ax^3 + bx^2 + cx + d = 0$ where $a \neq 0$.

#### Methods for Solving Cubic Equations

##### 1. Factoring by Grouping

**Example**: Solve $x^3 + 2x^2 - x - 2 = 0$

1. Group terms: $(x^3 + 2x^2) + (-x - 2) = 0$
2. Factor each group: $x^2(x + 2) - 1(x + 2) = 0$
3. Factor out common factor: $(x^2 - 1)(x + 2) = 0$
4. Factor further: $(x - 1)(x + 1)(x + 2) = 0$
5. Solutions: $x = 1, -1, -2$

##### 2. Rational Root Theorem

For a polynomial $a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0 = 0$ with integer coefficients, any rational root $\frac{p}{q}$ (in lowest terms) must have:

- $p$ divides the constant term $a_0$
- $q$ divides the leading coefficient $a_n$

**Example**: Find rational roots of $2x^3 - 3x^2 - 11x + 6 = 0$

Possible rational roots: $\pm 1, \pm 2, \pm 3, \pm 6, \pm \frac{1}{2}, \pm \frac{3}{2}$

Testing $x = 3$: $2(27) - 3(9) - 11(3) + 6 = 54 - 27 - 33 + 6 = 0$ ✓

So $(x - 3)$ is a factor. Using synthetic division:
$2x^3 - 3x^2 - 11x + 6 = (x - 3)(2x^2 + 3x - 2)$

Factor the quadratic: $2x^2 + 3x - 2 = (2x - 1)(x + 2)$

Complete factorization: $(x - 3)(2x - 1)(x + 2) = 0$

Solutions: $x = 3, \frac{1}{2}, -2$

##### 3. Cardano's Formula

For the general cubic $ax^3 + bx^2 + cx + d = 0$, there exists an exact formula (Cardano's formula), but it's complex and rarely used in practice for numerical solutions.

### Biquadratic Equations

Biquadratic equations are fourth-degree equations of the form:
$$ax^4 + bx^2 + c = 0$$

#### Solution Method

1. **Substitute** $u = x^2$ to get $au^2 + bu + c = 0$
2. **Solve the quadratic** in $u$ using standard methods
3. **Back-substitute** to find $x$ values from $x^2 = u$

#### Example

Solve: $x^4 - 5x^2 + 4 = 0$

1. Let $u = x^2$: $u^2 - 5u + 4 = 0$
2. Factor: $(u - 1)(u - 4) = 0$
3. Solutions: $u = 1$ or $u = 4$
4. Back-substitute: $x^2 = 1$ or $x^2 = 4$
5. Final solutions: $x = \pm 1, \pm 2$

## Finding Polynomial Roots and Zeros

**Roots** or **zeros** are values of $x$ for which a polynomial $P(x) = 0$. This is a fundamental problem in algebra with many practical applications.

### Polynomial Equation Theorems

- **Factor theorem**: If $f(a) = 0$, then $(x - a)$ is a factor
- **Remainder theorem**: $f(a)$ equals the remainder when $f(x)$ is divided by $(x - a)$
- **Fundamental theorem of algebra**: A polynomial of degree $n$ has exactly $n$ roots (counting multiplicity)

### Methods for Finding Roots

1. **Factoring**: Express as product of linear factors
   - Example: $x^2 - 5x + 6 = (x - 2)(x - 3)$, so roots are $x = 2, 3$

2. **Quadratic Formula**: For $ax^2 + bx + c = 0$
   $$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

3. **Rational Root Theorem**: For polynomials with integer coefficients, possible rational roots are $\pm \frac{p}{q}$ where $p$ divides the constant term and $q$ divides the leading coefficient

4. **Synthetic Division**: Efficient method for testing potential roots and reducing polynomial degree

**Synthetic Division Process:**

Used to divide a polynomial by $(x - c)$ and test if $c$ is a root.

**Example**: Test if $x = 2$ is a root of $P(x) = x^3 - 6x^2 + 11x - 6$

```text
    2 |  1  -6  11  -6
      |     2  -8   6
      |  1  -4   3   0
```

Steps:

1. Write coefficients: $1, -6, 11, -6$
2. Bring down the first coefficient: $1$
3. Multiply by test value ($2$) and add to next coefficient: $-6 + 2(1) = -4$
4. Repeat: $11 + 2(-4) = 3$, then $-6 + 2(3) = 0$

Since the remainder is $0$, $x = 2$ is a root, and $P(x) = (x - 2)(x^2 - 4x + 3)$.

**Numerical Methods**: These are outside the scope of this document. However, please note that for higher-degree polynomials that cannot be factored easily there are numerical methods available to approximate roots, such as:

- Newton-Raphson method
- Bisection method  
- Graphical approximation

### Example: Finding Roots

Find the roots of $P(x) = 2x^2 - 7x + 3$

Using the quadratic formula:
$$x = \frac{7 \pm \sqrt{49 - 24}}{4} = \frac{7 \pm \sqrt{25}}{4} = \frac{7 \pm 5}{4}$$

Therefore: $x = 3$ or $x = \frac{1}{2}$

**Verification**:

- $P(3) = 2(9) - 7(3) + 3 = 18 - 21 + 3 = 0$ ✓
- $P(\frac{1}{2}) = 2(\frac{1}{4}) - 7(\frac{1}{2}) + 3 = \frac{1}{2} - \frac{7}{2} + 3 = 0$ ✓

### Applications of Root Finding

- **Engineering**: Finding critical points, resonance frequencies
- **Economics**: Break-even analysis, optimization problems
- **Physics**: Finding equilibrium positions, solving motion equations
- **Computer Graphics**: Intersection calculations, curve fitting

## Systems of Equations

Systems involve multiple equations with multiple unknowns. The solution is the set of values that satisfy all equations simultaneously.

### Linear Systems

Linear systems consist of linear equations with multiple variables.

#### 1. Substitution Method

Solve one equation for one variable, then substitute into the other equation(s).

**Example**: Solve the system:
$$\begin{aligned}
2x + y &= 7 \\
x - y &= 2
\end{aligned}$$

1. From the second equation: $x = y + 2$
2. Substitute into the first equation: $2(y + 2) + y = 7$
3. Simplify: $2y + 4 + y = 7 \Rightarrow 3y = 3 \Rightarrow y = 1$
4. Back-substitute: $x = 1 + 2 = 3$
5. Solution: $(x, y) = (3, 1)$

#### 2. Elimination Method

Add or subtract equations to eliminate one variable.

**Example**: Solve the system:
$$\begin{aligned}
3x + 2y &= 12 \\
2x - y &= 1
\end{aligned}$$

1. Multiply the second equation by 2: $4x - 2y = 2$
2. Add to the first equation: $(3x + 2y) + (4x - 2y) = 12 + 2$
3. Simplify: $7x = 14 \Rightarrow x = 2$
4. Substitute back: $2(2) - y = 1 \Rightarrow y = 3$
5. Solution: $(x, y) = (2, 3)$

#### 3. Basic Algebraic Methods for Larger Systems

For systems with three or more variables, we can extend the substitution and elimination methods:

**Example**: Solve the system:
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

**Solution**: $(x, y, z) = \left(\frac{5}{7}, \frac{13}{7}, \frac{24}{7}\right)$

**Note**: For larger systems or more complex cases, matrix methods (covered in the [Linear Algebra](../Linear Algebra/01 Systems of Linear Equations.md) section) provide more systematic approaches.

### Nonlinear Systems

Systems containing at least one nonlinear equation require specialized techniques.

#### Substitution Method for Nonlinear Systems

**Example**: Solve the system:
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

#### Graphical Methods

For nonlinear systems, plotting the equations and finding intersection points provides geometric insight.

#### Numerical Approximation Methods

- **Newton-Raphson method** for systems
- **Fixed-point iteration**
- **Computational software** (for complex systems)

## Logarithmic and Exponential Equations

These equations involve exponential or logarithmic expressions and require special techniques.

### Exponential Equations

Equations where the variable appears in an exponent.

#### Simple Exponential Equations

For equations like $a^x = b$:

1. Take logarithm of both sides: $\log(a^x) = \log(b)$
2. Use logarithm properties: $x \log(a) = \log(b)$
3. Solve: $x = \frac{\log(b)}{\log(a)}$

**Example 1**: Solve $2^x = 32$

Since $32 = 2^5$, we have $2^x = 2^5$, so $x = 5$.

**Example 2**: Solve $3^x = 50$

$$x = \frac{\log(50)}{\log(3)} = \frac{\ln(50)}{\ln(3)} \approx \frac{3.912}{1.099} \approx 3.56$$

#### More Complex Exponential Equations

**Example**: Solve $2^{x+1} + 2^x = 12$

1. Factor out $2^x$: $2^x \cdot 2^1 + 2^x = 12$
2. Simplify: $2 \cdot 2^x + 2^x = 12$
3. Factor: $2^x(2 + 1) = 12$
4. Solve: $3 \cdot 2^x = 12 \Rightarrow 2^x = 4 = 2^2$
5. Therefore: $x = 2$

### Logarithmic Equations

Equations involving logarithmic expressions.

#### Basic Logarithmic Equations

**Example 1**: Solve $\log_2(x) = 5$

Convert to exponential form: $x = 2^5 = 32$

**Example 2**: Solve $\log(x) + \log(x - 3) = 1$ (common logarithm, base 10)

1. Use logarithm properties: $\log(x(x - 3)) = 1$
2. Convert to exponential form: $x(x - 3) = 10^1 = 10$
3. Expand: $x^2 - 3x = 10$
4. Rearrange: $x^2 - 3x - 10 = 0$
5. Factor: $(x - 5)(x + 2) = 0$
6. Potential solutions: $x = 5$ or $x = -2$
7. Check domain: $x > 0$ and $x - 3 > 0$, so $x > 3$
8. Valid solution: $x = 5$ (reject $x = -2$)

#### Equations with Multiple Logarithms

**Example**: Solve $\log_3(x + 1) - \log_3(x - 1) = 1$

1. Use quotient rule: $\log_3\left(\frac{x + 1}{x - 1}\right) = 1$
2. Convert to exponential form: $\frac{x + 1}{x - 1} = 3^1 = 3$
3. Cross multiply: $x + 1 = 3(x - 1)$
4. Expand: $x + 1 = 3x - 3$
5. Solve: $1 + 3 = 3x - x \Rightarrow 4 = 2x \Rightarrow x = 2$
6. Check domain: $x + 1 > 0$ and $x - 1 > 0$, so $x > 1$ ✓

### Mixed Exponential-Logarithmic Equations

**Example**: Solve $e^x - \ln(x) = 2$

This type of equation typically requires numerical methods or graphical solutions, as there's no algebraic method to isolate $x$.

## Verification and Domain Considerations

Always verify solutions by substituting back into the original equation. Pay attention to:

- **Domain restrictions** (e.g., denominators ≠ 0, arguments of logarithms > 0)
- **Extraneous solutions** introduced by algebraic manipulations
- **Practical constraints** in applied problems
