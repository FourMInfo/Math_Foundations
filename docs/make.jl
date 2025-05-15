CI = get(ENV, "CI", nothing) == "true" || get(ENV, "GITHUB_TOKEN", nothing) !== nothing
using DrWatson
using Documenter
@quickactivate "Math_Foundations"
using Math_Foundations


@info "Building Documentation"
makedocs(;
    modules=[Math_Foundations],  # Specify your module here
    sitename = "Math_Foundations",
    # This argument is only so that the sequence of pages in the sidebar is configured
    # By default all markdown files in `docs/src` are expanded and included.
    pages = [
        "index.md",
    ],
    # Don't worry about what `CI` does in this line.
    format = Documenter.HTML(prettyurls = CI),
)

@info "Deploying Documentation"
if CI
    deploydocs(
        # `repo` MUST be set correctly. Once your GitHub name is set
        # the auto-generated documentation will be hosted at:
        # https://FourMInfo.github.io/Math_Foundations/dev/
        # (assuming you have enabled `gh-pages` deployment)
        repo = "github.com/FourMInfo/Math_Foundations.git",
        target = "build",
        push_preview = true,
        devbranch = "main",
    )
end

@info "Finished with Documentation"
