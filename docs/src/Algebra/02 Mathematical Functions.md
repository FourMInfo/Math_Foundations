# Mathematical Functions

Functions are fundamental mathematical constructs that map inputs to outputs. This section covers various types of mathematical functions, their properties, and how to work with them.

## Function Definition and Notation

A function is a mapping of one set onto another set, where each element in the first set (domain) is associated with exactly one element in the second set (codomain). The idea comes from relations in set theory, where a function is a special type of relation. Functions are a critical concept in mathematics, allowing us to model and analyze relationships between quantities.

### Relations

- A relation R from set A to set B is simply a subset of $A \times B$
- No restrictions on how elements relate
- An element in A can be related to multiple elements in B, or none at all
- Domain of $R = \{a \in A : \exists b \in B \text{ such that } (a,b) \in R\}$
- Range of $R = \{b \in B : \exists a \in A \text{ such that } (a,b) \in R\}$

### Functions

A function is a special relation where each element in A is related to exactly one element in B. A function $f$ from set $A$ to set $B$ is denoted as $f: A \rightarrow B$, where:

- The **domain** $A$ is the set of all possible input values
- The **codomain** $B$ is the set containing all possible output values
- The **range** is the set of actual output values

The key difference is that functions have the **uniqueness property** - each input has exactly one output - while relations have no such restriction.​​​​​​​​​​​​​​​​

### Set Theory Terminology for Function Types

#### Surjective (Onto)

A _surjective_ (_onto_) function is defined as every element in the codomain is hit by some element in the domain. Formally, function $f: A \to B$ is _surjective_ if for every $b \in B$, there exists at least one $a \in A$ such that $f(a) = b$

##### Surjective Properties

- This means the range of the function is equal to the codomain
- Meets the vertical line test which means every vertical line intersects the graph at least once

##### Surjective Examples

- **Example**: $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = x^3$
  - For any real number $y$, we can find $x = \sqrt[3]{y}$ such that $f(x) = y$
- **Counter-example**: $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = x^2$
  - Negative numbers in the codomain are never outputs (range is $[0, \infty)$)

#### Into

An _into_ relationship refers to a function that is not surjective (not _onto_). A function $f: A \rightarrow B$ is _into_ if its range is a proper subset of its codomain. In other words, Range$(f) \subsetneq B$ (strict subset).

##### Into Properties

- Not every element in the codomain B is “hit” by the function
- There exist elements b ∈ B such that f(a) ≠ b for any a ∈ A
- The function “goes into” B but doesn’t fill all of B

##### Into Examples

- **Example**: $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = x^2$
  - Range = $[0,\infty)$, Codomain = $\mathbb{R}$
  - Since negative numbers are never outputs, this is _into_ $\mathbb{R}$
- **Example**: $f: \mathbb{N} \to \mathbb{Z}$ where $f(n) = n$
  - Range = $\mathbb{N}$, Codomain = $\mathbb{Z}$
  - Since negative integers and zero are never outputs, this is _into_ $\mathbb{Z}$

##### Terminology clarification - Into vs Onto

_Into_ is somewhat informal terminology. The formal term is **“not _surjective_.”** Some texts avoid _into_ because it can be confused with the general notion that any function $f: A \rightarrow B$ maps the domain $A$ “into” the codomain $B$.

The distinction matters because it tells you whether you’re using the “full capacity” of your codomain or just part of it.​​​​​​​​​​​​​​​​

- Every function is either _into_ or "onto" (but not both, unless the range equals the codomain)
- **Into**: Range $\subsetneq$ Codomain (proper subset)
- **Onto** (surjective): Range = Codomain
- **Into**: Not every element in the codomain $B$ is "hit" by the function
- **Into**: There exist elements $b \in B$ such that $f(a) \neq b$ for any $a \in A$
- **Into**: The function "goes into" $B$ but doesn't fill all of $B$

#### Injective

An _injective_ (one-to-one) function is defined as no two elements in the domain map to the same element in the codomain. Formally, a function $f: A \to B$ is _injective_ if: For all $x₁, x₂ \in A$, if $f(x₁) = f(x₂)$, then $x₁ = x₂$

##### Injective Properties

- This means that different inputs always produce different outputs
- Meets the horizontal line test which means no horizontal line intersects the graph more than once

##### Injective Examples

- **Example**: $f(x) = 2x + 3$
  - Different inputs always give different outputs
  - If $f(a) = f(b)$, then $2a + 3 = 2b + 3$, so $a = b$
- **Counter-example**: $f(x) = x^2$ (for domain $\mathbb{R}$)
  - two different inputs give the same output: $f(2) = 4$ and $f(-2) = 4$

#### Bijective (Invertible) Functions

A _bijective_ function is both injective and surjective. This means it has a perfect one-to-one correspondence between the domain and codomain.

##### Bijective Properties

Formally, a function $f: A \to B$ is _bijective_ if:

- It is _injective_: For all $x₁, x₂ \in A$, if $f(x₁) = f(x₂)$, then $x₁ = x₂$
- It is _surjective_: For every $b \in B$, there exists at least one $a \in A$ such that $f(a) = b$
- This means every element in the codomain is hit by exactly one element in the domain
- Meets both the vertical and horizontal line tests
- Has an inverse function $f^{-1}: B \to A$ such that $f^{-1}(f(a)) = a$ for all $a \in A$ and $f(f^{-1}(b)) = b$ for all $b \in B$

##### Bijective Examples

- **Example**: $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = 3x - 7$
  - Both injective and surjective (linear functions with non-zero slope)
  - Inverse is $f^{-1}(y) = \frac{y + 7}{3}$
- **Counter-example**: $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = \sin(x)$
  - Not injective: $\sin(0) = \sin(\pi) = 0$
  - Not surjective: range is $[-1, 1]$, not all of $\mathbb{R}$

- **Example**: $f(x) = 2x + 5$ has inverse $f^{-1}(x) = \frac{x - 5}{2}$
  - Both injective and surjective (linear functions with non-zero slope)
  - Verify: $f(f^{-1}(x)) = f\left(\frac{x-5}{2}\right) = 2\left(\frac{x-5}{2}\right) + 5 = x$
  - And: $f^{-1}(f(x)) = f^{-1}(2x + 5) = \frac{(2x + 5) - 5}{2} = x$
- **Counter-example**: $f(x) = x^2$ (for domain $\mathbb{R}$)
  - Not bijective, so no inverse exists
  - However, $f(x) = x^2$ for $x \geq 0$ has inverse $f^{-1}(x) = \sqrt{x}$

##### Terminology Clarification - Bijective vs Injective

**Injective (one-to-one):**

- Each element in the **range** gets hit by exactly one element from the domain
- No two different inputs map to the same output
- $f(x_1) = f(x_2) \implies x_1 = x_2$
- But not every element in the codomain needs to be hit

**Bijective (one-to-one correspondence):**

- Combines both injective AND surjective properties
- Each element in the **codomain** gets hit by exactly one element from the domain
- Every element in codomain is hit (surjective) AND no element is hit more than once (injective)

**The key difference:**

**Injective:** “one-to-one from domain to **range**”

- Perfect pairing between domain and range
- But range might be smaller than codomain

**Bijective:** “one-to-one correspondence from domain to **codomain**”

- Perfect pairing between domain and entire codomain
- Range = codomain

**Examples:**

- **Bijective:** $f: \mathbb{R} \to \mathbb{R}$ where $f(x) = 2x$
  - **Injective**: one-to-one from $\mathbb{R}$ to $\mathbb{R}$ (range = $\mathbb{R}$)
  - **Surjective**: onto $\mathbb{R}$ (every real number is hit)
  - **Bijective**: one-to-one correspondence from $\mathbb{R}$ to $\mathbb{R}$
- **Injective but not Bijective:** $f: \mathbb{R} \to [0, \infty)$ where $f(x) = x^2$
  - **Injective**: one-to-one from $\mathbb{R}$ to $[0, \infty)$ (range = $[0, \infty)$)
  - **Not Surjective**: not onto $\mathbb{R}$ (negative numbers are never outputs)
  - **Not Bijective**: no perfect pairing with codomain $\mathbb{R}$

In conclusion, _bijective_ is a stronger condition - it requires the one-to-one property to extend to the entire codomain.​​​​​​​​​​​​​​​​

### Additional Set Theory Terminology

- **Partial function**: Relation where each element in domain relates to at most one element in codomain (but not necessarily exactly one)
- **Total function**: What we usually call a “function” - defined on entire domain
- **Multivalued function**: Relation where elements can map to multiple values (technically not a function)
- **Well-defined function**: A function where every input has a unique output, and the output is unambiguous

### Function Notation in Mathematics

- **Standard notation**: $y = f(x)$ where $x$ is the input and $y$ is the output
  - **Example**: $y = f(x) = 2x + 3$ means for input $x = 1$, output $y = f(1) = 2(1) + 3 = 5$
- **Function evaluation**: $f(a)$ represents the output when input is $a$

## Polynomial Functions

Polynomials are functions of the form: $P(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0$
where $a_i$ are constants (coefficients) and $n$ is a non-negative integer (degree).

### Key Polynomial Properties

- **Degree**: The highest power of $x$ in the polynomial
- **Leading Coefficient**: The coefficient of the term with the highest degree
- **Constant Term**: The term with degree 0 (if present)
- **Standard Form**: Terms arranged in descending order of degree

### Classification by Degree

- **Constant** (degree 0): $P(x) = c$
  - Example: $P(x) = 5$
- **Linear** (degree 1): $P(x) = ax + b$
  - Example: $P(x) = 3x - 2$
- **Quadratic** (degree 2): $P(x) = ax^2 + bx + c$
  - Example: $P(x) = 2x^2 - 5x + 3$
- **Cubic** (degree 3): $P(x) = ax^3 + bx^2 + cx + d$
  - Example: $P(x) = x^3 - 4x^2 + 6x - 8$

### Classification by Number of Terms

- **Zero Polynomial** (degree undefined): $P(x) = 0$
- **Monomial** (single term): $P(x) = ax^n$
  - Example: $P(x) = 7x^4$
- **Binomial** (two terms): $P(x) = ax^n + bx^m$
  - Example: $P(x) = 3x^5 - 2x^2$
- **Trinomial** (three terms): $P(x) = ax^n + bx^m + cx^p$
  - Example: $P(x) = x^3 + 4x - 1$

### Finding Roots and Zeros

Finding polynomial roots and zeros is a fundamental problem in algebra. This topic is covered in detail in the [Solving Equations](03 Solving Equations.md) document, which includes comprehensive methods and examples for finding roots of polynomial equations.

### Polynomial Operations

#### Addition and Subtraction

Add or subtract corresponding coefficients of like terms.

**Example**: $(3x^2 + 2x - 1) + (x^2 - 5x + 4) = 4x^2 - 3x + 3$

#### Multiplication

Use the distributive property to multiply each term in the first polynomial by each term in the second.

**Example**: $(x + 2)(x^2 - 3x + 1)$

$$\begin{aligned}
(x + 2)(x^2 - 3x + 1) &= x(x^2 - 3x + 1) + 2(x^2 - 3x + 1) \\
&= x^3 - 3x^2 + x + 2x^2 - 6x + 2 \\
&= x^3 - x^2 - 5x + 2
\end{aligned}$$

#### Division

Polynomial long division or synthetic division for dividing by linear factors.

**Example**: Divide $x^3 - 2x^2 + x - 2$ by $(x - 2)$

Using synthetic division: Quotient is $x^2 + 1$ with remainder $0$

#### Function Composition

For polynomials $f(x)$ and $g(x)$, the composition $(f \circ g)(x) = f(g(x))$.

**Example**:

If $f(x) = x^2 + 1$ and $g(x) = 2x - 1$, then:

$$\begin{aligned}
f(g(x)) &= f(2x - 1) \\
&= (2x - 1)^2 + 1 \\
&= 4x^2 - 4x + 1 + 1 \\
&= 4x^2 - 4x + 2
\end{aligned}$$

## Quadratic Functions and Parabolas

Quadratic functions have the form $f(x) = ax^2 + bx + c$ where $a \neq 0$. Their graphs are parabolas.

### Parabola Standard Forms

- **General Form**: $y = ax^2 + bx + c$
- **Vertex Form**: $y = a(x - h)^2 + k$ where $(h, k)$ is the vertex
- **Factored Form**: $y = a(x - r_1)(x - r_2)$ where $r_1$ and $r_2$ are the roots (x-intercepts)

### Key Properties of Parabolas

- **Vertex**: The turning point at $\left(-\frac{b}{2a}, f\left(-\frac{b}{2a}\right)\right)$
- **Axis of Symmetry**: Vertical line $x = -\frac{b}{2a}$
- **Direction**: Opens upward if $a > 0$, downward if $a < 0$
- **Y-intercept**: Point $(0, c)$
- **Domain**: All real numbers $(-\infty, \infty)$
- **Range**: $[k, \infty)$ if $a > 0$, $(-\infty, k]$ if $a < 0$

### Finding Roots Using the Quadratic Formula

This topic is covered in detail in the [Solving Equations](03 Solving Equations.md) document, which includes the quadratic formula:
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

### Example: Complete Analysis

Analyze $f(x) = -2x^2 + 8x - 6$

- Identify $a = -2$, $b = 8$, $c = -6$
- Vertex at $x = -\frac{8}{2(-2)} = 2$, $y = f(2) = -2(4) + 16 - 6 = 2$
- Vertex: $(2, 2)$
- Opens downward since $a < 0$
- Y-intercept: $(0, -6)$
- Discriminant: $\Delta = 64 - 48 = 16 > 0$ (two real roots)
- Roots: $x = \frac{-8 \pm 4}{-4} = 1, 3$

## Hyperbolic Functions

### Conic Section Hyperbolas

Hyperbolas are conic sections defined by equations of the form:

- **Horizontal Hyperbola**: $\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1$
- **Vertical Hyperbola**: $\frac{y^2}{a^2} - \frac{x^2}{b^2} = 1$

### Key Properties of Conic Hyperbolas

- **Center**: the center of the hyperbola is at the origin $(0, 0)$ for standard form
- **Axes**: the transverse axis is
  - along the x-axis for horizontal hyperbolas
  - along the y-axis for vertical hyperbolas
- **Vertices**: points where the hyperbola intersects the transverse axis
  - For horizontal hyperbolas: $(\pm a, 0)$
  - For vertical hyperbolas: $(0, \pm a)$
- **Asymptotes**: the asymptote is the line that the hyperbola approaches but never touches.
  - For horizontal hyperbolas: $y = \pm \frac{b}{a}x$
  - For vertical hyperbolas: $x = \pm \frac{b}{a}y$
- **Foci**: the points where the hyperbola is centered
  - For horizontal hyperbolas: $(\pm c, 0)$
  - For vertical hyperbolas: $(0, \pm c)$
  - where $c = \sqrt{a^2 + b^2}$
- **Eccentricity**: the ratio of the distance from the center to a focus and the distance from the center to a vertex
  - For hyperbolas: $e = \frac{c}{a}$, where $c = \sqrt{a^2 + b^2}$
  - Eccentricity is always greater than 1 for hyperbolas
- **Domain**: All real numbers except the vertical asymptote
- **Range**: All real numbers except the horizontal asymptote
- **Symmetry**: Hyperbolas are symmetric with respect to both axes and the origin

### Rational Function Hyperbolas

The simplest rational hyperbola is $y = \frac{1}{x}$, which has:

- **Vertical asymptote**: $x = 0$
- **Horizontal asymptote**: $y = 0$
- **Domain**: $(-\infty, 0) \cup (0, \infty)$
- **Range**: $(-\infty, 0) \cup (0, \infty)$

### Transformations of Rational Hyperbolas

The general form $y = \frac{a}{x - h} + k$ represents:

- **Horizontal shift**: $h$ units right (if $h > 0$)
- **Vertical shift**: $k$ units up (if $k > 0$)
- **Vertical stretch/compression**: Factor of $|a|$
- **Reflection**: About x-axis if $a < 0$

#### Example Transformation

Transform $y = \frac{1}{x}$ to $y = \frac{-2}{x + 3} + 1$:

1. Shift 3 units left: $y = \frac{1}{x + 3}$
2. Stretch vertically by factor 2: $y = \frac{2}{x + 3}$
3. Reflect about x-axis: $y = \frac{-2}{x + 3}$
4. Shift 1 unit up: $y = \frac{-2}{x + 3} + 1$

**New asymptotes**: $x = -3$ (vertical), $y = 1$ (horizontal)

### Mathematical Hyperbolic Functions

Mathematical hyperbolic functions are closely related to trigonometric functions and are covered in detail in the [Trigonometric Functions](../Trigonometry/01 Trigonometric Functions.md) section.

## Exponential Functions

Exponential functions have the form $f(x) = a^x$ where $a > 0$ and $a \neq 1$.

### Key Properties of Exponential Functions

- **Domain**: All real numbers $(-\infty, \infty)$
- **Range**: $(0, \infty)$ for $a > 0$
- **Horizontal asymptote**: $y = 0$
- **Y-intercept**: $(0, 1)$ since $a^0 = 1$
- **Behavior**:
  - If $a > 1$: function increases exponentially
  - If $0 < a < 1$: function decreases exponentially

### Special Exponential Functions

#### Natural Exponential Function

The natural exponential function is defined as: $f(x) = e^x$ where $e \approx 2.71828$ (Euler's number)

**Properties:**

- Rate of change equals the function value: $\frac{d}{dx}e^x = e^x$
- Inverse is the natural logarithm: $\ln(e^x) = x$

#### Common Exponential Function

The common exponential function is defined as: $f(x) = 10^x$ (base 10)

**Properties:**

- Used in scientific notation and logarithmic scales
- Inverse is the common logarithm: $\log_{10}(10^x) = x$
- **Example**: $f(2) = 10^2 = 100$

### Laws of Exponents

- **Product Rule**: $a^m \cdot a^n = a^{m+n}$
- **Quotient Rule**: $\frac{a^m}{a^n} = a^{m-n}$
- **Power Rule**: $(a^m)^n = a^{mn}$
- **Zero Exponent** (for $a \neq 0$): $a^0 = 1$
- **Negative Exponent**: $a^{-n} = \frac{1}{a^n}$

### Exponential Growth and Decay

#### Discrete Growth/Decay

Exponential growth and decay can be modeled by the function: $N(t) = N_0 \cdot a^t$

where:

- the initial amount is $N_0$
- the base $a$ is the growth factor:
  - exponential growth: $a > 1$
  - exponential decay: $0 < a < 1$
- the time variable is $t$
- the amount at time $t$ is $N(t)$

#### Continuous Growth/Decay

For continuous growth or decay, the formula is: $N(t) = N_0  \cdot e^{kt}$

where $k$ is the continuous growth rate:

- the initial amount is $N_0$
- the base is $e$ of natural logarithms (approximately 2.718)
  - exponential growth: $k > 0$
  - exponential decay: $k < 0$
- the time variable is $t$
- the amount at time $t$ is $N(t)$

#### Half-life Problems

Half-life problems involve exponential decay, where a quantity decreases by half over a fixed period.

**Formula:** $N(t) = N_0 \left(\frac{1}{2}\right)^{t/t_{1/2}}$

where:

- the initial amount is $N_0$
- the half-life period is $t_{1/2}$
- the amount at time $t$ is $N(t)$

**Example:** Carbon-14 has a half-life of 5,730 years. If a sample starts with 100g, how much remains after 11,460 years?

$$N(11460) = 100 \left(\frac{1}{2}\right)^{11460/5730} = 100 \left(\frac{1}{2}\right)^2 = 100 \cdot \frac{1}{4} = 25 \text{ grams}$$

#### Continuous Exponential Decay

For continuous exponential decay with a known decay constant, we use the continuous formula.

**Example:** A radioactive substance decays continuously at a rate of $k = -0.0231$ per year. If we start with 100g, how much remains after 30 years?

Using $N(t) = N_0 e^{kt}$:

$$N(30) = 100 e^{-0.0231 \times 30} = 100 e^{-0.693} = 100 \times 0.5 = 50 \text{ grams}$$

Note: The decay constant $k = -0.693$ corresponds to a half-life of 30 years since $\ln(0.5) = -0.693$.

#### Compound Interest

Compound interest is calculated when interest is earned on both the principal and previously earned interest.

**Discrete Compounding Formula:**
$A = P\left(1 + \frac{r}{n}\right)^{nt}$

where:

- the principal (initial investment) is $P$  
- the annual interest rate (decimal) is $r$
- number of times interest is compounded per year is $n$
- the final amount after $t$ years is $A$

**Example:** \$1000 invested at $5\%$ annual interest compounded quarterly for $3$ years:

$$A = 1000\left(1 + \frac{0.05}{4}\right)^{4 \times 3} = 1000(1.0125)^{12} \approx \$1160.75$$

**Continuous Compounding Formula:**
$$A = Pe^{rt}$$

where:

- the principal (initial investment) is $P$
- the annual interest rate (decimal) is $r$
- the time in years is $t$
- the final amount is $A$

**Example:** \$1000 invested at $5%$ annual interest compounded continuously for $3$ years:

$$A = 1000e^{0.05 \times 3} = 1000e^{0.15} \approx 1000 \times 1.1618 \approx \$1161.83$$

Notice that continuous compounding yields slightly more than quarterly compounding.

## Logarithmic Functions

A logarithmic function is the inverse of an exponential function. The logarithm $\log_a x$ is defined as the exponent to which base $a$ must be raised to produce $x$.

### Definition

For $a > 0$ and $a \neq 1$: $y = \log_a(x) \quad \text{if and only if} \quad a^y = x$

The most common logarithms are:

- **Natural logarithm**: $\ln(x) = \log_e(x)$ where $e \approx 2.718$
- **Common logarithm**: $\log(x) = \log_{10}(x)$

### Key Properties of Logarithmic Functions

- **Domain**: $(0, \infty)$
- **Range**: $(-\infty, \infty)$
- **Vertical asymptote**: $x = 0$
- **Passes through**: $(1, 0)$ and $(a, 1)$
- **Increasing function** if $a > 1$
- **Decreasing function** if $0 < a < 1$

### Laws of Logarithms

The fundamental properties of logarithms are derived from the properties of exponents:

- **Product Rule**: $\log_a(mn) = \log_a(m) + \log_a(n)$
- **Quotient Rule**: $\log_a\left(\frac{m}{n}\right) = \log_a(m) - \log_a(n)$
- **Power Rule**: $\log_a(m^n) = n\log_a(m)$

### Base Properties

- **Logarithm of 1** (to any base is 0): $\log_a(1) = 0$
- **Logarithm of base** (to itself is 1): $\log_a(a) = 1$
- **Logarithm of base raised to exponent** (equals the exponent): $\log_a(a^x) = x$
- **Logarithm of reciprocal** (is the negative logarithm): $\log_a\left(\frac{1}{x}\right) = -\log_a(x)$
- **Base raised to its logarithm** (equals the original number): $a^{\log_a(x)} = x$
- **Logarithm of root** (is logarithm of radicand divided by root): $\log_a(\sqrt[n]{m}) = \frac{1}{n}\log_a(m)$

### Change of Base Formula

The change of base formula allows conversion between logarithms of different bases:
$$\log_a(x) = \frac{\log_b(x)}{\log_b(a)}$$

**Example:** Convert $\log_5(125)$ to natural logarithms:
$$\log_5(125) = \frac{\ln(125)}{\ln(5)} = \frac{\ln(5^3)}{\ln(5)} = \frac{3\ln(5)}{\ln(5)} = 3$$

### Examples of Logarithmic Calculations

**Example 1:** Evaluate $\log_2(32)$

Since $2^5 = 32$, we have $\log_2(32) = 5$

**Example 2:** Simplify $\log_3(27x^4)$

$\log_3(27x^4) = \log_3(27) + \log_3(x^4) = \log_3(3^3) + 4\log_3(x) = 3 + 4\log_3(x)$

**Example 3:** Solve $\log_4(x) = 3$

Converting to exponential form: $4^3 = x$, so $x = 64$

### Applications of Logarithmic Functions

#### pH Scale in Chemistry

The pH of a solution measures its acidity:
$\text{pH} = -\log_{10}[\text{H}^+]$

where $[\text{H}^+]$ is the hydrogen ion concentration in moles per liter.

**Example:** If $[\text{H}^+] = 1.0 \times 10^{-3}$ M, then:
$\text{pH} = -\log_{10}(10^{-3}) = -(-3) = 3$

This represents an acidic solution.

#### Decibel Scale for Sound Intensity

Sound intensity is measured in decibels using:
$\text{dB} = 10\log_{10}\left(\frac{I}{I_0}\right)$

where $I$ is the sound intensity and $I_0$ is the reference intensity ($10^{-12}$ W/m²).

**Example:** A sound 1000 times more intense than the reference:

$$\text{dB} = 10\log_{10}(1000) = 10\log_{10}(10^3) = 10 \times 3 = 30 \text{ dB}$$

#### Richter Scale for Earthquakes

Earthquake magnitude is measured using:
$M = \log_{10}\left(\frac{A}{A_0}\right)$

where $A$ is the amplitude and $A_0$ is the reference amplitude.

#### Solving Exponential Equations

Logarithms are essential for solving exponential equations.

**Example:** Solve $5^x = 125$

Taking the natural logarithm of both sides:

1. **Step 1:** $\ln(5^x) = \ln(125)$
1. **Step 2:** $x\ln(5) = \ln(125)$
1. **Step 3:** $x = \frac{\ln(125)}{\ln(5)} = \frac{\ln(5^3)}{\ln(5)} = \frac{3\ln(5)}{\ln(5)} = 3$
