module Math_Foundations

using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials

# Set GR as the default plotting backend
gr()

# Exports...
export plot_parabola_roots_amrvw, plot_parabola_roots_polynomial, plot_parabola_roots_quadratic
export plot_hyperbola, plot_hyperbola_axes, plot_hyperbola_axes_varx, plot_hyperbola_axes_direct
export expa2x
export accrued, accrued_apr


# Re-export the @variables macro
eval(:(export @variables))

include("basic_maths.jl")

end # module