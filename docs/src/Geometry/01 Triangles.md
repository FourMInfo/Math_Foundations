# Triangles

[Triangles](https://mathworld.wolfram.com/Triangle.html) are three-sided polygons that form the foundation of much geometric and trigonometric study.

<!-- TODO: Remaining SVG Diagrams to Add:
- Diagram 5: Triangle Centers (4 diagrams):
  - Circumcenter (perpendicular bisectors + circumcircle)
  - Incenter (angle bisectors + incircle)
  - Centroid (medians intersection)
  - Orthocenter (altitudes intersection)
- Diagram 6: Right triangle with Pythagorean theorem - after line 112
- Diagram 7: Special right triangles (2 triangles):
  - 45°-45°-90° triangle (ratio 1:1:√2) - after line 164
  - 30°-60°-90° triangle (ratio 1:√3:2) - after line 174
-->

## Types of Triangles

### By Side Length

- **[Equilateral](https://mathworld.wolfram.com/EquilateralTriangle.html):** All three sides equal
- **[Isosceles](https://mathworld.wolfram.com/IsoscelesTriangle.html):** Two sides equal
- **[Scalene](https://mathworld.wolfram.com/ScaleneTriangle.html):** All sides different

```@raw html
<svg width="700" height="220" xmlns="http://www.w3.org/2000/svg">
  <!-- Equilateral Triangle -->
  <g id="equilateral">
    <!-- Triangle with base at bottom -->
    <polygon points="50,150 150,150 100,50" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Tick marks for all three equal sides -->
    <!-- Bottom side (perpendicular to base) -->
    <line x1="100" y1="145" x2="100" y2="155" stroke="blue" stroke-width="2"/>
    <!-- Left side -->
    <line x1="70" y1="95" x2="80" y2="105" stroke="blue" stroke-width="2"/>
    <!-- Right side -->
    <line x1="120" y1="105" x2="130" y2="95" stroke="blue" stroke-width="2"/>
    
    <!-- Label -->
    <text x="100" y="180" text-anchor="middle" font-size="16" font-weight="bold">Equilateral</text>
    <text x="100" y="195" text-anchor="middle" font-size="12">(all sides equal)</text>
  </g>
  
  <!-- Isosceles Triangle -->
  <g id="isosceles">
    <!-- Triangle with base at bottom -->
    <polygon points="280,150 400,150 340,50" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Double tick marks for two equal sides (left and right) -->
    <!-- Left side -->
    <line x1="305" y1="95" x2="315" y2="105" stroke="red" stroke-width="2"/>
    <line x1="310" y1="90" x2="320" y2="100" stroke="red" stroke-width="2"/>
    <!-- Right side -->
    <line x1="360" y1="100" x2="370" y2="90" stroke="red" stroke-width="2"/>
    <line x1="365" y1="105" x2="375" y2="95" stroke="red" stroke-width="2"/>
    
    <!-- Label -->
    <text x="340" y="180" text-anchor="middle" font-size="16" font-weight="bold">Isosceles</text>
    <text x="340" y="195" text-anchor="middle" font-size="12">(two sides equal)</text>
  </g>
  
  <!-- Scalene Triangle -->
  <g id="scalene">
    <!-- Triangle with base at bottom -->
    <polygon points="520,150 650,150 570,40" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Side length labels -->
    <text x="540" y="90" text-anchor="middle" font-size="12" fill="gray">a</text>
    <text x="615" y="90" text-anchor="middle" font-size="12" fill="gray">b</text>
    <text x="585" y="165" text-anchor="middle" font-size="12" fill="gray">c</text>
    
    <!-- Label -->
    <text x="585" y="190" text-anchor="middle" font-size="16" font-weight="bold">Scalene</text>
    <text x="585" y="205" text-anchor="middle" font-size="12">(all sides different)</text>
  </g>
</svg>
```

### By Angle Measure

- **[Acute](https://mathworld.wolfram.com/AcuteTriangle.html):** All angles less than 90°
- **[Right](https://mathworld.wolfram.com/RightTriangle.html):** One angle equals 90°
- **[Obtuse](https://mathworld.wolfram.com/ObtuseTriangle.html):** One angle greater than 90°

```@raw html
<svg width="700" height="220" xmlns="http://www.w3.org/2000/svg">
  <!-- Acute Triangle -->
  <g id="acute">
    <!-- Triangle with base at bottom, all angles < 90° -->
    <polygon points="50,150 150,150 100,50" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Angle marks (small arcs) -->
    <!-- Bottom left angle (from base to left side) - concave -->
    <path d="M 60,150 Q 63,143 57,140" fill="none" stroke="green" stroke-width="1.5"/>
    <text x="65" y="145" font-size="10" fill="green">60°</text>
    
    <!-- Bottom right angle (from right side to base) - concave -->
    <path d="M 143,140 Q 137,143 140,150" fill="none" stroke="green" stroke-width="1.5"/>
    <text x="122" y="145" font-size="10" fill="green">60°</text>
    
    <!-- Top angle - concave -->
    <path d="M 95,60 Q 100,63 105,60" fill="none" stroke="green" stroke-width="1.5"/>
    <text x="93" y="75" font-size="10" fill="green">60°</text>
    
    <!-- Label -->
    <text x="100" y="180" text-anchor="middle" font-size="16" font-weight="bold">Acute</text>
    <text x="100" y="195" text-anchor="middle" font-size="12">(all angles &lt; 90°)</text>
  </g>
  
  <!-- Right Triangle -->
  <g id="right">
    <!-- Triangle with base at bottom, right angle at bottom left -->
    <polygon points="280,150 400,150 280,50" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Right angle square symbol -->
    <rect x="280" y="140" width="10" height="10" fill="none" stroke="red" stroke-width="2"/>
    <text x="285" y="135" font-size="10" fill="red">90°</text>
    
    <!-- Other angles - concave arcs -->
    <!-- Bottom right 45° angle (from base to hypotenuse) -->
    <path d="M 380,150 Q 378,143 383,138" fill="none" stroke="blue" stroke-width="1.5"/>
    <text x="365" y="145" font-size="10" fill="blue">45°</text>
    
    <!-- Top 45° angle (from vertical side to hypotenuse) -->
    <path d="M 280,60 Q 282,65 288,58" fill="none" stroke="blue" stroke-width="1.5"/>
    <text x="282" y="72" font-size="10" fill="blue">45°</text>
    
    <!-- Label -->
    <text x="340" y="180" text-anchor="middle" font-size="16" font-weight="bold">Right</text>
    <text x="340" y="195" text-anchor="middle" font-size="12">(one angle = 90°)</text>
  </g>
  
  <!-- Obtuse Triangle -->
  <g id="obtuse">
    <!-- Triangle with base at bottom, obtuse angle at top, wider spread -->
    <polygon points="490,150 680,150 560,85" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Obtuse angle at top - shorter arc touching the legs -->
    <path d="M 552,90 Q 560,95 570,90" fill="none" stroke="purple" stroke-width="2"/>
    <text x="552" y="104" font-size="10" fill="purple">120°</text>
    
    <!-- Acute angles at base - concave arcs -->
    <!-- Bottom left angle (from base to left leg) -->
    <path d="M 510,150 Q 513,143 505,138" fill="none" stroke="orange" stroke-width="1.5"/>
    <text x="514" y="145" font-size="10" fill="orange">40°</text>
    
    <!-- Bottom right angle (from right leg to base) -->
    <path d="M 660,137 Q 654,143 658,150" fill="none" stroke="orange" stroke-width="1.5"/>
    <text x="640" y="145" font-size="10" fill="orange">20°</text>
    
    <!-- Label -->
    <text x="585" y="180" text-anchor="middle" font-size="16" font-weight="bold">Obtuse</text>
    <text x="585" y="195" text-anchor="middle" font-size="12">(one angle &gt; 90°)</text>
  </g>
</svg>
```

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

```@raw html
<svg width="750" height="240" xmlns="http://www.w3.org/2000/svg">
  <!-- Median -->
  <g id="median">
    <!-- Triangle with base at bottom -->
    <polygon points="50,200 150,200 100,80" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Median from top vertex to midpoint of base -->
    <line x1="100" y1="80" x2="100" y2="200" stroke="blue" stroke-width="2" stroke-dasharray="3,3"/>
    
    <!-- Mark the midpoint -->
    <circle cx="100" cy="200" r="3" fill="blue"/>
    <text x="100" y="218" text-anchor="middle" font-size="10" fill="blue">M (midpoint)</text>
    
    <!-- Mark equal segments on base -->
    <line x1="75" y1="205" x2="75" y2="195" stroke="green" stroke-width="2"/>
    <line x1="125" y1="205" x2="125" y2="195" stroke="green" stroke-width="2"/>
    
    <!-- Label -->
    <text x="100" y="235" text-anchor="middle" font-size="16" font-weight="bold">Median</text>
  </g>
  
  <!-- Altitude -->
  <g id="altitude">
    <!-- Triangle with base at bottom -->
    <polygon points="250,200 380,200 320,80" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Altitude from top vertex perpendicular to base -->
    <line x1="320" y1="80" x2="320" y2="200" stroke="red" stroke-width="2" stroke-dasharray="3,3"/>
    
    <!-- Right angle symbol at base -->
    <rect x="315" y="190" width="10" height="10" fill="none" stroke="red" stroke-width="2"/>
    
    <!-- Mark the foot of altitude -->
    <circle cx="320" cy="200" r="3" fill="red"/>
    <text x="320" y="218" text-anchor="middle" font-size="10" fill="red">H (foot)</text>
    
    <!-- Label -->
    <text x="315" y="235" text-anchor="middle" font-size="16" font-weight="bold">Altitude</text>
  </g>
  
  <!-- Angle Bisector -->
  <g id="angle-bisector">
    <!-- Triangle with base at bottom -->
    <polygon points="470,200 600,200 520,80" fill="none" stroke="black" stroke-width="2"/>
    
    <!-- Angle bisector from top vertex -->
    <line x1="520" y1="80" x2="535" y2="200" stroke="purple" stroke-width="2" stroke-dasharray="3,3"/>
    
    <!-- Mark equal angles at top vertex -->
    <path d="M 512,95 Q 519,98 522,91" fill="none" stroke="orange" stroke-width="1.5"/>
    <path d="M 522,93 Q 525,98 530,95" fill="none" stroke="orange" stroke-width="1.5"/>
    
    <!-- Mark the point on base -->
    <circle cx="535" cy="200" r="3" fill="purple"/>
    <text x="535" y="218" text-anchor="middle" font-size="10" fill="purple">D</text>
    
    <!-- Label -->
    <text x="535" y="235" text-anchor="middle" font-size="16" font-weight="bold">Angle Bisector</text>
  </g>
</svg>
```

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

## Further Information

More information about triangles are found in the trigonometry section of this documentation. Specifically, the sections on [trigonometric functions](../Trigonometry/02 Trigonometric Functions.md) provide deeper insights into the relationships between triangle angles and side lengths.

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
