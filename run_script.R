# run the main program 
library(ggplot2)
source("fit_nonlinear.R")
source("predict_model_A.R")
source("predict_model_B.R")
source("predict_model_C.R")
source("predict_model_D.R")
source("plot_model.R")
source("pipeline.R")


# load the data
my_data <-read.csv("DATA501_Assignment1_data.csv", row.names = NULL)
head(my_data)
x <- my_data$x
y <- my_data$y

# set initial parameters
start_par <-  data.frame(a = c(0.001), b=c(0.0001), c=c(0.1),A=c(0.1),B= c(0.1), freq=c(4.5), n=c(5), model_type=c("A") )  

# execute the code
seq <- c("A", "B", "C", "D")
for (v in seq)
{
  start_par[8] <- v
  temp <- run_analysis(x,y,start_par)

  # visualize the data and the model
  print(temp$plot)
  
}



