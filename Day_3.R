# loop function
# lapply:
# sapply: 
# apply:
# tapply:
# mapply:

x <- list(a=1:5,b=rnorm(10))
lapply(x,mean) # apply mean function

# lapply can use anonymous function


## ========== Debugging ================
# message
# warning
# error
# condition


# Basic tools ==============
# traceback: print out the fucntion call stack after an error occurs;
# debug: flag a function for "debug"
# browser: suspends the execution of a function whenever it is called puts the function in debug mode
# trace: allows you to insert debugging code into a function a pecific code
# recover: allows you to modify the error behavior so that you can browse the function call stack
# recover


 