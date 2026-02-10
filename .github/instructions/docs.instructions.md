---
applyTo: 'docs/**'
---
# Documentation Conventions

## Structure for Mathematical Concept Documentation

Documentation in `docs/src/` explains general math concepts (not code). Follow these patterns:

**Document Organization:**
- Start with concept overview and [MathWorld](https://mathworld.wolfram.com/) link in opening paragraph
- Use hierarchical headings: `##` for major topics, `###` for subtopics
- Group related concepts (e.g., "By Side Length", "By Angle Measure")
- Include real-world applications section

**Content Style:**
- **Definitions first**: Clear, precise mathematical definitions with MathWorld links
- **Define before use**: All terms must be defined before they are used elsewhere in the document. This principle drives the order and structure of sections—ensure logical progression where each concept builds only on previously defined terms.
- **Build progressively**: Simple concepts → complex relationships → applications
- **Multiple representations**: Equations, tables, visual aids (SVG diagrams when helpful)
- **Context matters**: Explain _why_ concepts are important, not just _what_ they are
  - Example: "Arc length is crucial for engineering, navigation, physics..."
- **Derivations**: Show mathematical reasoning step-by-step (see Hyperbola derivation)

## Mathematical Notation

- Use LaTeX: `$$` for display equations, inline with `$...$`
- **CRITICAL**: `$$` display blocks in Documenter.jl must have `$$` directly attached to content (no blank lines or return after opening or before closing)
  - ✅ **CORRECT** (multi-line aligned block):
    ```
    $$\begin{aligned}
    b &= a\sqrt{1-e^2} \\
    c &= ae \\
    a^2 &= b^2 + c^2
    \end{aligned}$$
    ```
  - ✅ **CORRECT** (single equation): `$$equation$$`
  - ❌ **WRONG** (blank lines or return between `$$` and content):
    ```
    $$

    content

    $$
    ```
- **Bullet point style**: List items starting with `-` must begin with **text**, then LaTeX math. LaTeX commands immediately after `-` render incorrectly (misaligned or broken formatting)
  - ✅ **CORRECT**: `- The semi-major axis is $a$`
  - ❌ **WRONG**: `- $a$ is the semi-major axis` (LaTeX immediately after dash)
- **Equation placement style**: Prefer inline equations with "where:" at end of sentence, followed by list
  - ✅ **CORRECT**: `For an ellipse: $\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1$ where:`
  - ❌ **AVOID**: Blank line, then equation block, then blank line, then "where:"
- LaTeX syntax for symbols: `^\circ` not `°`, `\frac{}{}` for fractions
- Label variables clearly: "where: $r$ = radius, $θ$ = angle"
- Use aligned equations: `\begin{aligned}...\end{aligned}` for multi-step derivations
- **Square brackets in LaTeX math**: Use `\lbrack` and `\rbrack` instead of `[` and `]` inside math expressions to avoid markdown link interpretation errors
  - ✅ **CORRECT**: `$\mathbf{v} = \lbrack v_1, v_2 \rbrack$`
  - ❌ **WRONG**: `$\mathbf{v} = [v_1, v_2]$` (markdown interprets `[v_1, v_2]` as a link)
- **Absolute value notation**: Use `\lvert` and `\rvert` instead of `|` to avoid markdown pipe interpretation
  - ✅ **CORRECT**: `$\lvert c \rvert > 1$`
  - ❌ **WRONG**: `$|c| > 1$` (pipe may be interpreted as table delimiter)

## MathWorld Links

- Link every new mathematical term on first mention
- Format: `[Term](https://mathworld.wolfram.com/Term.html)`
- Verify URLs before adding (use fetch_webpage)
- Compare multiple URLs to choose most appropriate

## Visual Elements

- SVG diagrams for geometric concepts (see Triangles, Polygons)
- Tables for reference data (degree/radian conversions, common values)
- Consistent styling in diagrams (colors, labels, annotations)

## Markdown Conventions

- _Underscore_ for emphasis (not asterisk)
- **Bold** for important terms and section labels
- Fix all linting issues after editing (except config files)
- Code blocks with language tags: ````julia` for Julia examples

## Documentation Structure

- **Topics**: Organized by Algebra, Geometry, Trigonometry in `docs/src/`
- **Cross-Repository Deployment**: Deploys to `FourMInfo/math_tech_study` repository
- **URL**: Available at `https://study.fourm.info/math_foundations/`
- **Docstrings**: Required for all exported functions with signature and description
- **Examples**: Include in docstrings showing typical usage
- **LaTeX math**: Use Latexify.jl integration for equations in docs and plot titles

## Building Documentation

```bash
julia --project=. docs/make.jl
```

**IMPORTANT**: Always run `julia --project=. docs/make.jl` after making changes to documentation files in `docs/src/`. This allows the user to preview changes in the browser immediately without running the build manually.
