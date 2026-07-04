
predict_model_C <- function(x, par) {
  
  a <- par[1]
  #b <- par[2]
  c <- par[2]
  A <- par[3]
  B <- par[4]
  freq <- par[5] 

  a*x**2 +c +  A*sin(2*freq*pi*x) + B*cos(2*freq*pi*x) 
}
