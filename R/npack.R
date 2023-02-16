#' Create Histogram Boxplot and Numeric Summary
#' @export
#' @param x numeric variable


npack<-function(x){
  par(mfrow=c(1,2))
  hist(x,col=rainbow(30))
  lines(x,type = "o",col='red')
  boxplot(x,col="blue")
  par(mfrow=c(1,1))
  data.frame(log=log(x),
             avg=mean(x))
}
