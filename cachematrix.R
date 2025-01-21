## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix creates a special "object" that can store a matrix and also
## cache its inverse

makeCacheMatrix <- function(x = matrix()) {
    inverse_x <- NULL
    set <- function(y) {
        x <<- y
        inverse_x <<- NULL
    }
    get <- function() x
    setmean <- function(inverse) inverse_x <<- inverse
    getmean <- function() inverse_x
    list(set = set, get = get,
         setmean = setmean,
         getmean = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
