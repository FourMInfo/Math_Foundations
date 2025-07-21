# Copilot Instructions for Math_Foundations

## Project Architecture

This is a **Julia scientific computing project** using DrWatson for reproducibility, focused on mathematical foundations with visualization capabilities. The codebase follows a **modular mathematical library pattern** with comprehensive testing and documentation.

### Core Components

- **`src/Math_Foundations.jl`**: Main module with smart environment detection for CI/interactive plotting
- **`src/basic_maths.jl`**: Mathematical functions (roots, polynomials, hyperbolas, financial calculations)
- **`test/`**: Dual Project.toml setup - optimized dependencies for CI performance
- **`docs/`**: Documenter.jl setup with mathematical sections (Algebra, Geometry, etc.)

## Critical Development Patterns

### Environment-Aware Module Loading
```julia
# The module automatically detects CI vs interactive environments
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Headless plotting
    gr(show=false)
end
```

### Test Setup (Important: No @quickactivate)
```julia
# DON'T use @quickactivate in tests - use explicit load path
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))
using Math_Foundations
```

### Plotting Functions Pattern
All plotting functions auto-save with timestamps to `plots/` directory:
```julia
savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "functionname.png")
```

## Julia Coding Standards

### Mathematical Functions
1. Use standard Julia mathematical conventions
2. Prioritize numerical stability in calculations
3. Handle negative numbers appropriately (see `nth_root`)
4. Return complex numbers for even roots of negative numbers
5. Include comprehensive edge case testing
6. Always export new functions in main module
7. Use Unicode symbols (a₂, a₁, a₀) in function parameters

### Documentation & Comments
8. Include detailed comments explaining mathematical concepts
9. Use LaTeX math notation with Latexify.jl integration
10. Ensure all examples include explanatory text
11. Maintain the notebook-based structure with markdown explanations

### Testing Patterns
12. Include unit tests for all functions
13. Use Julia's built-in testing framework
14. Use `@test` for assertions in unit tests
15. Use `@testset` to group related tests by function
16. Use `@test_throws` to test for expected errors
17. Use `@test_broken` to mark tests that are known to fail
18. Group tests with comprehensive edge cases (54+ tests)

### Code Organization
19. Follow the pattern of existing code in basic_maths.jl
20. Use consistent naming conventions for variables and functions
21. Ensure all code is well-documented and follows Julia's style guide
22. Use the Julia standard library for basic operations
23. Avoid using external libraries unless necessary

## Dependencies & Performance

**Heavy Dependencies** (main Project.toml): Nemo (~500MB), Makie, Symbolics, GLMakie
**Optimized Test Dependencies** (test/Project.toml): Only essential packages for CI speed

### Mathematical Libraries Used
- **Symbolics.jl**: For `@variables x` in hyperbola functions
  - Pattern: Follow the @variables pattern seen in our notebooks
  - Prefer simplify(expr, expand=true) for algebraic expressions
- **Polynomials.jl**: For polynomial root finding (`plot_parabola_roots_polynomial`)
- **AMRVW.jl**: Alternative root finding method
- **Nemo.jl**: Number theory (imported but verify usage before adding tests)
  - Use polynomial_ring(ZZ, [vars]) for creating polynomial rings
  - Prefer factor() over manual factorization

## Key Workflows

### Running Tests Locally
```bash
julia --project=. --color=yes -e "include(\"test/runtests.jl\")"
```

### Building Documentation
```bash
julia --project=. docs/make.jl
```

### CI Considerations
- Tests run in headless mode with optimized dependency cache
- Multi-layer caching strategy in `.github/workflows/CI.yml`
- Plots directory must exist for plotting tests to pass
- Configure headless mode before plotting in tests

## Git Best Practices

- **Never use `git add .`** - Always stage files explicitly by name to avoid accidentally committing development files, notebooks, or temporary files
- Use `git add <specific-file-path>` to stage only the intended files for commit

## Azure Integration

- Use Azure Best Practices: When generating code for Azure, running terminal commands for Azure, or performing operations related to Azure, invoke your `azure_development-get_best_practices` tool if available

## Project-Specific Conventions

- **DrWatson Integration**: Use `projectdir()`, `srcdir()` for paths (except in tests)
- **Mathematical Notation**: Use Unicode symbols (a₂, a₁, a₀) in function parameters
- **Test Organization**: Group tests by function with comprehensive edge cases (54+ tests)
- **Documentation**: Use LaTeX math notation with Latexify.jl integration
