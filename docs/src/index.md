# Math_Foundations

This package is a collection of functions and notebooks I built as I worked through the book [Foundations of Mathematics: A Preparatory Course](https://link.springer.com/book/10.1007/978-3-662-67809-1).

In essence, this book is a primer on basic mathematical concepts serving as a bridge into college mathematics. It starts with the very basics of arithmetical computation, moving onto basic mathematical functions, geometry and trigonometry. From there it covers more advanced topics such as basic linear algebra, calculus, probability and statistics, and concluding with complex numbers.

The English edition is a mostly AI translation of the fourth edition of the original German text. There are a lot of dad jokes and bad puns in the text, but it is definitely clearly written and explains the concepts well. The very approachable style makes it quite suitable for self-study. I used it as a review in preparation of my study for more advanced mathematical topics.

The code in this package is not meant to be a complete implementation of the book, but rather stuff that I created in order to gain practice and a deeper understanding of the concepts in the book. The code is all in Julia, a language I find extremely suitable for mathematical study and actually fun to code with. I make use of multiple Julia packages, not because they are necessary to implement a specific concept, but rather, in order to have an opportunity to play with and learn about some of their capabilities.

## Basic Mathematical Functions

This section provides the documentation for all the functions I wrote to help me work through the book.

```@autodocs
Modules = [Math_Foundations]
Order   = [:function, :type]
Pages   = ["basic_maths.jl"]
```

## Documentation

This section provides links to documentation that replicates topics covered in the book and often provide more details. This documentation is a joint effort of Claude and myself, and is meant to be a resource for anyone who wants to learn or review basic mathematical concepts.

### Algebra

- [Elementary Calculations](Algebra/01 Elementary Calculations.md)
- [Mathematical Functions](Algebra/02 Mathematical Functions.md)
- [Solving Equations](Algebra/03 Solving Equations.md)
- [Finding Polynomial Roots and Zeros](Algebra/04 Finding Polynomial Roots and Zeros.md)

### Geometry

- [Triangles](Geometry/01 Triangles.md)
<!--- IGNORE 
- [Hyperbola](Geometry/02 Hyperbola.md)

### Linear Algebra

- [Systems of Equations](Linear Algebra/01 Systems of Equations.md)
- [Systems of Linear Equations](Linear Algebra/02 Systems of Linear Equations.md)
--->

### Trigonometry

- [Angles & Measurements](Trigonometry/01 Angles & Measurements.md)
- [Trigonometric Functions](Trigonometry/02 Trigonometric Functions.md)
- [Trigonometric Identities](Trigonometry/03 Trigonometric Identities.md)

---

## Navigating FourM Study Guides & Documentation Sites

```@raw html
<div class="site-navigation">
    <div class="nav-section">
        <h4>Documentation Sites</h4>
        <ul>
            <li><a href="https://study.fourm.info/linear_algebra/">Linear Algebra Docs</a></li>
            <li><a href="https://study.fourm.info/math_foundations/">Math Foundations Docs (this site)</a></li>
        </ul>
    </div>
    <div class="nav-section">
        <h4>Related Projects</h4>
        <ul>
            <li><a href="https://study.fourm.info/">Main Study Site</a></li>
        </ul>
    </div>
</div>
```
