

# no terminal, depois de criar o repositório no github:
# git remote add origin https://github.com/fndemarqui/est031.git
# git add .
# git commit -m "meu primeiro comentario"
# git push -u origin master

# #----------------------------------
# # rodar apenas uma vez:
# usethis::use_agpl3_license()
# usethis::use_readme_rmd()
# usethis::use_pkgdown()
#----------------------------------

devtools::install()
devtools::document()
devtools::load_all()

devtools::build()
devtools::build_manual()

devtools::build_readme()
devtools::build_site()


usethis::use_git_ignore("inst/script_carros.R")
usethis::use_git_ignore("inst/script_enem2019.R")
usethis::use_git_ignore("inst/script_development.R")



# nutricao <- read.table("inst/dados.txt", header = TRUE)
# nutricao
# usethis::use_data(nutricao, overwrite = TRUE)
