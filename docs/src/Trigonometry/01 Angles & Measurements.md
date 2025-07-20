# Angles and Measurement

Understanding angles and their measurement is fundamental to trigonometry and geometry.

## Angle Definition

An angle is formed by two rays (called sides) that share a common endpoint (called the vertex).

## Angle Measurement Systems

### Degrees
- **Full rotation:** 360°
- **Right angle:** 90°
- **Straight angle:** 180°
- **Common angles:** 30°, 45°, 60°, 90°

### Radians
Radians provide a natural unit for angle measurement based on arc length.

#### Definition
One radian is the angle subtended by an arc equal in length to the radius of the circle.

#### Key Relationships
- $2\pi$ radians = 360°
- $\pi$ radians = 180°
- $\frac{\pi}{2}$ radians = 90°
- $\frac{\pi}{3}$ radians = 60°
- $\frac{\pi}{4}$ radians = 45°
- $\frac{\pi}{6}$ radians = 30°

#### Conversion Formulas
- **Degrees to radians:** $\text{radians} = \text{degrees} \times \frac{\pi}{180}$
- **Radians to degrees:** $\text{degrees} = \text{radians} \times \frac{180}{\pi}$

### Gradians (Gons)
- **Full rotation:** 400 gradians
- **Right angle:** 100 gradians
- Less commonly used in modern applications

## Types of Angles

### By Measure
- **Acute:** $0° < \theta < 90°$ (or $0 < \theta < \frac{\pi}{2}$)
- **Right:** $\theta = 90°$ (or $\theta = \frac{\pi}{2}$)
- **Obtuse:** $90° < \theta < 180°$ (or $\frac{\pi}{2} < \theta < \pi$)
- **Straight:** $\theta = 180°$ (or $\theta = \pi$)
- **Reflex:** $180° < \theta < 360°$ (or $\pi < \theta < 2\pi$)

### By Position
- **Standard position:** Vertex at origin, initial side on positive x-axis
- **Coterminal angles:** Angles that differ by multiples of $360°$ (or $2\pi$ radians)
- **Reference angle:** Acute angle between terminal side and x-axis

## Angle Relationships

### Complementary Angles
Two angles whose measures sum to 90°:
- $\sin \theta = \cos(90° - \theta)$
- $\cos \theta = \sin(90° - \theta)$
- $\tan \theta = \cot(90° - \theta)$

### Supplementary Angles
Two angles whose measures sum to 180°:
- $\sin(180° - \theta) = \sin \theta$
- $\cos(180° - \theta) = -\cos \theta$
- $\tan(180° - \theta) = -\tan \theta$

## Arc Length and Sector Area

### Arc Length
For a circle with radius $r$ and central angle $\theta$ (in radians):
$$s = r\theta$$

### Sector Area
$$A = \frac{1}{2}r^2\theta$$

### Angular Velocity
Rate of change of angle with respect to time:
$$\omega = \frac{d\theta}{dt}$$

Linear velocity relates to angular velocity by: $v = r\omega$

## Special Angle Values

### Exact Values Table

| Angle (°) | Angle (rad) | sin | cos | tan |
|-----------|-------------|-----|-----|-----|
| 0° | 0 | 0 | 1 | 0 |
| 30° | π/6 | 1/2 | √3/2 | 1/√3 |
| 45° | π/4 | √2/2 | √2/2 | 1 |
| 60° | π/3 | √3/2 | 1/2 | √3 |
| 90° | π/2 | 1 | 0 | undefined |

### Memory Aids
- **30-60-90 triangle:** Sides in ratio $1 : \sqrt{3} : 2$
- **45-45-90 triangle:** Sides in ratio $1 : 1 : \sqrt{2}$

## Periodic Nature of Angles

### Periodicity
Trigonometric functions repeat their values at regular intervals:
- $\sin(\theta + 2\pi) = \sin \theta$
- $\cos(\theta + 2\pi) = \cos \theta$
- $\tan(\theta + \pi) = \tan \theta$

### Principal Values
- For inverse trig functions, we define principal value ranges:
  - $\arcsin$: $[-\frac{\pi}{2}, \frac{\pi}{2}]$
  - $\arccos$: $[0, \pi]$
  - $\arctan$: $(-\frac{\pi}{2}, \frac{\pi}{2})$

## Applications

### Navigation
- **Bearing:** Direction measured clockwise from north
- **Azimuth:** Angle measured from a reference direction

### Engineering
- **Phase angles:** In electrical engineering for AC circuits
- **Rotation:** Describing rotational motion in mechanics

### Computer Graphics
- **Rotation matrices:** Using angles to rotate objects
- **Animation:** Smooth transitions using trigonometric functions