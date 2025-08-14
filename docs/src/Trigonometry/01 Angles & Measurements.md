# Angles and Measurement

Understanding angles and their measurement is fundamental to trigonometry and geometry.

## Angle Definition

An [angle](https://mathworld.wolfram.com/Angle.html) is formed by two rays (called sides) that share a common endpoint (called the vertex).

## Angle Measurement Systems

### Degrees

A [degree](https://mathworld.wolfram.com/Degree.html) is a unit of angular measurement where a full rotation around a circle is divided into 360 equal parts.

#### Degree Definition

One degree ($1^\circ$) is defined as 1/360 of a complete rotation around a circle.

#### Key Values

- **Full rotation:** $360^\circ$
- **Right angle:** $90^\circ$
- **Straight angle:** $180^\circ$
- **Common angles:** $30^\circ$, $45^\circ$, $60^\circ$, $90^\circ$

### Radians

[Radians](https://mathworld.wolfram.com/Radian.html) provide a natural unit for angle measurement based on arc length.

#### Radian Definition

One radian is the angle subtended by an [arc](https://mathworld.wolfram.com/Arc.html) equal in length to the radius of the circle.

**Note:** An arc is a portion of the circumference of a circle - the curved line that forms part of the circle's edge.

#### Key Relationships

$$\begin{array}{c|c}
\text{Radians} & \text{Degrees} \\
\hline
2\pi & 360^\circ \\
\hline
\pi & 180^\circ \\
\hline
\frac{\pi}{2} & 90^\circ \\
\hline
\frac{\pi}{3} & 60^\circ \\
\hline
\frac{\pi}{4} & 45^\circ \\
\hline
\frac{\pi}{6} & 30^\circ \\
\hline
\end{array}$$

#### Conversion Formulas

- **Degrees to radians:** $\text{radians} = \text{degrees} \times \frac{\pi}{180}$
- **Radians to degrees:** $\text{degrees} = \text{radians} \times \frac{180}{\pi}$

### Gradians (Gons)

A [gradian](https://mathworld.wolfram.com/Gradian.html) (also called a gon or grad) is a unit of angular measurement where a full rotation around a circle is divided into 400 equal parts.

#### Gradian Definition

One gradian (1ᵍ) is defined as 1/400 of a complete rotation around a circle.

#### Gradian Values

- **Full rotation:** 400 gradians
- **Right angle:** 100 gradians

#### Usage Notes

- Less commonly used in modern applications
- Primarily used in surveying and some European engineering contexts

## Types of Angles

### By Measure

- **Acute:** $0^\circ < \theta < 90^\circ$ (or $0 < \theta < \frac{\pi}{2}$)
- **Right:** $\theta = 90^\circ$ (or $\theta = \frac{\pi}{2}$)
- **Obtuse:** $90^\circ < \theta < 180^\circ$ (or $\frac{\pi}{2} < \theta < \pi$)
- **Straight:** $\theta = 180^\circ$ (or $\theta = \pi$)
- **Reflex:** $180^\circ < \theta < 360^\circ$ (or $\pi < \theta < 2\pi$)

### By Position

- **[Standard position](https://mathworld.wolfram.com/AngleStandardPosition.html):** Vertex at origin, initial side on positive x-axis
- **[Coterminal angles](https://mathworld.wolfram.com/CoterminalAngle.html):** Angles that differ by multiples of $360^\circ$ (or $2\pi$ radians)
- **Reference angle:** Acute angle between terminal side and x-axis
- **Negative angles:** Angles measured clockwise from the positive x-axis

## Arc Length and Sector Area

Understanding how angles relate to circular measurements is fundamental for applications ranging from engineering and physics to computer graphics and navigation. When we measure angles, we often need to calculate the actual lengths and areas they create on circles.

### Arc Length

#### Arc Length Definition and Importance

[Arc length](https://mathworld.wolfram.com/ArcLength.html) is the distance along the curved path of a circle between two points. This measurement is crucial because:

- **Engineering applications:** Calculating belt lengths, gear rotations, and mechanical movements
- **Navigation:** Determining distances along curved paths on Earth's surface
- **Physics:** Understanding rotational motion and wave phenomena

#### Arc Length Formula and Usage

For a circle with radius $r$ and central angle $\theta$ (in radians):

$$s = r\theta$$

**Key insight:** This formula only works when the angle is measured in radians, which is why radians are considered the "natural" unit for angular measurement.

### Sector Area

#### Sector Area Definition and Importance

A [sector](https://mathworld.wolfram.com/CircularSector.html) is a "slice" of a circle, like a piece of pie. Sector area calculations are essential for:

- **Construction and design:** Calculating areas for circular segments in architecture
- **Statistics:** Creating pie charts and circular data visualizations  
- **Agriculture:** Determining irrigation coverage areas
- **Astronomy:** Calculating field-of-view areas for telescopes

#### Sector Area Formula and Usage

$$A = \frac{1}{2}r^2\theta$$

**Note:** Like arc length, this formula requires the angle $\theta$ to be in radians. The factor of $\frac{1}{2}$ comes from the relationship between the sector area and the full circle area $\pi r^2$.

### Angular Velocity

#### Angular Velocity Definition and Physical Significance

[Angular velocity](https://mathworld.wolfram.com/AngularVelocity.html) measures how fast an angle changes over time, which is fundamental in describing rotational motion:

$$\omega = \frac{d\theta}{dt}$$

#### Relationship to Linear Motion

The connection between rotational and linear motion is given by:

$$v = r\omega$$

Where $v$ is the linear velocity of a point at distance $r$ from the rotation center. This relationship explains why points farther from the center of rotation move faster linearly while maintaining the same angular velocity.

## Applications

### Navigation

- **Bearing:** Direction measured clockwise from north
- **Azimuth:** Angle measured from a reference direction

### Engineering

- **Phase angles:** In electrical engineering for AC circuits
- **Rotation:** Describing rotational motion in mechanics

### Computer Graphics

- **Rotation matrices:** Using angles to rotate objects
- **Animation:** Smooth transitions using mathematical functions for rotation and movement
