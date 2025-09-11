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
- The diagonals of a quadrilateral bisect each other if and only if it is a parallelogram.
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

- **Square:** $A = s^2$, where $s$ is the length of a side.
- **Rectangle:** $A = l \times w$, where $l$ is the length and $w$ is the width.
- **Parallelogram:** $A = b \times h$, where $b$ is the base and $h$ is the perpendicular height. Alternatively, $A = ab\sin(C)$, where $a$ and $b$ are adjacent sides and $C$ is the included angle.
- **Rhombus:** $A = \frac{1}{2}d_1 d_2$, where $d_1$ and $d_2$ are the diagonal lengths. Alternatively, $A = a^2\sin(A)$, where $a$ is the side length and $A$ is any interior angle.
- **Trapezoid:** $A = \frac{1}{2}(b_1 + b_2)h$, where $b_1$ and $b_2$ are the lengths of the parallel sides and $h$ is the perpendicular distance between them.
- **Kite:** $A = \frac{1}{2}d_1 d_2$, where $d_1$ and $d_2$ are the diagonal lengths (diagonals are perpendicular in a kite).
- **Concave Quadrilateral:** Area calculation depends on the specific shape. Can be computed by dividing into triangles and using appropriate signs for orientation.
- **Convex Quadrilateral:** For a general convex quadrilateral with known vertices, use the [Shoelace formula](https://mathworld.wolfram.com/PolygonArea.html): $A = \frac{1}{2}|x_1(y_2-y_4) + x_2(y_3-y_1) + x_3(y_4-y_2) + x_4(y_1-y_3)|$.
- **General Quadrilateral:** When diagonals and their intersection angle are known: $A = \frac{1}{2}d_1 d_2 \sin(\theta)$, where $d_1$ and $d_2$ are diagonal lengths and $\theta$ is the angle between them. For arbitrary quadrilaterals, [Bretschneider's formula](https://mathworld.wolfram.com/BretschneidersFormula.html) can be used when all four sides and two opposite angles are known.

## Applications

Quadrilaterals are commonly used in various fields such as architecture, engineering, and computer graphics. They form the basis for many structures and designs due to their stability and ease of construction.
