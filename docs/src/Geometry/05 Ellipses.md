# Ellipses

An [ellipse](https://mathworld.wolfram.com/Ellipse.html) is a curve that is the locus of all points in a plane for which the sum of distances from two fixed points (called [foci](https://mathworld.wolfram.com/Focus.html)) is constant. Ellipses are fundamental [conic sections](https://mathworld.wolfram.com/ConicSection.html) with applications in orbital mechanics, optics, engineering, and architecture.

## Definition and Basic Properties

### Geometric Definition

An ellipse is defined by two fixed points $F_1$ and $F_2$ (the foci), separated by distance $2c$, such that for any point $P$ on the ellipse: $r_1 + r_2 = 2a$ where:

- The distance from $P$ to $F_1$ is $r_1$
- The distance from $P$ to $F_2$ is $r_2$
- The semi-major axis (half the longest diameter) is $a$

### Standard Equation

For an ellipse centered at the origin with axes aligned to the coordinate axes: $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$ where:

- The semi-major axis (assuming $a \geq b$) is $a$
- The semi-minor axis is $b$
- The relationship $b^2 = a^2 - c^2$ connects the semi-minor axis to the distance between foci

### Translated Ellipse

For an ellipse centered at point $[h, k]$: $\frac{(x-h)^2}{a^2} + \frac{(y-k)^2}{b^2} = 1$

## Key Parameters

### Eccentricity

The [eccentricity](https://mathworld.wolfram.com/Eccentricity.html) measures how "stretched" the ellipse is: $e = \frac{c}{a} = \sqrt{1 - \frac{b^2}{a^2}}$ where $0 \leq e < 1$:

- A circle (special case) has $e = 0$
- An increasingly elongated ellipse has $e \to 1$

### Foci

The foci are located at distance $c$ from the center along the major axis: $c = ae = \sqrt{a^2 - b^2}$

For a horizontal major axis centered at origin: $F_1 = [-c, 0]$ and $F_2 = [c, 0]$

### Relationship Between Parameters

$$\begin{aligned}b &= a\sqrt{1-e^2} \\ c &= ae \\ a^2 &= b^2 + c^2\end{aligned}$$

## Parametric Form

Ellipses can be expressed parametrically, similar to circles but with different scalings:

$$\begin{aligned}x(t) &= a\cos(t) \\ y(t) &= b\sin(t)\end{aligned}$$ where $t \in (0, 2\pi)$ is the parameter.

For a translated ellipse centered at $[h, k]$:

$$\begin{aligned}x(t) &= h + a\cos(t) \\ y(t) &= k + b\sin(t)\end{aligned}$$

## Polar Form (Focus at Origin)

When using polar coordinates with the origin at a focus:

$$r = \frac{a(1-e^2)}{1 + e\cos\theta}$$

This form is particularly useful in orbital mechanics, where celestial bodies follow elliptical orbits with the central body at one focus (Kepler's First Law).

## Geometric Properties

### Area

The area enclosed by an ellipse is: $$A = \pi ab$$

This can be seen as a scaled version of a circle's area, where the circle of radius $a$ is compressed by factor $b/a$ in one direction.

### Perimeter

The perimeter (circumference) of an ellipse cannot be expressed in elementary functions. It is given by the complete [elliptic integral of the second kind](https://mathworld.wolfram.com/CompleteEllipticIntegraloftheSecondKind.html): $$p = 4aE(e)$$

where $E(e)$ is the complete elliptic integral with modulus $e$ (the eccentricity).

#### Approximations

Several useful approximations exist for the perimeter:

**Ramanujan's Approximation** (very accurate): $$p \approx \pi(a+b)\left(1 + \frac{3h}{10 + \sqrt{4-3h}}\right)$$ where $h = \frac{(a-b)^2}{(a+b)^2}$

**Simpler Approximation**: $$p \approx \pi\sqrt{2(a^2 + b^2)}$$

**Ramanujan's Second Form**: $$p \approx \pi[3(a+b) - \sqrt{(a+3b)(3a+b)}]$$

### Curvature

The curvature at parameter $t$ is: $$\kappa(t) = \frac{ab}{(b^2\cos^2 t + a^2\sin^2 t)^{3/2}}$$

Maximum curvature occurs at the ends of the minor axis: $\kappa_{\text{max}} = \frac{a}{b^2}$

Minimum curvature occurs at the ends of the major axis: $\kappa_{\text{min}} = \frac{b}{a^2}$

## Directrix

Each focus has an associated [directrix](https://mathworld.wolfram.com/ConicSectionDirectrix.html), a line perpendicular to the major axis. The ratio of distances from any point on the ellipse to a focus and its corresponding directrix equals the eccentricity: $$\frac{r}{d} = e$$

The directrix is located at distance $\frac{a^2}{c} = \frac{a}{e}$ from the center.

## Reflective Property

A ray of light emanating from one focus will reflect off the ellipse and pass through the other focus. This property is used in:

- **Whispering galleries**: Sound waves from one focus are audible at the other
- **Elliptical mirrors**: Used in certain telescope designs
- **Medical applications**: Lithotripsy uses elliptical reflectors to focus shock waves on kidney stones

## Special Cases and Relationships

### Circle as Special Case

When $a = b$, the ellipse becomes a circle:

- **Eccentricity** is $e = 0$
- **Both foci** coincide at the center
- **All radii** are equal

### Rotation to 3D

- **Oblate spheroid**: Ellipse rotated about its minor axis (like Earth's shape)
- **Prolate spheroid**: Ellipse rotated about its major axis (like a rugby ball)

### Relationship to Other Conics

Ellipses are one of the four types of [conic sections](https://mathworld.wolfram.com/ConicSection.html):

- **Circle:** Special case of ellipse with $e = 0$
- **Parabola:** Limiting case as $e \to 1$
- **Hyperbola:** When $e > 1$

## General Quadratic Form

The general equation for a conic section is: $$ax^2 + 2bxy + cy^2 + 2dx + 2fy + g = 0$$

This represents an ellipse when: $$\begin{aligned}\Delta &= \begin{vmatrix} a & b & d \\ b & c & f \\ d & f & g \end{vmatrix} \neq 0 \\ J &= \begin{vmatrix} a & b \\ b & c \end{vmatrix} > 0 \\ \frac{\Delta}{I} &< 0, \quad \text{where } I = a + c\end{aligned}$$

## Applications

### Astronomy and Orbital Mechanics

- Planetary orbits are elliptical (Kepler's First Law)
- The Sun is at one focus of each planet's orbital ellipse
- Satellites, comets, and asteroids follow elliptical paths

### Engineering and Architecture

- Elliptical gears can rotate smoothly against each other
- Whispering galleries in architecture
- Elliptical arches distribute load efficiently

### Optics

- Elliptical mirrors focus light from one focus to another
- Used in certain telescope and reflector designs

### Nature

- Orbits of electrons in some atomic models (historically)
- Cross-sections of many biological structures
- Shadows cast by circles viewed at an angle

## Construction Methods

### String Method

The classical method using the two-focus definition:

1. Pin a string at both foci with total length $2a$
2. Keep the string taut with a pencil
3. Move the pencil to trace the ellipse

### Trammel Construction

If endpoints of a segment move along two perpendicular lines, a fixed point on the segment traces an ellipse.

## Historical Notes

- **Menaechmus** (ca. 350 BCE): First studied ellipses
- **Apollonius** (ca. 200 BCE): Named the ellipse and studied its properties
- **Johannes Kepler** (1609): Discovered that planetary orbits are elliptical
- **Edmund Halley** (1705): Showed that Halley's Comet follows an elliptical orbit

## See Also

- [Circles](04 Circles.md) - Special case of ellipse
- [Conic Sections](https://mathworld.wolfram.com/ConicSection.html)
