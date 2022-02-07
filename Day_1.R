# Comment 
x <- 3 ## assignment operator
print(x)  # [1] 3 [1] indicates that x is a vector and 5 is the first element 
x <- 1:20 #  [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

# R has five basic classes of object:
# 1.character  2.numeric  3.integer  4.complex  5.logical
# The most basic is vector: a vector can only contain the same class  vector 
# Exception is a list, a list can contain different class             list


## Numbers: in R treated as numeric object(ie: double precision real numbers)
# default is double type
x <- 1 
typeof(x) # [1] "double"
x <- 1L 
typeof(x) # [1] "integer"

# Inf: a special number 
print(1/0)    # [1] Inf
print(1/Inf)  # [1] 0

# NaN: represents an undefined value ("not a number"), can also thought as a missing value
print(0/0) # [1] NaN




## ====================== Data types ====================================
## ========= Vectors ==================
# c() function can be used to create vectors of objects
x <- c(0.5,0.6)   ## numeric
x <- c(T,F)       ## logical
# vector() function: create default function
x <- vector("numeric",length = 10) #  [1] 0 0 0 0 0 0 0 0 0 0
# when there are different classes of obeject in vector, there will be  coercion occurs
y <- c(1.7, 'a') # [1] "1.7" "a" 
y <- c(T, 2)  # [1] 1 2
# Explicit coercion:
# as.*(): not change original variable
x <- 0:6
class(x)  # [1] "integer"
as.logical(x) # [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
class(x) # [1] "integer"
## ========= Vectors ===============

## ========= List ==================
# List: can contain elements of different classes
x <- list(1,"a",TRUE, 1+4i) 
## ========= List ==================


## ========= Matrices ==================
## Matrices: different type of vector
m <- matrix(data = 1, nrow = 2,ncol = 2,) # 2 plus 2 matrix with 1 default value
dim(m)  #[1] 2 2 : row col
attributes(m)
# $dim
# [1] 2 2

# Matrices are constructed column-wise, so entries can be thought of starting in the "upper left" running down the column
m <- matrix(1:6, nrow = 2, ncol = 3)
print(m)
# can also be created directly from vectors by adding a dimension attributes
m <- 1:10
print(m)
dim(m) <- c(2,5)
print(m)
# can also be created by column-binding or row-binding with cbind() and rbind()
x <- 1:3
y <- 10:12
cbind(x,y) # column-binding
rbind(x,y) # row-binding
## ========= Matrices ==================


## ========= Factors ==================
## Factors: are used to represent categorical data:
# can be ordered or unordered
x <- factor(c("yes","yes","no","no","yes"))
table(x) 
unclass(x)
## The order of levels can be set using levels argument 
x <- factor(c("yes","yes","no","no","yes"),
            levels = c("yes","no"))
## ========= Factors ==================

## ========= Missing Values ==================
## Missing values are denoted by NA or NaN for undefined mathematical operations
x <- c(1,2,NA,3,4,5)
is.na(x) # is used to test object if they are NA  # [1] FALSE FALSE  TRUE FALSE FALSE FALSE
is.nan(x) # is used to test for NaN               # [1] FALSE FALSE FALSE FALSE FALSE FALSE
# NA values have a class also, so there are:
# integer NA
# character NA, etc
# NaN value is also NA, but NA is not NaN
x <- c(1,2,NaN,3,4,5)
is.na(x)      # [1] FALSE FALSE  TRUE FALSE FALSE FALSE
is.nan(x)     # [1] FALSE FALSE  TRUE FALSE FALSE FALSE
## ========= Missing Values ==================


## ========= Data Frames ==================
## Data Frames: used to store tabular data 
x <- data.frame(foo=1:4, bar=c(T,T,F,F), bar2=5:8)
nrow(x) #  4
ncol(x) #  3 
## have special attribue called row.names
x <- data.frame(foo=1:4, bar=c(T,T,F,F), bar2=5:8,
                row.names = c("H1","H2","H3","H4"),
                )
## data frame can be created by calling 
# read.table() 
# read.csv()
# can also be converted to a matrix by calling data.matrix()
## ========= Data Frames ==================


## ========= Names Attribute ==================
# R objects can have name,
x <- 1:3
names(x) # NULL
names(x) <- c("R1","R2","R3")
names(x) # [1] "R1" "R2" "R3"
print(x)
# List can also have name
x <- list(a=1, b=2, c=3)
# matrix can also have name
m <- matrix(1:4, nrow =2, ncol =2)
dimnames(m) <- list(c("a","b"), c("c","d"))
## ========= Names Attribute ==================

## ====================== END Data types ====================================



## ===================== Reading and Writing  Data =====================================
# === Read in function ==== 
# read.table, read.csv  for reading tabular data
# readLines,            for reading lines of a text file
# source,               for reading in R code files (inverse of dump)
# dget,                 for reading in R code files (inverse of dput)
# load,                 for reading in saved worksapces 
# unserialize,          for reading single R objects in binary form

# === Writing Data =====
# write.table
# writeLines
# dump
# dput
# save 
# serialize
## ===================== END Reading and Writing  Data =====================================


## ==================== Interfaces to the Outside World ===============
# file    opens a connection to a file
# gzfile  opens a connection to a file compressed with  gzip
# bzfile  opens a connection to a file compressed with  bzip2
# url     opens a connections to a webpage
## ==================== END Interfaces to the Outside World ===============


## ==================== Subsetting ===============
# [ : always return an object of the same class as the original
# [[ : is used to extract elements of a list or a data frame. only be used to extract a single element 
# $ : extract elements of a list or data frame by names
x <- c(1,2,3,4,5,6,7,8,9)
x[1] #  [1] 1 # start with 1
x[1:4] # [1] 1 2 3 4
x <- c(9,8,7,6,5,4,3,2,1)
x[x>3] # [1] 9 8 7 6 5 4

## ==== subset list ======
x <- list(foo=1:4, bar = 0.6, bzzz="hello")
x[1]
x[[1]]
x$bar
x["bar"]
x[["bar"]]
x[c(1,3)]  # get foo and bzzz
## [[ operator can be used with computed indices; $ can only used with literal name
name <- "foo"
x[[name]] # [1] 1 2 3 4
x$name    # NULL
x$foo     # [1] 1 2 3 4
## [[ can take an integer sequence
y <- list(a=list(10,12,14), b = c(3.14,2.8,4.4))
y[[c(1,3)]]   # 14
y[[1]][[3]]   # 14

## ==== subset matrix ======
x <- matrix(1:6,2,3)
x[1,2]   # [row,column]
x[1, ]  
x[1,2, drop=FALSE]   # return matirx


## ====== Partial Matching ======
# Partial Matching is allowed with [[ and $
x <- list(aadvark = 1:5)
x$a # [1] 1 2 3 4 5
x[["a"]] # NULL
x[["a",exact=FALSE]] # [1] 1 2 3 4 5

## =========== Removing NA values
x <- c(1,2,NA,4,NA,5,NA,6)
bad <- is.na(x)
x[!bad]  # [1] 1 2 4 5 6
y <- c("A",NA,NA,NA,"B","C","D","F")
good <- complete.cases(x,y) # return true if all true
x[good]   # [1] 1 5 6
y[good]   # [1] "A" "C" "F"
## ==================== END Subsetting ===============


## =========== Vectorized operation ============
x <- 1:4; y <- 6:9
x >2  # [1] FALSE FALSE  TRUE  TRUE
x + y # [1]  7  9 11 13

