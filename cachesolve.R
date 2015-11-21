# Calculates the mean of the "special" vector
# 
# first checks if the mean has already been calculated
# if there, retrieves it, else calculates it
# saves the newly calculated mean
# 
cachesolve <- function(x, ...){
    m <- x$getmatrixinverse()
    
    if(!is.null(m)){
        message("getting cached matrix data")
        return(m)
    }
    
    data <- x$get()
    m <- solve(data, ...)
    x$setmatrixinverse(m)
    m
}
