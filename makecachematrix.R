# Coursera
# R-Programming
# Assignment 2
# Inverts and caches a matrix object
# 

makeCacheMatrix <- function(x = numeric()){
    
    # initialize matrix object
    m <- NULL
    
    set <- function(y){
        x <<- y
        m <<- NULL
    }
    
    get <- function() x
    setmatrixinverse <- function(solve) m <<- solve
    getmatrixinverse <- function() m
    list(set = set, get = get, 
         setmatrixinverse = setmatrixinverse,
         getmatrixinverse = getmatrixinverse)
}
