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

1. **Convex Polygons**: A polygon is convex if all its interior angles are less than 180 degrees, and no line segment between any two points on its boundary goes outside the polygon. In simpler terms, a convex polygon "bulges" outward. A more exact definition is that a convex polygon $\Lambda$ with two internal points $X$, $Y$, every point $Z$ of the connecting line between $X$ and $Y$, i.e., all points $Z$ of the form $Z = tX + (1-t)Y$ for $t \in [0, 1]$, lies inside $\Lambda$.

2. **Concave Polygons**: A polygon is concave if at least one of its interior angles is greater than 180 degrees. This means that there is at least one line segment between two points on its boundary that goes outside the polygon, causing it to "cave" inward. In concave polygons $\Lambda$, internal points $X$ and $Y$ exist in $\Lambda$, so some point(s) $Z$ (defined above) on their connecting line is not in $\Lambda$.

### Regular vs. Irregular Polygons

Polygons can also be classified as regular or irregular:

1. **Regular Polygons**: A regular polygon has all sides of equal length and all interior angles of equal measure. Examples include equilateral triangles and squares.

2. **Irregular Polygons**: An irregular polygon does not have equal side lengths or equal angles. Most polygons encountered in everyday life are irregular.
