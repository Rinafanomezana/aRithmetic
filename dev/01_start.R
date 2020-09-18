# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
golem::fill_desc(
  pkg_name = "aRithmetic",
  pkg_title = "aRithmetic",
  pkg_description =
    "An app that visualizes the four main operations of arithmetic.",
  author_first_name = "your_name",
  author_last_name = "your_family_name",
  author_email = "your_email@epflextenssionschool.ch",
  repo_url = NULL 
)

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license( name = "Golem User" )
usethis::use_readme_rmd( open = FALSE )
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge( "Experimental" )
usethis::use_news_md( open = FALSE )

## Use git ----
usethis::use_git()

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )
