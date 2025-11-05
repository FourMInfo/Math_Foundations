# Circles

[Circles](https://mathworld.wolfram.com/Circle.html) are fundamental geometric shapes defined as the set of all points in a plane that are equidistant from a fixed center point.

## Basic Definitions

- **[Circle](https://mathworld.wolfram.com/Circle.html):** The set of all points in a plane at a fixed distance (radius) from a center point
- **[Center](https://mathworld.wolfram.com/Center.html):** The fixed point from which all points on the circle are equidistant
- **[Radius](https://mathworld.wolfram.com/Radius.html):** The distance from the center to any point on the circle, denoted by $r$
- **[Diameter](https://mathworld.wolfram.com/Diameter.html):** A line segment passing through the center with endpoints on the circle, denoted by $d = 2r$
- **[Chord](https://mathworld.wolfram.com/Chord.html):** A line segment with both endpoints on the circle
- **[Arc](https://mathworld.wolfram.com/Arc.html):** A portion of the circle's circumference between two points
- **[Circumference](https://mathworld.wolfram.com/Circumference.html):** The total distance around the circle, denoted by $C$

## Fundamental Measurements

### Circumference

The circumference of a circle is the distance around it, given by: $$C = 2\pi r = \pi d$$

where:

- circumference: $C$
- radius: $r$
- diameter: $d$
- [pi](https://mathworld.wolfram.com/Pi.html) / $\pi$ ≈ 3.14159...

**Key Properties:**

- The ratio of circumference to diameter is always $\pi$, regardless of the circle's size
- This relationship is the defining property of $\pi$
- For a circle with radius $r = 1$, the circumference is $2\pi$

### Area

The area enclosed by a circle is: $$A = \pi r^2$$

where:

- area: $A$
- radius: $r$

**Derivation:**

The area formula can be derived by dividing the circle into infinitely many thin triangular sectors. Each sector has:

- Base = infinitesimal arc length
- Height = radius $r$

When summed, the total base length equals the circumference $2\pi r$, giving:

$$\begin{aligned}
A &= \sum \frac{1}{2} \times \text{base} \times \text{height} \\
&= \frac{1}{2} \times 2\pi r \times r \\
&= \pi r^2
\end{aligned}$$

**Alternative formulas:**

- In terms of diameter: $A = \frac{\pi d^2}{4}$
- In terms of circumference: $A = \frac{C^2}{4\pi}$

## Parts of a Circle

### Chords and Arcs

- **[Chord](https://mathworld.wolfram.com/Chord.html):** Any line segment connecting two points on the circle
  - The diameter is the longest chord
  - A chord divides the circle into two arcs
  
- **[Arc](https://mathworld.wolfram.com/Arc.html):** A portion of the circumference
  - **Minor arc:** The shorter arc between two points (less than $180^\circ$)
  - **Major arc:** The longer arc between two points (greater than $180^\circ$)
  - **Semicircle:** An arc that is exactly half the circle ($180^\circ$)

- **Arc Length:** For an arc [subtending](https://mathworld.wolfram.com/Subtend.html) angle $\theta$ (in radians) at the center:
  $$s = r\theta$$
  
  For angle in degrees:
  $$s = \frac{\pi r \theta}{180}$$

### Sectors and Segments

- **[Sector](https://mathworld.wolfram.com/CircularSector.html):** The region bounded by two radii and the arc between them (like a "slice of pie")
  - Area of sector with central angle $\theta$ (in radians):
    $$A_{\text{sector}} = \frac{1}{2}r^2\theta$$
  
  - For angle in degrees:
    $$A_{\text{sector}} = \frac{\pi r^2 \theta}{360}$$

- **[Segment](https://mathworld.wolfram.com/CircularSegment.html):** The region bounded by a chord and the arc it subtends
  - Area of segment:
    $$A_{\text{segment}} = A_{\text{sector}} - A_{\text{triangle}} = \frac{1}{2}r^2(\theta - \sin\theta)$$
  
  where $\theta$ is in radians

## Circle Equations

### Standard Form (Cartesian)

A circle with center $(h, k)$ and radius $r$ has equation:
$$(x - h)^2 + (y - k)^2 = r^2$$

**Special case:** Circle centered at origin $(0, 0)$:
$$x^2 + y^2 = r^2$$

### Parametric Form

A circle with center $(h, k)$ and radius $r$ can be expressed parametrically:

$$\begin{aligned}
x &= h + r\cos\theta \\
y &= k + r\sin\theta
\end{aligned}$$

where $\theta$ ranges from $0$ to $2\pi$ (or $0^\circ$ to $360^\circ$)

### General Form

The general quadratic equation:
$$x^2 + y^2 + Dx + Ey + F = 0$$

represents a circle when the coefficients of $x^2$ and $y^2$ are equal. Converting to standard form:

- Center: $\left(-\frac{D}{2}, -\frac{E}{2}\right)$
- Radius: $r = \sqrt{\frac{D^2 + E^2}{4} - F}$

## Angles in Circles

### Central Angle

- **[Central Angle](https://mathworld.wolfram.com/CentralAngle.html):** An angle whose vertex is at the center of the circle
- The measure of a central angle equals the measure of its intercepted arc
- A central angle of $\theta$ radians intercepts an arc of length $s = r\theta$

### Inscribed Angle

- **[Inscribed Angle](https://mathworld.wolfram.com/InscribedAngle.html):** An angle formed by two chords with vertex on the circle
- **Inscribed Angle Theorem:** An inscribed angle is half the measure of its intercepted arc
  $$\theta_{\text{inscribed}} = \frac{1}{2}\theta_{\text{central}}$$

### Angle Relationships

- **Angles subtended by the same arc:** All inscribed angles subtending the same arc are equal
- **[Thales' Theorem](https://mathworld.wolfram.com/ThalesTheorem.html):** An angle inscribed in a semicircle is always a right angle ($90^\circ$)

## Common Circle Theorems

### Chord Properties

1. **Perpendicular from center:** A perpendicular from the center to a chord bisects the chord
2. **Equal chords:** Chords equidistant from the center are equal in length
3. **Chord length formula:** For a chord at distance $d$ from center in a circle of radius $r$:
   $$\text{chord length} = 2\sqrt{r^2 - d^2}$$

### Tangent Properties

- **[Tangent](https://mathworld.wolfram.com/CircleTangentLine.html):** A line that touches the circle at exactly one point
- **Tangent perpendicularity:** A tangent is perpendicular to the radius at the point of tangency
- **Tangent length:** For an external point $P$ at distance $d$ from center, tangent length is:
  $$\text{tangent length} = \sqrt{d^2 - r^2}$$
- **Two tangents from external point:** Tangent segments from an external point to a circle are equal in length

## Applications

### Geometry and Trigonometry

- **Unit circle:** A circle with radius 1, fundamental to trigonometry
- **Coordinate geometry:** Circles are conic sections (intersection of cone and plane)
- **Angle measurement:** Radians are defined using the unit circle

### Real-World Applications

- **Engineering:** Wheels, gears, pulleys
- **Architecture:** Arches, domes, circular structures
- **Physics:** Circular motion, orbits, waves
- **Navigation:** Distance calculations on Earth's surface
- **Design:** Circular patterns, logos, decorative elements

## Further Information

More information about circles and their properties can be found in:

- [Trigonometry](../Trigonometry/02 Trigonometric Functions.md) for the unit circle and angle relationships
