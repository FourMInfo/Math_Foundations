# Mathematical Functions

Functions are fundamental mathematical objects that describe relationships between variables. A function assigns exactly one output value to each input value.

## Definition and Notation

A function $f$ from set $A$ to set $B$ is denoted as $f: A \rightarrow B$, where:

- The **domain** $A$ is the set of all possible input values
- The **codomain** $B$ is the set containing all possible output values
- The **range** is the set of actual output values

### Function Notation

- **Standard notation**: $y = f(x)$ where $x$ is the input and $y$ is the output
  - **Example**: $f(x) = 2x + 3$ means for input $x = 1$, output $f(1) = 2(1) + 3 = 5$
- **Function evaluation**: $f(a)$ represents the output when input is $a$

### Key Function Properties

- **One-to-one (injective)**: Each output corresponds to exactly one input
- **Onto (surjective)**: Every element in the codomain is an output
- **Bijective**: Both one-to-one and onto

## Polynomials

Polynomials are functions of the form: $P(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0$
where $a_i$ are constants (coefficients) and $n$ is a non-negative integer (degree).

### Key Polynomial Properties

- **Degree**: The highest power of $x$ in the polynomial
- **Leading Coefficient**: The coefficient of the term with the highest degree
- **Constant Term**: The term with degree 0 (if present)
- **Standard Form**: Terms arranged in descending order of degree

### Classification by Degree

- **Constant**: $P(x) = c$ (degree 0)
  - Example: $P(x) = 5$
- **Linear**: $P(x) = ax + b$ (degree 1)
  - Example: $P(x) = 3x - 2$
- **Quadratic**: $P(x) = ax^2 + bx + c$ (degree 2)
  - Example: $P(x) = 2x^2 - 5x + 3$
- **Cubic**: $P(x) = ax^3 + bx^2 + cx + d$ (degree 3)
  - Example: $P(x) = x^3 - 4x^2 + 6x - 8$

### Classification by Number of Terms

- **Zero Polynomial**: $P(x) = 0$ (degree undefined)
- **Monomial**: $P(x) = ax^n$ (single term)
  - Example: $P(x) = 7x^4$
- **Binomial**: $P(x) = ax^n + bx^m$ (two terms)
  - Example: $P(x) = 3x^5 - 2x^2$
- **Trinomial**: $P(x) = ax^n + bx^m + cx^p$ (three terms)
  - Example: $P(x) = x^3 + 4x - 1$

### Finding Roots and Zeros

**Roots** or **zeros** are values of $x$ for which $P(x) = 0$.

#### Methods for Finding Roots

1. **Factoring**: Express as product of linear factors
   - Example: $x^2 - 5x + 6 = (x - 2)(x - 3)$, so roots are $x = 2, 3$

2. **Quadratic Formula**: For $ax^2 + bx + c = 0$
   $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$

3. **Rational Root Theorem**: Possible rational roots are $\pm \frac{p}{q}$ where $p$ divides the constant term and $q$ divides the leading coefficient

#### Example: Finding Roots

Find the roots of $P(x) = 2x^2 - 7x + 3$

Using the quadratic formula:
$$x = \frac{7 \pm \sqrt{49 - 24}}{4} = \frac{7 \pm \sqrt{25}}{4} = \frac{7 \pm 5}{4}$$

Therefore: $x = 3$ or $x = \frac{1}{2}$

### Polynomial Operations

#### Addition and Subtraction

Add or subtract corresponding coefficients of like terms.

**Example**: $(3x^2 + 2x - 1) + (x^2 - 5x + 4) = 4x^2 - 3x + 3$

#### Multiplication

Use the distributive property to multiply each term in the first polynomial by each term in the second.

- **Example**: $(x + 2)(x^2 - 3x + 1)$
- **Example**: $= x(x^2 - 3x + 1) + 2(x^2 - 3x + 1)$
- **Example**: $= x^3 - 3x^2 + x + 2x^2 - 6x + 2$
- **Example**: $= x^3 - x^2 - 5x + 2$

#### Division

Polynomial long division or synthetic division for dividing by linear factors.

**Example**: Divide $x^3 - 2x^2 + x - 2$ by $(x - 2)$

Using synthetic division: Quotient is $x^2 + 1$ with remainder $0$

#### Function Composition

For polynomials $f(x)$ and $g(x)$, the composition $(f \circ g)(x) = f(g(x))$.

**Example**:

If $f(x) = x^2 + 1$ and $g(x) = 2x - 1$, then:
$f(g(x)) = f(2x - 1) = (2x - 1)^2 + 1 = 4x^2 - 4x + 2$

## Quadratic Functions and Parabolas

Quadratic functions have the form $f(x) = ax^2 + bx + c$ where $a \neq 0$. Their graphs are parabolas.

### Parabola Standard Forms

- **General Form**: $y = ax^2 + bx + c$
- **Vertex Form**: $y = a(x - h)^2 + k$ where $(h, k)$ is the vertex.
- **Factored Form**: $y = a(x - r_1)(x - r_2)$ where $r_1$ and $r_2$ are the roots (x-intercepts).

### Key Properties of Parabolas

- **Vertex**: The turning point at $\left(-\frac{b}{2a}, f\left(-\frac{b}{2a}\right)\right)$
- **Axis of Symmetry**: Vertical line $x = -\frac{b}{2a}$
- **Direction**: Opens upward if $a > 0$, downward if $a < 0$
- **Y-intercept**: Point $(0, c)$
- **Domain**: All real numbers $(-\infty, \infty)$
- **Range**: $[k, \infty)$ if $a > 0$, $(-\infty, k]$ if $a < 0$

### Finding Roots Using the Quadratic Formula

For $ax^2 + bx + c = 0$: $x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$

The **discriminant** $\Delta = b^2 - 4ac$ determines the nature of roots:

- Two distinct real roots: $\Delta > 0$
- One real root (repeated/double root): $\Delta = 0$
- Two complex conjugate roots: $\Delta < 0$

### Example: Complete Analysis

Analyze $f(x) = -2x^2 + 8x - 6$

1. **Step 1**: Identify $a = -2$, $b = 8$, $c = -6$
1. **Step 2**: Vertex at $x = -\frac{8}{2(-2)} = 2$, $y = f(2) = -2(4) + 16 - 6 = 2$
1. **Step 3**: Vertex: $(2, 2)$
1. **Step 4**: Opens downward since $a < 0$
1. **Step 5**: Y-intercept: $(0, -6)$
1. **Step 6**: Discriminant: $\Delta = 64 - 48 = 16 > 0$ (two real roots)
1. **Step 7**: Roots: $x = \frac{-8 \pm 4}{-4} = 1, 3$

## Hyperbolic Functions

Hyperbolic functions are analogs of trigonometric functions but based on hyperbolas rather than circles.

### Hyperbola Standard Forms

Hyperbolas are conic sections defined by equations of the form:

- **Horizontal Hyperbola**: $\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1$
- **Vertical Hyperbola**: $\frac{y^2}{a^2} - \frac{x^2}{b^2} = 1$
- **General Form**: $\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1$ or $\frac{y^2}{a^2} - \frac{x^2}{b^2} = 1$
- 

## Key Properties of Hyperbolas

- **Center**: $(0, 0)$ for standard form
- **Vertices**: $(\pm a, 0)$ for horizontal, $(0, \pm a)$ for vertical
- **Asymptotes**: $y = \pm \frac{b}{a}x$ for horizontal hyperbola

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
- **Zero Exponent**: $a^0 = 1$ (for $a \neq 0$)
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

#### Compound Interest

Compound interest is calculated when interest is earned on both the principal and previously earned interest.

**Discrete Compounding Formula:**
$A = P\left(1 + \frac{r}{n}\right)^{nt}$

where:

- the principal (initial investment) is $P$  
- the annual interest rate (decimal) is $r$
- number of times interest is compounded per year is $n$
- the final amount after $t$ years is $A$

**Continuous Compounding Formula:**
$A = Pe^{rt}$

where:

- the principal (initial investment) is $P$  
- the annual interest rate (decimal) is $r$
- number of times interest is compounded per year is $n$
- the final amount after $t$ years is $A$

**Example:** \$1000 invested at $5%$ annual interest compounded quarterly for $3$ years:

$$A = 1000\left(1 + \frac{0.05}{4}\right)^{4 \times 3} = 1000(1.0125)^{12} \approx \$1161.62$$

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

- the logarithm of 1 to any base is 0: $\log_a(1) = 0$ 
- the logarithm of a base to itself is 1: $\log_a(a) = 1$
- the logarithm of a base raised to an exponent is the exponent: $\log_a(a^x) = x$
- the logarithm of a reciprocal is the negative logarithm: $\log_a\left(\frac{1}{x}\right) = -\log_a(x)$
- the base raised to the logarithm of a number equals that number: $a^{\log_a(x)} = x$
- the logarithm of a product is the sum of the logarithms: $\log_a(mn) = \log_a(m) + \log_a(n)$
- the logarithm of a quotient is the difference of the logarithms: $\log_a\left(\frac{m}{n}\right) = \log_a(m) - \log_a(n)$
- the logarithm of a power is the exponent times the logarithm of the base: $\log_a(m^n) = n\log_a(m)$
- the logarithm of a root is the logarithm of the radicand divided by the root: $\log_a(\sqrt[n]{m}) = \frac{1}{n}\log_a(m)$

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
