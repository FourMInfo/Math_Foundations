---
applyTo: '**'
---
# Math_Foundations — Repository-Specific Instructions

This file is **this repo's own**: it holds everything specific to this repository and is never
overwritten by propagation from the hub. It can be as detailed as the repo needs. The shared
conventions every study repo follows are in the other files in `.github/instructions/`
(`ecosystem`, `source`, `testing`, `docs`, `notebooks`), which are copied unchanged from
`FourMInfo/math_tech_study/project_resources/instructions/` and must never be edited here. A
learning that holds for every study repo goes into those hub templates, not into this file.

## This Repository

| | |
|---|---|
| GitHub | `FourMInfo/Math_Foundations` |
| Deployed at | `https://fourm.info/math_foundations/` |
| `dirname` in `docs/make.jl` | `"math_foundations"` |
| Subject | Mathematical foundations: algebra, geometry, trigonometry |

## Package and Module

- **Main module**: `src/Math_Foundations.jl`
- **Source files**: listed under "Core Architecture" in `.github/copilot-instructions.md`
- **Reexported packages**: `Symbolics`, `Nemo`, `Plots`, `LaTeXStrings`, `Dates`, `AMRVW`,
  `Polynomials`, `GeometryBasics`
- The module also reexports the `@variables` macro (`eval(:(export @variables))`).
- **Headless plotting**: tests set `GKSwstype` before loading; the module does no GR
  configuration at load time. Plotting functions call `gr()` themselves (e.g. `plot_parabola`).

## Subject-Specific Conventions

### Function Categories

- **Roots**: `nth_root`; quadratic (parabola) roots by three methods — the quadratic formula,
  `Polynomials.jl`, and `AMRVW.jl` — each as a `calculate_parabola_roots_*` /
  `plot_parabola_roots_*` pair
- **Conics**: `plot_hyperbola`, `plot_hyperbola_axes_varx`, `plot_hyperbola_axes_direct`
- **Exponentials and finance**: `expa2x`, `accrued`, `accrued_apr`
- **Geometry**: `triangle_area_perim`

### Conventions

- Polynomial coefficients are named by degree: `a₂`, `a₁`, `a₀` (`a₁` and `a₀` default to `0.0`)
- Root-finding functions return real or complex roots
  (`Union{Vector{Float64}, Vector{ComplexF64}}`); plots show both cases
- `plot_parabola`'s polynomial argument is untyped: it is called with both a
  `Polynomials.Polynomial` and a Symbolics expression

## Tests

- **Test files**: `test_basic_maths.jl`, for `src/basic_maths.jl`
- Edge cases worth testing: negative discriminants (complex roots), zero leading coefficients,
  degenerate triangles, non-positive bases in `expa2x`

## Notebooks

Setup cell for this repo:

```julia
using Revise
using Math_Foundations
```

Notebook-only packages, loaded in the cells that use them rather than in the setup cell:
`Makie`, `GLMakie`, `WGLMakie`, `Bonito` and `Meshes` (3D and interactive geometry), and
`ImageShow`. They are in `notebooks/Project.toml` and are not reexported by the module.
