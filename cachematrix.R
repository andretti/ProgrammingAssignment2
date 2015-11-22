# Coursera
# R-Programming
# Assignment 2
# Creates the inverted matrix
# 
# This function will create a special "inverted matrix" passed 
# to the function as argument.
# The function will invert the matrix, get or set the matrix, 
# or invert the given matrix.
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
