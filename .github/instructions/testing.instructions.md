---
applyTo: 'test/**'
---
# Testing Conventions

## Three-Layer CI-Compatible Testing Approach

### 1. Module-Level Detection (Automatic)

In `src/Math_Foundations.jl` — runs on module load:

```julia
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Headless plotting
    gr(show=false)
else
    gr()  # Interactive plotting
end
```

### 2. Test-Level Configuration (Manual)

In `test/runtests.jl` — set BEFORE loading module:

```julia
ENV["GKSwstype"] = "100"  # Set BEFORE using Math_Foundations
using DrWatson, Test
@quickactivate "Math_Foundations"
using Math_Foundations
```

### 3. Separated Logic (Design Pattern)

All functions follow the `calculate_*` / `plot_*` split:

- **Computational functions** (`calculate_*`): Pure math, no plotting, test directly
- **Plotting functions** (`plot_*`): Computation + visualization, test with try-catch

## Testing Patterns

### Computational Tests (No try-catch)

```julia
@testset "Computational Tests" begin
    # NO try-catch - math errors should fail
    roots = calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)
    @test length(roots) == 2
    @test typeof(roots) == Vector{ComplexF64}
end
```

### Integration Tests (CI-safe plotting)

```julia
@testset "Integration Tests" begin
    try
        result = plot_parabola_roots_quadratic(1.0, 0.0, -4.0)
        @test typeof(result) == Vector{Float64}  # Real roots
    catch e
        @test hasmethod(plot_parabola_roots_quadratic, (Float64, Float64, Float64))
        @test typeof(calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)) == Vector{ComplexF64}
    end
end
```

## Test Organization

- **@testset structure**: Group tests by function (54 total tests across all functions)
- **No try-catch for math**: Computational tests should fail on mathematical errors
- **try-catch for plots**: Only use for CI-safe visualization testing
- **Edge cases**: Test positive/negative, zero, special values
- Use `@test_throws` for expected errors, `@test_broken` for known failures

## Plotting in Tests

- All plots auto-save: `"plots/" * Dates.format(now(),"yyyymmdd-HHMMSS") * "functionname.png"`
- Ensure `plots/` directory exists before running tests
- Use LaTeX titles: `title!(L"Plot\ of\ %$a₂ * x^2 + %$a₁ * x + %$a₀\\")`

## Running Tests

```bash
# Local
julia --project=. test/runtests.jl

# CI mode (headless plotting)
CI=true julia --project=. test/runtests.jl
```

## CI/CD Pipeline

- **Tests**: Run on all PRs (`.github/workflows/CI.yml`)
- **Docs Build**: Test on PR (no deploy)
- **Docs Deploy**: Auto-deploy to `https://study.fourm.info/math_foundations/` on merge to `main`
- **Cross-Repo**: Deploys to `FourMInfo/math_tech_study` subdirectory
- **Prerequisites**: `plots/` directory must exist for tests to pass
