using DrWatson, Test
# @quickactivate "Math_Foundations"  # Comment out - causing issues in CI
# Instead, manually add the src directory to the load path
push!(LOAD_PATH, joinpath(@__DIR__, "..", "src"))

# Load the Math_Foundations package
using Math_Foundations

# Run test suite
println("Starting tests")
ti = time()

@testset "Math_Foundations tests" begin
    include("test_basic_maths.jl")
end

ti = time() - ti
println("\nTest took total time of:")
println(round(ti/60, digits = 3), " minutes")
