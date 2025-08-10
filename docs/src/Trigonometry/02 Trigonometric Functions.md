# Trigonometric Functions

Trigonometric functions are mathematical functions that relate the angles of a triangle to the lengths of its sides. They are fundamental in various fields such as physics, engineering, and computer science. The primary trigonometric functions are sine, cosine, and tangent, which can be defined using the unit circle or right triangles.

## Sine Function

The sine function, denoted as $\sin(x)$, is a periodic function that describes the y-coordinate of a point on the unit circle corresponding to an angle $x$ measured in radians. It has a range of $[-1, 1]$ and a period of $2\pi$.

## Cosine Function

The cosine function, denoted as $cos(x)$, is also a periodic function that describes the x-coordinate of a point on the unit circle corresponding to an angle $x$ measured in radians. It has a range of $[-1, 1]$ and a period of $2\pi$.

## Tangent Function

The tangent function, denoted as $\tan(x)$, is the ratio of the sine and cosine functions:
$$\tan(x) = \frac{\sin(x)}{\cos(x)}$$
It is periodic with a period of $\pi$ and has vertical asymptotes where $\cos(x) = 0$.

## Trigonometric Laws

### Sine Law

The Sine Law states that in any triangle, the ratio of the length of a side to the sine of the angle opposite that side is constant. This can be expressed as:
$$\frac{a}{\sin(\alpha)} = \frac{b}{\sin(\beta)} = \frac{c}{\sin(\gamma)}$$

Where:

- $a, b, c$ are the lengths of the sides of the triangle
- $\alpha, \beta, \gamma$ are the angles opposite those sides
- This law is useful for finding unknown sides or angles in a triangle when you have enough information.

### Cosine Law

The Cosine Law relates the lengths of the sides of a triangle to the cosine of one of its angles. It can be expressed as:
$$c^2 = a^2 + b^2 - 2ab \cdot \cos(\gamma)$$

Where:

- $c$ is the length of the side opposite angle $\gamma$
- $a$ and $b$ are the lengths of the other two sides
- $\gamma$ is the angle opposite side $c$

## Hyperbolic Functions

Mathematical hyperbolic functions are analogs of trigonometric functions based on the hyperbola $x^2 - y^2 = 1$. While trigonometric functions are defined using the unit circle, hyperbolic functions are defined using the unit hyperbola.

### Basic Hyperbolic Functions

- **Hyperbolic sine:** $\sinh(x) = \frac{e^x - e^{-x}}{2}$
- **Hyperbolic cosine:** $\cosh(x) = \frac{e^x + e^{-x}}{2}$
- **Hyperbolic tangent:** $\tanh(x) = \frac{\sinh(x)}{\cosh(x)} = \frac{e^x - e^{-x}}{e^x + e^{-x}}$

### Key Properties

- **Fundamental hyperbolic identity:** $\cosh^2(x) - \sinh^2(x) = 1$
- **Initial values:** $\sinh(0) = 0$, $\cosh(0) = 1$
- **Odd function property:** $\sinh(x)$ is an odd function: $\sinh(-x) = -\sinh(x)$
- **Even function property:** $\cosh(x)$ is an even function: $\cosh(-x) = \cosh(x)$

### Relationship to Trigonometric Functions

Hyperbolic functions have many similarities to trigonometric functions:

- **Trigonometric identity:** $\sin^2(x) + \cos^2(x) = 1$
- **Hyperbolic identity:** $\cosh^2(x) - \sinh^2(x) = 1$

The key difference is the sign in the fundamental identity, which reflects the difference between the unit circle ($x^2 + y^2 = 1$) and the unit hyperbola ($x^2 - y^2 = 1$).

## TODO: Content Moved from Document 01

The following sections were moved from "01 Angles & Measurements.md" because they reference trigonometric functions that need to be defined first. These sections need to be properly integrated into this document or moved to their appropriate locations:

### Angle Relationships

#### Complementary Angles

Two angles whose measures sum to 90°:

- $\sin \theta = \cos(90° - \theta)$
- $\cos \theta = \sin(90° - \theta)$
- $\tan \theta = \cot(90° - \theta)$

#### Supplementary Angles

Two angles whose measures sum to 180°:

- $\sin(180° - \theta) = \sin \theta$
- $\cos(180° - \theta) = -\cos \theta$
- $\tan(180° - \theta) = -\tan \theta$

### Special Angle Values

#### Exact Values Table

| Angle (°) | Angle (rad) | sin | cos | tan |
|-----------|-------------|-----|-----|-----|
| 0° | 0 | 0 | 1 | 0 |
| 30° | π/6 | 1/2 | √3/2 | 1/√3 |
| 45° | π/4 | √2/2 | √2/2 | 1 |
| 60° | π/3 | √3/2 | 1/2 | √3 |
| 90° | π/2 | 1 | 0 | undefined |

#### Memory Aids

- **30-60-90 triangle:** Sides in ratio $1 : \sqrt{3} : 2$
- **45-45-90 triangle:** Sides in ratio $1 : 1 : \sqrt{2}$

### Periodic Nature of Angles

#### Periodicity

Trigonometric functions repeat their values at regular intervals:

- $\sin(\theta + 2\pi) = \sin \theta$
- $\cos(\theta + 2\pi) = \cos \theta$
- $\tan(\theta + \pi) = \tan \theta$

#### Principal Values

- For inverse trig functions, we define principal value ranges:
  - $\arcsin$: $[-\frac{\pi}{2}, \frac{\pi}{2}]$
  - $\arccos$: $[0, \pi]$
  - $\arctan$: $(-\frac{\pi}{2}, \frac{\pi}{2})$
