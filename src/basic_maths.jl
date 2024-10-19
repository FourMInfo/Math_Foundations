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
