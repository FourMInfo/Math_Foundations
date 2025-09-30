# Polygons

## Introduction

A [polygon](https://mathworld.wolfram.com/Polygon.html) is a planar (two-dimensional) geometric figure which is also called an _N-corner_, because their number of corners is N – a natural number greater than
2. To construct a polygon, start with N points in the plane and connect them with N lines in such a way that:

1. they do not intersect, and
2. the starting point of the first line coincides with the ending point of the last line

These two properties guarantee that such a closed polygon (all lines) is actually the boundary of a
two-dimensional figure – the N-corner.

The line segments are called the _sides_ or _edges_ of the polygon, and the points where the sides meet are called the _vertices_ or _corners_. Polygons can have various numbers of sides, and they are classified based on the number of sides they possess.

Here are some common types of polygons based on the number of sides (the first two we have described in detail in previous sections):

- **Triangle (3 sides)**: The simplest polygon, with three edges and three vertices.
- **Quadrilateral (4 sides)**: A polygon with four edges and four vertices. Examples include squares, rectangles, and trapezoids.
- **Pentagon (5 sides)**: A polygon with five edges and five vertices.
- **Hexagon (6 sides)**: A polygon with six edges and six vertices.
- **Heptagon (7 sides)**: A polygon with seven edges and seven vertices.
- **Octagon (8 sides)**: A polygon with eight edges and eight vertices.
- **Nonagon (9 sides)**: A polygon with nine edges and nine vertices.
- **Decagon (10 sides)**: A polygon with ten edges and ten vertices.
- **Hendecagon (11 sides)**: A polygon with eleven edges and eleven vertices.
- **Dodecagon (12 sides)**: A polygon with twelve edges and twelve vertices.

## Classification of Polygons

Polygons are typically classified into two main categories: convex and concave.

1. **[Convex Polygons](https://mathworld.wolfram.com/ConvexPolygon.html)**: A polygon is convex if all its interior angles are less than 180 degrees, and no line segment between any two points on its boundary goes outside the polygon. In simpler terms, a convex polygon "bulges" outward.

   A more exact definition is that a convex polygon $\Lambda$ with two internal points $X$, $Y$, has the property that every point $Z$ of the connecting line between $X$ and $Y$ lies inside $\Lambda$. Mathematically, all points $Z$ of the form:
   $$Z = tX + (1-t)Y \text{ for } t \in [0, 1]$$
   lie inside $\Lambda$.

2. **[Concave Polygons](https://mathworld.wolfram.com/ConcavePolygon.html)**: A polygon is concave if at least one of its interior angles is greater than 180 degrees. This means that there is at least one line segment between two points on its boundary that goes outside the polygon, causing it to "cave" inward.

   In concave polygons $\Lambda$, internal points $X$ and $Y$ exist in $\Lambda$ such that some point(s) $Z$ on their connecting line is not in $\Lambda$.

```@raw html
<svg viewBox="0 0 600 300" xmlns="http://www.w3.org/2000/svg">
  <!-- Title -->
  <text x="300" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Convex vs Concave Polygons
  </text>

  <!-- Convex Polygon (Pentagon) -->
  <polygon points="120,80 160,60 200,80 180,140 100,140" 
           fill="#87ceeb" 
           stroke="#2f4f4f" 
           stroke-width="3" 
           opacity="0.8"/>

  <!-- Test line inside convex polygon -->
  <line x1="130" y1="100" x2="170" y2="120" 
        stroke="#32cd32" 
        stroke-width="3"/>
  
  <!-- Points on the test line -->
  <circle cx="130" cy="100" r="3" fill="#dc143c"/>
  <circle cx="170" cy="120" r="3" fill="#dc143c"/>
  <text x="120" y="95" fill="#dc143c" font-family="Arial" font-size="12">X</text>
  <text x="175" y="115" fill="#dc143c" font-family="Arial" font-size="12">Y</text>

  <!-- Label for convex -->
  <text x="150" y="170" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Convex Polygon
  </text>
  <text x="150" y="190" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    All interior angles &lt; 180°
  </text>
  <text x="150" y="205" fill="#32cd32" font-family="Arial" font-size="12" text-anchor="middle">
    Line XY stays inside
  </text>

  <!-- Concave Polygon (Arrow-like shape) -->
  <polygon points="420,80 460,60 500,80 480,100 520,120 480,140 460,160 420,140 440,120 400,100" 
           fill="#ffa07a" 
           stroke="#8b4513" 
           stroke-width="3" 
           opacity="0.8"/>

  <!-- Test line that goes outside concave polygon -->
  <line x1="430" y1="105" x2="430" y2="140" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="5,5"/>
  
  <!-- Points on the test line -->
  <circle cx="430" cy="105" r="3" fill="#dc143c"/>
  <circle cx="430" cy="140" r="3" fill="#dc143c"/>
  <text x="435" y="107" fill="#dc143c" font-family="Arial" font-size="12">X</text>
  <text x="435" y="143" fill="#dc143c" font-family="Arial" font-size="12">Y</text>

  <!-- Show the interior angle > 180° -->
  <path d="M 490 90 A 20 20 0 1 0 490 105" 
        stroke="#b8860b" 
        stroke-width="2" 
        fill="none"/>
  <text x="442" y="78" fill="#b8860b" font-family="Arial" font-size="11">θ &gt; 180°</text>

  <!-- Label for concave -->
  <text x="460" y="190" fill="#8b4513" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Concave Polygon
  </text>
  <text x="460" y="210" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    At least one interior angle &gt; 180°
  </text>
  <text x="460" y="225" fill="#dc143c" font-family="Arial" font-size="12" text-anchor="middle">
    Line XY goes outside
  </text>

  <!-- Dividing line -->
  <line x1="300" y1="50" x2="300" y2="250" 
        stroke="#cccccc" 
        stroke-width="2" 
        stroke-dasharray="10,5"/>

  <!-- Legend -->
  <rect x="50" y="250" width="15" height="15" fill="#87ceeb" opacity="0.8"/>
  <text x="70" y="262" fill="#666666" font-family="Arial" font-size="12">Convex</text>
  
  <rect x="150" y="250" width="15" height="15" fill="#ffa07a" opacity="0.8"/>
  <text x="170" y="262" fill="#666666" font-family="Arial" font-size="12">Concave</text>
  
  <line x1="250" y1="257" x2="280" y2="257" stroke="#32cd32" stroke-width="3"/>
  <text x="285" y="262" fill="#666666" font-family="Arial" font-size="12">Line inside polygon</text>
  
  <line x1="420" y1="257" x2="450" y2="257" stroke="#dc143c" stroke-width="3" stroke-dasharray="5,5"/>
  <text x="455" y="262" fill="#666666" font-family="Arial" font-size="12">Line outside polygon</text>
</svg>
```

### Regular vs. Irregular Polygons

Polygons can also be classified as regular or irregular:

1. **Regular Polygons**: A regular polygon has all sides of equal length and all interior angles of equal measure. Examples include equilateral triangles and squares.

2. **Irregular Polygons**: An irregular polygon does not have equal side lengths or equal angles. Most polygons encountered in everyday life are irregular.

```@raw html
<svg viewBox="0 0 600 300" xmlns="http://www.w3.org/2000/svg">
  <!-- Title -->
  <text x="300" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Regular vs Irregular Polygons
  </text>

  <!-- Regular Hexagon -->
  <polygon points="150,70 180,85 180,115 150,130 120,115 120,85" 
           fill="#98fb98" 
           stroke="#006400" 
           stroke-width="3" 
           opacity="0.8"/>

  <!-- Center point of regular hexagon -->
  <circle cx="150" cy="100" r="2" fill="#006400"/>

  <!-- Radii to show equal distances -->
  <line x1="150" y1="100" x2="150" y2="70" stroke="#006400" stroke-width="1" stroke-dasharray="3,3"/>
  <line x1="150" y1="100" x2="180" y2="85" stroke="#006400" stroke-width="1" stroke-dasharray="3,3"/>
  <line x1="150" y1="100" x2="180" y2="115" stroke="#006400" stroke-width="1" stroke-dasharray="3,3"/>

  <!-- Side length labels for regular hexagon -->
  <!-- Top-right side: midpoint of (150,70)-(180,85) + offset -->
  <text x="172" y="75" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>
  <!-- Right side: midpoint of (180,85)-(180,115) + offset -->
  <text x="188" y="104" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>
  <!-- Bottom-right side: midpoint of (180,115)-(150,130) + offset -->
  <text x="172" y="129" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>
  <!-- Bottom-left side: midpoint of (150,130)-(120,115) + offset -->
  <text x="128" y="129" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>
  <!-- Left side: midpoint of (120,115)-(120,85) + offset -->
  <text x="112" y="104" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>
  <!-- Top-left side: midpoint of (120,85)-(150,70) + offset -->
  <text x="128" y="75" fill="#006400" font-family="Arial" font-size="12" text-anchor="middle">s</text>

  <!-- Angle markers for regular hexagon -->
  <text x="143" y="83" fill="#8b4513" font-family="Arial" font-size="10">120°</text>
  <text x="143" y="123" fill="#8b4513" font-family="Arial" font-size="10">120°</text>
  <text x="120" y="93" fill="#8b4513" font-family="Arial" font-size="10">120°</text>

  <!-- Label for regular -->
  <text x="150" y="170" fill="#006400" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Regular Hexagon
  </text>
  <text x="150" y="190" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    All sides equal: s
  </text>
  <text x="150" y="205" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    All angles equal: 120°
  </text>

  <!-- Irregular Hexagon -->
  <polygon points="420,60 470,75 490,110 460,140 410,135 380,105" 
           fill="#ffd700" 
           stroke="#b8860b" 
           stroke-width="3" 
           opacity="0.8"/>

  <!-- Side length labels for irregular hexagon -->
  <!-- Side a: midpoint of (420,60)-(470,75) + offset -->
  <text x="445" y="63" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">a</text>
  <!-- Side b: midpoint of (470,75)-(490,110) + offset -->
  <text x="485" y="88" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">b</text>
  <!-- Side c: midpoint of (490,110)-(460,140) + offset -->
  <text x="480" y="130" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">c</text>
  <!-- Side d: midpoint of (460,140)-(410,135) + offset -->
  <text x="430" y="147" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">d</text>
  <!-- Side e: midpoint of (410,135)-(380,105) + offset -->
  <text x="390" y="126" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">e</text>
  <!-- Side f: midpoint of (380,105)-(420,60) + offset -->
  <text x="395" y="78" fill="#b8860b" font-family="Arial" font-size="12" text-anchor="middle">f</text>

  <!-- Angle markers for irregular hexagon -->
  <!-- α: at vertex (460,77) where sides a and b meet -->
  <text x="463" y="83" fill="#8b4513" font-family="Arial" font-size="10">α</text>
  <!-- β: at vertex (490,110) where sides b and c meet -->
  <text x="480" y="111" fill="#8b4513" font-family="Arial" font-size="10">β</text>
  <!-- γ: at vertex (460,140) where sides c and d meet -->
  <text x="458" y="137" fill="#8b4513" font-family="Arial" font-size="10">γ</text>
  <!-- δ: at vertex (410,135) where sides d and e meet -->
  <text x="407" y="132" fill="#8b4513" font-family="Arial" font-size="10">δ</text>
  <!-- ε: at vertex (380,105) where sides f and e meet -->
  <text x="385" y="108" fill="#8b4513" font-family="Arial" font-size="10">ε</text>
  <!-- ζ: at vertex (420,60) where sides f and a meet -->
  <text x="420" y="70" fill="#8b4513" font-family="Arial" font-size="10">ζ</text>

  <!-- Label for irregular -->
  <text x="435" y="170" fill="#b8860b" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Irregular Hexagon
  </text>
  <text x="435" y="190" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    Different side lengths: a,b,c,d,e,f
  </text>
  <text x="435" y="205" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    Different angles: α,β,γ,δ,ε,ζ
  </text>

  <!-- Dividing line -->
  <line x1="300" y1="45" x2="300" y2="230" 
        stroke="#cccccc" 
        stroke-width="2" 
        stroke-dasharray="10,5"/>

  <!-- Legend -->
  <rect x="50" y="250" width="15" height="15" fill="#98fb98" opacity="0.8"/>
  <text x="70" y="262" fill="#666666" font-family="Arial" font-size="12">Regular (equal sides & angles)</text>
  
  <rect x="250" y="250" width="15" height="15" fill="#ffd700" opacity="0.8"/>
  <text x="270" y="262" fill="#666666" font-family="Arial" font-size="12">Irregular (unequal sides & angles)</text>
</svg>
```

## Properties of Polygons

Polygons have several important properties that are useful in geometry:

1. **Sum of Interior Angles**: The sum of the interior angles of a polygon with N sides is given by the formula: $\text{Sum of interior angles} = (N - 2) \times 180^\circ$. For example, a triangle (3 sides) has a sum of interior angles equal to $180^\circ$, while a quadrilateral (4 sides) has a sum of $360^\circ$.
2. **Exterior Angles**: The sum of the exterior angles of any polygon is always $360^\circ$, regardless of the number of sides. Each exterior angle is formed by extending one side of the polygon at a vertex. For a regular polygon, each exterior angle can be calculated as: $\text{Exterior angle} = \frac{360^\circ}{N}$
3. **Diagonals**: A diagonal is a line segment connecting two non-adjacent vertices of a polygon. The number of diagonals (D) in a polygon with N sides can be calculated using the formula: $D = \frac{N(N - 3)}{2}$. For example, a pentagon (5 sides) has 5 diagonals, while a hexagon (6 sides) has 9 diagonals.
4. **Area**: The area of a polygon can be calculated using various methods depending on the type of polygon. For regular polygons, the area can be calculated using the formula: $\text{Area} = \frac{1}{4} N s^2 \cot\left(\frac{\pi}{N}\right)$ where $s$ is the length of a side. If you circumscribe the regular polygon with a circle of radius $r$ (the distance from the center to a vertex), the area can also be expressed as: $\text{Area} = \frac{1}{2} N r^2 \sin\left(\frac{2\pi}{N}\right)$. For irregular polygons, methods such as triangulation or the shoelace formula can be used.
5. **Perimeter**: The perimeter of a polygon is the total length of its sides. For a polygon with N sides, the perimeter $P$ can be calculated as: $P = s_1 + s_2 + s_3 + ... + s_N$ where $s_1, s_2, ..., s_N$ are the lengths of the sides.
6. **Symmetry**: Regular polygons exhibit a high degree of symmetry. They have multiple lines of symmetry and rotational symmetry. The number of lines of symmetry in a regular polygon is equal to the number of sides $N$.

## Triangulation

[Triangulation](https://mathworld.wolfram.com/Triangulation.html) is the process of dividing any polygon into triangles by drawing non-intersecting diagonals. This technique is fundamental in geometry because triangles are the simplest polygons, and we already know how to calculate their properties (area, angles, side lengths) using basic geometric formulas.

### Why Triangulation Works

The number of triangles formed when triangulating a polygon with $N$ sides is always:
$$\text{Number of triangles} = N - 2$$

This formula works because:

- Each triangle contributes $180°$ to the total angle sum
- The total interior angle sum of an $N$-sided polygon is $(N-2) \times 180°$
- Therefore: $(N-2) \text{ triangles} \times 180° = (N-2) \times 180°$

### Basic Triangulation Methods

**1. Fan Triangulation**
The simplest method is to choose one vertex and connect it to all non-adjacent vertices. This creates $(N-2)$ triangles that all share the chosen vertex as a common point.

**Example - Pentagon Fan Triangulation:**

- Start with pentagon $ABCDE$
- Choose vertex $A$ as the fan center
- Draw diagonals: $AC$ and $AD$
- Result: 3 triangles ($\triangle ABC$, $\triangle ACD$, $\triangle ADE$)

```@raw html
<svg viewBox="0 0 500 350" xmlns="http://www.w3.org/2000/svg">
  <!-- Title -->
  <text x="250" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Pentagon Fan Triangulation
  </text>

  <!-- Pentagon outline -->
  <polygon points="250,60 320,100 300,180 200,180 180,100" 
           fill="#e6f3ff" 
           stroke="#2f4f4f" 
           stroke-width="4" 
           opacity="0.3"/>

  <!-- Triangle 1: ABC -->
  <polygon points="250,60 320,100 300,180" 
           fill="#ffb6c1" 
           stroke="#8b008b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle 2: ACD -->
  <polygon points="250,60 300,180 200,180" 
           fill="#98fb98" 
           stroke="#006400" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle 3: ADE -->
  <polygon points="250,60 200,180 180,100" 
           fill="#ffd700" 
           stroke="#b8860b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Diagonals from A -->
  <line x1="250" y1="60" x2="300" y2="180" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="8,4"/>
  <line x1="250" y1="60" x2="200" y2="180" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="8,4"/>

  <!-- Vertices -->
  <circle cx="250" cy="60" r="5" fill="#2f4f4f"/>
  <circle cx="320" cy="100" r="5" fill="#2f4f4f"/>
  <circle cx="300" cy="180" r="5" fill="#2f4f4f"/>
  <circle cx="200" cy="180" r="5" fill="#2f4f4f"/>
  <circle cx="180" cy="100" r="5" fill="#2f4f4f"/>

  <!-- Vertex labels -->
  <text x="250" y="50" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">A</text>
  <text x="330" y="105" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">B</text>
  <text x="310" y="195" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">C</text>
  <text x="190" y="195" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">D</text>
  <text x="165" y="105" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">E</text>

  <!-- Triangle labels -->
  <text x="270" y="110" fill="#8b008b" font-family="Arial" font-size="14" font-weight="bold">△ABC</text>
  <text x="225" y="150" fill="#006400" font-family="Arial" font-size="14" font-weight="bold">△ACD</text>
  <text x="185" y="110" fill="#b8860b" font-family="Arial" font-size="14" font-weight="bold">△ADE</text>

  <!-- Diagonal labels -->
  <text x="279" y="125" fill="#dc143c" font-family="Arial" font-size="12" font-weight="bold">AC</text>
  <text x="227" y="125" fill="#dc143c" font-family="Arial" font-size="12" font-weight="bold">AD</text>

  <!-- Step-by-step explanation -->
  <text x="50" y="250" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    Fan Triangulation Steps:
  </text>
  <text x="50" y="270" fill="#666666" font-family="Arial" font-size="12">
    1. Choose vertex A as the fan center
  </text>
  <text x="50" y="285" fill="#666666" font-family="Arial" font-size="12">
    2. Draw diagonals AC and AD from vertex A
  </text>
  <text x="50" y="300" fill="#666666" font-family="Arial" font-size="12">
    3. Result: N-2 = 5-2 = 3 triangles
  </text>

  <!-- Formula verification -->
  <text x="300" y="250" fill="#4682b4" font-family="Arial" font-size="14" font-weight="bold">
    Verification:
  </text>
  <text x="300" y="270" fill="#666666" font-family="Arial" font-size="12">
    Pentagon: N = 5 sides
  </text>
  <text x="300" y="285" fill="#666666" font-family="Arial" font-size="12">
    Triangles = N - 2 = 5 - 2 = 3 ✓
  </text>
  <text x="300" y="300" fill="#666666" font-family="Arial" font-size="12">
    Angles: 3 × 180° = 540° ✓
  </text>

  <!-- Legend -->
  <rect x="50" y="320" width="15" height="15" fill="#ffb6c1" opacity="0.7"/>
  <text x="70" y="332" fill="#666666" font-family="Arial" font-size="12">Triangle ABC</text>
  
  <rect x="150" y="320" width="15" height="15" fill="#98fb98" opacity="0.7"/>
  <text x="170" y="332" fill="#666666" font-family="Arial" font-size="12">Triangle ACD</text>
  
  <rect x="250" y="320" width="15" height="15" fill="#ffd700" opacity="0.7"/>
  <text x="270" y="332" fill="#666666" font-family="Arial" font-size="12">Triangle ADE</text>
  
  <line x1="350" y1="327" x2="380" y2="327" stroke="#dc143c" stroke-width="3" stroke-dasharray="8,4"/>
  <text x="385" y="332" fill="#666666" font-family="Arial" font-size="12">Diagonals</text>
</svg>
```

**Example - Hexagon Fan Triangulation:**

- Start with hexagon $ABCDEF$
- Choose vertex $A$ as the fan center
- Draw diagonals: $AC$, $AD$, and $AE$
- Result: 4 triangles ($\triangle ABC$, $\triangle ACD$, $\triangle ADE$, $\triangle AEF$)

```@raw html
<svg viewBox="0 0 500 380" xmlns="http://www.w3.org/2000/svg">
  <!-- Title -->
  <text x="250" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Hexagon Fan Triangulation
  </text>

  <!-- Hexagon outline -->
  <polygon points="250,50 310,80 310,140 250,170 190,140 190,80" 
           fill="#e6f3ff" 
           stroke="#2f4f4f" 
           stroke-width="4" 
           opacity="0.3"/>

  <!-- Triangle 1: ABC -->
  <polygon points="250,50 310,80 310,140" 
           fill="#ffb6c1" 
           stroke="#8b008b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle 2: ACD -->
  <polygon points="250,50 310,140 250,170" 
           fill="#98fb98" 
           stroke="#006400" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle 3: ADE -->
  <polygon points="250,50 250,170 190,140" 
           fill="#ffd700" 
           stroke="#b8860b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle 4: AEF -->
  <polygon points="250,50 190,140 190,80" 
           fill="#dda0dd" 
           stroke="#9370db" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Diagonals from A -->
  <line x1="250" y1="50" x2="310" y2="140" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="8,4"/>
  <line x1="250" y1="50" x2="250" y2="170" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="8,4"/>
  <line x1="250" y1="50" x2="190" y2="140" 
        stroke="#dc143c" 
        stroke-width="3" 
        stroke-dasharray="8,4"/>

  <!-- Vertices -->
  <circle cx="250" cy="50" r="5" fill="#2f4f4f"/>
  <circle cx="310" cy="80" r="5" fill="#2f4f4f"/>
  <circle cx="310" cy="140" r="5" fill="#2f4f4f"/>
  <circle cx="250" cy="170" r="5" fill="#2f4f4f"/>
  <circle cx="190" cy="140" r="5" fill="#2f4f4f"/>
  <circle cx="190" cy="80" r="5" fill="#2f4f4f"/>

  <!-- Vertex labels -->
  <text x="250" y="40" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">A</text>
  <text x="320" y="85" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">B</text>
  <text x="320" y="150" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">C</text>
  <text x="250" y="190" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">D</text>
  <text x="175" y="150" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">E</text>
  <text x="175" y="85" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">F</text>

  <!-- Triangle labels -->
  <text x="273" y="85" fill="#8b008b" font-family="Arial" font-size="12" font-weight="bold">△ABC</text>
  <text x="255" y="130" fill="#006400" font-family="Arial" font-size="12" font-weight="bold">△ACD</text>
  <text x="200" y="130" fill="#b8860b" font-family="Arial" font-size="12" font-weight="bold">△ADE</text>
  <text x="192" y="85" fill="#9370db" font-family="Arial" font-size="12" font-weight="bold">△AEF</text>

  <!-- Diagonal labels -->
  <text x="288" y="105" fill="#dc143c" font-family="Arial" font-size="11" font-weight="bold">AC</text>
  <text x="255" y="115" fill="#dc143c" font-family="Arial" font-size="11" font-weight="bold">AD</text>
  <text x="218" y="105" fill="#dc143c" font-family="Arial" font-size="11" font-weight="bold">AE</text>

  <!-- Step-by-step explanation -->
  <text x="50" y="220" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    Fan Triangulation Steps:
  </text>
  <text x="50" y="240" fill="#666666" font-family="Arial" font-size="12">
    1. Choose vertex A as the fan center
  </text>
  <text x="50" y="255" fill="#666666" font-family="Arial" font-size="12">
    2. Draw diagonals AC, AD, and AE from vertex A
  </text>
  <text x="50" y="270" fill="#666666" font-family="Arial" font-size="12">
    3. Result: N-2 = 6-2 = 4 triangles
  </text>

  <!-- Formula verification -->
  <text x="300" y="220" fill="#4682b4" font-family="Arial" font-size="14" font-weight="bold">
    Verification:
  </text>
  <text x="300" y="240" fill="#666666" font-family="Arial" font-size="12">
    Hexagon: N = 6 sides
  </text>
  <text x="300" y="255" fill="#666666" font-family="Arial" font-size="12">
    Triangles = N - 2 = 6 - 2 = 4 ✓
  </text>
  <text x="300" y="270" fill="#666666" font-family="Arial" font-size="12">
    Angles: 4 × 180° = 720° ✓
  </text>

  <!-- Legend -->
  <rect x="50" y="290" width="12" height="12" fill="#ffb6c1" opacity="0.7"/>
  <text x="67" y="300" fill="#666666" font-family="Arial" font-size="11">△ABC</text>
  
  <rect x="110" y="290" width="12" height="12" fill="#98fb98" opacity="0.7"/>
  <text x="127" y="300" fill="#666666" font-family="Arial" font-size="11">△ACD</text>
  
  <rect x="170" y="290" width="12" height="12" fill="#ffd700" opacity="0.7"/>
  <text x="187" y="300" fill="#666666" font-family="Arial" font-size="11">△ADE</text>
  
  <rect x="230" y="290" width="12" height="12" fill="#dda0dd" opacity="0.7"/>
  <text x="247" y="300" fill="#666666" font-family="Arial" font-size="11">△AEF</text>
  
  <line x1="50" y1="315" x2="80" y2="315" stroke="#dc143c" stroke-width="3" stroke-dasharray="8,4"/>
  <text x="85" y="320" fill="#666666" font-family="Arial" font-size="11">Diagonals from A</text>

  <!-- Note about fan structure -->
  <text x="50" y="340" fill="#4682b4" font-family="Arial" font-size="12" font-style="italic">
    Note: All triangles share vertex A as a common point.
  </text>
  <text x="50" y="355" fill="#4682b4" font-family="Arial" font-size="12" font-style="italic">
    This creates a "fan" pattern radiating from A
  </text>
</svg>
```

**2. Alternative Triangulation Methods**
The same polygon can be triangulated in multiple ways. For example, a quadrilateral $ABCD$ can be triangulated as:

- Method 1: Diagonal $AC$ creates $\triangle ABC$ and $\triangle ACD$
- Method 2: Diagonal $BD$ creates $\triangle ABD$ and $\triangle BCD$

Both methods create exactly 2 triangles, as predicted by the formula $N-2 = 4-2 = 2$.

```@raw html
<svg viewBox="0 0 600 350" xmlns="http://www.w3.org/2000/svg">
  <!-- Title -->
  <text x="300" y="25" fill="#4682b4" font-family="Arial" font-size="18" font-weight="bold" text-anchor="middle">
    Alternative Triangulation Methods
  </text>

  <!-- Method 1: Diagonal AC -->
  <!-- Quadrilateral outline -->
  <polygon points="100,80 180,70 200,140 120,150" 
           fill="#e6f3ff" 
           stroke="#2f4f4f" 
           stroke-width="3" 
           opacity="0.3"/>

  <!-- Triangle ABC -->
  <polygon points="100,80 180,70 200,140" 
           fill="#ffb6c1" 
           stroke="#8b008b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle ACD -->
  <polygon points="100,80 200,140 120,150" 
           fill="#98fb98" 
           stroke="#006400" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Diagonal AC -->
  <line x1="100" y1="80" x2="200" y2="140" 
        stroke="#dc143c" 
        stroke-width="4" 
        stroke-dasharray="8,4"/>

  <!-- Vertices Method 1 -->
  <circle cx="100" cy="80" r="4" fill="#2f4f4f"/>
  <circle cx="180" cy="70" r="4" fill="#2f4f4f"/>
  <circle cx="200" cy="140" r="4" fill="#2f4f4f"/>
  <circle cx="120" cy="150" r="4" fill="#2f4f4f"/>

  <!-- Vertex labels Method 1 -->
  <text x="95" y="75" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">A</text>
  <text x="185" y="65" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">B</text>
  <text x="205" y="145" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">C</text>
  <text x="115" y="165" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">D</text>

  <!-- Triangle labels Method 1 -->
  <text x="145" y="95" fill="#8b008b" font-family="Arial" font-size="12" font-weight="bold">△ABC</text>
  <text x="120" y="130" fill="#006400" font-family="Arial" font-size="12" font-weight="bold">△ACD</text>

  <!-- Diagonal label Method 1 -->
  <text x="155" y="110" fill="#dc143c" font-family="Arial" font-size="12" font-weight="bold">AC</text>

  <!-- Method 1 title -->
  <text x="150" y="190" fill="#4682b4" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Method 1: Diagonal AC
  </text>

  <!-- Method 2: Diagonal BD -->
  <!-- Quadrilateral outline -->
  <polygon points="400,80 480,70 500,140 420,150" 
           fill="#e6f3ff" 
           stroke="#2f4f4f" 
           stroke-width="3" 
           opacity="0.3"/>

  <!-- Triangle ABD -->
  <polygon points="400,80 480,70 420,150" 
           fill="#ffd700" 
           stroke="#b8860b" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Triangle BCD -->
  <polygon points="480,70 500,140 420,150" 
           fill="#dda0dd" 
           stroke="#9370db" 
           stroke-width="2" 
           opacity="0.7"/>

  <!-- Diagonal BD -->
  <line x1="480" y1="70" x2="420" y2="150" 
        stroke="#32cd32" 
        stroke-width="4" 
        stroke-dasharray="8,4"/>

  <!-- Vertices Method 2 -->
  <circle cx="400" cy="80" r="4" fill="#2f4f4f"/>
  <circle cx="480" cy="70" r="4" fill="#2f4f4f"/>
  <circle cx="500" cy="140" r="4" fill="#2f4f4f"/>
  <circle cx="420" cy="150" r="4" fill="#2f4f4f"/>

  <!-- Vertex labels Method 2 -->
  <text x="395" y="75" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">A</text>
  <text x="485" y="65" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">B</text>
  <text x="505" y="145" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">C</text>
  <text x="415" y="165" fill="#2f4f4f" font-family="Arial" font-size="16" font-weight="bold">D</text>

  <!-- Triangle labels Method 2 -->
  <text x="420" y="95" fill="#b8860b" font-family="Arial" font-size="12" font-weight="bold">△ABD</text>
  <text x="445" y="125" fill="#9370db" font-family="Arial" font-size="12" font-weight="bold">△BCD</text>

  <!-- Diagonal label Method 2 -->
  <text x="460" y="105" fill="#32cd32" font-family="Arial" font-size="12" font-weight="bold">BD</text>

  <!-- Method 2 title -->
  <text x="450" y="190" fill="#4682b4" font-family="Arial" font-size="16" font-weight="bold" text-anchor="middle">
    Method 2: Diagonal BD
  </text>

  <!-- Dividing line -->
  <line x1="300" y1="50" x2="300" y2="200" 
        stroke="#cccccc" 
        stroke-width="2" 
        stroke-dasharray="10,5"/>

  <!-- Common properties -->
  <text x="300" y="220" fill="#666666" font-family="Arial" font-size="14" font-weight="bold" text-anchor="middle">
    Both Methods Create Exactly 2 Triangles
  </text>
  <text x="300" y="240" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    Formula: N - 2 = 4 - 2 = 2 triangles ✓
  </text>
  <text x="300" y="255" fill="#666666" font-family="Arial" font-size="12" text-anchor="middle">
    Total angles: 2 × 180° = 360° ✓
  </text>

  <!-- Legend -->
  <text x="50" y="280" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    Method 1 Triangles:
  </text>
  <rect x="50" y="290" width="12" height="12" fill="#ffb6c1" opacity="0.7"/>
  <text x="67" y="300" fill="#666666" font-family="Arial" font-size="12">△ABC</text>
  <rect x="110" y="290" width="12" height="12" fill="#98fb98" opacity="0.7"/>
  <text x="127" y="300" fill="#666666" font-family="Arial" font-size="12">△ACD</text>
  
  <text x="350" y="280" fill="#666666" font-family="Arial" font-size="14" font-weight="bold">
    Method 2 Triangles:
  </text>
  <rect x="350" y="290" width="12" height="12" fill="#ffd700" opacity="0.7"/>
  <text x="367" y="300" fill="#666666" font-family="Arial" font-size="12">△ABD</text>
  <rect x="410" y="290" width="12" height="12" fill="#dda0dd" opacity="0.7"/>
  <text x="427" y="300" fill="#666666" font-family="Arial" font-size="12">△BCD</text>

  <!-- Diagonal legend -->
  <line x1="50" y1="320" x2="80" y2="320" stroke="#dc143c" stroke-width="3" stroke-dasharray="8,4"/>
  <text x="85" y="325" fill="#666666" font-family="Arial" font-size="12">Diagonal AC</text>
  
  <line x1="200" y1="320" x2="230" y2="320" stroke="#32cd32" stroke-width="3" stroke-dasharray="8,4"/>
  <text x="235" y="325" fill="#666666" font-family="Arial" font-size="12">Diagonal BD</text>
</svg>
```

### Using Triangulation to Calculate Area

Triangulation is particularly useful for finding the area of irregular polygons:

**Step-by-Step Process:**

1. **Triangulate** the polygon using any valid method
2. **Measure or calculate** the side lengths of each triangle
3. **Apply triangle area formulas** to each triangle:
   - Use the basic formula: Area = $\frac{1}{2} \times \text{base} \times \text{height}$
   - Or use Heron's formula for triangles with known side lengths
   - Or use trigonometric formula: Area = $\frac{1}{2}ab\sin(C)$
4. **Sum all triangle areas** to get the total polygon area

**Example - Pentagon Area Calculation:**
Given pentagon with vertices and using fan triangulation from vertex $A$:

- Triangle 1 area: $A_1$ (calculated using appropriate triangle formula)
- Triangle 2 area: $A_2$
- Triangle 3 area: $A_3$
- **Total pentagon area = $A_1 + A_2 + A_3$**

### Verification Methods

To verify your triangulation is correct:

1. **Count triangles**: Should equal $N-2$
2. **Check angle sum**: All triangle angles should sum to $(N-2) \times 180°$
3. **Verify no overlaps**: Triangles should not overlap each other
4. **Confirm coverage**: Triangles should cover the entire polygon interior

### Practical Applications

#### 1. Area Calculation

- Breaking complex shapes into manageable triangular pieces
- Each triangle can be solved using familiar formulas
- Particularly useful for irregular polygons where direct area formulas don't exist

#### 2. Construction and Design

- Architectural applications where complex shapes need to be built from simpler triangular components
- Engineering applications requiring structural analysis of polygonal shapes

#### 3. Problem Solving

- Converting complex polygon problems into simpler triangle problems
- Using known triangle properties to solve unknown polygon properties

The power of triangulation lies in its ability to reduce complex polygonal problems to collections of simple triangle problems, using only the basic geometric tools we've already developed.

