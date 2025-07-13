# Mathematical Functions

Functions are fundamental mathematical objects that describe relationships between variables. A function assigns exactly one output value to each input value.

## Definition and Notation

A function $f$ from set $A$ to set $B$ is denoted as $f: A \rightarrow B$, where:

- $A$ is the **domain** (set of all possible input values)
- $B$ is the **codomain** (set containing all possible output values)
- The **range** is the set of actual output values

Common notation: $y = f(x)$ where $x$ is the input and $y$ is the output.

## Polynomials

Polynomials are functions of the form:
$P(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0$

where $a_i$ are constants (coefficients) and $n$ is a non-negative integer (degree).

### Types of Polynomials

- **Zero Polynomial**: $P(x) = 0$ (degree undefined)
- **Monomial**: $P(x) = ax^n$ (degree $n$)
- **Binomial**: $P(x) = ax^n + bx^m$ (degree $\max(n, m)$)
- **Trinomial**: $P(x) = ax^n + bx^m + cx^p$ (degree $\max(n, m, p)$)
- **Quadrinomial**: $P(x) = ax^n + bx^m + cx^p + dx^q$ (degree $\max(n, m, p, q)$)
- **Constant**: $P(x) = c$ (degree 0)
- **Linear**: $P(x) = ax + b$ (degree 1)
- **Quadratic**: $P(x) = ax^2 + bx + c$ (degree 2)
- **Cubic**: $P(x) = ax^3 + bx^2 + cx + d$ (degree 3)

### Key Concepts

- **Polynomial**: General form with any number of terms
- **Degree**: The highest power of $x$ in the polynomial
- **Leading Coefficient**: The coefficient of the term with the highest degree
- **Constant Term**: The term with degree 0 (if present)
- **Roots/Zeros**: Values of $x$ for which $P(x) = 0$
- **Factoring**: Expressing $P(x)$ as a product of simpler polynomials


### Polynomial Operations

- **Addition**: Add corresponding coefficients
- **Multiplication**: Use distributive property
- **Substitution**: Replace variable with specific values
- **Composition**: $f(g(x))$ - substitute one function into another

## Parabolas

Parabolas are the graphs of quadratic functions. The standard form is:
$$y = ax^2 + bx + c$$

### Key Properties

- **Vertex**: The turning point of the parabola
- **Axis of symmetry**: Vertical line through the vertex
- **Direction**: Opens upward if $a > 0$, downward if $a < 0$
- **Y-intercept**: Point where graph crosses y-axis (0, c)
- **X-intercepts (roots)**: Points where graph crosses x-axis

### Vertex Form

$$y = a(x - h)^2 + k$$
where $(h, k)$ is the vertex.

### Finding Roots

Use the quadratic formula:
$$x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}$$

The discriminant $\Delta = b^2 - 4ac$ determines the nature of roots:

- $\Delta > 0$: Two real roots
- $\Delta = 0$: One real root (repeated)
- $\Delta < 0$: Two complex roots

## Hyperbolas

Hyperbolas are curves defined by equations of the form:
$$\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1$$ (horizontal hyperbola)
or
$$\frac{y^2}{a^2} - \frac{x^2}{b^2} = 1$$ (vertical hyperbola)

### Rational Function Hyperbolas

The simplest hyperbola is $y = \frac{1}{x}$, which has:

- **Vertical asymptote**: $x = 0$
- **Horizontal asymptote**: $y = 0$
- **Domain**: $(-\infty, 0) \cup (0, \infty)$
- **Range**: $(-\infty, 0) \cup (0, \infty)$

### Transformations

The general form $y = \frac{a}{x - h} + k$ represents:

- Horizontal shift by $h$ units
- Vertical shift by $k$ units
- Vertical stretch/compression by factor $|a|$
- Reflection if $a < 0$

## Exponential Functions

Exponential functions have the form $f(x) = a^x$ where $a > 0$ and $a \neq 1$.

### Properties

- **Domain**: All real numbers
- **Range**: $(0, \infty)$ for $a > 0$
- **Base $e$**: Natural exponential function $f(x) = e^x$
- **Growth**: If $a > 1$, function increases; if $0 < a < 1$, function decreases

### Laws of Exponents

- $a^m \cdot a^n = a^{m+n}$
- $\frac{a^m}{a^n} = a^{m-n}$
- $(a^m)^n = a^{mn}$
- $a^0 = 1$
- $a^{-n} = \frac{1}{a^n}$

## Logarithmic Functions

Logarithms are the inverse of exponential functions. If $y = a^x$, then $x = \log_a y$.

### Properties

- **Domain**: $(0, \infty)$
- **Range**: All real numbers
- **Common logarithm**: $\log_{10} x$ (often written as $\log x$)
- **Natural logarithm**: $\log_e x = \ln x$

### Laws of Logarithms

- $\log_a(mn) = \log_a m + \log_a n$
- $\log_a\left(\frac{m}{n}\right) = \log_a m - \log_a n$
- $\log_a(m^n) = n \log_a m$
- $\log_a a = 1$
- $\log_a 1 = 0$

### Change of Base Formula

$$\log_a x = \frac{\log_b x}{\log_b a}$$

### Applications

#### Half-life Problems
Half-life problems use the exponential decay formula:
$$N(t) = N_0 \left(\frac{1}{2}\right)^{t/t_{1/2}}$$

where:
- $N(t)$ is the amount at time $t$
- $N_0$ is the initial amount
- $t_{1/2}$ is the half-life period

#### Compound Interest

$A = P\left(1 + \frac{r}{n}\right)^{nt}$

where:

- $A$ is the final amount
- $P$ is the principal
- $r$ is the annual interest rate
- $n$ is the number of times interest is compounded per year
- $t$ is the time in years