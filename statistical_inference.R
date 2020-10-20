library(ggplot2)
set.seed(12) 
m <- 40
lambda <- 0.2
sim <- replicate(1000, rexp(m, .2))
mean_sim <- apply(sim, 2, mean)
qplot(mean_sim, geom = "histogram", 
      main = "Mean Simulation histogram", 
      xlab = "Mean observations")  

mean_2 <- mean(mean_sim)
print(mean_2)

T_mean <- 1/0.2
print(T_mean)

Eden <- (1/.2)/sqrt(m)
E_var <- Eden^2

Ssd <- sd(mean_sim)
S_var <- var(mean_sim)

fit <- seq(min(mean_sim), max(mean_sim), length=100)
standard_fit <- dnorm(fit, mean=T_mean, sd=Eden)
hist(mean_sim, breaks = m, prob=T, xlab = "means", ylab = "count", main = "Density of Means")
lines(fit, standard_fit, pch=2, col="blue", lty=5)