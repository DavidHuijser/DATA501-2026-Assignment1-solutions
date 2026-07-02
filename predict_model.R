
predict_model_B <- function(x, par) {
  
  # a <- par[1]
  # b <- par[2]
  # c <- par[3]
  # A <- par[4]
  # B <- par[5]
  # freq <- par[6] 
  # a*x**2 + b*x+c +  A*sin(2*freq*pi*x) + B*cos(2*freq*pi*x) 
  
  b <- par[1]
  c <- par[2]
  A <- par[3]
  B <- par[4]
  freq <- par[5] 
  b*x+c +  A*sin(2*freq*pi*x) + B*cos(2*freq*pi*x) 
  
  
}
