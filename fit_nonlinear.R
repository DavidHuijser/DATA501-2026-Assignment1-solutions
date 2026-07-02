fit_nonlinear <- function(x, y, start_par) {
  
  n <- start_par$n
  model_type <- start_par$model_type 
  print(paste("Model type", model_type))
  if (model_type == 'B')
  {
      init_par <- c(start_par$b, start_par$c, start_par$A, start_par$B, start_par$freq)
  }
  
  objective_function <- function(par) {
    y_pred <- predict_model_B(x, par)
    sum((y - y_pred)^2)
  }
  
  result <- optim(init_par, objective_function)
  if (model_type == 'B')
  {
    result$model <- predict_model_B(x, result$par)
  }
  result
  
}




