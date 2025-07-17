# Solving Equations and Finding Roots

Equations are mathematical statements that assert the equality of two expressions. Solving equations means finding the values of variables that make the equation true. The solutions of an equation are the values of the variable that satisfy the equation, making both sides equal. For polynomial equations (where $P(x) = 0$), these solutions are also called **roots** or **zeros**. In this document we will discuss (mostly) algebraic methods for solving equations.

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

**Key difference:**

- **Completing the square:** Transform the equation step-by-step into perfect square form
- **Quadratic formula:** Apply the pre-derived formula directly

Both give the same answer, but completing the square shows the geometric/algebraic structure more clearly.

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

See section below for details on the Rational Root Theorem.

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

**Roots** or **zeros** are values of $x$ for which a polynomial $P(x) = 0$. This is a fundamental problem in algebra with many practical applications in engineering, physics, economics, and computer science.

### Polynomial Equation Theorems

Understanding these fundamental theorems provides the theoretical foundation for all root-finding methods:

#### 1. **Factor Theorem**

**Statement**: If $P(x)$ is a polynomial and $a$ is a real number, then $P(a) = 0$ if and only if $(x - a)$ is a factor of $P(x)$.

**Mathematical Form**: $P(a) = 0 \Leftrightarrow P(x) = (x - a) \cdot Q(x)$ for some polynomial $Q(x)$.

**Example**: For $P(x) = x^3 - 6x^2 + 11x - 6$:

- Test $x = 1$: $P(1) = 1 - 6 + 11 - 6 = 0$
- Therefore $(x - 1)$ is a factor: $P(x) = (x - 1)(x^2 - 5x + 6)$

**Applications**:

- Confirms whether a suspected value is actually a root
- Helps factor polynomials systematically
- Provides the basis for synthetic division

#### 2. **Remainder Theorem**

**Statement**: When a polynomial $P(x)$ is divided by $(x - a)$, the remainder is $P(a)$.

**Mathematical Form**: $P(x) = (x - a) \cdot Q(x) + R$, where $R = P(a)$.

**Example**: When $P(x) = x^3 + 2x^2 - 5x + 1$ is divided by $(x - 2)$:

- $P(2) = 8 + 8 - 10 + 1 = 7$
- So the remainder is $7$

**Applications**:

- Quick evaluation of polynomials at specific points
- Testing potential roots (if remainder is 0, then it's a root)
- Fundamental to polynomial long division and synthetic division

#### 3. **Fundamental Theorem of Algebra**

**Statement**: Every polynomial of degree $n \geq 1$ with complex coefficients has exactly $n$ roots in the complex numbers (counting multiplicity).

**Key Implications**:

- A polynomial of degree $n$ can be factored as: $P(x) = a_n(x - r_1)(x - r_2)\cdots(x - r_n)$
- Real polynomials may have complex roots, but complex roots always come in conjugate pairs
- Maximum number of real roots equals the degree of the polynomial

**Example**: $P(x) = x^4 - 1$ has degree 4, so it has exactly 4 roots:

- $P(x) = (x - 1)(x + 1)(x - i)(x + i)$
- Roots: $1, -1, i, -i$

#### 4. **Multiplicity of Roots**

**Definition**: The multiplicity of a root $r$ is the highest power of $(x - r)$ that divides the polynomial.

**Types**:

- **Simple root** (multiplicity 1): Graph crosses the x-axis
- **Double root** (multiplicity 2): Graph touches the x-axis but doesn't cross
- **Triple root** (multiplicity 3): Graph has an inflection point at the x-axis

**Example**: $P(x) = (x - 2)^2(x + 1)^3$ has:

- Root $x = 2$ with multiplicity 2
- Root $x = -1$ with multiplicity 3
- Total degree: $2 + 3 = 5$

#### 5. **Rational Root Theorem** (Preview)

**Statement**: For a polynomial with integer coefficients, any rational root $\frac{p}{q}$ (in lowest terms) must have $p$ dividing the constant term and $q$ dividing the leading coefficient.

**Significance**: Provides a finite list of candidates for rational roots, making systematic testing possible.

### Methods for Finding Roots

#### 1. **Factoring**

**Description**: Express the polynomial as a product of linear factors and find where each factor equals zero.

**When to Use**:

- Low-degree polynomials (quadratic, cubic)
- Polynomials with obvious patterns
- When rational roots are suspected

**Method**:

1. **Look for common factors** first
2. **Apply factoring techniques**: difference of squares, perfect square trinomials, grouping
3. **Set each factor to zero** and solve
4. **Verify solutions** by substitution

**Example**: Factor $P(x) = x^3 - 6x^2 + 11x - 6$

1. Try grouping or look for rational roots
2. Test $x = 1$: $P(1) = 1 - 6 + 11 - 6 = 0$ ✓
3. Factor out $(x - 1)$: $P(x) = (x - 1)(x^2 - 5x + 6)$
4. Factor the quadratic: $x^2 - 5x + 6 = (x - 2)(x - 3)$
5. Complete factorization: $P(x) = (x - 1)(x - 2)(x - 3)$
6. Roots: $x = 1, 2, 3$

**Advantages**:

- Gives exact solutions
- Provides insight into polynomial structure
- Works well for low-degree polynomials

**Limitations**:

- Not all polynomials can be factored over the integers
- Becomes difficult for high-degree polynomials

#### 2. **Quadratic Formula**

**Description**: For quadratic polynomials $ax^2 + bx + c = 0$, use the derived formula to find roots directly.

**Formula**:
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

**When to Use**:

- Any quadratic equation
- When factoring is not obvious
- When exact solutions are needed

**Method**:

1. **Identify coefficients** $a$, $b$, and $c$
2. **Calculate the discriminant** $\Delta = b^2 - 4ac$
3. **Apply the formula**
4. **Interpret results** based on discriminant value

**Example**: Find roots of $P(x) = 2x^2 - 7x + 3$

1. Coefficients: $a = 2$, $b = -7$, $c = 3$
2. Discriminant: $\Delta = (-7)^2 - 4(2)(3) = 49 - 24 = 25$
3. Apply formula: $x = \frac{7 \pm \sqrt{25}}{4} = \frac{7 \pm 5}{4}$
4. Solutions: $x = 3$ or $x = \frac{1}{2}$

**Verification**:

- $P(3) = 2(9) - 7(3) + 3 = 18 - 21 + 3 = 0$ ✓
- $P(\frac{1}{2}) = 2(\frac{1}{4}) - 7(\frac{1}{2}) + 3 = \frac{1}{2} - \frac{7}{2} + 3 = 0$ ✓

#### 3. **The Rational Root Theorem**

**Description**: The Rational Root Theorem provides a systematic way to find potential rational roots of polynomial equations with integer coefficients.

**Statement**: For polynomial $a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0 = 0$ where all coefficients are integers, if $\frac{p}{q}$ is a rational root (with $\gcd(p,q) = 1$), then:

- the numerator $p$ divides the constant term $a_0$
- the denominator $q$ divides the leading coefficient $a_n$

**When to Use**:

- Polynomials with integer coefficients
- When looking for rational roots specifically
- As a first step before using other methods

**Method**:

1. **List all factors** of the constant term (possible values for $p$)
2. **List all factors** of the leading coefficient (possible values for $q$)
3. **Form all possible fractions** $\frac{p}{q}$
4. **Test each candidate** by substitution or synthetic division
5. **Factor out confirmed roots** and repeat if necessary

**Example**: Find rational roots of $P(x) = 2x^3 - 3x^2 - 11x + 6$

1. **Constant term**: $a_0 = 6$
   Factors of 6: $\pm 1, \pm 2, \pm 3, \pm 6$

2. **Leading coefficient**: $a_3 = 2$
   Factors of 2: $\pm 1, \pm 2$

3. **Possible rational roots**: $\frac{p}{q} = \pm 1, \pm 2, \pm 3, \pm 6, \pm \frac{1}{2}, \pm \frac{3}{2}$

4. **Test candidates**:
   - $P(3) = 2(27) - 3(9) - 11(3) + 6 = 54 - 27 - 33 + 6 = 0$ ✓
   - So $x = 3$ is a root

5. **Factor out $(x - 3)$** using synthetic division:
   $P(x) = (x - 3)(2x^2 + 3x - 2)$

6. **Factor the quadratic**: $2x^2 + 3x - 2 = (2x - 1)(x + 2)$

7. **Complete factorization**: $P(x) = (x - 3)(2x - 1)(x + 2)$

8. **All roots**: $x = 3, \frac{1}{2}, -2$

**Advantages**:

- Provides finite list of candidates
- Systematic approach for rational roots
- Works well with synthetic division

**Limitations**:

- Only finds rational roots
- Can have many candidates to test
- Irrational and complex roots require other methods

#### 4. **Synthetic Division**

**Description**: Synthetic division is an efficient method for dividing polynomials by linear factors of the form $(x - c)$ and testing whether $c$ is a root.

**When to Use**:

- Testing candidates from the Rational Root Theorem
- Dividing polynomials by linear factors
- Reducing polynomial degree after finding a root
- Evaluating polynomials at specific points (alternative to direct substitution)

**Method**:

1. **Set up the synthetic division table** with the test value and polynomial coefficients
2. **Perform the synthetic division algorithm**
3. **Interpret the remainder**: if remainder = 0, then the test value is a root
4. **Use the quotient** to continue finding other roots

**Example**: Test if $x = 2$ is a root of $P(x) = x^3 - 6x^2 + 11x - 6$

**Setup**:

```text
    2 |  1  -6  11  -6
      |     2  -8   6
      |  1  -4   3   0
```

**Steps**:

1. **Write coefficients**: $1, -6, 11, -6$
2. **Bring down first coefficient**: $1$
3. **Multiply by test value** and **add to next coefficient**: $-6 + 2(1) = -4$
4. **Repeat**: $11 + 2(-4) = 3$, then $-6 + 2(3) = 0$
5. **Result**: Remainder is $0$, so $x = 2$ is a root

**Factorization**: $P(x) = (x - 2)(x^2 - 4x + 3)$

**Continue factoring**: $x^2 - 4x + 3 = (x - 1)(x - 3)$

**Complete solution**: $P(x) = (x - 2)(x - 1)(x - 3)$, so roots are $x = 1, 2, 3$

**Advantages**:

- Much faster than polynomial long division
- Combines root testing with polynomial reduction
- Provides quotient for further factorization
- Less prone to arithmetic errors

**Limitations**:

- Only works for linear divisors $(x - c)$
- Requires systematic testing of candidates
- Best used in combination with Rational Root Theorem

#### 5. **Numerical Approximation Methods**

**Description**: When exact algebraic methods fail, numerical methods can approximate roots to any desired accuracy.

**When to Use**:

- High-degree polynomials that can't be factored
- Polynomials with irrational or complex roots
- When approximate solutions are sufficient
- Real-world applications where exact solutions aren't necessary

**Common Methods**:

**Newton-Raphson Method**:

- Uses derivative information: $x_{n+1} = x_n - \frac{f(x_n)}{f'(x_n)}$
- Converges quickly near roots
- Requires good initial guess

**Bisection Method**:

- Uses Intermediate Value Theorem
- Brackets root between two values with opposite signs
- Slower but more reliable convergence

**Graphical Approximation**:

- Plot the polynomial and identify x-intercepts
- Use graphing software or calculators
- Provides visual understanding of root behavior

**Example**: Approximate a root of $P(x) = x^3 - 2x - 5$

Using graphical analysis, we can see there's a root near $x = 2$. Using numerical methods (calculator or software), we find $x \approx 2.094551$.

**Advantages**:

- Works for any polynomial
- Can find all types of roots (real, complex, irrational)
- Adjustable precision

**Limitations**:

- Gives approximate, not exact solutions
- Requires computational tools
- May miss roots or converge to wrong values

### Comprehensive Examples

#### Example 1: Complete Root Finding Process

**Problem**: Find all roots of $P(x) = x^4 - 10x^2 + 9$

**Solution**:

**Step 1**: Recognize this as a biquadratic equation

- Let $u = x^2$: $u^2 - 10u + 9 = 0$

**Step 2**: Solve the quadratic in $u$

- Factor: $(u - 1)(u - 9) = 0$
- Solutions: $u = 1$ or $u = 9$

**Step 3**: Back-substitute to find $x$

- $x^2 = 1 \Rightarrow x = \pm 1$
- $x^2 = 9 \Rightarrow x = \pm 3$

**Step 4**: Verify all solutions

- $P(1) = 1 - 10 + 9 = 0$ ✓
- $P(-1) = 1 - 10 + 9 = 0$ ✓
- $P(3) = 81 - 90 + 9 = 0$ ✓
- $P(-3) = 81 - 90 + 9 = 0$ ✓

**Final Answer**: Roots are $x = \pm 1, \pm 3$

#### Example 2: Mixed Method Approach

**Problem**: Find all roots of $P(x) = 2x^3 - x^2 - 13x - 6$

**Solution**:

**Step 1**: Apply Rational Root Theorem

- Factors of constant term (-6): $\pm 1, \pm 2, \pm 3, \pm 6$
- Factors of leading coefficient (2): $\pm 1, \pm 2$
- Possible rational roots: $\pm 1, \pm 2, \pm 3, \pm 6, \pm \frac{1}{2}, \pm \frac{3}{2}$

**Step 2**: Test candidates using synthetic division

- Test $x = 3$:

```text
    3 |  2  -1  -13  -6
      |     6   15   6
      |  2   5    2   0
```

- Remainder is 0, so $x = 3$ is a root
- $P(x) = (x - 3)(2x^2 + 5x + 2)$

**Step 3**: Factor the remaining quadratic

- $2x^2 + 5x + 2 = (2x + 1)(x + 2)$
- Complete factorization: $P(x) = (x - 3)(2x + 1)(x + 2)$

**Step 4**: Find all roots

- $x - 3 = 0 \Rightarrow x = 3$
- $2x + 1 = 0 \Rightarrow x = -\frac{1}{2}$
- $x + 2 = 0 \Rightarrow x = -2$

**Final Answer**: Roots are $x = 3, -\frac{1}{2}, -2$

### Strategy for Root Finding

**General Approach**:

1. **Check for obvious patterns**: Perfect squares, difference of squares, common factors
2. **Apply Rational Root Theorem** for polynomials with integer coefficients
3. **Use synthetic division** to test candidates and reduce polynomial degree
4. **Apply specialized methods** for remaining factors (quadratic formula, etc.)
5. **Use numerical methods** when algebraic methods fail
6. **Always verify** solutions by substitution

**Choosing the Right Method**:

- **Degree 2**: Factoring or quadratic formula
- **Degree 3-4**: Rational Root Theorem + synthetic division
- **Biquadratic**: Substitution method
- **Higher degrees**: Rational Root Theorem + numerical methods
- **Non-integer coefficients**: Numerical methods often preferred

### Applications of Root Finding

- **Engineering**: Finding critical points, resonance frequencies
- **Economics**: Break-even analysis, optimization problems
- **Physics**: Finding equilibrium positions, solving motion equations
- **Computer Graphics**: Intersection calculations, curve fitting


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
