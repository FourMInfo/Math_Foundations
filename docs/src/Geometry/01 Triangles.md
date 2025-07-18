# Triangles

Triangles are three-sided polygons that form the foundation of much geometric and trigonometric study.

## Types of Triangles

### By Side Length
- **Equilateral**: All three sides equal
- **Isosceles**: Two sides equal
- **Scalene**: All sides different

### By Angle Measure
- **Acute**: All angles less than 90°
- **Right**: One angle equals 90°
- **Obtuse**: One angle greater than 90°

## Triangle Properties

### Fundamental Properties
- **Sum of angles**: Always equals 180°
- **Triangle inequality**: Sum of any two sides > third side
- **Exterior angle**: Equals sum of two non-adjacent interior angles

## Area Calculations

### Standard Formula
For a triangle with base $b$ and height $h$:
$$A = \frac{1}{2}bh$$

### Heron's Formula
For a triangle with sides $a$, $b$, $c$:
$$A = \sqrt{s(s-a)(s-b)(s-c)}$$
where $s = \frac{a+b+c}{2}$ is the semi-perimeter.

### Using Trigonometry
For a triangle with two sides $a$, $b$ and included angle $C$:
$$A = \frac{1}{2}ab \sin C$$

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
- $(3, 4, 5)$
- $(5, 12, 13)$
- $(8, 15, 17)$
- $(7, 24, 25)$

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
For any triangle with sides $a$, $b$, $c$ opposite angles $A$, $B$, $C$:
$$\frac{a}{\sin A} = \frac{b}{\sin B} = \frac{c}{\sin C} = 2R$$
where $R$ is the circumradius.

### Law of Cosines
$$c^2 = a^2 + b^2 - 2ab \cos C$$

This generalizes the Pythagorean theorem (when $C = 90°$, $\cos C = 0$).

## Circle Properties

### Circumcircle
- **Circumcenter**: Point equidistant from all vertices
- **Circumradius**: $R = \frac{abc}{4A}$ where $A$ is the area

### Incircle
- **Incenter**: Point equidistant from all sides
- **Inradius**: $r = \frac{A}{s}$ where $s$ is the semi-perimeter

### Excircles
Each triangle has three excircles, each tangent to one side and the extensions of the other two sides.

## Applications

### Surveying and Navigation
- **Triangulation**: Determining position using angle measurements
- **GPS systems**: Using triangular calculations

### Engineering
- **Structural analysis**: Triangular frameworks and trusses
- **Computer graphics**: Triangular meshes for 3D modeling

### Physics
- **Vector decomposition**: Breaking forces into components
- **Wave analysis**: Using trigonometric functions