module Math_Foundations

# Export functions that should be available when using the module
export plot_hyperbola, plot_hyperbola_axes, plot_hyperbola_axes_varx
export symbolic_solve
# Add other exports from basic_maths.jl here

# Include the implementation files
include("basic_maths.jl")

end # module