module Math_Foundations

using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials, GeometryBasics

# GR backend is set explicitly in plotting functions (e.g., plot_parabola calls gr())
# For CI headless mode: set ENV["GKSwstype"] = "100" in test/runtests.jl BEFORE loading this module

# Exports...
export nth_root
# Pure computational functions (no plotting dependencies)
export calculate_parabola_roots_amrvw, calculate_parabola_roots_polynomial, calculate_parabola_roots_quadratic
# Integrated plotting functions (computation + visualization)
export plot_parabola_roots_amrvw, plot_parabola_roots_polynomial, plot_parabola_roots_quadratic
export plot_hyperbola, plot_hyperbola_axes, plot_hyperbola_axes_varx, plot_hyperbola_axes_direct
export expa2x
export accrued, accrued_apr
export triangle_area_perim


# Re-export the @variables macro
eval(:(export @variables))

include("basic_maths.jl")

end # module