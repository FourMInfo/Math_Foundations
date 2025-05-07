using Symbolics
using Nemo
using Plots; gr
using Latexify
using LaTeXStrings
using Dates
using AMRVW
using Polynomials

"""
    nth_root(x,n) → c
Calculate nth root of x handling negative x properly
"""
function nth_root(x, n)
    if x < 0
        if n % 2 == 1
            -abs(x)^(1/n)
        else
            Complex(x)^(1/n)
        end
    else
        x^(1/n)
    end
end

"""
    plot_parabola_roots_amrvw(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> [ComplexF64, ComplexF64]
AMRVW version of plotting parabola with roots
"""
function plot_parabola_roots_amrvw(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0)
    @variables x
    f = a₂*x^2 + a₁*x + a₀
    r3c = AMRVW.roots([a₀,a₁,a₂])

    # Plot the parabola
    plot_parabola(f, r3c, a₂, a₁, a₀, "AMRVW")
end
"""
    plot_parabola_roots_polynomial(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> [ComplexF64, ComplexF64]
Polynomial version of plotting parabola with roots
"""
function plot_parabola_roots_polynomial(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0)
    p = Polynomials.Polynomial([a₀, a₁, a₂])  # Create polynomial instance
    r3 = Polynomials.roots(p)

    plot_parabola(p, r3, a₂, a₁, a₀, "Poly")

end

"""
    plot_parabola_roots_quadratic(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> [ComplexF64, ComplexF64]
Quadratic formula version of plotting parabola with roots
"""
function plot_parabola_roots_quadratic(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0)
    # Calculate roots using the quadratic formula
    discriminant = a₁^2 - 4 * a₂ * a₀
    root1 = (-a₁ + sqrt(Complex(discriminant))) / (2 * a₂)
    root2 = (-a₁ - sqrt(Complex(discriminant))) / (2 * a₂)
    roots = [root1, root2]

    # Define the parabola function
    @variables x
    f = a₂ * x^2 + a₁ * x + a₀

    # Plot the parabola
    plot_parabola(f, roots, a₂, a₁, a₀, "Quadratic")
end
"""
    plot_parabola(p::Polynomial, r3::Union{Vector{Float64},Vector{ComplexF64}}, a₂::Float64, a₁::Float64, a₀::Float64, str::String)
Plot the parabola using the given polynomial and its roots
"""
function plot_parabola(p, r3::Union{Vector{Float64},Vector{ComplexF64}}, a₂::Float64, a₁::Float64, a₀::Float64, str::String)
    gr()

    # Filter to get only real roots for plotting
    real_roots = [real(r) for r in r3 if abs(imag(r)) < 1e-10]
    
    # Sort the roots
    real_roots = sort(real_roots)

    # Plot the parabola
    plt = plot(p, legend=false, xlims=[-4, 4], ylims=[-4, 4], framestyle=:origin)
    title!(L"Plot\ of\ %$a₂ * x^2 + %$a₁ * x + %$a₀\\")

    if !isempty(real_roots)
        # Plot the roots at y=0 (where the parabola crosses the x-axis)
        # We need to ensure we're plotting points exactly on the curve
        scatter!(real_roots, zeros(length(real_roots)), markersize=6, color=:red)
        # Add text annotations for the root values
        annotate!([(r, -0.2, text(round(r, digits=4), 8, :top)) for r in real_roots])
    end

    savefig("plots/" * Dates.format(now(), "yyyymmdd-HHMMSS") * "parabola" * str * ".png")
    # Return the roots
    real_roots
end
"""
    plot_hyperbola(n::Integer)
Plot hyperbola with parameter n
"""

"""
    p
    plot_hyperbola(a::Float64=1.0, h::Float64=0.0, k::Float64=0.0)
Plot hyperbola with equation y = a/(x-h) + b, where a,h and k are scaling parameters
"""
function plot_hyperbola(a::Float64=1.0, h::Float64=0.0, k::Float64=0.0)
    # Define ranges for x, avoiding x - h = 0 where function is undefined
    x_left = range(-10, h - 0.01, length=100)
    x_right = range(h + 0.01, 10, length=100)

    # Calculate y values using y = a/x + b
    y_left = [(a / (x - h))  + k for x in x_left]
    y_right = [(a / (x - h )) + k for x in x_right]

    # Create the plot
    plt = plot(
        xlims=(-10, 10),
        ylims=(-10, 10),
        aspect_ratio=:equal,
        framestyle=:origin,
        legend=false
    )

    # Plot each branch
    plot!(plt, x_left, y_left, color=:blue, linewidth=2)
    plot!(plt, x_right, y_right, color=:blue, linewidth=2)

    title!(L"Plot\ of\ hyperbola\ y = \frac{%$a}{x-%$h} + %$k")
    savefig("plots/" * Dates.format(now(), "yyyymmdd-HHMMSS") * "hyperbola" * string(a) * "_" * string(h) * "_" * string(k) * ".png")

    return plt
end

"""
    plot_hyperbola_axes(a::Float64, b::Float64)
Plot hyperbola of the form (x²/a²) - (y²/b²) = 1
a and b are the semi-major and semi-minor axes
"""
function plot_hyperbola_axes(a::Float64, b::Float64)
    @variables x
    f = b * sqrt(1 + (x^2)/(a^2))
    plot(f,legend=false, xlims=[-6,6],ylims=[-6,6],framestyle = :origin)
    plot!(-f, label=false)
    title!(L"Plot\ of\ hyperbola\ \frac{x^2}{%$a^2} - \frac{y^2}{%$b^2} = 1")
    savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "hyperbola.png")
    return plt
end

"""
    expa2x(a::Real,x::Real)
exponential function where a > 0 and x is any Real
"""
expa2x(a::Real,x::Real) = a>0 ? a^x : println("a must be a positive real")
"""
    function accrued_apr(i::Real,p::Real,c::Int64) -> Float64
i is interest, p is period (1 = one year), c is capital
return accrued value using daily apr for interest
"""
function accrued_apr(i::Real,p::Real,c::Int64)
    # calculate daily apr interest rate for a year
    apr = expa2x(1+(i/100)/365,365)
    c * expa2x(apr,p)
end
"""
    function accrued(i::Real,p::Real,c::Int64) -> Float64
i is interest, p is period (1 = one year), c is capital
return accrued value
"""
function accrued(i::Real,p::Real,c::Int64)
    c * expa2x(1+(i/100),p)
end

"""
    triangle_area_perim(a::Float64, b::Float64, c::Float64) -> Float64

    Calculate  ρ, area and perimeter of a triangle using Heron's formula
"""
function triangle_area_perim(a::Float64, b::Float64, c::Float64)
    s = (a + b + c) / 2
    ρ = sqrt(((s - a) * (s - b) * (s - c))/s)
    area = ρ * s
    #   area = sqrt(s * (s - a) * (s - b) * (s - c))    
    #   area = 0.25 * sqrt((a + b + c) * (b + c - a) * (a + c- b) * (a + b- c))
    perimeter = a + b + c
    return ρ, area, perimeter
end
