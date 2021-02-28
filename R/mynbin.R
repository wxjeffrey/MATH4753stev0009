#' @title Binomial Probability
#'
#' @param y Number of trials until rth success
#' @param r Number of successes
#' @param p Probability of success on single Bernoulli trial
#'
#' @return
#' @export
#'
#' @examples
mynbin=function(y,r,p){
  choose(y-1,r-1)*p^r*(1-p)^(y-r)
}
