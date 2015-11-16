## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        ivs <- NULL
        set <- function(y) {
                x <<- y
                ivs <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) ivs <<- inverse
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
                ivs <- x$getinv()
        if(!is.null(ivs)) {
                message("getting cached data")
                return(ivs)
        }
        data <- x$get()
        ivs <- solve(data, ...)
        x$setinv(ivs)
        ivs
}
