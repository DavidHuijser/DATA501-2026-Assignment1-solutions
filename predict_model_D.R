
predict_model_D <- function(x, par) {
  
  #a <- par[1]
  #b <- par[2]
  c <- par[1]
  A <- par[2]
  B <- par[3]
  freq <- par[4] 

  c +  A*sin(2*freq*pi*x) + B*cos(2*freq*pi*x) 
}
