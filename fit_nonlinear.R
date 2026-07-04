fit_nonlinear <- function(x, y, start_par) {
  
  n <- start_par$n
  model_type <- start_par$model_type 
  print(paste("Model type", model_type))

  if (model_type == 'A')
  {
    # initialize
    init_par <- c(start_par$a,start_par$b, start_par$c, start_par$A, start_par$B, start_par$freq)
    # objective function
    objective_function <- function(par) {
      y_pred <- predict_model_A(x, par)
      sum((y - y_pred)^2)
    }
    # optimize
    result <- optim(init_par, objective_function)
    # get model
    result$model <- predict_model_A(x, result$par)    
  }
  
  
  if (model_type == 'B')
  {
      # initialize
      init_par <- c(start_par$b, start_par$c, start_par$A, start_par$B, start_par$freq)
      # objective function
      objective_function <- function(par) {
        y_pred <- predict_model_B(x, par)
        sum((y - y_pred)^2)
      }
      # optimize
      result <- optim(init_par, objective_function)
      # get model
      result$model <- predict_model_B(x, result$par)    
  }
  
  if (model_type == 'C')
  {
    init_par <- c(start_par$a, start_par$c, start_par$A, start_par$B, start_par$freq)
    
    objective_function <- function(par) {
      y_pred <- predict_model_C(x, par)
      sum((y - y_pred)^2)
    }
    
    result <- optim(init_par, objective_function)
    
    result$model <- predict_model_C(x, result$par)
  }
  
  if (model_type == 'D')
  {
      init_par <- c(start_par$c, start_par$A, start_par$B, start_par$freq)
  
      objective_function <- function(par) {
        y_pred <- predict_model_D(x, par)
        sum((y - y_pred)^2)
      }
  
      result <- optim(init_par, objective_function)
  
      result$model <- predict_model_D(x, result$par)
   }
  
  result
  
}




