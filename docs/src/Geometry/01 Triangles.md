# Triangles

[Triangles](https://mathworld.wolfram.com/Triangle.html) are three-sided polygons that form the foundation of much geometric and trigonometric study.

## Types of Triangles

### By Side Length

- **[Equilateral](https://mathworld.wolfram.com/EquilateralTriangle.html):** All three sides equal
- **[Isosceles](https://mathworld.wolfram.com/IsoscelesTriangle.html):** Two sides equal
- **[Scalene](https://mathworld.wolfram.com/ScaleneTriangle.html):** All sides different

### By Angle Measure

- **[Acute](https://mathworld.wolfram.com/AcuteTriangle.html):** All angles less than 90°
- **[Right](https://mathworld.wolfram.com/RightTriangle.html):** One angle equals 90°
- **[Obtuse](https://mathworld.wolfram.com/ObtuseTriangle.html):** One angle greater than 90°

## Triangle Properties

### Fundamental Properties of Triangles

- **[Perimeter](https://mathworld.wolfram.com/Perimeter.html):** Sum of all sides: $P = a + b + c$
  (where $a$, $b$, and $c$ are the lengths of the sides of the triangle)
- **[Semi-perimeter](https://mathworld.wolfram.com/Semiperimeter.html):** $s = \frac{a + b + c}{2}$
  (used in Heron's formula--see below--for area)
- **Sum of angles:** Always equals 180°: $α + β + γ = 180°$
- **[Triangle inequality](https://mathworld.wolfram.com/TriangleInequality.html):** Sum of any two sides > third side: $a + b > c$, $a + c > b$, $b + c > a$
- **[Exterior angle](https://mathworld.wolfram.com/ExteriorAngle.html):** Equals sum of two non-adjacent interior angles: $\angle_{ext} = α + β$ (where $α$ and $β$ are the two non-adjacent interior angles)
- **Sum of exterior angles:** Always equals 360°: $\angle_{ext1} + \angle_{ext2} + \angle_{ext3} = 360°$

### Fundamental Definitions

- **[Intersecting vs Parallel Lines](https://mathworld.wolfram.com/IntersectingLines.html):** Two lines that cross each other intersect whereas parallel lines run alongside without meeting
- **[Concurrent lines](https://en.wikipedia.org/wiki/Concurrent_lines):** Three or more lines that intersect at a single point called the _point of concurrency_. ([MathWorld](https://mathworld.wolfram.com/Concurrent.html) uses a less standard definition of "two or more" which is used in computational contexts or differential geometry.)
- **[Collinear points](https://mathworld.wolfram.com/Collinear.html):** Three or more points that lie on the same straight line
- **[Vertex](https://mathworld.wolfram.com/Vertex.html):** A point where two or more line segments meet; in a triangle, the three corners where sides intersect
- **[Perpendicular (orthogonal)](https://mathworld.wolfram.com/Perpendicular.html):** Two lines that intersect at a right angle (90°)
- **[Bisect](https://mathworld.wolfram.com/Bisector.html):** To divide into two equal parts; a bisector divides an angle or line segment into two congruent pieces

## Transversals

A [transversal](https://mathworld.wolfram.com/TransversalLine.html) is a line that intersects two or more other lines. When a transversal intersects the sides of a triangle (or their extensions), it creates important geometric relationships.

### Cevians

A [cevian](https://mathworld.wolfram.com/Cevian.html) is a line segment that joins a vertex of a triangle to a point on the opposite side (or its extension).

- **[Median](https://mathworld.wolfram.com/TriangleMedian.html):** Cevian from vertex to midpoint of opposite side
- **[Altitude](https://mathworld.wolfram.com/Altitude.html):** Cevian perpendicular to opposite side  
- **[Angle bisector](https://mathworld.wolfram.com/AngleBisector.html):** Cevian that bisects the angle at a vertex

### Ceva's Theorem

[Giovanni Ceva](https://en.wikipedia.org/wiki/Giovanni_Ceva) (1647-1734) was an Italian mathematician who discovered this fundamental theorem about concurrent cevians. His work laid important groundwork for projective geometry and triangle geometry.

For cevians $AA'$, $BB'$, $CC'$ in triangle $ABC$ (where $A'$, $B'$, $C'$ are on sides $BC$, $CA$, $AB$ respectively), the cevians are concurrent if and only if:
$$\frac{BA'}{A'C} \cdot \frac{CB'}{B'A} \cdot \frac{AC'}{C'B} = 1$$

For more information, see: [Ceva's Theorem - Wolfram MathWorld](https://mathworld.wolfram.com/CevasTheorem.html)

### Menelaus' Theorem

[Menelaus of Alexandria](https://en.wikipedia.org/wiki/Menelaus_of_Alexandria) (c. 70-140 CE) was a Greek mathematician and astronomer who developed this theorem about collinear points. His work "Sphaerica" was influential in both geometry and astronomy.

For a transversal intersecting sides $BC$, $CA$, $AB$ (or their extensions) at points $A'$, $B'$, $C'$ respectively, the points are collinear if and only if:
$$\frac{BA'}{A'C} \cdot \frac{CB'}{B'A} \cdot \frac{AC'}{C'B} = -1$$

For more information, see: [Menelaus' Theorem - Wolfram MathWorld](https://mathworld.wolfram.com/MenelausTheorem.html)

### Circumcircle, Incircle and Special Transversals

- **[Circumcircle](https://mathworld.wolfram.com/Circumcircle.html):** The circle that passes through all three vertices of a triangle.
- **[Circumcenter](https://mathworld.wolfram.com/Circumcenter.html):** The point equidistant from all vertices, the center of the circumcircle.
- **[Perpendicular bisectors](https://mathworld.wolfram.com/PerpendicularBisector.html):** The lines passing through the midpoint of each side of a triangle and which are perpendicular to the given side. The three perpendicular bisectors intersect at the circumcenter.
- **[Incircle](https://mathworld.wolfram.com/Incircle.html):** The circle that is tangent to all three sides of a triangle.
- **[Incenter](https://mathworld.wolfram.com/Incenter.html):** The interior point for which distances to the sides of the triangle are equal. The three angle bisectors intersect at the incenter.
- **[Centroid](https://mathworld.wolfram.com/TriangleCentroid.html):** The point where the three triangle medians intersect, also known as the center of mass or barycenter.
- **[Orthocenter](https://mathworld.wolfram.com/Orthocenter.html):** The point where the altitudes of a triangle intersect.

## Area Calculations

### Standard Formula

For a triangle with base $b$ and height $h$: $A = \frac{1}{2}bh$

### Heron's Formula

[Heron's Formula](https://mathworld.wolfram.com/HeronsFormula.html) is a useful way to find the area of a triangle when you only know the lengths of its sides. For a triangle with sides $a$, $b$, $c$:
$$A = \sqrt{s(s-a)(s-b)(s-c)}$$
where $s = \frac{a+b+c}{2}$ is the semi-perimeter.

### Using Trigonometry

If you know the length of two sides and the included angle, you can use the following trigonometric formula: For a triangle with two sides $a$, $b$ and included angle $γ$: $$A = \frac{1}{2}ab \sin γ$$

### Coordinate Geometry

For a triangle with vertices $(x_1, y_1)$, $(x_2, y_2)$, $(x_3, y_3)$:
$$A = \frac{1}{2}|x_1(y_2 - y_3) + x_2(y_3 - y_1) + x_3(y_1 - y_2)|$$

For more information, see: [Area of Triangle - Wolfram MathWorld](https://mathworld.wolfram.com/TriangleArea.html)

## Right Triangles

### Fundamental Properties of Right Triangles

Right triangles have special properties and are fundamental to trigonometry.

- **[Right Triangle](https://mathworld.wolfram.com/RightTriangle.html):** A triangle with one angle equal to 90°.
- **[Cathetes and Hypotenuse](https://mathworld.wolfram.com/RightTriangle.html):** The two sides forming the right angle are called the cathetes or catheti, and the side opposite the right angle is called the hypotenuse.
- **[Pythagorean Theorem](https://mathworld.wolfram.com/PythagoreanTheorem.html):** For a right triangle with legs $a$, $b$ and hypotenuse $c$: $$a^2 + b^2 = c^2$$
- **[Pythagorean Triples](https://mathworld.wolfram.com/PythagoreanTriple.html):** a triple of positive integers a,  b, and c such that a right triangle exists with legs $a$,$b$ and hypotenuse $c$. This is equivalent to finding positive integers $a$,$b$ and $c$ satisfying the Pythagorean Theorem:
  - **Examples:**
    - 1: $(3, 4, 5)$
    - 2: $(5, 12, 13)$
    - 3: $(8, 15, 17)$
    - 4: $(7, 24, 25)$
  - **Primitive Pythagorean triples:** These are triples where $a$, $b$, and $c$ are coprime (i.e., their greatest common divisor is 1). Examples include $(3, 4, 5)$ and $(5, 12, 13)$.
  - **Generating Pythagorean triples:** You can generate all primitive Pythagorean triples using the formula:
    - For integers $m > n > 0$:
      - calculate $a = m^2 - n^2$
      - calculate $b = 2mn$
      - calculate $c = m^2 + n^2$
    - This generates all primitive triples, and you can multiply by a common factor to get non-primitive ones.
    - **Example:** For $m = 2$ and $n = 1$, you get $(3, 4, 5)$.
    - **Note:** The order of $a$ and $b$ does not matter, so $(4, 3, 5)$ is also a valid Pythagorean triple.
- **Area of Right Triangles:** For a right triangle with legs $a$ and $b$: $$A = \frac{1}{2}ab$$

### Advanced Right Triangle Theorems

- **[Geometric Mean Theorem](https://en.wikipedia.org/wiki/Geometric_mean_theorem):**
  - Also known as the Altitude-on-Hypotenuse Theorem or Right Triangle Altitude Theorem.
  - For right triangles, the altitude to the hypotenuse has length: $$h = \sqrt{pq}$$ where $p$ and $q$ are the segments of the hypotenuse.
  - For a right triangle with hypotenuse $c$ divided into segments $p$ and $q$ by the altitude:
    - where $a$ is the cathetus adjacent to segment $p$: $a^2 = cp$
    - where $b$ is the cathetus adjacent to segment $q$: $b^2 = cq$
  - It is called the [geometric mean](https://en.wikipedia.org/wiki/Geometric_mean) because:
    - From $a^2 = cp$, we get $a = \sqrt{cp}$, so $a$ is the geometric mean of $c$ and $p$.
    - From $b^2 = cq$, we get $b = \sqrt{cq}$, so $b$ is the geometric mean of $c$ and $q$.
    - Alternatively, $h = \sqrt{pq}$ is the geometric mean of the segments $p$ and $q$.
- **[Thales' Theorem](https://en.wikipedia.org/wiki/Thales%27s_theorem):** If a triangle is inscribed in a circle such that one side is a diameter, then the triangle is a right triangle.

### Special Right Triangles

#### [Isosceles Right Triangle](https://mathworld.wolfram.com/IsoscelesRightTriangle.html)

- Angles are 45°-45°-90°
- Sides in ratio $1 : 1 : \sqrt{2}$
- If legs = $a$, then hypotenuse = $a\sqrt{2}$
- **Derivation of the 45°-45°-90° Triangle:**
  - Start with an isosceles triangle where the two equal angles are each 45°.
  - The hypotenuse is opposite the right angle, and the legs are equal in length.
  - By the Pythagorean theorem, if each leg has length $a$, then the hypotenuse has length $a\sqrt{2}$.
- Area: $$A = \frac{1}{2}a^2$$

#### [30°-60°-90° Triangle](https://mathworld.wolfram.com/30-60-90Triangle.html)

- Sides in ratio $1 : \sqrt{3} : 2$
- If short leg = $a$, then long leg = $a\sqrt{3}$, hypotenuse = $2a$
- **Derivation of the 30°-60°-90° Triangle:**
  - Start with an equilateral triangle with side length $2a$.
  - By drawing an altitude from one vertex to the opposite side, you create two 30°-60°-90° triangles.
  - The altitude bisects the base, creating a segment of length $a$.
  - The altitude itself has length $a\sqrt{3}$, leading to the ratios mentioned above.

## Applications

### Surveying and Navigation

- **[Triangulation](https://mathworld.wolfram.com/Triangulation.html):** Determining position using angle measurements
- **GPS systems:** Using triangular calculations

### Engineering

- **Structural analysis:** Triangular frameworks and trusses
- **Computer graphics:** [Triangular meshes](https://www.tutorialspoint.com/computer_graphics/computer_graphics_triangle_meshes.htm) for 3D modeling

### Physics

- **[Vector decomposition](https://brilliant.org/wiki/vector-decomposition/):** Breaking forces into components
- **[Projectile motion](https://en.wikipedia.org/wiki/Projectile_motion):** Analyzing trajectories using right triangles
