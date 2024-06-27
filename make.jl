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
        "Übersicht"=>"index.md",
        "Gläser"=>Any["Obisdian"=>"glaeser/obsidian.md"
        ],
        "Kunststoffe"=>Any["PMMA"=>"kunststoffe/PMMA.md"
        ],
        "Metalle"=>Any[
            "Aluminium"=>"metalle/aluminium.md",
            "Aluminium Bronze"=>"metalle/aluminium_bronze.md",
            "Chrom"=>"metalle/chrom.md",
            "Eisen"=>"metalle/eisen.md",
            "Mangan"=>"metalle/mangan.md",
            "Paladium"=>"metalle/paladium.md",
            "Stahl"=>"metalle/stahl.md",
            "Wolfram"=>"metalle/wolfram.md"
        ],
        "Naturwerkstoffe"=>Any["Holz"=>"naturwerkstoffe/holz.md"
        ]
    ]
)
deploydocs(
    repo="https://github.com/CWillberg/Materialbibliothek.git",
)
