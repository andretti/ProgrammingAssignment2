# Coursera
# R-Programming
# Assignment 2
# Creates the inverted matrix
# 
# This function will create a special "inverted matrix" passed 
# to the function as argument.
# The function will invert the matrix, get or set the matrix, 
# or invert the given matrix.
#
makeCacheMatrix <- function(x = matrix()){
    
    # initialize matrix object
    m <- NULL
    
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setmatrix <- function(solve) m <<- solve
    getmatrix <- function() m
    list(set = set, get = get, 
         setmatrix = setmatrix,
         getmatrix = getmatrix)
}


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
