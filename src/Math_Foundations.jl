module Math_Foundations

using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials

# Configure plotting for both interactive and headless environments
if haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    # CI or headless environment - use headless mode
    ENV["GKSwstype"] = "100"
    gr(show=false)
else
    # Interactive environment - normal plotting
    gr()
end

# Exports...
export nth_root
export plot_parabola_roots_amrvw, plot_parabola_roots_polynomial, plot_parabola_roots_quadratic
export plot_hyperbola, plot_hyperbola_axes, plot_hyperbola_axes_varx, plot_hyperbola_axes_direct
export expa2x
export accrued, accrued_apr
export triangle_area_perim


# Re-export the @variables macro
eval(:(export @variables))

include("basic_maths.jl")

end # module