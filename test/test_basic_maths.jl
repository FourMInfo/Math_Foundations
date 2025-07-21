using Test
using Math_Foundations

# Ensure plots directory exists for plotting tests
if !isdir("plots")
    mkdir("plots")
end

@testset "basic_maths.jl Tests" begin
    
    @testset "nth_root function" begin
        # Test positive numbers
        @test nth_root(8, 3) ≈ 2.0
        @test nth_root(16, 4) ≈ 2.0
        @test nth_root(25, 2) ≈ 5.0
        @test nth_root(1, 5) ≈ 1.0
        
        # Test negative numbers with odd roots (should return negative real)
        @test nth_root(-8, 3) ≈ -2.0
        @test nth_root(-27, 3) ≈ -3.0
        @test nth_root(-1, 5) ≈ -1.0
        
        # Test negative numbers with even roots (should return complex)
        result = nth_root(-4, 2)
        @test isa(result, Complex)
        @test abs(result) ≈ 2.0
        
        result = nth_root(-16, 4)
        @test isa(result, Complex)
        @test abs(result) ≈ 2.0
        
        # Test zero
        @test nth_root(0, 3) ≈ 0.0
        @test nth_root(0, 2) ≈ 0.0
    end
    
    @testset "expa2x function" begin
        # Test basic exponential operations
        @test expa2x(2, 3) ≈ 8.0
        @test expa2x(10, 2) ≈ 100.0
        @test expa2x(5, 0) ≈ 1.0
        @test expa2x(3, 1) ≈ 3.0
        
        # Test fractional exponents
        @test expa2x(4, 0.5) ≈ 2.0
        @test expa2x(9, 0.5) ≈ 3.0
        
        # Test that negative base returns nothing (due to println)
        @test expa2x(-2, 3) === nothing
        
        # Test zero base (edge case)
        result = expa2x(0, 3)
        @test result === nothing || result ≈ 0.0  # Could be either depending on implementation
    end
    
    @testset "Financial functions" begin
        @testset "accrued function" begin
            # Test simple compound interest
            # 1000 at 5% for 1 year should be 1050
            @test accrued(5, 1, 1000) ≈ 1050.0
            
            # 1000 at 10% for 2 years should be 1210
            @test accrued(10, 2, 1000) ≈ 1210.0
            
            # Test with zero interest
            @test accrued(0, 5, 1000) ≈ 1000.0
            
            # Test with zero principal
            @test accrued(5, 1, 0) ≈ 0.0
            
            # Test with zero period
            @test accrued(5, 0, 1000) ≈ 1000.0
        end
        
        @testset "accrued_apr function" begin
            # Test APR calculation
            # Results should be slightly higher than simple accrued due to daily compounding
            simple_result = accrued(5, 1, 1000)
            apr_result = accrued_apr(5, 1, 1000)
            @test apr_result > simple_result
            
            # Test with different parameters
            @test accrued_apr(10, 2, 1000) > accrued(10, 2, 1000)
            
            # Test with zero interest
            @test accrued_apr(0, 1, 1000) ≈ 1000.0
            
            # Test with zero principal
            @test accrued_apr(5, 1, 0) ≈ 0.0
        end
    end
    
    @testset "triangle_area_perim function" begin
        # Test equilateral triangle (3, 3, 3)
        ρ, area, perimeter = triangle_area_perim(3.0, 3.0, 3.0)
        @test perimeter ≈ 9.0
        @test area ≈ 3.897 atol=0.01  # √3/4 * 9 ≈ 3.897
        
        # Test right triangle (3, 4, 5)
        ρ, area, perimeter = triangle_area_perim(3.0, 4.0, 5.0)
        @test perimeter ≈ 12.0
        @test area ≈ 6.0  # Should be 6 for 3-4-5 triangle
        
        # Test isosceles triangle (5, 5, 6)
        ρ, area, perimeter = triangle_area_perim(5.0, 5.0, 6.0)
        @test perimeter ≈ 16.0
        @test area ≈ 12.0  # Can be calculated using Heron's formula
        
        # Test that all return values are positive for valid triangles
        ρ, area, perimeter = triangle_area_perim(7.0, 8.0, 9.0)
        @test ρ > 0
        @test area > 0  
        @test perimeter > 0
        
        # Test triangle inequality - this should work for valid triangles
        # but we'll test edge cases
        ρ, area, perimeter = triangle_area_perim(1.0, 1.0, 1.99)
        @test !isnan(area)  # Should be valid
        @test !isnan(ρ)
        
        # Test unit triangle
        ρ, area, perimeter = triangle_area_perim(1.0, 1.0, 1.0)
        @test perimeter ≈ 3.0
        @test area > 0
    end
    
    @testset "Plotting functions (return value tests)" begin
        # Note: These functions create plots and save files, so we mainly test
        # that they don't error and return reasonable values
        
        @testset "plot_parabola_roots_quadratic" begin
            # Test that function runs without error and returns real roots
            # for a simple parabola x^2 - 4 (roots at ±2)
            roots = plot_parabola_roots_quadratic(1.0, 0.0, -4.0)
            @test length(roots) <= 2  # Should return at most 2 real roots
            if length(roots) == 2
                @test 2.0 in roots || -2.0 in roots  # Should contain the expected roots
            end
            
            # Test parabola with no real roots x^2 + 1
            roots = plot_parabola_roots_quadratic(1.0, 0.0, 1.0)
            @test length(roots) == 0  # No real roots
        end
        
        @testset "plot_parabola_roots_polynomial" begin
            # Test that function runs without error
            roots = plot_parabola_roots_polynomial(1.0, 0.0, -4.0)
            @test isa(roots, Vector)  # Should return a vector
        end
        
        @testset "plot_parabola_roots_amrvw" begin
            # Test that function runs without error
            roots = plot_parabola_roots_amrvw(1.0, 0.0, -4.0)
            @test isa(roots, Vector)  # Should return a vector
        end
    end
    
    # Note: Hyperbola plotting functions primarily create visualizations
    # so we'll test that they run without critical errors
    @testset "Hyperbola plotting functions (execution tests)" begin
        @testset "plot_hyperbola" begin
            @test_nowarn plot_hyperbola(1.0, 0.0, 0.0)
            @test_nowarn plot_hyperbola()  # Test default parameters
        end
        
        @testset "plot_hyperbola_axes_varx" begin
            @test_nowarn plot_hyperbola_axes_varx(1.0, 1.0)
            @test_nowarn plot_hyperbola_axes_varx(2.0, 3.0)
        end
        
        @testset "plot_hyperbola_axes_direct" begin
            @test_nowarn plot_hyperbola_axes_direct(1.0, 1.0)
            @test_nowarn plot_hyperbola_axes_direct(2.0, 3.0)
        end
    end
end
