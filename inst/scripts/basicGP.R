# libraries
library(ggplot2)

# generate nonlinear function of data with gaussian noise
n <- 500                                # num of data points
sigma <- 0.2                            # SD
x <- seq(-8, 8, length.out=n)           # set of input
epsilon <- rnorm(n, mean=0, sd=sigma)   # gaussian noise
f <- sin                                # function to be estimated
y <- f(x) + epsilon                     # set of data

# visualize data
qplot(x, y, geom="line")
