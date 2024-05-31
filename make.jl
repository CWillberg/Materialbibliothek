using Documenter, DocumenterCitations, DocumenterMermaid

bib = CitationBibliography(joinpath(@__DIR__, "literatur", "literatur.bib"))

makedocs(
    plugins=[bib],
    authors="Christian Willberg <christian.willberg@h2.de>",
    doctest=true,
    checkdocs=:none, # :all, :exports, :none
    sitename="Materialbibliothek",
    repo=Documenter.Remotes.GitHub("CWillberg", "Materialbibliothek"), format=Documenter.HTML(
        canonical="https://github.com/CWillberg/Materialbibliothek.git",
        assets=["assets/favicon.ico"],
        edit_link="main"
    ),
    pages=Any[
        "Materialbibliothek"=>"iwndex.md",
        "Metalle"=>Any[
            "Eisen"=>"metalle/eisen.md"
        ],
        "Kunststoffe"=>Any["Eisen"=>"kunststoffe/PMMA.md"
        ],
        "Naturwerkstoffe"=>Any["Holz"=>"naturwerkstoffe/holz.md"
        ]
    ]
)
deploydocs(
    repo="https://github.com/CWillberg/Materialbibliothek.git",
)
