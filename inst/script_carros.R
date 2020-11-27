

library(tidyverse)
library(est031)


glimpse(mpg)


# 1 milha = 1760 metros



# carros <- mpg %>%
#   rename(
#     montadora = manufacturer,
#     modelo = model,
#     cilindrada = displ,
#     ano = year,
#     cilindros = cyl,
#     transmicao = trans,
#     tracao = drv,
#     urb = cty,
#     rod = hwy,
#     combustivel = fl,
#     categoria = class
#   ) %>%
#   mutate(
#     tracao = recode(tracao,
#       "f" = "frontal",
#       "r" = "traseira",
#       "4" = "4x4"
#     )
#   )

table(carros$tracao)


names(carros)
