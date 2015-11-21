# Coursera
# R-Programming
# Assignment 2
# Creates the inverse of a matrix of the "special" matrix
# 
# The function first checks if the inverted matrix has 
# already been created.  If so, it retrieves it from 
# the cache else the function will create it and 
# will save the new matrix to the cache
# 
cacheSolve <- function(x, ...){
    m <- x$getmatrix()
    
    if(!is.null(m)){
        message("getting the cached matrix data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrix(m)
    m
}
