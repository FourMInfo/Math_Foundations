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

## External Documentation

This section provides links to external documentation that replicates topics covered in the book and often provide more details. It is not an exhaustive list, but it does cover many of the important topics. Most of the links are to the [LibreTexts](https://math.libretexts.org/) project, which is a free online library of mathematics textbooks and resources. The links are grouped by topic.

### Basic Computation

### Functions

### Geometry

* [Parabola](https://math.libretexts.org/Bookshelves/Algebra/Algebra_and_Trigonometry_1e_(OpenStax)/12%3A_Analytic_Geometry/12.03%3A_The_Parabola)
* [Hyperbola](https://math.libretexts.org/Bookshelves/Algebra/Algebra_and_Trigonometry_1e_(OpenStax)/12%3A_Analytic_Geometry/12.02%3A_The_Hyperbola)
* [Triangle](https://math.libretexts.org/Bookshelves/Algebra/Algebra_and_Trigonometry_1e_(OpenStax)/12%3A_Analytic_Geometry/12.01%3A_The_Triangle)
  
### Trigonometry

* [Trigonometric Functions](https://math.libretexts.org/Bookshelves/Trigonometry/Book%3A_Trigonometry_(OpenStax)/01%3A_Introduction_to_Trigonometry/1.01%3A_Trigonometric_Functions)
