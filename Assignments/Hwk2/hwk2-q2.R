## Homework #2
## Problem 2

## The Monte Carlo simulation to demonstrate Lindley's Paradox


## Here we play Designer of the Universe and set up the "truth", 
## i.e. the Population Regression Function (beta is the "true" value here)
alpha <- 0.0
beta <- 0.97

## Select relevant sample sizes
base <- 10000

## Confidence levels (to be used inside the loop)
a <- c(0.01, 0.05, 0.10)  ## The standard levels


## The main Monte Carlo loop
for(i in 1:20)
{
  ######### Design the Universe (put on your Designer of Universe hat) #########
  
  ## Now we play Designer of the Universe and generate a dataset for the given sample size
  size <- base * i
  
  ## Now we will use the Population Regression Function to generate the actual dataset
  x <- runif(size)          ## Note we could use a diffent assumption regarding X, but this is convenient
  u <- rnorm(size)          ## our error term is Standard Normal, nice and clean
  y <- alpha + beta * x + u ## use the "true" Beta parameter, which is very very close to 1.0
  
  ######### Now the Econometrician gets the sample data (put on your Econometrician hat) #########
  
  ## The econometrician uses the standard tools to carry out statistical inference
  fit <- lm(y ~ x) # the Simple Classical Linear Regression Model (CLRM), this is the Sample Regression Function (SRF)
  beta.hat <- coef(fit)[2]                              ## This is the estimated slope coefficient, or Beta-hat
  stderr.beta <- coef(summary(fit))[, "Std. Error"][2]  ## This is the estimated Standard Error of Beta-hat
  beta.star <- 1.0                                      ## This is the hypothesized value
  tval <- (beta.hat - beta.star) / stderr.beta          ## The econometrician calculates the t-statistic
  tcrit <- qt((1 - (a/2)), df = size - 2)               ## The three critical values corresponding to the three confidence levels
  print(c(i, size, as.character(abs(tval) > tcrit)))                       ## Print the results of the hypothesis tests   
}