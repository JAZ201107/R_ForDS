## ============ if else =========
x <- 10
y <- 2
if(x >3)
{
  print("X>3")
}else if(y > 3){
  print("y>3")
}else{
  print("less 3")
}
## ============ END if else =========

## ============= for ==========
for(i in 1:10)
{
  print(i)
}

## three for loop
x <- c("a","b","c","d")
for(i in 1:4) print(x[i])
for(i in seq_along(x)) print(x[i])
for(letter in x) print(letter)


## nest 
x <- matrix(1:6, 2,3)
for(i in seq_len(nrow(x)))
{
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}
## ============= END for ==========

## ============ WHILE =============
z <- 5
while(z >= 3 && z<= 10)
{
  print(z)
  coin <-rbinom(1,1,0.5)
  if(coin ==1 )
  {
    z <- z+1
  }else{
    z <- z -1
  }
}
## ============ END WHILE =============

## ============ repeat ===========
# repeat initiates an infinite loop, the only way to exit a loop is to call break
x0 <- 1
tol <- 1e-8
repeat{
  x1 <- computeEstimate()
  if(abs(x1 - x0) < tol) {
    break
  }else{
    x0 <- x1
  }
}
## ============END repeat ===========

## ====== next ======
for(i in 1:100)
{
  if(i<=20)
  {
    next ## skip first 20 iterations
  }
}
## ====== END next ======


## ========= FUnction ===========
add2 <- function(x,y)
{
  x+y
}


above_ten <- function(x)
{
  use <- x >10;
  x[use]
}


## n=10 default
above <- function(x,n=10)
{
  use <- x>n
  x[use]
}


columnmean <- function(y, removeNA = TRUE)
{
  nc <- ncol(y)
  means <- numeric(nc)
  for(i in 1:nc)
  {
    means[i] <- mean(y[,i], na.rm = removeNA)
  }
  return(means)
}


## ============= lazy evaluation
f <- function(a,b)
{
  a^2
}
f(2) ## [1] 4
#3 the function never actually uses the argument b, so calling f(2) will not pruduce an error because the 2 gets positionally matched toa 

f1 <- function(a,b)
{
  print(a)
  print(b)
}
f1(2) # Error in print(b) : argument "b" is missing, with no default

## ... argument
# 1  ... argument indicate a variable number of argumnts that are usually passed on to other function
# 2  generic function use ... so that extra arguments can be passed to methods
# 3  the ... argument is also necessary when the number of arguments passed to the function cannot be known in advance
myplot <- function(x,y,type='1',...)
{
  plot(x,y,type = type, ...)
}
# argument appear after ... on the argument list must be named explicily


## ========== Scoping rules ==================

## ========== End Scoping rules ==================

## =========== Coding Standards ===============
# 1. using text format
# 2. indent your code
# 3. limit the width of code (ex 80 columns)
## =========== END Coding Standards ===============

## =========== Date and Time ================
# Dates are represented by the Date class
# Times are represented by the POSIXct pr the POSIXlt class
# Dates are stored internally as the number of days since 1970-01-01
# Times are stored internally as the seconds of days since 1970-01-01
x <- as.Date("1970-01-01")
x <- Sys.time()
p <- as.POSIXlt(x)

