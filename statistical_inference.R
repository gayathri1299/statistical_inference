library(ggplot2)
set.seed(12) 
m <- 40
lambda <- 0.2
sim <- replicate(1000, rexp(m, .2))
mean_sim <- apply(sim, 2, mean)
qplot(mean_sim, geom = "histogram", 
      main = "Mean Simulation histogram", 
      xlab = "Mean observations")  



