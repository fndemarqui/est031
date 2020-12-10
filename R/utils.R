

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
