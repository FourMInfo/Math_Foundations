# Trigonometric Functions

[Trigonometric functions](https://mathworld.wolfram.com/TrigonometricFunctions.html) are mathematical functions that relate the angles of a triangle to the lengths of its sides. They are fundamental in various fields such as physics, engineering, and computer science. The primary trigonometric functions are sine, cosine, and tangent, which can be defined using the [unit circle](https://mathworld.wolfram.com/UnitCircle.html) or right triangles.

## Trigonometric Functions in Right Triangles

### The Triangle Definition

In a right triangle with angle $\theta$, the trigonometric functions are defined as ratios of the sides:

```text
    |\
    | \
  a |  \ c (hypotenuse)
    |   \
    |    \
    ------
       b
```

Where:

- opposite side (opposite to angle $\theta$) = $a$
- adjacent side (next to angle $\theta$) = $b$
- hypotenuse (longest side, opposite the right angle) = $c$

### SOH-CAH-TOA Definitions

The mnemonic **SOH-CAH-TOA** helps remember the basic definitions:

- **SOH**: $\sin \theta = \frac{\text{Opposite}}{\text{Hypotenuse}} = \frac{a}{c}$
- **CAH**: $\cos \theta = \frac{\text{Adjacent}}{\text{Hypotenuse}} = \frac{b}{c}$
- **TOA**: $\tan \theta = \frac{\text{Opposite}}{\text{Adjacent}} = \frac{a}{b}$

### Additional Trigonometric Functions

Three reciprocal functions complete the set:

- **Cosecant**: $\csc \theta = \frac{1}{\sin \theta} = \frac{c}{a}$
- **Secant**: $\sec \theta = \frac{1}{\cos \theta} = \frac{c}{b}$
- **Cotangent**: $\cot \theta = \frac{1}{\tan \theta} = \frac{b}{a}$

### Fundamental Identity

From the Pythagorean theorem ($a^2 + b^2 = c^2$), we derive the fundamental trigonometric identity:

$$\sin^2 \theta + \cos^2 \theta = 1$$

This identity connects the triangle definition to the unit circle definition.

## Unit Circle Definition

### The Unit Circle Connection

The [unit circle](https://mathworld.wolfram.com/UnitCircle.html) provides a more general definition that extends trigonometric functions beyond right triangles. A unit circle is a circle with radius 1 centered at the origin of a coordinate system.

For any angle $\theta$ measured counterclockwise from the positive x-axis:

- The point where the angle intersects the unit circle has coordinates $(\cos \theta, \sin \theta)$
- the x-coordinate of this point is $\cos \theta$
- the y-coordinate of this point is $\sin \theta$

### Why This Works

This connection between triangles and the unit circle becomes clear when we consider:

1. **For acute angles** (0° < θ < 90°): The unit circle point creates a right triangle with the x-axis
2. **For obtuse angles** (90° < θ < 180°): The definitions extend naturally using signed coordinates
3. **For angles beyond 180°**: The pattern continues, creating the periodic nature of trigonometric functions

### Domain and Range

Using the unit circle definition:

- **Domain**: All real numbers (angles can be any size)
- **Range of sine and cosine**: $[-1, 1]$ (coordinates on unit circle)
- **Range of tangent**: All real numbers (except at vertical asymptotes)

## Sine Function

The [sine function](https://mathworld.wolfram.com/Sine.html), denoted as $\sin(x)$, represents the y-coordinate of a point on the unit circle corresponding to an angle $x$ measured from the positive x-axis.

### Sine Definition and Properties

- **Definition**: $\sin(x) = \frac{\text{opposite}}{\text{hypotenuse}}$ (in right triangles) or y-coordinate on unit circle
- **Domain**: All real numbers $(-\infty, \infty)$
- **Range**: $[-1, 1]$
- **Period**: $2\pi$ radians (360°)
- **Symmetry**: Odd function, meaning $\sin(-x) = -\sin(x)$

### Sine Key Characteristics

- **Zero points**: $\sin(x) = 0$ when $x = n\pi$ where $n$ is any integer
- **Maximum values**: $\sin(x) = 1$ when $x = \frac{\pi}{2} + 2n\pi$
- **Minimum values**: $\sin(x) = -1$ when $x = \frac{3\pi}{2} + 2n\pi$

## Cosine Function

The [cosine function](https://mathworld.wolfram.com/Cosine.html), denoted as $\cos(x)$, represents the x-coordinate of a point on the unit circle corresponding to an angle $x$ measured from the positive x-axis.

### Cosine Definition and Properties

- **Definition**: $\cos(x) = \frac{\text{adjacent}}{\text{hypotenuse}}$ (in right triangles) or x-coordinate on unit circle
- **Domain**: All real numbers $(-\infty, \infty)$
- **Range**: $[-1, 1]$
- **Period**: $2\pi$ radians (360°)
- **Symmetry**: Even function, meaning $\cos(-x) = \cos(x)$

### Cosine Key Characteristics

- **Zero points**: $\cos(x) = 0$ when $x = \frac{\pi}{2} + n\pi$ where $n$ is any integer
- **Maximum values**: $\cos(x) = 1$ when $x = 2n\pi$
- **Minimum values**: $\cos(x) = -1$ when $x = \pi + 2n\pi$

## Tangent Function

The [tangent function](https://mathworld.wolfram.com/Tangent.html), denoted as $\tan(x)$, is the ratio of the sine and cosine functions:

$$\tan(x) = \frac{\sin(x)}{\cos(x)}$$

### Tangent Definition and Properties

- **Definition**: $\tan(x) = \frac{\text{opposite}}{\text{adjacent}}$ (in right triangles) or $\frac{\sin(x)}{\cos(x)}$
- **Domain**: All real numbers except $x = \frac{\pi}{2} + n\pi$ where $n$ is any integer
- **Range**: All real numbers $(-\infty, \infty)$
- **Period**: $\pi$ radians (180°)
- **Symmetry**: Odd function, meaning $\tan(-x) = -\tan(x)$

### Tangent Key Characteristics

- **Zero points**: $\tan(x) = 0$ when $x = n\pi$ where $n$ is any integer
- **Vertical asymptotes**: At $x = \frac{\pi}{2} + n\pi$ where $\cos(x) = 0$
- **No maximum or minimum values**: Function approaches $\pm\infty$ at asymptotes

## Characteristic Values of Trigonometric Functions

The following table shows exact values of trigonometric functions at commonly used angles:

$$\begin{array}{|c|c|c|c|c|c|c|c|}
\hline
\text{Angle } (\theta) & 0° & 30° & 45° & 60° & 90° & 180° & 270° \\
\hline
\text{Radians} & 0 & \frac{\pi}{6} & \frac{\pi}{4} & \frac{\pi}{3} & \frac{\pi}{2} & \pi & \frac{3\pi}{2} \\
\hline
\sin \theta & 0 & \frac{1}{2} & \frac{\sqrt{2}}{2} & \frac{\sqrt{3}}{2} & 1 & 0 & -1 \\
\hline
\cos \theta & 1 & \frac{\sqrt{3}}{2} & \frac{\sqrt{2}}{2} & \frac{1}{2} & 0 & -1 & 0 \\
\hline
\tan \theta & 0 & \frac{1}{\sqrt{3}} & 1 & \sqrt{3} & \text{undefined} & 0 & \text{undefined} \\
\hline
\end{array}$$

### Memory Aids for Special Values

**30-60-90 Triangle**: Sides in ratio $1 : \sqrt{3} : 2$

- $\sin 30° = \frac{1}{2}$
- $\cos 30° = \frac{\sqrt{3}}{2}$
- $\sin 60° = \frac{\sqrt{3}}{2}$
- $\cos 60° = \frac{1}{2}$

**45-45-90 Triangle**: Sides in ratio $1 : 1 : \sqrt{2}$

- $\sin 45° = \cos 45° = \frac{\sqrt{2}}{2}$

**Quadrant Signs**:

- **Quadrant I** (0° to 90°): All positive
- **Quadrant II** (90° to 180°): Only sine positive  
- **Quadrant III** (180° to 270°): Only tangent positive
- **Quadrant IV** (270° to 360°): Only cosine positive

**Mnemonic**: "All Students Take Calculus" (A-S-T-C)

## Trigonometric Laws

The [Sine Law](https://mathworld.wolfram.com/LawofSines.html) and [Cosine Law](https://mathworld.wolfram.com/LawofCosines.html) are fundamental relationships that hold for any triangle, not just right triangles.

### Sine Law

For any triangle with sides $a$, $b$, $c$ and opposite angles $A$, $B$, $C$:
$$\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C}$$

This law is particularly useful when you know:

- Two angles and one side (AAS or ASA)
- Two sides and an angle opposite one of them (SSA)

#### Example: Finding a Missing Side (AAS)

**Given:** In triangle ABC, $A = 30°$, $B = 45°$, and side $a = 10$ units.  
**Find:** Side $b$.

**Solution:**
1. First find angle $C$: $C = 180° - A - B = 180° - 30° - 45° = 105°$
2. Apply the Sine Law: $\frac{a}{\sin A} = \frac{b}{\sin B}$
3. Substitute: $\frac{10}{\sin 30°} = \frac{b}{\sin 45°}$
4. Solve: $b = \frac{10 \times \sin 45°}{\sin 30°} = \frac{10 \times \frac{\sqrt{2}}{2}}{\frac{1}{2}} = 10\sqrt{2} \approx 14.14$ units

#### Example: Finding a Missing Angle (SSA)

**Given:** In triangle ABC, side $a = 8$ units, side $b = 10$ units, and angle $A = 30°$.  
**Find:** Angle $B$.

**Solution:**
1. Apply the Sine Law: $\frac{a}{\sin A} = \frac{b}{\sin B}$
2. Rearrange: $\sin B = \frac{b \sin A}{a}$
3. Substitute: $\sin B = \frac{10 \times \sin 30°}{8} = \frac{10 \times \frac{1}{2}}{8} = \frac{5}{8} = 0.625$
4. Solve: $B = \arcsin(0.625) \approx 38.68°$

**Note:** In SSA cases, check if a second solution exists: $B' = 180° - 38.68° = 141.32°$. Verify which solution(s) create valid triangles by checking that all angles sum to 180°.

### Cosine Law

For any triangle with sides $a$, $b$, $c$ and angle $C$ opposite side $c$:
$$c^2 = a^2 + b^2 - 2ab\cos C$$

This generalizes the Pythagorean theorem and is useful when you know:

- Three sides (SSS)  
- Two sides and the included angle (SAS)

#### Example: Finding a Missing Side (SAS)

**Given:** In triangle ABC, $a = 8$ units, $b = 6$ units, and $C = 60°$.  
**Find:** Side $c$.

**Solution:**
1. Apply the Cosine Law: $c^2 = a^2 + b^2 - 2ab\cos C$
2. Substitute: $c^2 = 8^2 + 6^2 - 2(8)(6)\cos 60°$
3. Calculate: $c^2 = 64 + 36 - 96 \times \frac{1}{2} = 100 - 48 = 52$
4. Solve: $c = \sqrt{52} = 2\sqrt{13} \approx 7.21$ units

#### Example: Finding a Missing Angle (SSS)

**Given:** In triangle ABC, $a = 5$ units, $b = 7$ units, and $c = 9$ units.  
**Find:** Angle $C$.

**Solution:**
1. Rearrange the Cosine Law: $\cos C = \frac{a^2 + b^2 - c^2}{2ab}$
2. Substitute: $\cos C = \frac{5^2 + 7^2 - 9^2}{2(5)(7)} = \frac{25 + 49 - 81}{70} = \frac{-7}{70} = -0.1$
3. Solve: $C = \arccos(-0.1) \approx 95.74°$

## Hyperbolic Functions

Mathematical [hyperbolic functions](https://en.wikipedia.org/wiki/Hyperbolic_functions) are analogs of trigonometric functions based on the hyperbola $x^2 - y^2 = 1$. While trigonometric functions are defined using the unit circle, hyperbolic functions are defined using the unit hyperbola.

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
