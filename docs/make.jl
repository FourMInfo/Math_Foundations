CI = get(ENV, "CI", nothing) == "true" || get(ENV, "GITHUB_TOKEN", nothing) !== nothing
using DrWatson, Documenter
# using Documenter
using Math_Foundations

@info "Building Documentation"
makedocs(;
    modules=[Math_Foundations],  # Specify your module here
    sitename = "Math_Foundations",
    # This argument is only so that the sequence of pages in the sidebar is configured
    # By default all markdown files in `docs/src` are expanded and included.
    pages = [
        "index.md",
        "Algebra" => [
            "Algebra/01 Elementary Calculations.md",
            "Algebra/02 Mathematical Functions.md", 
            "Algebra/03 Solving Equations.md",
            "Algebra/04 Finding Polynomial Roots and Zeros.md"
        ],
        "Geometry" => [
            "Geometry/01 Triangles.md",
            "Geometry/02 Hyperbola.md"
        ],
        "Linear Algebra" => [
            "Linear Algebra/01 Systems of Equations.md",
            "Linear Algebra/02 Systems of Linear Equations.md"
        ],
        "Trigonometry" => [
            "Trigonometry/01 Angles & Measurements.md",
            "Trigonometry/02 Trigonometric Functions.md",
            "Trigonometry/03 Trigonometric Identities.md"
        ]
    ],
    # Don't worry about what `CI` does in this line.
    format = Documenter.HTML(
        prettyurls = CI,
        edit_link = "main",
        assets = ["assets/custom.css"]
    )
)

@info "Deploying Documentation"
if CI
    # Override GITHUB_REPOSITORY to match target repo for cross-repository deployment
    ENV["GITHUB_REPOSITORY"] = "FourMInfo/math_tech_study"
    deploydocs(
        # `repo` MUST be set correctly. Once your GitHub name is set
        # the auto-generated documentation will be hosted at:
        # https://study.fourm.info/math_foundations/
        # (assuming you have enabled `gh-pages` deployment)
        repo = "github.com/FourMInfo/math_tech_study.git",
        target = "build",
        push_preview = true,
        devbranch = "main",
        dirname = "math_foundations",
    )
end

@info "Finished with Documentation"
