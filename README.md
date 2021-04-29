
<!-- README.md is generated from README.Rmd. Please edit that file -->

# est031

<!-- badges: start -->
<!-- badges: end -->

Conjunto de dados e funções utilizados na disciplina Estatística e
Probabilidades.

## Installation

Você pode instalar a versão de desenvolvimento do pacote est031 a partir
do [GitHub](https://github.com/) da seguinte forma:

``` r
# install.packages("devtools")
devtools::install_github("fndemarqui/est031")
```

## Exemplo

``` r
# anexando os pacotes:
library(est031)
library(tidyverse)

#carregando/espiando os dados:
data(enem2019bh)    
glimpse(enem2019bh)
#> Rows: 87,365
#> Columns: 14
#> $ idade       <dbl> 24, 17, 19, 19, 18, 24, 20, 30, 17, 19, 27, 32, 21, 20, 20…
#> $ sexo        <chr> "F", "F", "F", "M", "F", "F", "F", "F", "F", "F", "M", "M"…
#> $ est_civil   <chr> "NI", "solteiro", "divorciado", "solteiro", "solteiro", "s…
#> $ raca        <chr> "pardo", "branco", "branco", "branco", "pardo", "amarelo",…
#> $ escola      <chr> "não espondeu", "pública", "não espondeu", "não espondeu",…
#> $ lingua_estr <int> 1, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1…
#> $ nota_CN     <dbl> 500.1, 536.1, 616.8, 481.8, 457.7, NA, 410.0, 504.1, 561.6…
#> $ nota_CH     <dbl> 548.5, 545.5, 636.8, 585.8, 491.6, NA, 505.4, 561.9, 620.2…
#> $ nota_LC     <dbl> 561.3, 561.9, 612.6, 572.7, 549.4, NA, 464.9, 546.7, 632.8…
#> $ nota_MT     <dbl> 476.8, 629.5, 735.7, 556.2, 413.8, NA, 445.7, 601.7, 635.1…
#> $ nota_RD     <int> 620, 800, 840, 600, 620, NA, 0, 480, 880, NA, 440, 700, NA…
#> $ ESC_pai     <fct> não, sim, sim, não, não, não, não, não, não, não, não, não…
#> $ ESC_mae     <fct> não, sim, sim, não, não, não, não, não, não, não, não, não…
#> $ renda_fam   <chr> "C", "J", "C", "D", "E", "M", "C", "C", "E", "B", "C", "C"…
```
