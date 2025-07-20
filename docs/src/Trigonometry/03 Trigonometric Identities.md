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
