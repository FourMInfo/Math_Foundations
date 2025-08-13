# Trigonometric Identities

Trigonometric identities are equations involving trigonometric functions that are true for all values of the variables involved. These identities are essential in simplifying trigonometric expressions, solving equations, and proving other mathematical statements. Below are some of the most commonly used trigonometric identities.

## Pythagorean Identities

The Pythagorean identities are fundamental relationships in trigonometry that relate the sine, cosine, and tangent functions. They are derived from the Pythagorean theorem applied to the unit circle. The Pythagorean identities relate the squares of the sine and cosine functions to 1:
$$\sin^2(x) + \cos^2(x) = 1$$
$$1 + \tan^2(x) = \sec^2(x)$$
$$1 + \cot^2(x) = \csc^2(x)$$

## Angle Sum and Difference Identities or Addition Theorems

The angle sum and difference identities, also known as addition theorems, express the sine, cosine, and tangent of the sum or difference of two angles in terms of the sine and cosine of the individual angles. These identities are useful for simplifying trigonometric expressions and solving equations.

### Sine

$$\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$$
$$\sin(a - b) = \sin(a)\cos(b) - \cos(a)\sin(b)$$

### Cosine

$$\cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b)$$
$$\cos(a - b) = \cos(a)\cos(b) + \sin(a)\sin(b)$$

### Tangent

$$\tan(a + b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)}$$
$$\tan(a - b) = \frac{\tan(a) - \tan(b)}{1 + \tan(a)\tan(b)}$$

### Derivation of the Tangent Addition Theorem

#### Step 1: Use the definition of tangent

Since $\tan(\theta) = \frac{\sin(\theta)}{\cos(\theta)}$, we have:

$$\tan(a + b) = \frac{\sin(a + b)}{\cos(a + b)}$$

#### Step 2: Substitute the addition formulas

From the sine and cosine addition theorems:

$\sin(a + b) = \sin(a)\cos(b) + \cos(a)\sin(b)$

$\cos(a + b) = \cos(a)\cos(b) - \sin(a)\sin(b)$

Substituting these into our expression:

$$\tan(a + b) = \frac{\sin(a)\cos(b) + \cos(a)\sin(b)}{\cos(a)\cos(b) - \sin(a)\sin(b)}$$

#### Step 3: Divide both numerator and denominator by $\cos(a)\cos(b)$

$$\tan(a + b) = \frac{\frac{\sin(a)\cos(b)}{\cos(a)\cos(b)} + \frac{\cos(a)\sin(b)}{\cos(a)\cos(b)}}{\frac{\cos(a)\cos(b)}{\cos(a)\cos(b)} - \frac{\sin(a)\sin(b)}{\cos(a)\cos(b)}}$$

#### Step 4: Simplify using the definition of tangent

$$\tan(a + b) = \frac{\frac{\sin(a)}{\cos(a)} + \frac{\sin(b)}{\cos(b)}}{1 - \frac{\sin(a)}{\cos(a)}\frac{\sin(b)}{\cos(b)}}$$

$$\tan(a + b) = \frac{\tan(a) + \tan(b)}{1 - \tan(a)\tan(b)}$$

This is the tangent addition theorem, which allows you to find the tangent of a sum of angles in terms of the tangents of the individual angles.

## TODO: Content Moved from Document 02

The following section was moved from "02 Trigonometric Functions.md" because it relates more closely to trigonometric identities than basic function definitions. This content needs to be properly integrated into this document in a future enhancement:

### Angle Relationships and Identities

#### Complementary Angles

Two angles whose measures sum to 90°. These relationships show the co-function identities:

- $\sin \theta = \cos(90° - \theta)$
- $\cos \theta = \sin(90° - \theta)$
- $\tan \theta = \cot(90° - \theta)$

**Interpretation**: The sine of an angle equals the cosine of its complement, and vice versa.

#### Supplementary Angles  

Two angles whose measures sum to 180°. These relationships help find trigonometric values in different quadrants:

- $\sin(180° - \theta) = \sin \theta$
- $\cos(180° - \theta) = -\cos \theta$
- $\tan(180° - \theta) = -\tan \theta$

**Interpretation**: When an angle and its supplement are considered, sine remains the same but cosine and tangent change sign.

#### Periodicity and Principal Values

##### Periodic Properties

Trigonometric functions repeat their values at regular intervals due to the circular nature of angles:

- $\sin(\theta + 2\pi) = \sin \theta$ (sine has period $2\pi$)
- $\cos(\theta + 2\pi) = \cos \theta$ (cosine has period $2\pi$)  
- $\tan(\theta + \pi) = \tan \theta$ (tangent has period $\pi$)

**Note**: Tangent has a shorter period because it repeats every half-rotation around the unit circle.

##### Principal Values for Inverse Functions

For inverse trigonometric functions, we define principal value ranges to ensure unique outputs:

- $\arcsin$: domain $[-1,1]$, range $[-\frac{\pi}{2}, \frac{\pi}{2}]$
- $\arccos$: domain $[-1,1]$, range $[0, \pi]$
- $\arctan$: domain $(-\infty,\infty)$, range $(-\frac{\pi}{2}, \frac{\pi}{2})$
