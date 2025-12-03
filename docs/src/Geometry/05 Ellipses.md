# Ellipses

An [ellipse](https://mathworld.wolfram.com/Ellipse.html) is a plane figure that like a circle, also has curvilinear edges, but is more general. Ellipses are fundamental [conic sections](https://mathworld.wolfram.com/ConicSection.html) with applications in orbital mechanics, optics, engineering, and architecture.

## Definition and Basic Properties

### Set/Geometric Definition

An ellipse can be defined as the set of all points $P$ (the [locus](https://mathworld.wolfram.com/Locus.html)) in a plane such that the sum of the distances to two fixed points $F_1$ and $F_2$ (the foci--see below) is constant: $$\{P : |PF_1| + |PF_2| = 2a\}$$ where:

- The distance from $P$ to $F_1$ is $|PF_1|$
- The distance from $P$ to $F_2$ is $|PF_2|$
- The constant sum $2a$ is the length of the major axis (see below) of the ellipse
- The semi-major axis (see below) is $a$ (half the major axis length)

### Parts of an Ellipse

- **[Foci](https://mathworld.wolfram.com/Focus.html):** Two fixed points $F_1$ and $F_2$ inside the ellipse such that the sum of distances to any point on the ellipse is constant
- **Center:** The midpoint between the two foci
- **Major Axis:** The longest diameter of the ellipse, passing through both foci, with length $2r$ or $2a$
- **Minor Axis:** The shortest diameter, perpendicular to the major axis at the center, with length $2b$
- **Semi-Major Axis:** Half the length of the major axis, denoted $a$
- **Semi-Minor Axis:** Half the length of the minor axis, denoted $b$
- **Vertices:** The endpoints of the major axis, located at a distance $a$ from the center
- **Co-Vertices:** The endpoints of the minor axis, located at a distance $b$ from the center

### Standard Form Equation

#### Derivation of Standard Form

Let's derive the standard form of the ellipse equation using the Pythagorean theorem and the distance definition. An ellipse is formed from the set of all points $[x, y]$ for which the sum $r_1 + r_2$ of the distances to two fixed points $A = [a_1, a_2]$ and $B = [b_1, b_2]$ (called focal points) has a constant value $2r$. Using the Pythagorean theorem we get:

$$\begin{aligned}
r_1 &= \sqrt{(x - a_1)^2 + (y - a_2)^2} \\
r_2 &= \sqrt{(x - b_1)^2 + (y - b_2)^2} \\
r_1 + r_2 &= 2r
\end{aligned}$$

For the sake of simplicity, assume that the two foci lie on the x-axis and that the center of the ellipse (center of the foci) is the origin $[0, 0]$: $A = [-c, 0]$ and $B = [c, 0]$, where $c > 0$. Substituting these values in the equation above we get:

$$\sqrt{(x + c)^2 + y^2} + \sqrt{(x - c)^2 + y^2} = 2r (or 2a)$$

In this case the two _major vertices_ of the ellipse are the points $H_1 = [-r, 0]$ and $H_2 = [r, 0]$, the line of length $2r$ (or $2a$) connecting these points is called the _major axis_ of the ellipse $r$ (or $a$) is called the _major axis radius_. The two _minor vertices_ of the ellipse are then the points of the form $N_1 = [0, b]$ and $N_2 = [0, -b]$ on the ellipse-–that is, the points of intersection of such an ellipse with the y-axis.

The points $N_1$ and $N_2$ are also the intersections of the circles of radius $r$ about either of the foci. Hence we can obtain from the Pythagorean theorem:

$$\begin{aligned}
b^2 &= r^2 - c^2 \\
b &= \sqrt{r^2 - c^2} \\
\end{aligned}$$

Thus point $N_1 = [0, \sqrt{r^2 - c^2}]$ and $N_2 = [0, -\sqrt{r^2 - c^2}]$. The minor vertices form the minor axis of the ellipse and $b = \sqrt{r^2 - c^2}$ denotes the minor axis radius.

#### Circle as Special Case

When the two foci coincide at the center ($c = 0$), the elliptic equation becomes:

$$\begin{aligned}
\sqrt{x^2 + y^2} + \sqrt{x^2 + y^2} &= 2r \text{ and then} \\
2 \sqrt{x^2 + y^2} &= 2r \\
\end{aligned}$$

Cancelling $2$ and then squaring both sides gives  equation $x^2 + y^2 = r^2$, which is the standard equation of a circle with radius $r$ centered at the origin.

### Midpoint Equation

The standard form of the ellipse centered at the origin with foci on the x-axis can be simplified to: $$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$ where:

- The semi-major axis (assuming $a \geq b$) is $a$
- The semi-minor axis is $b$
- The relationship $b^2 = a^2 - c^2$ connects the semi-minor axis to the distance between foci
- The foci are located at $[-c, 0]$ and $[c, 0]$
- The distance between the foci is $2c$
- The major axis length is $2a$
- The minor axis length is $2b$
- The center is at the origin $[0, 0]$
- The vertices are at $[-a, 0]$ and $[a, 0]$
- The co-vertices are at $[0, -b]$ and $[0, b]$
- If the major axis is vertical instead of horizontal, the equation is: $\frac{x^2}{b^2} + \frac{y^2}{a^2} = 1$ with foci at $[0, -c]$ and $[0, c]$

Some additional notes:

- From the triangle inequality it follows that the distance between the foci ($2c$) must be smaller than $r_1 + r_2 = 2r$. This criterion shows how large we should choose the major axis radius $r$ at least in order to be able to construct an ellipse with given foci.
- If points are given on an ellipse to be constructed, unlike a  circle, three points are generally not enough to define an ellipse. Four suitable points are needed.
- Ellipses are symmetrical figures with respect to the major and minor axes.

The full (and quite complex) derivation of the midpoint equation is provided in the Appendix at the end of this document.

### Translated Ellipse

For an ellipse centered at point $[h, k]$: $\frac{(x-h)^2}{a^2} + \frac{(y-k)^2}{b^2} = 1$

## Key Parameters of an Ellipse

### Eccentricity

The [eccentricity](https://mathworld.wolfram.com/Eccentricity.html) measures how "stretched" the ellipse is: $e = \frac{c}{a} = \sqrt{1 - \frac{b^2}{a^2}}$ where $0 \leq e < 1:

- A circle (special case) has $e = 0$
- An increasingly elongated ellipse has $e \to 1$

### Foci

The foci are located at distance $c$ from the center along the major axis: $c = ae = \sqrt{a^2 - b^2}$

For a horizontal major axis centered at origin: $F_1 = [-c, 0]$ and $F_2 = [c, 0]$
For a vertical major axis centered at origin: $F_1 = [0, -c]$ and $F_2 = [0, c]$

### Relationship Between Parameters

$$\begin{aligned}
b &= a\sqrt{1-e^2} \\
c &= ae \\
a^2 &= b^2 + c^2
a = \sqrt{b^2 + c^2}
\end{aligned}$$

## Parametric Form of an Ellipse

Ellipses can be expressed parametrically, similar to circles but with different scalings:

$$\begin{aligned}
x(t) &= a\cos(t) \\
y(t) &= b\sin(t)
\end{aligned}$$ where $t \in (0, 2\pi)$ is the parameter.

For a translated ellipse centered at $[h, k]$:

$$\begin{aligned}
x(t) &= h + a\cos(t) \\
(t) &= k + b\sin(t)
\end{aligned}$$

## Polar Form

The most common form uses polar coordinates with the origin at one of the foci: $$r(\theta) = \frac{a(1 - e^2)}{1 + e\cos(\theta)}$$ where $r$ is the distance from the chosen focus and $\theta$ is the angle from the major axis.

This form is particularly useful in orbital mechanics, where celestial bodies follow elliptical orbits with the central body at one focus (Kepler's First Law).

There is also a polar form with the center at the origin, but it is less commonly used: $$r(\theta) = \frac{ab}{\sqrt{(b\cos(\theta))^2 + (a\sin(\theta))^2}}$$

## Geometric Properties

### Area

The area enclosed by an ellipse is: $$F = \pi ab$$

This can be seen as a scaled version of a circle's area, where the circle of radius $a$ is compressed by factor $b/a$ in one direction.

### Perimeter

The perimeter (circumference) of an ellipse cannot be expressed in elementary functions. It is given by the complete [elliptic integral of the second kind](https://mathworld.wolfram.com/CompleteEllipticIntegraloftheSecondKind.html): $$p = 4aE(e)$$ where $E(e)$ is the complete elliptic integral with modulus $e$ (the eccentricity).

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

Each focus has an associated [directrix](https://mathworld.wolfram.com/ConicSectionDirectrix.html), a line perpendicular to the major axis. The ratio of distances from any point on the ellipse to a focus and its corresponding directrix equals the eccentricity: $$\frac{a}{d} = e$$

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

## Appendix: Derivation of Standard Form Equation

By squaring and rearranging the standard form for the ellipse, we can derive the simplified midpoint equation. Starting from the standard form:

$$\sqrt{(x + c)^2 + y^2} + \sqrt{(x - c)^2 + y^2} = 2r$$

Isolate one of the square roots:

$$\sqrt{(x + c)^2 + y^2} = 2r - \sqrt{(x - c)^2 + y^2}$$

Now square both sides:

$$(x + c)^2 + y^2 = (2r - \sqrt{(x - c)^2 + y^2})^2$$

Expanding the right side:

$$(x + c)^2 + y^2 = 4r^2 - 4r\sqrt{(x - c)^2 + y^2} + (x - c)^2 + y^2$$

Cancel $y^2$ from both sides and rearrange:

$$4r\sqrt{(x - c)^2 + y^2} = 4r^2 + (x - c)^2 - (x + c)^2$$

Simplifying the right side:

$$4r\sqrt{(x - c)^2 + y^2} = 4r^2 - 4cx$$

Divide both sides by $4r$:

$$\sqrt{(x - c)^2 + y^2} = r - \frac{cx}{r}$$

Now square both sides again:

$$(x - c)^2 + y^2 = \left(r - \frac{cx}{r}\right)^2$$

Expanding the right side:

$$(x - c)^2 + y^2 = r^2 - 2cx + \frac{c^2x^2}{r^2}$$

Rearranging gives:

$$y^2 = r^2 - 2cx + \frac{c^2x^2}{r^2} - (x - c)^2$$

Expanding $(x - c)^2$:

$$y^2 = r^2 - 2cx + \frac{c^2x^2}{r^2} - (x^2 - 2cx + c^2)$$

Simplifying:

$$y^2 = r^2 - x^2 + \frac{c^2x^2}{r^2} - c^2$$

Combining like terms:

$$y^2 = (r^2 - c^2) - x^2\left(1 - \frac{c^2}{r^2}\right)$$

Factoring:

$$y^2 = (r^2 - c^2) - x^2\frac{r^2 - c^2}{r^2}$$

Dividing both sides by $(r^2 - c^2)$:

$$\frac{y^2}{r^2 - c^2} + \frac{x^2}{r^2} = 1$$

Finally,since  $b^2 = r^2 - c^2$, we have the simplified midpoint equation form of the ellipse equation (using the more standard $a$ for semi-major axis and $b$ for semi-minor axis):

$$\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$$