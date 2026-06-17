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

## Julia Coding Standards

### Mathematical Functions
1. Use Unicode symbols for coefficients where established (`a₂`, `a₁`, `a₀`)
2. Return stable numeric types for root results (typically `ComplexF64` where needed)
3. Handle negative and edge cases consistently (for example `nth_root` behavior by parity)
4. Always export new public functions in `src/Math_Foundations.jl`
5. Keep the computational/integrated split: `calculate_*` (pure math) + `plot_*` (integrated)
6. Preserve CI-safe plotting behavior in integrated functions
7. Use clear variable naming consistent with mathematical notation

### Function Categories
- **Algebraic Roots**: Quadratic, polynomial, and AMRVW-based root workflows
- **Conic Geometry**: Hyperbola and parabola-related computations and plotting
- **Financial Math**: Accrual/interest helper calculations
- **Helper Utilities**: Supporting math functions used across lessons
- **Symbolic Functions**: Symbolics-backed equation construction and manipulation

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

### Documentation & Comments
- Include detailed comments explaining mathematical concepts
- Use clear variable names (e.g., `a₂`, `a₁`, `a₀` for polynomial coefficients)
- Document return types and edge cases in comments
- Explain mathematical formulas in comments
- Maintain consistency with mathematical notation

### Code Organization
- **Primary Source File**: Core functions in `basic_maths.jl`, main module in `Math_Foundations.jl`
- **Consistent Naming**: `calculate_*` for pure computation, `plot_*` for visualization
- **Export Everything**: All public functions exported from main module
- **Separate Concerns**: Computational logic separated from plotting logic

## Dependencies & Libraries

**Main Dependencies**: Symbolics, Nemo, Plots, Latexify, LaTeXStrings, AMRVW, Polynomials

### Mathematical Libraries Used
- **Symbolics.jl**: For `@variables` and symbolic manipulation
  - Pattern: `@variables x`, symbolic equation construction from coefficients
  - Use `substitute`/`value` and `build_function` patterns when numeric evaluation is needed
- **Polynomials.jl**: Polynomial representation and root finding
- **AMRVW.jl**: Alternative polynomial root pipeline
- **Nemo.jl**: Number-theory and algebra tooling used by selected workflows
- **Plots.jl/GR**: Visualization backend with CI-safe headless configuration
- **Latexify.jl + LaTeXStrings.jl**: Math expression formatting for plots/docs

## Project-Specific Conventions

### Mathematical Operations
- **Coefficient notation**: Keep coefficient naming consistent (`a₂`, `a₁`, `a₀`)
- **Root output**: Preserve root output contracts per function family
- **Symbolic-first workflows**: Keep symbolic and numeric paths explicit where both are supported
- **Plotting safety**: Plot functions should fail gracefully in CI/headless runs
- **Coordinate assumptions**: Document coordinate/sign conventions in function comments

### Function Naming Patterns
- **Computational functions**: `calculate_*`
- **Integrated plotting functions**: `plot_*`
- **Financial utilities**: domain-specific naming (`accrued*`)
- **Geometry helpers**: explicit conic/geometric naming (`hyperbola*`, `parabola*`)

## Function Signature Patterns

### Mathematical Functions
```julia
nth_root(x, n) -> Number                  # Returns complex for even roots of negative numbers
```

### Core Computational Patterns
```julia
calculate_parabola_roots_quadratic(a₂, a₁=0.0, a₀=0.0) -> Vector{ComplexF64}
calculate_parabola_roots_polynomial(a₂, a₁=0.0, a₀=0.0) -> Vector{ComplexF64}
calculate_parabola_roots_amrvw(a₂, a₁=0.0, a₀=0.0) -> Vector{ComplexF64}
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
