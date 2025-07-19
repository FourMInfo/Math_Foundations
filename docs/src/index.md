# Math_Foundations

This package is a collection of functions and notebooks I built as I worked through the book [Foundations of Mathematics: A Preparatory Course](https://link.springer.com/book/10.1007/978-3-662-67809-1).

In essence, this book is a primer on basic mathematical concepts serving as a bridge into college mathematics. It starts with the very basics of arithmetical computation, moving onto basic mathematical functions, geometry and trigonometry. From there it covers more advanced topics such as basic linear algebra, calculus, probability and statistics, and concluding with complex numbers.

The English edition is a mostly AI translation of the fourth edition of the original German text. There are a lot of dad jokes and bad puns in the text, but it is definitely clearly written and explains the concepts well. The very approachable style makes it quite suitable for self-study. I used it as a review in preparation of my study for more advanced mathematical topics.

The code in this package is not meant to be a complete implementation of the book, but rather stuff that I created in order to gain practice and a deeper understanding of the concepts in the book. The code is all in Julia, a language I find extremely suitable for mathematical study and actually fun to code with. I make use of multiple Julia packages, not because they are necessary to implement a specific concept, but rather, in order to have an opportunity to play with and learn about some of their capabilities.

Besides the package documentation, you will also find in the left navigation tab, links to documents that explain topics covered in the book. These often provide more details than covered in the books. In writing this documentation I made extensive use of the LLM Claude (currently version Sonic 4.0) which I use in a paid version of VSCode CoPilot.

These documents are meant to be a resource first for myself and then anyone who wants to learn and review basic mathematical concepts. I do try hard to carefully check the accuracy of the explanations, but I am not a professional mathematician, so please do let me know if you find any mistakes or inaccuracies. Also please note that as of the date in the footer timestamp, I have only fully checked and edited the Algebra section. The other sections are still in progress, but I do plan to complete them.

## Basic Mathematical Functions

```@autodocs
Modules = [Math_Foundations]
Order   = [:function, :type]
Pages   = ["basic_maths.jl"]
```
