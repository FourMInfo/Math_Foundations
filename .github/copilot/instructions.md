# CoPilot Instructions

This file contains instructions for CoPilot to follow when generating code. The instructions are divided into sections for different programming languages and tools. Please follow the instructions carefully to ensure consistent and high-quality code generation.

## Azure Rules

1. Use Azure Best Practices: When generating code for Azure, running terminal commands for Azure, or performing operations related to Azure, invoke your `azure_development-get_best_practices` tool if available.

## Julia Mathematics Foundations

When generating code for this project:

1. Use standard Julia mathematical conventions
2. Prioritize numerical stability in calculations
3. Include detailed comments explaining mathematical concepts
4. Prefer Symbolics.jl for symbolic computations
5. Follow the pattern of existing code in basic_maths.jl
6. Maintain the notebook-based structure with markdown explanations
7. Ensure all examples include explanatory text
8. Use the Julia standard library for basic operations
9. Avoid using external libraries unless necessary
10. Use consistent naming conventions for variables and functions
11. Include unit tests for all functions
12. Use Julia's built-in testing framework for unit tests
13. Ensure all code is well-documented and follows Julia's style guide
14. Use `@test` for assertions in unit tests
15. Use `@testset` to group related tests
16. Use `@test_throws` to test for expected errors
17. Use `@test_broken` to mark tests that are known to fail

## Related Private Repositories

- Repository: TBA
  Description: TBA
  Key components:
    - TBA
    - TBA

## External Dependencies Reference

- [Symbolics.jl](https://github.com/JuliaSymbolics/Symbolics.jl): Used for symbolic mathematics
  - Pattern: Follow the @variables pattern seen in our notebooks
  - Prefer simplify(expr, expand=true) for algebraic expressions

- [Nemo.jl](https://github.com/Nemocas/Nemo.jl): Used for polynomial factorization
  - Use polynomial_ring(ZZ, [vars]) for creating polynomial rings
  - Prefer factor() over manual factorization

