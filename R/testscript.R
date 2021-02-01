ddt <- read.csv("DDT.csv")
dim(ddt)
head(ddt)
ddt[1,3]
# Once GIT installed, Tools->Shell,
# git config --global user.name "Jeffrey Stevenson"
# git config --global user.email "jeffreystevenson99@ou.edu"
# Make github account
# Make package
# library(usethis)
# ?use_github
# Click "github personal access token (PAT)"
# Generate new token, check "repo", copy token
# edit_r_environ()
# insert token
# Session -> restart R
# library(usethis)
# on right, Git -> commit all files
# use_github(protocol = "https", auth_token = Sys.getenv("GITHUB_PAT"))
# select "Yes"
