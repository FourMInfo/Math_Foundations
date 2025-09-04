# Copilot Instructions for Math_Foundations

## Project Architecture

This is a **Julia scientific computing project** using DrWatson for reproducibility, focused on mathematical foundations with visualization capabilities. The codebase follows a **modular mathematical library pattern** with comprehensive testing and documentation.

### Core Components

- **`src/Math_Foundations.jl`**: Main module with smart environment detection for CI/interactive plotting
- **`src/basic_maths.jl`**: Mathematical functions (roots, polynomials, hyperbolas, financial calculations)
- **`test/`**: Comprehensive test suite with CI-compatible plotting tests (54 total tests)
- **`docs/`**: Documenter.jl setup with mathematical sections (Algebra, Geometry, etc.) and cross-repository deployment to math_tech_study

## Critical Development Patterns

### Module Structure
```julia
# Main module uses @reexport for clean interface
using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials
# Comprehensive exports for all functions
export nth_root
export plot_parabola_roots_amrvw, plot_parabola_roots_polynomial, plot_parabola_roots_quadratic
# ...
```
### Environment-Aware Module Loading
```julia
# The module automatically detects CI vs interactive environments
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Headless plotting
    gr(show=false)
end
```

## Math_Foundations CI Testing Approach

The superior CI testing strategy consists of three components:

### 1. Module-Level Headless Detection
Configure plotting environment in the main module (`Math_Foundations.jl`) at load time:
```julia
# Automatic CI detection and headless configuration
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    ENV["GKSwstype"] = "100"  # Force headless mode
    gr(show=false)           # Disable plot display
end
```

### 2. Manual GKS Configuration in Tests
Set `ENV["GKSwstype"] = "100"` in test files before loading the module:
```julia
# In runtests.jl - Configure headless mode before loading module
ENV["GKSwstype"] = "100"  # Force headless plotting for CI
using DrWatson, Test
@quickactivate "Math_Foundations"
using Math_Foundations
```

### 3. Separated Computational/Plotting Logic with Robust Testing
- **Pure computational functions** (`calculate_*`): Test mathematical logic directly, no try-catch
- **Plotting functions** (`plot_*`): Test with try-catch fallback for CI compatibility
- **Integration testing**: Verify both computation and visualization work together

### Test Setup (Uses @quickactivate)
```julia
# Tests use DrWatson @quickactivate pattern
using DrWatson, Test
@quickactivate "Math_Foundations"
# Load the Math_Foundations package
using Math_Foundations
```
## Plotting Functions Pattern
All plotting functions auto-save with timestamps to `plots/` directory:
```julia
savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "functionname.png"
```

## Julia Coding Standards
### Mathematical Functions
1. Use standard Julia mathematical conventions
2. Handle negative numbers appropriately (see `nth_root`)
3. Return complex numbers for even roots of negative numbers
4. Include comprehensive edge case testing
5. Always export new functions in main module
6. Use Unicode symbols (a₂, a₁, a₀) in function parameters

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
19. **CI-Compatible Testing Pattern**: Separate computational logic from plotting, test math directly without try-catch, only use try-catch for visualization:
```julia
# Test computational logic directly (NO try-catch - mathematical errors should fail)
@testset "Pure Computational Tests" begin
    roots = calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)
    @test length(roots) == 2
    @test typeof(roots) == Vector{ComplexF64}
    # Test mathematical correctness without plotting dependencies
end

# Test integration (plotting + computation) with CI-safe fallback
@testset "Integration Tests" begin
    try
        # Test the plotting function (includes computation + visualization)
        result = plot_parabola_roots_quadratic(1.0, 0.0, -4.0)
        @test typeof(result) == Vector{Float64}  # Real roots only for backward compatibility
        @test length(result) == 2
    catch e
        # Graceful fallback for CI - test function exists and computational core works
        @test hasmethod(plot_parabola_roots_quadratic, (Float64, Float64, Float64))
        # Verify computational core still works via the separate computational function
        computational_result = calculate_parabola_roots_quadratic(1.0, 0.0, -4.0)
        @test typeof(computational_result) == Vector{ComplexF64}
    end
end
```

### Code Organization
19. Follow the pattern of existing code in basic_maths.jl
20. Use consistent naming conventions for variables and functions
21. Ensure all code is well-documented and follows Julia's style guide

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
julia --project=. test/runtests.jl
```

### Running Tests in CI Mode
```bash
CI=true julia --project=. test/runtests.jl
```

### Building Documentation
```bash
julia --project=. docs/make.jl
```

### Julia Compilation Considerations
- **Be Patient with First Runs**: Julia often needs to precompile packages and rebuild project cache on first run. when running a Julia command in the CLI for the first time, it may take a while to precompile the packages and build the project cache, so you won't see the results of running the command for a while.
- **Typical First Run**: May take 15-30 seconds for precompilation before tests actually start
- **Example Expected Output**: `Precompiling DrWatson... 3 dependencies successfully precompiled in 17 seconds`
- **Subsequent Runs**: Much faster once cache is built
- **Don't Cancel Early**: Allow time for compilation phase to complete
- **IMPORTANT**: This applies to ALL Julia commands including CI testing with `CI=true julia --project=. test/runtests.jl`

### CI Considerations
- Plots directory must exist for plotting tests to pass
- Configure headless mode before plotting in tests
- 54 comprehensive tests covering all mathematical functions
- Test execution includes edge cases and error handling

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
- Use LaTeX for all mathematical notation
- Use LaTeX syntax for mathematical symbols not Unicode e.g. "^\circ" instead of "°"
- Use Markdown for explanations
- After creating or editing a markdown document always review and fix all linting issues, unless the document is a configuration file of some kind
- Follow the pattern of existing function documentation in src directory
- When a new mathematical concept is introduced, add an external link to [MathWorld](https://mathworld.wolfram.com/) for that specific concept.
  - Compare multiple potential URLs to choose the most appropriate one
  - Avoid replacing working links with inferior alternatives
  - Always use fetch_webpage function to check the link is valid and points to the correct concept.
- use underscore not askterisk for markdown emphasis  

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