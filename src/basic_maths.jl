using Symbolics
using Plots; gr
using LaTeXStrings
using Dates

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

function plot_parabola(a::Number, n::Number)
    gr()
    @variables x
    f = a*x^n
    plot(f,legend=false)
    title!(L"Plot\ of %$a * x^%$n")
    savefig("plots/"* Dates.format(now(),"yyyymmdd-HHMMSS") * "parabola.png")
end