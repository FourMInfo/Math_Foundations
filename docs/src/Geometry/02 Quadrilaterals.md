# Quadrilateral

## Introduction

This section begins a look at geometric figures in the plane that are not quite as simple as triangles. Some of these figures can be built by putting triangles together in an appropriate way--these are _quadrilaterals_ and more general figures called _polygons_. Polygons are bounded by lines. This distinguishes them from _plane figures_, which have a curved edge. Plane figures cannot be constructed perfectly by composition of triangles although they can be approximated with arbitrary accuracy by using enough triangles. Plane figures include circles, ellipses, and parabolas. We will look at some of these in later sections.

## Key Concepts

A [quadrilateral](https://mathworld.wolfram.com/Quadrilateral.html/) is a [polygon](https://mathworld.wolfram.com/Polygon.html) with four sides and four angles. The vertices $A$, $B$, $C$ and $D$ should be arranged in such a way, that I can draw the lines from $A$ to $B$, $B$ to $C$, $C$ to $D$ and finally from $D$ to $A$ again in such a way, that they do not intersect and thus actually lead to the outline of a two-dimensional figure.

The _diagonal_ lines $AC$ and $BD$ connect opposite corners of the quadrilateral. The sum of the interior angles of any quadrilateral is always 360 degrees. This can be shown by dividing the quadrilateral into two triangles by drawing one of its diagonals. Each triangle has an angle sum of 180 degrees, so the total for the quadrilateral is $180^\circ + 180^\circ = 360^\circ$.

## Types of Quadrilaterals

There are several types of quadrilaterals, each with its own properties:

- **General**: No specific properties; sides and angles can be of any length and measure.
- **[Concave](https://mathworld.wolfram.com/ConcavePolygon.html)**: A general quadrilateral where at least one interior angle is greater than 180 degrees, and at least one vertex points inward.
- **[Convex](https://mathworld.wolfram.com/ConvexPolygon.html)**: A general quadrilateral where all interior angles are less than 180 degrees, and no vertices point inward.
- **[Trapezoid](https://mathworld.wolfram.com/Trapezoid.html) (US) / Trapezium (UK)**: At least one pair of opposite sides is parallel.
- **[Kite](https://mathworld.wolfram.com/Kite.html)**: Two pairs of adjacent sides are equal, and one pair of opposite angles are equal.
- **[Parallelogram](https://mathworld.wolfram.com/Parallelogram.html)**: Opposite sides are equal and parallel, and opposite angles are equal.
- **[Rhombus](https://mathworld.wolfram.com/Rhombus.html)**: Parallelogram with all sides equal. Opposite angles are equal.
- **[Rectangle](https://mathworld.wolfram.com/Rectangle.html)**: Opposite sides are equal, and all angles are 90 degrees.
- **[Square](https://mathworld.wolfram.com/Square.html)**: All sides are equal, and all angles are 90 degrees.

## Key Properties

### Angles and Diagonals Properties

- In concave quadrilaterals, one interior angle is greater than 180^\circ and at least one diagonal lies outside the figure.
- In convex quadrilaterals, each interior angle is less than or equal to 180^\circ and I can draw both diagonals without them leaving the figure.
- The adjacent angles of a parallelogram are supplementary (sum to 180 degrees).
- The opposite angles of a parallelogram are equal.
- One pair of opposite angles in a kite are equal, the other pair are not.
- The consecutive angles of a parallelogram are supplementary.
- The diagonals of a quadrilateral bisect each other if and only if it is a parallelogram.
- The diagonals of a parallelogram are equal in length.
- The diagonals of a rectangle and square bisect each other and are equal in length.
- The diagonals of a rhombus bisect each other at right angles but are not necessarily equal in length.
- The diagonals of a kite are perpendicular, and one diagonal bisects the other.

### Diagonal Length Calculation

The lengths of the diagonals can be calculated using the properties of the specific type of quadrilateral.

- **Square:** $d = a\sqrt{2}$, where $d$ is the length of the diagonal and $a$ is the length of a side.
- **Rectangle:** The diagonals are equal in length and can be found using the Pythagorean theorem: $d = \sqrt{l^2 + w^2}$, where $l$ is the length and $w$ is the width.
- **Parallelogram Acute Angle:**  Using the [law of cosines](../Trigonometry/02 Trigonometric Functions.md) with side lengths $a$ and $b$ and angle $A$ enclosed by these sides: $d = \sqrt{a^2 + b^2 - 2ab \cos A}$
- **Parallelogram Obtuse Angle:**  Using the [law of cosines](../Trigonometry/02 Trigonometric Functions.md) with side lengths $a$ and $b$ and angle $180 - A$ enclosed by these sides: $d = \sqrt{a^2 + b^2 + 2ab \cos A}$ (since $\cos (180 - A) = - \cos A$)
- **Kite:** For a kite with two pairs of adjacent sides of lengths $a$ and $b$, and diagonals $d_1$ (main diagonal) and $d_2$ (cross diagonal), the relationship is: $d_1^2 + d_2^2 = 2(a^2 + b^2)$. If one diagonal length is known, the other can be calculated using this relationship.
- **Rhombus:** For a rhombus with side length $a$ and diagonals $d_1$ and $d_2$, the relationship is: $d_1^2 + d_2^2 = 4a^2$. If one diagonal is known, the other can be calculated. Alternatively, if the angle $\theta$ between sides is known: $d_1 = 2a\sin(\theta/2)$ and $d_2 = 2a\cos(\theta/2)$.
- **Trapezoid:** For a general trapezoid with parallel sides $a$ and $c$, non-parallel sides $b$ and $d$, and height $h$, diagonal lengths must be calculated using coordinate geometry or the law of cosines with known angles. No simple general formula exists.
- **Concave Quadrilateral:** Diagonal lengths must be calculated using the law of cosines with known side lengths and angles. Care must be taken with angle measurements due to the concave nature.
- **Convex Quadrilateral:** Diagonal lengths can be calculated using the law of cosines: $d^2 = a^2 + b^2 - 2ab\cos(C)$, where $a$ and $b$ are adjacent sides and $C$ is the included angle.
- **General Quadrilateral:** For a general quadrilateral, the lengths of the diagonals can be calculated using the law of cosines if the lengths of all sides and one angle are known.

### Area Calculation

The area formulas for quadrilaterals vary significantly based on their specific properties and the information available:

- **Square:** $F = s^2$, where $s$ is the length of a side.
- **Rectangle:** $F = l \times w$, where $l$ is the length and $w$ is the width.
- **Parallelogram:** $F = b \times h$, where $b$ is the base and $h$ is the perpendicular height. Alternatively, $F = ab\sin(C)$, where $a$ and $b$ are adjacent sides and $C$ is the included angle.
- **Rhombus:** $F = \frac{1}{2}d_1 d_2$, where $d_1$ and $d_2$ are the diagonal lengths. Alternatively, $F = a^2\sin(A)$, where $a$ is the side length and $A$ is any interior angle.
- **Trapezoid:** $F = \frac{1}{2}(b_1 + b_2)h$, where $b_1$ and $b_2$ are the lengths of the parallel sides and $h$ is the perpendicular distance between them.
- **Kite:** $F = \frac{1}{2}d_1 d_2$, where $d_1$ and $d_2$ are the diagonal lengths (diagonals are perpendicular in a kite). This requires knowledge of both diagonal lengths or we can use the law of cosines to calculate the diagonal lengths if we know the lengths of the sides and all the angles between them.
- **Concave Quadrilateral:** Area calculation depends on the specific shape. Can be computed by dividing into triangles and using appropriate signs for orientation.
- **Convex Quadrilateral:** For a general convex quadrilateral with known vertices, use the [Shoelace formula](https://mathworld.wolfram.com/PolygonArea.html): $F = \frac{1}{2}|x_1(y_2-y_4) + x_2(y_3-y_1) + x_3(y_4-y_2) + x_4(y_1-y_3)|$.
- **General Quadrilateral:** When diagonals and their intersection angle are known: $F = \frac{1}{2}d_1 d_2 \sin(\theta)$, where $d_1$ and $d_2$ are diagonal lengths and $\theta$ is the angle between them. For arbitrary quadrilaterals, [Bretschneider's formula](https://mathworld.wolfram.com/BretschneidersFormula.html) can be used when all four sides and two opposite angles are known.

### Geometric Proof of Kite Area Formula

```@raw html
<svg viewBox="0 0 500 350" xmlns="http://www.w3.org/2000/svg">
  <!-- Rectangle encompassing the kite -->
  <rect x="80" y="60" width="240" height="140" 
        fill="#f5f5dc" 
        stroke="#555555" 
        stroke-width="2" 
        opacity="0.4"/>

  <!-- Kite shape -->

<polygon points="200,60 80,130 200,200 320,130" 
fill="#87ceeb" 
stroke="#2f4f4f" 
stroke-width="3" 
opacity="0.8"/>

  <!-- Diagonal 1 (vertical) - full length of rectangle -->

<line x1="200" y1="60" x2="200" y2="200" 
stroke="#b22222" 
stroke-width="3" 
stroke-dasharray="5,5"/>

  <!-- Diagonal 2 (horizontal) - full width of rectangle -->

<line x1="80" y1="130" x2="320" y2="130" 
stroke="#228b22" 
stroke-width="3" 
stroke-dasharray="5,5"/>

  <!-- Corner triangles (outside kite, inside rectangle) -->

  <!-- Top left triangle -->

<polygon points="80,60 200,60 80,130" 
fill="#dda0dd" 
stroke="#8b7d6b" 
stroke-width="2" 
opacity="0.5"/>

  <!-- Top right triangle -->

<polygon points="200,60 320,60 320,130" 
fill="#dda0dd" 
stroke="#8b7d6b" 
stroke-width="2" 
opacity="0.5"/>

  <!-- Bottom left triangle -->

<polygon points="80,130 80,200 200,200" 
fill="#dda0dd" 
stroke="#8b7d6b" 
stroke-width="2" 
opacity="0.5"/>

  <!-- Bottom right triangle -->

<polygon points="320,130 320,200 200,200" 
fill="#dda0dd" 
stroke="#8b7d6b" 
stroke-width="2" 
opacity="0.5"/>

  <!-- Labels for diagonals -->

<text x="210" y="125" fill="#dc143c" font-family="Arial" font-size="14" font-weight="bold">d₁</text>
<text x="200" y="100" fill="#32cd32" font-family="Arial" font-size="14" font-weight="bold">d₂</text>

  <!-- Dimension labels -->

<text x="325" y="135" fill="#32cd32" font-family="Arial" font-size="12">d₂</text>
<text x="205" y="55" fill="#dc143c" font-family="Arial" font-size="12">d₁</text>

  <!-- Area formulas and explanations -->

  <text x="50" y="270" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    Rectangle Area = d₁ × d₂
  </text>

  <text x="50" y="290" fill="#4682b4" font-family="Arial" font-size="14" font-weight="bold">
    Kite Area = ½ × d₁ × d₂
  </text>

  <text x="50" y="310" fill="#9370db" font-family="Arial" font-size="14" font-weight="bold">
    4 Corner Triangles = ½ × d₁ × d₂
  </text>

  <!-- Title -->

  <text x="250" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Kite Area = Half of Enclosing Rectangle
  </text>

  <!-- Legend -->

  <rect x="350" y="50" width="15" height="15" fill="#87ceeb" opacity="0.8"/>
  <text x="370" y="62" fill="#666666" font-family="Arial" font-size="12">Kite</text>

  <rect x="350" y="70" width="15" height="15" fill="#dda0dd" opacity="0.5"/>
  <text x="370" y="82" fill="#666666" font-family="Arial" font-size="12">Corner Triangles</text>

  <rect x="350" y="90" width="15" height="15" fill="#f5f5dc" opacity="0.4"/>
  <text x="370" y="102" fill="#666666" font-family="Arial" font-size="12">Rectangle</text>

  <!-- Right angle indicator at intersection -->

<rect x="195" y="125" width="10" height="10" 
fill="none" 
stroke="black" 
stroke-width="1"/>
</svg>
```

### Geometric Proof of Trapezoid Area Formula

```@raw html
<svg viewBox="0 0 500 350" xmlns="http://www.w3.org/2000/svg">
  <!-- Original trapezoid -->
  <polygon points="100,120 200,120 240,200 80,200" 
           fill="#87ceeb" 
           stroke="#2f4f4f" 
           stroke-width="3" 
           opacity="0.8"/>

  <!-- Extended top line: original a + additional b -->

<line x1="100" y1="120" x2="200" y2="120" 
stroke="#32cd32" 
stroke-width="4"/>
<line x1="200" y1="120" x2="360" y2="120" 
stroke="#4169e1" 
stroke-width="4"/>

  <!-- Extended bottom line: original b + additional a -->

<line x1="80" y1="200" x2="240" y2="200" 
stroke="#4169e1" 
stroke-width="4"/>
<line x1="240" y1="200" x2="340" y2="200" 
stroke="#32cd32" 
stroke-width="4"/>

  <!-- Flipped duplicate trapezoid (right side) -->

<polygon points="200,120 360,120 340,200 240,200" 
fill="#98fb98" 
stroke="#2f4f4f" 
stroke-width="3" 
opacity="0.8"/>

  <!-- Parallelogram outline -->

<polygon points="100,120 360,120 340,200 80,200" 
fill="none" 
stroke="#b8860b" 
stroke-width="4" 
stroke-dasharray="8,4"/>

  <!-- Left side of parallelogram -->

<line x1="100" y1="120" x2="80" y2="200" 
stroke="#b8860b" 
stroke-width="3"/>

  <!-- Right side of parallelogram (parallel to left side) -->

<line x1="360" y1="120" x2="340" y2="200" 
stroke="#b8860b" 
stroke-width="3"/>

  <!-- Height line -->

<line x1="150" y1="120" x2="150" y2="200" 
stroke="#dc143c" 
stroke-width="3" 
stroke-dasharray="5,5"/>

  <!-- Labels for original trapezoid dimensions -->

<text x="150" y="115" fill="#32cd32" font-family="Arial" font-size="14" font-weight="bold">a</text>
<text x="160" y="215" fill="#4169e1" font-family="Arial" font-size="14" font-weight="bold">b</text>
<text x="160" y="165" fill="#dc143c" font-family="Arial" font-size="14" font-weight="bold">h</text>

  <!-- Labels for extensions -->

<text x="280" y="115" fill="#4169e1" font-family="Arial" font-size="14" font-weight="bold">b</text>
<text x="290" y="215" fill="#32cd32" font-family="Arial" font-size="14" font-weight="bold">a</text>

  <!-- Parallelogram dimension labels -->

<text x="230" y="110" fill="#b8860b" font-family="Arial" font-size="14" font-weight="bold">a + b</text>
<text x="210" y="235" fill="#b8860b" font-family="Arial" font-size="14" font-weight="bold">a + b</text>

  <!-- Side dimension labels -->

<text x="150" y="105" fill="#32cd32" font-family="Arial" font-size="12">a</text>
<text x="160" y="230" fill="#4169e1" font-family="Arial" font-size="12">b</text>
<text x="60" y="165" fill="#dc143c" font-family="Arial" font-size="12">h</text>
<text x="280" y="105" fill="#4169e1" font-family="Arial" font-size="12">b</text>
<text x="290" y="230" fill="#32cd32" font-family="Arial" font-size="12">a</text>

  <!-- Area formulas and explanations -->

  <text x="50" y="270" fill="#b8860b" font-family="Arial" font-size="14" font-weight="bold">
    Parallelogram Area = (a + b) × h
  </text>

  <text x="50" y="290" fill="#4682b4" font-family="Arial" font-size="14" font-weight="bold">
    Two Trapezoids = (a + b) × h
  </text>

  <text x="50" y="310" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    ∴ One Trapezoid = ½(a + b) × h
  </text>

  <!-- Title -->

  <text x="250" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Flip the Trapezoid to Form a Parallelogram
  </text>

  <!-- Legend -->

  <rect x="370" y="50" width="15" height="15" fill="#87ceeb" opacity="0.8"/>
  <text x="390" y="62" fill="#666666" font-family="Arial" font-size="12">Original Trapezoid</text>

  <rect x="370" y="70" width="15" height="15" fill="#98fb98" opacity="0.8"/>
  <text x="390" y="82" fill="#666666" font-family="Arial" font-size="12">Flipped Copy</text>

  <rect x="370" y="90" width="15" height="15" fill="none" stroke="#b8860b" stroke-width="2"/>
  <text x="390" y="102" fill="#666666" font-family="Arial" font-size="12">Parallelogram</text>

  <!-- Explanatory text -->

  <text x="50" y="50" fill="#666666" font-family="Arial" font-size="12">
    Extend top by b and bottom by a to create equal parallel sides
  </text>
  <text x="50" y="65" fill="#666666" font-family="Arial" font-size="12">
    Right side is flipped copy of original trapezoid
  </text>

  <!-- Separation line between the two trapezoids -->

<line x1="200" y1="120" x2="240" y2="200" 
stroke="#333333" 
stroke-width="2" 
stroke-dasharray="3,3" 
opacity="0.7"/>

  <!-- Arrow showing the flip relationship -->

<path d="M 270 160 Q 290 140 310 160" 
stroke="#666666" 
stroke-width="2" 
fill="none" 
marker-end="url(#arrowhead)"/>
<text x="285" y="135" fill="#666666" font-family="Arial" font-size="10">flip</text>

  <!-- Arrow marker definition -->

  <defs>
    <marker id="arrowhead" markerWidth="10" markerHeight="7" 
            refX="9" refY="3.5" orient="auto">
      <polygon points="0 0, 10 3.5, 0 7" fill="#666666"/>
    </marker>
  </defs>

  <!-- Right angle indicator at height -->

<rect x="145" y="195" width="10" height="10" 
fill="none" 
stroke="#333333" 
stroke-width="1"/>
</svg>
```

## Applications

Quadrilaterals are commonly used in various fields such as architecture, engineering, and computer graphics. They form the basis for many structures and designs due to their stability and ease of construction.
