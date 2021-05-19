

#' Testes de estrada de carros
#'
#' @name carros
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Este conjunto de dados contém um subconjunto dos dados referente à economia de combustível que a Agência de Proteção do Meio Ambiente (APMA) dos EUA disponibiliza em http://fueleconomy.gov. O conjunto de dados contém apenas modelos que tiveram um novo lançamento a cada ano entre 1999 e 2008 - isso foi usado como um proxy para a popularidade do carro.
#'
#' @format Data frame com 234 linhas e 11 variáveis:
#' \describe{
#'   \item{montadora}{nome da montadora}
#'   \item{modelo}{nome do modelo}
#'   \item{cilindrada}{cilindrada do motor, em litros}
#'   \item{ano}{ano de fabricação}
#'   \item{cilindros}{número de cilindros}
#'   \item{transmicao}{tipo de transmição}
#'   \item{tracao}{tipo de tracao}
#'   \item{urb}{consumo urbano, em milhas por galão}
#'   \item{rod}{consumo rodoviário, em milhas por galão}
#'   \item{combustível}{tipo de combustível}
#'   \item{categoria}{categoria do carro}
#' }

#' @source R package ggplot2.
#' @references  Henderson and Velleman (1981), Building multiple regression models interactively. Biometrics, 37, 391–411.
#'
NULL



#' ENEM 2019 em Belo Horizonte
#'
#' @name enem2019bh
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Conjunto de dados com diversas variáveis relativas à prova do ENEM aplicada em 2019 na cidade de Belo Horizonte.
#'
#' @format Tibble com 87365 linhas e 14 variáveis:
#' \describe{
#'   \item{idade}{em anos}
#'   \item{sexo}{F - feminino, M - masculino}
#'   \item{est_civil}{estado civil: NI (não informado), solteiro, divorciado, casado ou viúvo}
#'   \item{raca}{branco, pardo, negro, amarelo, indígina ou ND (não determinado)}
#'   \item{escola}{escola de origem: não respondeu, pública, privada ou exterior}
#'   \item{lingua_estr}{lingua da prova de lingua estrangeira: 0 - inglês, 1 espanhol}
#'   \item{nota_CN}{nota obtida na prova de ciências naturais}
#'   \item{nota_CH}{nota obtida na prova de ciências humanas}
#'   \item{nota_LC}{nota obtida na prova de linguas e códigos}
#'   \item{nota_MT}{nota obtida na prova de matemática}
#'   \item{nota_RD}{nota obtida na prova de redação}
#'   \item{ESC_pai}{pai possui ensino superior completo? não sabe, sim, não}
#'   \item{ESC_mae}{mae possui ensino superior completo? não sabe, sim, não}
#'   \item{renda_fam}{renda familiar mensal:A -  0 a 1.5K$, B - 1.5K a 3K, C - 3K a 6K, D - 6K a 12K, E - acima de 12K }
#' }

#' @source Instituto Nacional de Estudos e Pesquisas Educacionais Anísio Teixeira (https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados).
#'
NULL


#' Resistência à compressão.
#'
#' @name resistencia
#' @docType data
#' @author Fábio N. Demarqui \email{fndemarqui@est.ufmg.br}
#' @keywords datasets
#' @description Exemplo 6.4 do livro \insertCite{2015Montgomery}{est031}. Dados referentes à resistência à compressão (em psi) de 80 corpos de prova de liga de alumínio-lítio.
#'
#' @format Data.frame com 80 linhas e uma variável:
#' \describe{
#'   \item{resistência}{resistência à compressão (em psi) de 80 corpos de prova de liga de alumínio-lítio.}
#' }
#' @references
#'
#' \insertRef{2015Montgomery}{est031}
#'
NULL

