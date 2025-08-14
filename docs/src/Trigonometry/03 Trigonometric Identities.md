# Trigonometric Identities

Trigonometric identities are equations involving [trigonometric functions](./02 Trigonometric Functions.md) that are true for all values of the variables involved. These identities are essential in simplifying trigonometric expressions, solving equations, and proving other mathematical statements. Below are some of the most commonly used trigonometric identities.

## Pythagorean Identities

The Pythagorean identities are fundamental relationships in trigonometry that relate the sine, cosine, and tangent functions. They are derived from the Pythagorean theorem applied to the unit circle. The Pythagorean identities relate the squares of the sine and cosine functions to 1:

$\sin^2(x) + \cos^2(x) = 1$
$\sec^2(x) - \tan^2(x) = 1$
$\csc^2(x) - \cot^2(x) = 1$

## Angle Sum and Difference Identities or Addition Theorems

These [addition formulas](https://mathworld.wolfram.com/TrigonometricAdditionFormulas.html) allow you to find the trigonometric functions of sums and differences of angles:

### Sine

$\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$
$\sin(a - b) = \sin(a)\cos(b) - \cos(a)\sin(b)$

### Cosine

$\cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b)$
$\cos(a - b) = \cos(a)\cos(b) + \sin(a)\sin(b)$

### Tangent

$\tan(a + b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)}$
$\tan(a - b) = \frac{\tan(a) - \tan(b)}{1 + \tan(a)\tan(b)}$

### Derivation of the Sine Addition Formula

The sine addition formula can be derived using geometry and the unit circle.

#### Geometric Method Using the Unit Circle

Consider two angles $a$ and $b$ on the unit circle. We can derive the sine addition formula by examining the coordinates of points on the unit circle and using basic geometric relationships.

When we rotate a point $(x, y)$ on the unit circle by angle $b$, the new coordinates become:

- $x' = x\cos b - y\sin b$  
- $y' = x\sin b + y\cos b$

If we start with the point $(\cos a, \sin a)$ then

- $x = \cos a$
- $y = \sin a$

If we rotate it by angle $b$, we get the point $(\cos(a+b), \sin(a+b))$. Hence

- $x' = \cos(a+b)$
- $y' = \sin(a+b)$.

Equating the two $y'$ coordinates and substituting for $x$ and $y$ in the rotation formula side of the equation, we get:
$\sin(a + b) = \sin a \cos b + \cos a \sin b$

### Derivation of the Cosine Addition Formula

Equating the two $x'$ coordinates and substituting for $x$ and $y$ in the rotation formula side of the equation, we get:
$\cos(a + b) = \cos a \cos b - \sin a \sin b$

#### Alternative: Using the Distance Formula

We can also derive this using the distance between two points on the unit circle. Consider points $P = (\cos a, \sin a)$ and $Q = (\cos b, \sin b)$ on the unit circle.

The distance between these points is:
$d = \sqrt{(\cos a - \cos b)^2 + (\sin a - \sin b)^2}$

Expanding this distance formula and using the fact that the distance can also be calculated using the chord length formula $2\sin\left(\frac{|a-b|}{2}\right)$ leads to the cosine addition formula through algebraic manipulation.

### Derivation of the Tangent Addition Theorem

#### Step 1: Use the definition of tangent

Since $\tan(\theta) = \frac{\sin(\theta)}{\cos(\theta)}$, we have:

$\tan(a + b) = \frac{\sin(a + b)}{\cos(a + b)}$

#### Step 2: Substitute the addition formulas

From the sine and cosine addition theorems:

$\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$

$\cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b)$

Substituting these into our expression:

$\tan(a + b) = \frac{\sin(a)\cos(b) + \cos(a)\sin(b)}{\cos(a)\cos(b) - \sin(a)\sin(b)}$

#### Step 3: Divide both numerator and denominator by $\cos(a)\cos(b)$

$\tan(a + b) = \frac{\frac{\sin(a)\cos(b)}{\cos(a)\cos(b)} + \frac{\cos(a)\sin(b)}{\cos(a)\cos(b)}}{\frac{\cos(a)\cos(b)}{\cos(a)\cos(b)} - \frac{\sin(a)\sin(b)}{\cos(a)\cos(b)}}$

#### Step 4: Simplify using the definition of tangent

$\tan(a + b) = \frac{\frac{\sin(a)}{\cos(a)} + \frac{\sin(b)}{\cos(b)}}{1 - \frac{\sin(a)}{\cos(a)}\frac{\sin(b)}{\cos(b)}}$

$\tan(a + b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)}$

This is the tangent addition theorem, which allows you to find the tangent of a sum of angles in terms of the tangents of the individual angles.

### Examples of Addition Formulas

#### Example 1: Sine Addition Formula

Find $\sin(75^\circ)$ using $\sin(45^\circ + 30^\circ)$:

$$\begin{aligned}
\sin(75^\circ) &= \sin(45^\circ + 30^\circ)\\
&= \sin(45^\circ)\cos(30^\circ) + \cos(45^\circ)\sin(30^\circ)\\
&= \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{3}}{2} + \frac{\sqrt{2}}{2} \cdot \frac{1}{2}\\
&= \frac{\sqrt{6}}{4} + \frac{\sqrt{2}}{4}\\
&= \frac{\sqrt{6} + \sqrt{2}}{4}
\end{aligned}$$

#### Example 2: Cosine Addition Formula

Find $\cos(75^\circ)$ using $\cos(45^\circ + 30^\circ)$:

$$\begin{aligned}
\cos(75^\circ) &= \cos(45^\circ + 30^\circ)\\
&= \cos(45^\circ)\cos(30^\circ) - \sin(45^\circ)\sin(30^\circ)\\
&= \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{3}}{2} - \frac{\sqrt{2}}{2} \cdot \frac{1}{2}\\
&= \frac{\sqrt{6}}{4} - \frac{\sqrt{2}}{4}\\
&= \frac{\sqrt{6} - \sqrt{2}}{4}
\end{aligned}$$

#### Example 3: Tangent Addition Formula

Find $\tan(75^\circ)$ using $\tan(45^\circ + 30^\circ)$:

$$\begin{aligned}
\tan(75^\circ) &= \tan(45^\circ + 30^\circ)\\
&= \frac{\tan(45^\circ) + \tan(30^\circ)}{1 - \tan(45^\circ)\tan(30^\circ)}\\
&= \frac{1 + \frac{1}{\sqrt{3}}}{1 - 1 \cdot \frac{1}{\sqrt{3}}}\\
&= \frac{1 + \frac{1}{\sqrt{3}}}{1 - \frac{1}{\sqrt{3}}}\\
&= \frac{\sqrt{3} + 1}{\sqrt{3} - 1}
\end{aligned}$$

Rationalizing the denominator:

$$\begin{aligned}
\tan(75^\circ) &= \frac{(\sqrt{3} + 1)^2}{(\sqrt{3} - 1)(\sqrt{3} + 1)}\\
&= \frac{3 + 2\sqrt{3} + 1}{3 - 1}\\
&= \frac{4 + 2\sqrt{3}}{2}\\
&= 2 + \sqrt{3}
\end{aligned}$$

#### Example 4: Cosine Difference Formula

Find $\cos(15^\circ)$ using $\cos(45^\circ - 30^\circ)$:

$$\begin{aligned}
\cos(15^\circ) &= \cos(45^\circ - 30^\circ)\\
&= \cos(45^\circ)\cos(30^\circ) + \sin(45^\circ)\sin(30^\circ)\\
&= \frac{\sqrt{2}}{2} \cdot \frac{\sqrt{3}}{2} + \frac{\sqrt{2}}{2} \cdot \frac{1}{2}\\
&= \frac{\sqrt{6}}{4} + \frac{\sqrt{2}}{4}\\
&= \frac{\sqrt{6} + \sqrt{2}}{4}
\end{aligned}$$

## Co-function Identities

Co-function identities relate trigonometric functions of complementary angles (angles that sum to 90^\circ). These identities show that trigonometric functions are related to their "co-functions":

$\sin \theta = \cos(90^\circ - \theta) = \cos\left(\frac{\pi}{2} - \theta\right)$
$\cos \theta = \sin(90^\circ - \theta) = \sin\left(\frac{\pi}{2} - \theta\right)$
$\tan \theta = \cot(90^\circ - \theta) = \cot\left(\frac{\pi}{2} - \theta\right)$

And their reciprocals:

$\csc \theta = \sec(90^\circ - \theta) = \sec\left(\frac{\pi}{2} - \theta\right)$
$\sec \theta = \csc(90^\circ - \theta) = \csc\left(\frac{\pi}{2} - \theta\right)$
$\cot \theta = \tan(90^\circ - \theta) = \tan\left(\frac{\pi}{2} - \theta\right)$

### Interpretation and Applications

**Geometric Meaning**: The sine of an angle equals the cosine of its complement, and vice versa. This reflects the fact that in a right triangle, the side opposite one acute angle is adjacent to the other acute angle.

**Practical Use**: These identities allow you to:

- Convert between trigonometric functions
- Simplify expressions involving complementary angles
- Solve equations more efficiently

### Co-function Example

To find $\sin 30^\circ$, we can use:

$$\begin{aligned}
\sin 30^\circ &= \cos(90^\circ - 30^\circ) \\
&= \cos 60^\circ \\
&= \frac{1}{2}
\end{aligned}$$

## Periodicity Identities

Trigonometric functions are periodic, meaning they repeat their values at regular intervals. These periodicity identities are fundamental to understanding trigonometric behavior:

### Basic Periodicity

$\sin(\theta + 2\pi) = \sin \theta$
$\cos(\theta + 2\pi) = \cos \theta$
$\tan(\theta + \pi) = \tan \theta$

### Extended Periodicity

For any integer $n$:

$\sin(\theta + 2n\pi) = \sin \theta$
$\cos(\theta + 2n\pi) = \cos \theta$
$\tan(\theta + n\pi) = \tan \theta$

### Key Observations

- **Sine and Cosine**: Have period $2\pi$ (360^\circ) - one complete revolution around the unit circle
- **Tangent**: Has period $\pi$ (180^\circ) - repeats every half-revolution due to its ratio nature
- **Practical Implication**: Any trigonometric equation has infinitely many solutions due to periodicity

### Periodicity Example

Since $\sin(\theta + 2\pi) = \sin \theta$, we know that

$$\begin{aligned}
\sin(390^\circ) &= \sin(390^\circ - 360^\circ) \\
&= \sin(30^\circ) \\
&= \frac{1}{2}
\end{aligned}$$

## Quadrant Identities

Quadrant identities describe how trigonometric functions behave for supplementary angles and angles in different quadrants of the unit circle:

### Supplementary Angle Identities

For angles that sum to 180^\circ (π radians):

$\sin(180^\circ - \theta) = \sin(\pi - \theta) = \sin \theta$
$\cos(180^\circ - \theta) = \cos(\pi - \theta) = -\cos \theta$
$\tan(180^\circ - \theta) = \tan(\pi - \theta) = -\tan \theta$

### General Quadrant Relationships

Based on the CAST rule (Cosine-All-Sine-Tangent positive in quadrants I-IV):

- **Quadrant I:** ($0^\circ < \theta < 90^\circ$): All functions positive
- **Quadrant II:** ($90^\circ < \theta < 180^\circ$): $\sin$ positive, $\cos$ and $\tan$ negative
- **Quadrant III:** ($180^\circ < \theta < 270^\circ$): $\tan$ positive, $\sin$ and $\cos$ negative
- **Quadrant IV:** ($270^\circ < \theta < 360^\circ$): $\cos$ positive, $\sin$ and $\tan$ negative

### Reference Angle Applications

Using reference angles, we can express any angle's trigonometric values:

$\sin(180^\circ + \theta) = -\sin \theta$
$\cos(180^\circ + \theta) = -\cos \theta$
$\tan(180^\circ + \theta) = \tan \theta$

### Quadrant Example

To find $\sin 150^\circ$: Since $150^\circ = 180^\circ - 30^\circ$, we have:

$$\begin{aligned}
\sin 150^\circ &= \sin(180^\circ - 30^\circ) \\
&= -\sin -30^\circ \\
&= \sin 30^\circ \\
&= \frac{1}{2}
\end{aligned}$$

## Inverse Function Properties

[Inverse trigonometric functions](https://mathworld.wolfram.com/InverseSine.html) require restricted domains to ensure single-valued outputs. These principal value ranges are fundamental identities:

### Principal Value Ranges

$\arcsin: [-1, 1] \rightarrow \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$
$\arccos: [-1, 1] \rightarrow [0, \pi]$
$\arctan: (-\infty, \infty) \rightarrow \left(-\frac{\pi}{2}, \frac{\pi}{2}\right)$
$\operatorname{arccot}: (-\infty, \infty) \rightarrow (0, \pi)$

### Complementary Inverse Function Identities

$\arcsin x + \arccos x = \frac{\pi}{2}$
$\arctan x + \operatorname{arccot} x = \frac{\pi}{2}$

### Inverse Function Relationships

$\sin(\arcsin x) = x \text{ for } x \in [-1, 1]$
$\cos(\arccos x) = x \text{ for } x \in [-1, 1]$
$\tan(\arctan x) = x \text{ for } x \in (-\infty, \infty)$
$\cot(\operatorname{arccot} x) = x \text{ for } x \in (-\infty, \infty)$

But the reverse is only true within principal value ranges:

$\arcsin(\sin x) = x \text{ only for } x \in \left[-\frac{\pi}{2}, \frac{\pi}{2}\right]$

### Practical Applications

These properties are essential for:

- Solving trigonometric equations
- Converting between degrees and radians in specific ranges
- Understanding why inverse functions return specific values

### Inverse Function Example

Because $120^\circ$ is outside the principal range:

$$\arcsin(\sin 120^\circ) \neq 120^\circ$$

Instead:

$$\arcsin(\sin 120^\circ) = \arcsin(\frac{\sqrt{3}}{2}) = 60^\circ$$

## Double-Angle Identities

[Double-angle formulas](https://mathworld.wolfram.com/Double-AngleFormulas.html) express trigonometric functions of $2\theta$ in terms of functions of $\theta$:

### Double-Angle Formulas

$\sin(2\theta) = 2\sin\theta\cos\theta$
$\cos(2\theta) = \cos^2\theta - \sin^2\theta = 2\cos^2\theta - 1 = 1 - 2\sin^2\theta$
$\tan(2\theta) = \frac{2\tan\theta}{1 - \tan^2\theta}$

### Applications

These formulas are particularly useful for:

- Simplifying expressions involving $2\theta$
- Converting between different trigonometric forms
- Solving equations with double angles

### Double-Angle Example

To find $\sin(60^\circ)$ using the double-angle formula:
Since $60^\circ = 2 \times 30^\circ$, we have:

$$\begin{aligned}
\sin(60^\circ) &= 2\sin(30^\circ)\cos(30^\circ) \\
&= 2 \cdot \frac{1}{2} \cdot \frac{\sqrt{3}}{2} \\
&= \frac{\sqrt{3}}{2}
\end{aligned}$$

## Half-Angle Identities

[Half-angle formulas](https://mathworld.wolfram.com/Half-AngleFormulas.html) express trigonometric functions of $\frac{\theta}{2}$ in terms of functions of $\theta$:

### Half-Angle Formulas

$\sin\left(\frac{\theta}{2}\right) = \pm\sqrt{\frac{1 - \cos\theta}{2}}$
$\cos\left(\frac{\theta}{2}\right) = \pm\sqrt{\frac{1 + \cos\theta}{2}}$
$$\begin{aligned}
\tan\left(\frac{\theta}{2}\right) &= \pm\sqrt{\frac{1 - \cos\theta}{1 + \cos\theta}} \\
&= \frac{\sin\theta}{1 + \cos\theta} \\
&= \frac{1 - \cos\theta}{\sin\theta}
\end{aligned}$$

### Sign Determination

The choice of $\pm$ depends on the quadrant of $\frac{\theta}{2}$.

### Half-Angle Example

To find $\cos(15^\circ)$ using the half-angle formula:
Since $15^\circ = \frac{30^\circ}{2}$, we have:

$$\begin{aligned}
\cos(15^\circ) &= \sqrt{\frac{1 + \cos(30^\circ)}{2}} \\
&= \sqrt{\frac{1 + \frac{\sqrt{3}}{2}}{2}} \\
&= \sqrt{\frac{2 + \sqrt{3}}{4}} \\
&= \frac{\sqrt{2 + \sqrt{3}}}{2}
\end{aligned}$$

## Practical Applications and Summary

### Mathematical Problem Solving

These trigonometric identities are fundamental tools for:

1. **Simplifying Complex Expressions**: Use identities to reduce complicated trigonometric expressions to simpler forms
2. **Solving Trigonometric Equations**: Transform equations into solvable forms using appropriate identities
3. **Proving Mathematical Statements**: Use identities as building blocks for more complex proofs
4. **Integration and Differentiation**: Apply identities to evaluate integrals and derivatives involving trigonometric functions

### Key Strategy Guidelines

- **Choose the Right Identity**: Different problems require different approaches - Pythagorean for squares, addition formulas for sums
- **Work Systematically**: Apply one identity at a time and simplify at each step
- **Check Your Work**: Verify results using alternative identities or specific angle values
- **Practice Recognition**: Learn to identify which identity applies to each situation
