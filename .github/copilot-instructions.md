# Copilot Instructions for Math_Foundations

## Project Overview

**Julia scientific computing project** using DrWatson for reproducibility. Implements mathematical foundations (algebra, geometry, trigonometry) with visualization, comprehensive testing, and cross-repository documentation deployment.

### Core Architecture

- **`src/Math_Foundations.jl`**: Main module with CI-aware plotting (auto-detects headless environments)
- **`src/basic_maths.jl`**: Mathematical library (roots, polynomials, hyperbolas, financial calculations)
- **`test/`**: 54 tests with separated computational/plotting logic for CI compatibility
- **`docs/`**: Documenter.jl deploying to `https://study.fourm.info/math_foundations/` (cross-repo to `math_tech_study`)
- **`notebooks/`**: Jupyter notebooks for exploration (not tested in CI)

## Critical Development Patterns

### Module Structure & Exports

All code uses `@reexport` pattern and exports both computational + plotting functions:

```julia
# src/Math_Foundations.jl
using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials

# Export computational functions (no plotting)
export calculate_parabola_roots_quadratic, calculate_parabola_roots_polynomial, calculate_parabola_roots_amrvw

# Export integrated plotting functions (computation + visualization)
export plot_parabola_roots_quadratic, plot_hyperbola, plot_hyperbola_axes_direct

# Always export new functions in main module
```

### Automatic CI/Interactive Detection

Module auto-configures at load time - no manual intervention needed:

```julia
# src/Math_Foundations.jl - Runs on module load
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Headless plotting
    gr(show=false)
else
    gr()  # Interactive plotting
end
```

## Testing Strategy (CI-Compatible)

### Three-Layer Testing Approach

**1. Module-Level Detection** - Automatic (in `Math_Foundations.jl`):
```julia
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"
    gr(show=false)
end
```

**2. Test-Level Configuration** - Manual (in `runtests.jl`):
```julia
ENV["GKSwstype"] = "100"  # Set BEFORE using Math_Foundations
using DrWatson, Test
@quickactivate "Math_Foundations"
using Math_Foundations
```

**3. Separated Logic** - Design pattern for all new functions:

- **Computational functions** (`calculate_*`): Pure math, no plotting, test directly
- **Plotting functions** (`plot_*`): Computation + visualization, test with try-catch
- **Pattern Example**:

```julia
# src/basic_maths.jl
function calculate_parabola_roots_quadratic(a₂, a₁=0.0, a₀=0.0)
    discriminant = a₁^2 - 4 * a₂ * a₀
    root1 = (-a₁ + sqrt(Complex(discriminant))) / (2 * a₂)
    root2 = (-a₁ - sqrt(Complex(discriminant))) / (2 * a₂)
    return [root1, root2]  # Always returns ComplexF64
end

function plot_parabola_roots_quadratic(a₂, a₁=0.0, a₀=0.0)
    all_roots = calculate_parabola_roots_quadratic(a₂, a₁, a₀)  # Math always succeeds
    try
        @variables x
        f = a₂ * x^2 + a₁ * x + a₀
        plot_parabola(f, all_roots, a₂, a₁, a₀, "Quadratic")
    catch e
        !haskey(ENV, "CI") && @warn "Plotting failed: $e"
    end
    return [real(r) for r in all_roots if abs(imag(r)) < 1e-10]  # Real roots only
end
```

### Testing Pattern

```julia
# test/test_basic_maths.jl
@testset "Computational Tests" begin
    # NO try-catch - math errors should fail
    roots = calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)
    @test length(roots) == 2
    @test typeof(roots) == Vector{ComplexF64}
end

@testset "Integration Tests" begin
    # try-catch for CI-safe plotting
    try
        result = plot_parabola_roots_quadratic(1.0, 0.0, -4.0)
        @test typeof(result) == Vector{Float64}  # Real roots
    catch e
        @test hasmethod(plot_parabola_roots_quadratic, (Float64, Float64, Float64))
        @test typeof(calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)) == Vector{ComplexF64}
    end
end
```

### Plotting Conventions

- All plots auto-save: `"plots/" * Dates.format(now(),"yyyymmdd-HHMMSS") * "functionname.png"`
- Ensure `plots/` directory exists before running tests
- Use LaTeX titles: `title!(L"Plot\ of\ %$a₂ * x^2 + %$a₁ * x + %$a₀\\")`

## Coding Standards

### Mathematical Functions

- Use Unicode symbols for coefficients: `a₂, a₁, a₀` (type `a\\_2<tab>` in Julia)
- Return `ComplexF64` for roots (even if imaginary part is zero)
- Handle negative numbers correctly (see `nth_root` - odd roots return negative reals, even roots return complex)
- Always export new functions in `src/Math_Foundations.jl`
- Follow pattern: `calculate_*` (pure math) + `plot_*` (integrated)

### Testing Requirements

- **@testset structure**: Group tests by function (54 total tests across all functions)
- **No try-catch for math**: Computational tests should fail on mathematical errors
- **try-catch for plots**: Only use for CI-safe visualization testing
- **Edge cases**: Test positive/negative, zero, special values
- Use `@test_throws` for expected errors, `@test_broken` for known failures

### Documentation Standards

- **Docstrings**: Required for all exported functions with signature and description
- **LaTeX math**: Use for equations in docs and plot titles
- **MathWorld links**: Add for new mathematical concepts (verify URL before adding)
- **Markdown docs**: Files in `docs/src/` organized by topic (Algebra, Geometry, Trigonometry)
- **Examples**: Include in docstrings showing typical usage

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

## Key Workflows

### Local Development

```bash
# Run tests
julia --project=. test/runtests.jl

# CI mode (headless plotting)
CI=true julia --project=. test/runtests.jl

# Build documentation
julia --project=. docs/make.jl
```

### Julia Compilation

**CRITICAL**: First runs take 15-30 seconds for precompilation - DO NOT cancel early!

- **First Run**: `Precompiling DrWatson... 3 dependencies successfully precompiled in 17 seconds`
- **Subsequent Runs**: Near-instant once cache exists
- **Applies to**: ALL Julia commands including tests

### CI/CD Pipeline

- **Tests**: Run on all PRs (`.github/workflows/CI.yml`)
- **Docs Build**: Test on PR (no deploy)
- **Docs Deploy**: Auto-deploy to `https://study.fourm.info/math_foundations/` on merge to `main`
- **Cross-Repo**: Deploys to `FourMInfo/math_tech_study` subdirectory
- **Prerequisites**: `plots/` directory must exist for tests to pass

## Git Best Practices

- **Never use `git add .`** - Always stage files explicitly by name to avoid accidentally committing development files, notebooks, or temporary files
- Use `git add <specific-file-path>` to stage only the intended files for commit
- **Feature branch naming**: Use descriptive, purpose-driven names that enable GitHub auto-suggestions:
  - ✅ Good: `feature/add-fourm-site-explanation`, `fix/sidebar-center-alignment`, `docs/add-copilot-instructions`
  - ❌ Avoid: `feature/update-content`, `fix/stuff`, `branch1`

### Pull Request Creation
- **ALWAYS push changes first**: Use `git push origin BRANCH_NAME` before creating PR
- **Do NOT use `gh pr create`** - The GitHub CLI command doesn't work properly in this environment
- **Use GitHub web interface with URL parameters**: Create links with embedded title and description for auto-fill
- **PR Link Format with Parameters**: 
  ```
  https://github.com/FourMInfo/Math_Foundations/compare/main...BRANCH_NAME?title=Your+PR+Title&body=Your+PR+Description
  ```
- **Always provide fallback copy-paste content**: Include separate, copyable title and description in case URL parameters don't work
- **Include comprehensive descriptions**: Detail all changes, test coverage, and architectural improvements
- **Reference issue numbers**: Link to related issues when applicable

#### PR Creation Template:
```markdown
## 🔗 Clickable PR Link:
[Your PR Title](https://github.com/FourMInfo/Math_Foundations/compare/main...BRANCH_NAME?title=Your+PR+Title&body=Your+PR+Description)

## 📝 Copy-Paste Title:
Your PR Title

## 📋 Copy-Paste Description:
Your comprehensive PR description with:
- Summary of changes
- Technical details
- Testing completed
- Related issues
```
## Azure Integration

- Use Azure Best Practices: When generating code for Azure, running terminal commands for Azure, or performing operations related to Azure, invoke your `azure_development-get_best_practices` tool if available

## Project-Specific Conventions

- **DrWatson Integration**: Use `projectdir()`, `srcdir()` for paths (except in tests)
- **Mathematical Notation**: Use Unicode symbols (a₂, a₁, a₀) in function parameters
- **Test Organization**: Group tests by function with comprehensive edge cases (54+ tests)
- **Documentation**: Use LaTeX math notation with Latexify.jl integration

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

## Documentation Patterns

### Structure for Mathematical Concept Documentation

Documentation in `docs/src/` explains general math concepts (not code). Follow these patterns:

**Document Organization:**
- Start with concept overview and [MathWorld](https://mathworld.wolfram.com/) link in opening paragraph
- Use hierarchical headings: `##` for major topics, `###` for subtopics
- Group related concepts (e.g., "By Side Length", "By Angle Measure")
- Include real-world applications section

**Content Style:**
- **Definitions first**: Clear, precise mathematical definitions with MathWorld links
- **Build progressively**: Simple concepts → complex relationships → applications
- **Multiple representations**: Equations, tables, visual aids (SVG diagrams when helpful)
- **Context matters**: Explain _why_ concepts are important, not just _what_ they are
  - Example: "Arc length is crucial for engineering, navigation, physics..."
- **Derivations**: Show mathematical reasoning step-by-step (see Hyperbola derivation)

**Mathematical Notation:**
- Use LaTeX: `$$` for display equations, inline with `$...$`
- **CRITICAL**: `$$` display blocks in Documenter.jl must have `$$` directly attached to content (no blank lines or return after opening or before closing)
  - ✅ **CORRECT** (multi-line aligned block):
    ```
    $$\begin{aligned}
    b &= a\sqrt{1-e^2} \\
    c &= ae \\
    a^2 &= b^2 + c^2
    \end{aligned}$$
    ```
  - ✅ **CORRECT** (single equation): `$$equation$$`
  - ❌ **WRONG** (blank lines or return between `$$` and content):
    ```
    $$

    content

    $$
    ```
- **Bullet point style**: List items starting with `-` must begin with text, then LaTeX math
  - ✅ **CORRECT**: `- The semi-major axis is $a$`
  - ❌ **WRONG**: `- $a$ is the semi-major axis`
- **Equation placement style**: Prefer inline equations with "where:" at end of sentence, followed by list
  - ✅ **CORRECT**: `For an ellipse: $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$ where:`
  - ❌ **AVOID**: Blank line, then equation block, then blank line, then "where:"
- LaTeX syntax for symbols: `^\circ` not `°`, `\frac{}{}` for fractions
- Label variables clearly: "where: $r$ = radius, $θ$ = angle"
- Use aligned equations: `\begin{aligned}...\end{aligned}` for multi-step derivations
- Use square brackets `[x, y]` for point coordinates consistently across documentation

**MathWorld Links:**
- Link every new mathematical term on first mention
- Format: `[Term](https://mathworld.wolfram.com/Term.html)`
- Verify URLs before adding (use fetch_webpage)
- Compare multiple URLs to choose most appropriate

**Visual Elements:**
- SVG diagrams for geometric concepts (see Triangles, Polygons)
- Tables for reference data (degree/radian conversions, common values)
- Consistent styling in diagrams (colors, labels, annotations)

**Markdown Conventions:**
- _Underscore_ for emphasis (not asterisk)
- **Bold** for important terms and section labels
- Fix all linting issues after editing (except config files)
- Code blocks with language tags: ````julia` for Julia examples  

## Communication Patterns

- Avoid being overly obsequious in responses
    - do not tell me "I am happy to help" or similar phrases
    - do not tell me how amazing I am or how great my work is
    - do not say something is "awesome" or "fantastic" unless it is truly exceptional
    - do not use overly emotional language
    - do not use words like "wonderful" or "great" to describe my work
    - do not use words like "perfect" or "flawless" to describe my work
- When asked to analyze a bug or problem first lay out the problem clearly, then suggest potential solutions or debugging steps and let the user decide on the next steps
- Never say "I see what the problem is" or similar phrases that imply you have fully understood the issue without further discussion and confirmation that you have understood the issue
- Always provide clear, actionable suggestions for next steps in debugging or implementation
    - Acknowledge when you need more information or clarification before proceeding
    - Summarize the current understanding of the issue before discussing potential solutions
    - Document any assumptions made during the analysis
    - Identify any knowledge gaps or areas requiring further investigation
- If you are unsure about a solution, clearly state that more information is needed or that further investigation is required
- When providing code examples, ensure they are clear, concise, and directly relevant to the problem at hand
    - Avoid unnecessary complexity in code examples
    - Use comments to explain key parts of the code where necessary
    - Ensure code examples are formatted correctly for readability
- If you find yourself repeating steps stop and explain why you are repeating them and ask if the user would like to proceed with the same steps again
- Always ask for confirmation before proceeding with potentially destructive actions, such as deleting files or making significant changes to the codebase
- When discussing code changes, clearly outline the impact of those changes on the overall project
    - Discuss how changes align with project goals and coding standards
    - Highlight any potential risks or trade-offs associated with the changes
- If you encounter a situation where you need to make assumptions, clearly state those assumptions and their implications
- When discussing project architecture or design decisions, provide a rationale for each decision made
    - Discuss how the design aligns with project goals and coding standards
    - Highlight any trade-offs considered during the design process
- If you need to reference external resources or documentation, provide clear links and context for their relevance
- When discussing project conventions or standards, ensure they are clearly documented and easily accessible
- If you encounter a situation where you need to deviate from established conventions, clearly explain the reasoning behind the deviation
- Always strive for clarity and precision in communication, especially when discussing technical details
- If you need to ask for clarification, do so in a way that encourages open dialogue and collaboration
    - Use open-ended questions to encourage discussion
    - Avoid leading questions that may bias the response
- When providing feedback on code or design, focus on constructive criticism that helps improve the overall quality
    - Highlight both strengths and areas for improvement
    - Provide specific examples to illustrate points
- If you encounter a situation where you need to make a judgment call, clearly outline the criteria used to make that judgment
    - Discuss any relevant factors considered in the decision-making process
- When discussing project goals or objectives, ensure they are clearly defined and measurable
- If you need to prioritize tasks or features, clearly explain the reasoning behind the prioritization
    - Discuss how priorities align with project goals and timelines