using Test

# Set headless mode for CI before loading module
ENV["GKSwstype"] = "100"

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
