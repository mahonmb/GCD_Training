##Example for how to run a linear regression in R for the GCD meta-analysis
#10/7/21

####Example

set.seed(1072021)
dat2 <- data.frame(Predictor = runif(20, min = 0, max = 10),
                   Response = rnorm(20, mean = 4, sd = 3))

##Extract the coefficient under "Estimate" column for the "Predictor" row.
##Extract the error (SE) under "Std. Error" column for the "Predictor" row.
summary(lm(Response ~ Predictor, data = dat2))

##Coef: 0.1167; SE: 0.2085


####Example with how to read in your data
##Do not run, just an example
dat1 <- read.csv("C:/PATH/TO/Data.csv")

summary(lm(Response ~ Predictor, data = dat1))
