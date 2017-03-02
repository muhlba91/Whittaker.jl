using Documenter, Whittaker

makedocs(doctest = false)

deploydocs(deps = Deps.pip("pygments", "mkdocs", "mkdocs-material"),
           repo = "github.com/muhlba91/Whittaker.jl.git",
           branch = "gh-pages",
           julia = "0.5",
           osname = "linux")
