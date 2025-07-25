# Triangles

Triangles are three-sided polygons that form the foundation of much geometric and trigonometric study.

## Types of Triangles

### By Side Length

- **Equilateral:** All three sides equal
- **Isosceles:** Two sides equal
- **Scalene:** All sides different

### By Angle Measure

- **Acute:** All angles less than 90°
- **Right:** One angle equals 90°
- **Obtuse:** One angle greater than 90°

## Triangle Properties

### Fundamental Properties

- **Sum of angles:** Always equals 180°: $α + β + γ = 180°$
- **Triangle inequality:** Sum of any two sides > third side: $a + b > c$, $a + c > b$, $b + c > a$
- **Exterior angle:** Equals sum of two non-adjacent interior angles: $\angle_{ext} = α + β$ (where $α$ and $β$ are the two non-adjacent interior angles)
- **Sum of exterior angles:** Always equals 360°: $\angle_{ext1} + \angle_{ext2} + \angle_{ext3} = 360°$

### Fundamental Definitions

- **Concurrent lines:** Three or more lines that intersect at a single point
- **Collinear points:** Three or more points that lie on the same straight line
- **Vertex:** A point where two or more line segments meet; in a triangle, the three corners where sides intersect
- **Perpendicular (orthogonal):** Two lines that intersect at a right angle (90°)
- **Bisect:** To divide into two equal parts; a bisector divides an angle or line segment into two congruent pieces

## Transversals

A transversal is a line that intersects two or more other lines. When a transversal intersects the sides of a triangle (or their extensions), it creates important geometric relationships.

### Cevians

A cevian is a line segment that joins a vertex of a triangle to a point on the opposite side (or its extension).

- **Median:** Cevian from vertex to midpoint of opposite side
- **Altitude:** Cevian perpendicular to opposite side  
- **Angle bisector:** Cevian that bisects the angle at a vertex

### Ceva's Theorem

Giovanni Ceva (1647-1734) was an Italian mathematician who discovered this fundamental theorem about concurrent cevians. His work laid important groundwork for projective geometry and triangle geometry.

For cevians $AA'$, $BB'$, $CC'$ in triangle $ABC$ (where $A'$, $B'$, $C'$ are on sides $BC$, $CA$, $AB$ respectively), the cevians are concurrent if and only if:
$$\frac{BA'}{A'C} \cdot \frac{CB'}{B'A} \cdot \frac{AC'}{C'B} = 1$$

*For more information, see: [Ceva's Theorem - Wolfram MathWorld](https://mathworld.wolfram.com/CevasTheorem.html)*

### Menelaus' Theorem

Menelaus of Alexandria (c. 70-140 CE) was a Greek mathematician and astronomer who developed this theorem about collinear points. His work "Sphaerica" was influential in both geometry and astronomy.

For a transversal intersecting sides $BC$, $CA$, $AB$ (or their extensions) at points $A'$, $B'$, $C'$ respectively, the points are collinear if and only if:
$$\frac{BA'}{A'C} \cdot \frac{CB'}{B'A} \cdot \frac{AC'}{C'B} = -1$$

*For more information, see: [Menelaus' Theorem - Wolfram MathWorld](https://mathworld.wolfram.com/MenelausTheorem.html)*

### Special Transversals

- **Perpendicular bisectors:** Form the circumcenter
- **Angle bisectors:** Form the incenter  
- **Medians:** Form the centroid
- **Altitudes:** Form the orthocenter

## Area Calculations

### Standard Formula

For a triangle with base $b$ and height $h$:
$$A = \frac{1}{2}bh$$

### Heron's Formula

For a triangle with sides $a$, $b$, $c$:
$$A = \sqrt{s(s-a)(s-b)(s-c)}$$
where $s = \frac{a+b+c}{2}$ is the semi-perimeter.

### Using Trigonometry

For a triangle with two sides $a$, $b$ and included angle $γ$:
$$A = \frac{1}{2}ab \sin γ$$

### Coordinate Geometry

For a triangle with vertices $(x_1, y_1)$, $(x_2, y_2)$, $(x_3, y_3)$:
$$A = \frac{1}{2}|x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2)|$$

## Right Triangles

Right triangles have special properties and are fundamental to trigonometry.

### Pythagorean Theorem

For a right triangle with legs $a$, $b$ and hypotenuse $c$:
$$a^2 + b^2 = c^2$$

### Pythagorean Triples

Integer solutions to the Pythagorean theorem:

**Examples:**

- 1: $(3, 4, 5)$
- 2: $(5, 12, 13)$
- 3: $(8, 15, 17)$
- 4: $(7, 24, 25)$

### Special Right Triangles

#### 45°-45°-90° Triangle

- Sides in ratio $1 : 1 : \sqrt{2}$
- If legs = $a$, then hypotenuse = $a\sqrt{2}$

#### 30°-60°-90° Triangle

- Sides in ratio $1 : \sqrt{3} : 2$
- If short leg = $a$, then long leg = $a\sqrt{3}$, hypotenuse = $2a$

## Advanced Triangle Theorems

### Euclid's Theorem

For a right triangle with hypotenuse $c$ divided into segments $p$ and $q$ by the altitude:

- $a^2 = cp$ (where $a$ is the leg adjacent to segment $p$)
- $b^2 = cq$ (where $b$ is the leg adjacent to segment $q$)

### Height Theorem

The altitude to the hypotenuse has length:
$$h = \sqrt{pq}$$
where $p$ and $q$ are the segments of the hypotenuse.

### Thales' Theorem

If a triangle is inscribed in a circle such that one side is a diameter, then the triangle is a right triangle.

## Law of Sines and Cosines

### Law of Sines

For any triangle with sides $a$, $b$, $c$ opposite angles $α$, $β$, $γ$:
$$\frac{a}{\sin α} = \frac{b}{\sin β} = \frac{c}{\sin γ} = 2R$$
where $R$ is the circumradius.

### Law of Cosines

$$c^2 = a^2 + b^2 - 2ab \cos γ$$

This generalizes the Pythagorean theorem (when $γ = 90°$, $\cos γ = 0$).

## Circle Properties

### Circumcircle

- **Circumcenter:** Point equidistant from all vertices
- **Circumradius:** $R = \frac{abc}{4A}$ where $A$ is the area

### Incircle

- **Incenter:** Point equidistant from all sides
- **Inradius:** $r = \frac{A}{s}$ where $s$ is the semi-perimeter

### Excircles

Each triangle has three excircles, each tangent to one side and the extensions of the other two sides.

## Applications

### Surveying and Navigation

- **Triangulation:** Determining position using angle measurements
- **GPS systems:** Using triangular calculations

### Engineering

- **Structural analysis:** Triangular frameworks and trusses
- **Computer graphics:** Triangular meshes for 3D modeling

### Physics

- **Vector decomposition:** Breaking forces into components
- **Wave analysis:** Using trigonometric functions
