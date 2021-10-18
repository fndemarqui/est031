

#' Coefficient of Variation
#' @aliases cv
#' @export
#' @description This function computes the coefficient of variation of the values in x. If na.rm is TRUE then missing values are removed before computation proceeds.
#' @param x a numeric vector or an R object but not a factor coercible to numeric by as.double(x).
#' @param ... further arguments passed to or from other methods.
#' @return the coefficient of variation

cv <- function(x, perc = TRUE, ...){
  if(isTRUE(perc)){
    100*sd(x, ...)/mean(x, ...)
  }else{
    sd(x, ...)/mean(x, ...)
  }
}



#' Cumulative distribution function
#' @aliases cdf
#' @export
#' @description This function plots the cumulative distribution function (c.d.f) of a random variable
#' @param x a numeric vector with the observed values of the random variable
#' @param Fx if NULL (default), then Fx is computed using one of the implemented distributions (see description of the dist argument below); otherwise the user must pass the values of Fx
#' @param type type of random variable; either discrete (default) or continuous; this argument is only necessary when Fx is passed by the user
#' @param dist optional; name of the distribution (currently the binomial, poisson and geometric distributions for discrete random variables, or uniform, exponential and normal distribution for continuous random variables)
#' @param ... further arguments passed to or from other methods
#' @return the desired plot of the cumulative distribution function
#'
#' @examples
#' \donttest{
#'
#' # binomial:
#' x <- 0:10
#' cdf(x, dist = "binom", size = 10, prob = 0.7)
#'
#' # normal:
#' x <- rnorm(100, mean = 10, sd = 2)
#' cdf(x, dist = "norm", mean = 10, sd = 2)
#' }

cdf <- function(x, Fx = NULL, type = c("discrete", "continuous"),
                dist = c("binom", "pois", "geom","unif", "exp", "norm"), ...){

  type <- match.arg(type)
  o <- order(x)
  x <- x[o]

  if(!is.null(Fx)){
    Fx <- Fx[o]
    test <- length(x) == length(Fx)
    if(isTRUE(test)){
      if(type ==  "discrete"){
        n2 <- length(x)
        n1 <- n2-1
        a <- abs(diff(x[1:2]))
        b <- abs(diff(x[n1:n2]))
        df <- data.frame(
          x = c(x[1] - a, x, x[n2] + b),
          Fx = c(0,Fx, 1)
        )
      }else{
        type <- "continuous"
        df <- data.frame(
          x = x,
          Fx = Fx
        )
      }
    }else{
      warning("x and Fx must be of the same length!")
    }
  }else{
    dist <- match.arg(dist)
    if(dist == "unif" | dist == "exp" | dist == "norm"){
      type <- "continuous"
    }
    if(dist == "binom"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = pbinom(x, ...)
      )
    }else if(dist == "pois"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = ppois(x, ...)
      )
    }else if(dist == "geom"){
      x = c(-1, x, max(x)+1)
      df <- data.frame(
        x = x,
        Fx = pgeom(x, ...)
      )
    }else if(dist == "unif"){
      df <- data.frame(
        x = x,
        Fx = punif(x, ...)
      )
    }else if(dist == "exp"){
      df <- data.frame(
        x = x,
        Fx = pexp(x, ...)
      )
    }else{
      df <- data.frame(
        x = x,
        Fx = pnorm(x, ...)
      )
    }
  }



  if(type == "discrete"){
    ggplot(df, aes(x=x, y = Fx)) +
      geom_point() +
      geom_step() +
      labs(x = "x", y = "F(x)")
  }else{
    ggplot(df, aes(x=x, y = Fx)) +
      geom_line() +
      labs(x = "x", y = "F(x)")
  }
}
