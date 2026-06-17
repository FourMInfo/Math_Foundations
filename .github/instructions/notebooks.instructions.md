---
applyTo: 'notebooks/**'
---
# Notebook Conventions

## Setup Pattern

All notebooks should start with the standard setup cell:

```julia
using Math_Foundations
```

If you use Revise locally, load it explicitly in the notebook setup cell as needed.

## Notebook Guidelines

- Notebooks are for exploration and study, not tested in CI
- The `notebooks/` environment is **not** a workspace member. After cloning (or removing `notebooks/Manifest.toml`), run once in the `notebooks/` directory to set it up:
  ```julia-repl
  julia --project=./notebooks
  # then in Pkg mode (press ]):
  pkg> dev ..
  pkg> instantiate
  ```
  This creates `notebooks/Manifest.toml` (gitignored) that resolves `Math_Foundations` from local source. Do not commit `notebooks/Manifest.toml`.
- Use `println()` for output to make results clear when re-running cells
- Include explanatory markdown cells between code cells
- Use Unicode variable names consistent with the source code (e.g., `a₂`, `a₁`, `a₀`)
- Reference the documentation sections being studied

## Plotting in Notebooks

- Plots render inline in Jupyter notebooks
- No need for headless mode configuration
- Use the same plotting functions from the package (`plot_parabola_roots_quadratic`, `plot_hyperbola`, etc.)

## Math Display

Use `LaTeXStrings`/`Latexify` patterns from the package and docs for clean notebook rendering of mathematical expressions.

### Common patterns

```julia
using LaTeXStrings
L"x^2 + y^2 = r^2"
```

## Julia Kernel Gotchas

### Stale variable slot after a failed assignment

If a cell fails mid-execution with an assignment like `foo = some_expr_using_foo`, Julia may
register a declared-but-unassigned global slot for `foo` in `Main`. This slot **persists across
cell re-runs** and shadows any same-named binding from imported modules (e.g., `LinearAlgebra.I`).
Typical symptom: `UndefVarError: foo not defined` even though `foo` is clearly exported by the
package, sometimes accompanied by "Also exported by ..." in the hint.

**Fix: restart the Julia kernel.** Reloading the package (`using Math_Foundations` again) is not
enough — the stale slot in `Main` survives until the kernel is fully restarted. After restarting,
re-run the setup cell before re-running the failing cell.

### Building a matrix from row vectors

`[v1; v2; v3]` where all three are 1D vectors concatenates them into one long 1D vector, **not**
a matrix. To stack 1D vectors as matrix rows, transpose each one first:

```julia
matrix = [v1'; v2'; v3']   # ✅ 3×n matrix
matrix = [v1; v2; v3]      # ❌ 3n-element vector
```

This comes up whenever building a matrix row-by-row after row operations (e.g. Gauss-Jordan elimination).

### Stale cell state from mutated variables across cells

Cells share the same kernel state. If a variable is mutated across multiple cells (e.g. a matrix
being updated step-by-step), re-running a later cell without re-running the earlier ones first
will use the already-mutated value — producing wrong results silently.

**Fix: re-run all dependent cells from the top**, or at minimum from the cell that initialises
the variable. When in doubt, restart the kernel and re-run all cells in order.

### `startup.jl` runs, but `atreplinit` callbacks do not

Julia always runs `~/.julia/config/startup.jl` at process startup — this applies to REPL, scripts,
and Jupyter kernels alike. However, `atreplinit do repl ... end` blocks only fire when Julia
initialises an interactive REPL object. IJulia never creates one; it sets up its own I/O event
loop instead. As a result, any `using` statements inside an `atreplinit` block in `startup.jl`
are silently skipped in the Jupyter kernel.

**Consequence:** every package needed in a notebook must be loaded explicitly in the setup cell,
even if `startup.jl` loads it for interactive REPL sessions.
