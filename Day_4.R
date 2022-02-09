## ========== the str function ==============
# Compactly Display the Structure of an Arbitrary R Object
str(airquality)

## ========= simulation ==================
# rnorm: generate random Normal variables with a given mean and standard deviation
# dnorm: 
# pnorm:
# rpois: 
dnorm(x,mean=0,sd=1,log=FALSE)
pnomr(q,mean=0, sd=1, lower.tail = TRUE, log.p = FALSE)

set.seed(1) # generate the same random varibale
rnorm(5)
rnorm(5)
set.seed(1)
rnorm(5)

# Generating Random Number From a Linear Model


## ========== Random Sampling ============
set.seed(1)
sample(1:10,4) # draw randomly from a specific set

# == R profiler ===
# Rprof(): runs the profiles for performance of analysis of R code
# Rprof() : keep track the function
# summaryRprof() summarizes the output of Rprof() and gives percent of time spent in each function
system.time( x<- 1:10) # take expression as input, return the amount of time taken to evaluate the expression 


# Rprof(): runs the profiles for performance of analysis of R code
# Rprof() : keep track the function
# summaryRprof() summarizes the output of Rprof() and gives percent of time spent in each function
# by.total: divides the time spend in each function by the total run time
# by.self: does the same but first subtracts out time spent in functions above in the call stack






