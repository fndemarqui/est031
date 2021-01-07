

library(tidyverse)
library(est031)


glimpse(carros)

# 1 milha = 1.609343 km


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
ggplot(data = carros, aes(x = tracao)) +
  geom_bar()


ggplot(data = carros, aes(y = tracao)) +
  geom_bar()




tabela <- carros %>%
  group_by(tracao) %>%
  summarise(
    f = n(),
  ) %>%
  mutate(
    F = cumsum(f),
    p = f/sum(f),
    P = cumsum(p)
  )

tabela


ggplot(data = tabela, aes(x = "", y = f, fill = tracao)) +
  geom_bar(stat = "identity", width=1) +
  coord_polar("y", start = 0) +
  xlab("") +
  ylab("")


ggplot(data = tabela, aes(x = f, y = "", fill = tracao)) +
  geom_bar(stat = "identity", width=1) +
  coord_polar("x", start = 0) +
  xlab("") +
  ylab("")


tabela <- carros %>%
  group_by(categoria, tracao) %>%
  summarise(
     f = n(),
     p = f/sum(f)
  )
tabela



ggplot(carros, aes(x = urb)) +
  geom_histogram()

ggplot(carros) +
  geom_histogram(aes(x = urb), bins = 10, fill = "red", alpha = 0.2) +
  geom_histogram(aes(x = rod), bins = 10, fill = "blue", alpha = 0.2)



ggplot(carros, aes(x = rod)) +
  geom_histogram(bins = 10, alpha = 0.2)


ggplot(carros, aes(x = rod, group = tracao)) +
  geom_histogram(aes(fill = tracao), bins = 10, alpha = 0.4)


ggplot(carros, aes(x = rod)) +
  geom_histogram(bins = 10) +
  facet_grid(rows=vars(tracao))


ggplot(carros, aes(x = rod)) +
  geom_histogram(bins = 10) +
  facet_grid(cols=vars(tracao))
