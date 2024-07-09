
#' @title Binomial CDF calculator
#' @description
#' Calculates the probability that min <= X <= max, given X~Bin(n,p).
#' @param n number of bernoulli trials
#' @param p probability p for each bernoulli trial
#' @param min minimum number of successes
#' @param max maximum number of successes
#' @returns A probability
#' @importFrom stats pbinom
#' @import Dunleavy
#' @export
#' @examples
#' binProb(7, 0.3, 1, 3)
binProb <- function(n, p, min, max) {
  return(pbinom(q = max, size = n, prob = p) - pbinom(q = min - 1, size = n, prob = p))
}


