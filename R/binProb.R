#' @title Binomial CDF calculator
#' @description
#' Calculates the probability that min <= X <= max, given X~Bin(n,p).
#' @details
#' things to say
#'
#' @param n numeric: number of bernoulli trials
#' @param p numeric: probability p for each bernoulli trial
#' @param min numeric: minimum number of successes
#' @param max numeric: maximum number of successes
#' @returns numeric: probability that min <= X <= max, given X~Bin(n,p).
#' @importFrom stats pbinom
#' @import Dunleavy
#' @export
#' @example
#' Example/binProbExample.R
binProb <- function(n, p, min, max) {
  return(pbinom(q = max, size = n, prob = p) - pbinom(q = min - 1, size = n, prob = p))
}


