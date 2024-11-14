using Symbolics
using Plots; gr
using LaTeXStrings
using Dates
# using AMRVW
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
    plot_parabola_roots_1(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> [ComplexF64, ComplexF64]
AMRVW version of plotting parabola with roots
"""
function plot_parabola_roots_1(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0)
    gr()
    @variables x
    f = a₂*x^2 + a₁*x + a₀
    r3c = AMRVW.roots([a₀,a₁,a₂])
    r3 = round.(Float64.(r3c),digits=12)
    plot(f,legend=false,xlims=[-4,4],ylims=[-4,4],framestyle = :origin)
    title!(L"Plot\ of\ %$a₂ * x^2 + %$a₁ * x + %$a₀\\")
    scatter!(r3c,series_annotations = text.(r3, 8, :bottom))
    savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "parabolaAMRVW.png")
    r3c
end
"""
    plot_parabola_roots_2(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0) -> [ComplexF64, ComplexF64]
Polynomial version of plotting parabola with roots
"""
function plot_parabola_roots_2(a₂::Float64, a₁::Float64=0.0, a₀::Float64=0.0)
    gr()
    @variables x
    f = a₂*x^2 + a₁*x + a₀
    r3 = round.(roots(Polynomial([a₀,a₁,a₂], :x)), digits=12)
    plot(f,legend=false,xlims=[-4,4],ylims=[-4,4],framestyle = :origin)
    title!(L"Plot\ of\ %$a₂ * x^2 + %$a₁ * x + %$a₀\\")
    scatter!(r3,series_annotations = text.(r3, 8, :bottom))
    savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "parabolaPoly.png")
    r3
end