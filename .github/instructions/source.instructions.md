---
applyTo: 'src/**'
---
# Source Code Conventions

## Module Structure & Exports

All code uses `@reexport` pattern and exports both computational + plotting functions:

```julia
# Main module uses @reexport for clean interface
using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials

# Comprehensive exports for all functions
# Pure computational functions (no plotting dependencies)
export calculate_parabola_roots_quadratic, calculate_parabola_roots_polynomial, calculate_parabola_roots_amrvw

# Integrated plotting functions (computation + visualization)
export plot_parabola_roots_quadratic, plot_hyperbola, plot_hyperbola_axes_direct

# Always export new functions in main module
```

## Automatic CI/Interactive Detection

Module auto-configures at load time — no manual intervention needed:

```julia
# src/Math_Foundations.jl - Runs on module load
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Headless plotting
    gr(show=false)
else
    gr()  # Interactive plotting
end
```

## Coding Standards

### Mathematical Functions

- Use Unicode symbols for coefficients: `a₂, a₁, a₀` (type `a\_2<tab>` in Julia)
- Return `ComplexF64` for roots (even if imaginary part is zero)
- Handle negative numbers correctly (see `nth_root` — odd roots return negative reals, even roots return complex)
- Always export new functions in `src/Math_Foundations.jl`
- Follow pattern: `calculate_*` (pure math) + `plot_*` (integrated)

### Function Design Pattern

```julia
# Pure computational function
function calculate_parabola_roots_quadratic(a₂, a₁=0.0, a₀=0.0)
    discriminant = a₁^2 - 4 * a₂ * a₀
    root1 = (-a₁ + sqrt(Complex(discriminant))) / (2 * a₂)
    root2 = (-a₁ - sqrt(Complex(discriminant))) / (2 * a₂)
    return [root1, root2]  # Always returns ComplexF64
end

# Integrated plotting function
function plot_parabola_roots_quadratic(a₂, a₁=0.0, a₀=0.0)
    all_roots = calculate_parabola_roots_quadratic(a₂, a₁, a₀)
    try
        @variables x
        f = a₂ * x^2 + a₁ * x + a₀
        plot_parabola(f, all_roots, a₂, a₁, a₀, "Quadratic")
    catch e
        !haskey(ENV, "CI") && @warn "Plotting failed: $e"
    end
    return [real(r) for r in all_roots if abs(imag(r)) < 1e-10]
end
```

### Docstrings

- Required for all exported functions with signature and description
- Use LaTeX math in docstrings
- Include examples showing typical usage

### Documentation & Comments

- Include detailed comments explaining mathematical concepts
- Use clear variable names (e.g., `a₂`, `a₁`, `a₀` for polynomial coefficients)
- Document return types and edge cases in comments
- Explain mathematical formulas in comments
- Maintain consistency with mathematical notation

### Code Organization

- **Single Source File**: Core functions in `basic_maths.jl`, main module in `Math_Foundations.jl`
- **Consistent Naming**: `calculate_*` for pure computation, `plot_*` for visualization
- **Export Everything**: All public functions exported from main module
- **Separate Concerns**: Computational logic separated from plotting logic

## Function Signature Patterns

### Mathematical Functions
```julia
nth_root(x, n) -> Number                  # Returns complex for even roots of negative numbers
```

### Plotting Functions
```julia
plot_parabola_roots_amrvw(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> Vector{ComplexF64}
plot_parabola_roots_polynomial(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> Vector{ComplexF64}
plot_parabola_roots_quadratic(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> Vector{ComplexF64}
plot_hyperbola(a::Float64=1.0, h::Float64=0.0, k::Float64=0.0) -> Plot
plot_hyperbola_axes_varx(a::Float64, b::Float64) -> Plot
plot_hyperbola_axes_direct(a::Float64, b::Float64) -> Plot
```

### Financial Functions
```julia
accrued_apr(i::Real, p::Real, c::Int64) -> Float64
accrued(i::Real, p::Real, c::Int64) -> Float64
```

### Geometric Functions
```julia
triangle_area_perim(a::Float64, b::Float64, c::Float64) -> Tuple{Float64, Float64}
```

## Dependencies & Libraries

**Heavy Dependencies**: Nemo (~500MB), GLMakie, WGLMakie (main Project.toml)
**Optimized Tests**: Minimal dependencies in `test/Project.toml` for CI speed

### Key Mathematical Libraries

- **Symbolics.jl**: Symbolic variables (`@variables x`) for equation manipulation
  - Create variables: `@variables x; f = a₂*x^2 + a₁*x + a₀`
  - Simplify expressions: `simplify(expr, expand=true)`
  - **Extract numeric values** (two methods):
    1. **substitute + value**: `substitute(expr, x => π/4; fold=Val(true))` then `Symbolics.value(result)`
    2. **build_function**: `f = build_function(expr, x, expression=Val{false})` creates callable Julia function
  - Use `fold=Val(true)` with substitute to simplify after substitution
  - Use `expression=Val{false}` with build_function to avoid eval requirement
- **Polynomials.jl**: Polynomial operations and root finding
  - Create: `p = Polynomial([a₀, a₁, a₂])`
  - Solve: `roots(p)`
- **AMRVW.jl**: Alternative root finding: `AMRVW.roots([a₀, a₁, a₂])`
- **Nemo.jl**: Number theory (verify usage patterns before adding new tests)
- **Plots.jl/GR**: Plotting with automatic CI headless mode

## Project-Specific Conventions

- **DrWatson Integration**: Use `projectdir()`, `srcdir()` for paths (except in tests)
- **Mathematical Notation**: Use Unicode symbols (a₂, a₁, a₀) in function parameters
- **Documentation**: Use LaTeX math notation with Latexify.jl integration
