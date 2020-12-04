

# no terminal, depois de criar o repositório no github:
# git remote add origin https://github.com/fndemarqui/est031.git
# git add .
# git commit -m "meu primeiro comentario"
# git push -u origin master

devtools::install()
devtools::document()
devtools::load_all()

usethis::use_git_ignore("inst/script_carros.R")
usethis::use_git_ignore("inst/script_enem2019.R")
usethis::use_git_ignore("inst/script_development.R")


