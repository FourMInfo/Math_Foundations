module Math_Foundations

using Reexport
@reexport using Symbolics, Nemo, Plots, Latexify, LaTeXStrings, Dates, AMRVW, Polynomials, GeometryBasics

# Configure plotting for both interactive and headless environments
# Simplified initialization - avoid async issues in notebooks
let
    headless = haskey(ENV, "CI") || get(ENV, "GKSwstype", "") == "100"
    if headless
        ENV["GKSwstype"] = "100"
    end
    try
        headless ? gr(show=false) : gr()
    catch
        # Silently ignore GR initialization errors - backend will be configured on first plot
    end
end

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