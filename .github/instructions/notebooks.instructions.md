---
applyTo: 'notebooks/**'
---
# Notebook Conventions

## Notebook Environment

Notebooks use a dedicated environment at `notebooks/` that is a superset of the root project.
It includes the full Makie stack (GLMakie, WGLMakie, Bonito, Meshes, ImageShow) on top of all
root dependencies. It is separate from the root, `test/`, and `docs/` environments.

### Setup Pattern

All notebooks should start with:

```julia
# Set up Revise.jl for automatic code reloading
# This only needs to be run once at the beginning of your notebook session
using Revise

# Load the package
using Math_Foundations
```

`Revise` and `DrWatson` are loaded automatically via `~/.julia/config/startup.jl` on the
developer's machine when running Julia interactively, but notebooks must not depend on this
— it is machine-specific and will not work for anyone who clones the repo without that file.
The Jupyter kernel runs in a separate process that does not share the REPL's loaded modules,
so `using Revise` must be called explicitly in the setup cell even though startup.jl loaded
it in the REPL.

### Running the Notebooks Environment (REPL)

To start Julia with the notebooks environment active from the repo root:

```bash
julia --project=./notebooks
```

`startup.jl` detects the explicit `--project` flag and skips its `quickactivate(".")` call, so
the notebooks environment is preserved correctly. Alternatively, `cd` into `notebooks/` first
and run `julia` normally — `quickactivate(".")` will find `notebooks/Project.toml` directly.

### Adding Packages to the Notebooks Environment

```bash
julia --project=./notebooks -e 'using Pkg; Pkg.add("PackageName")'
```

Or interactively in the notebooks REPL:

```julia
] add PackageName
```

## Notebook Guidelines

- Notebooks are for exploration and study, not tested in CI
- Use `println()` for output to make results clear when re-running cells
- Include explanatory markdown cells between code cells
- Use Unicode variable names consistent with the source code (e.g., `a₂`, `a₁`, `a₀`)
- Reference the documentation sections being studied

## Plotting in Notebooks

- Plots render inline in Jupyter notebooks
- No need for headless mode configuration
- Use the same plotting functions from the package (`plot_parabola_roots_quadratic`, `plot_hyperbola`, etc.)

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
(such as `using Revise`) are silently skipped in the Jupyter kernel.

**Consequence:** every package needed in a notebook must be loaded explicitly in the setup cell,
even if `startup.jl` loads it for interactive REPL sessions.
