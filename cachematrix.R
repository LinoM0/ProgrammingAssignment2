## makeCacheMatrix creates a special "object" that can store a matrix and also
## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y) {
        x <<- y
        inverse_x <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) inverse_x <<- inverse
    getinverse <- function() inverse_x
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)
}


## cacheSolve first looks in the cache whether the inverse is already calculated
## If it is it returns it through cache, otherwise it calculates it and stores
## it in cache

cacheSolve <- function(x, ...) {
    inverse_x <- x$getinverse()
    if(!is.null(inverse_x)) {
        message("getting cached data")
        return(inverse_x)
    }
    data <- x$get()
    inverse_x <- solve(data, ...)
    x$setinverse(inverse_x)
    inverse_x
}
