using Documenter, SimGBS


makedocs(
 modules = [SimGBS], 
 sitename = "SimGBS.jl",
 # pages = ["Home" => "index.md"]
)


deploydocs(
 deploy_config = "GitHubActions",
 repo = "github.com/kanji709/SimGBS.jl.git"
)
