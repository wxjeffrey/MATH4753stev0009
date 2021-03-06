#' @title Hypergeometric Simulation
#'
#' @param iter Number of iterations
#' @param N Number of elements
#' @param r Number of successes in N elements
#' @param n Number of drawn elements
#'
#' @return
#' @export
#'
#' @examples myhyper(100,10,3,6)
myhyper=function(iter,N,r,n){
  # make a matrix to hold the samples
  #initially filled with NA's
  sam.mat=matrix(NA,nr=n,nc=iter, byrow=TRUE)
  #Make a vector to hold the number of successes over the trials
  succ=c()
  for( i in 1:iter){
    #Fill each column with a new sample
    sam.mat[,i]=sample(rep(c(1,0),c(r,N-r)),n,replace=FALSE)
    #Calculate a statistic from the sample (this case it is the sum)
    succ[i]=sum(sam.mat[,i])
  }
  #Make a table of successes
  succ.tab=table(factor(succ,levels=0:n))
  #Make a barplot of the proportions
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Hypergeometric Simulation", xlab="Number of Successes")
  succ.tab/iter
}
