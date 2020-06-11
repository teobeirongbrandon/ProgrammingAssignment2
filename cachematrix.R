## Put comments here that give an overall description of what your
## functions do
this function creates a special "matrix" object that can cache its inverse.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
set <- function(y) {
x <<- y
inv <<- NULL 
}
get <- function() x       
setinverse <- function(inverse) inv <<- inverse
getinverse <- function() inv 
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
inv <- x$getinverse()
if(!is.null(inv)) {
        message("will get cache data")
        return(inv)
    }
    mydata <- x$get()
    inv <- solve(mydata, ...)
    x$setinverse(inv)
    inv
}
