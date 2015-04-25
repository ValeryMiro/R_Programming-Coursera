## Two functions are created to calculate and cache the inverse of a matrix and to retrieve 
## the inversed matrix from the cache

## makeCacheMatrix is a function that creates a matrix, calculates the inverse and caches it.
## makeCacheMatrix stores a list of functions that do the job described above

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y,z) {
                x <<- matrix(y,nrow=z,ncol=z)
                inv <<- NULL
        } ##creates an invertible matrix with z rows and z columns
        get <- function() x ##returns the matrix created by set function
        setinv <- function(solve) inv <<- solve ##stores inverted matrix
        getinv <- function() inv ##returns inversed matrix
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv) ##creating a list of 4 functions stored in makeCacheMatrix
}


## cacheSolve returns inversed matrix (of x)

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        } ##returns inverted matrix if it is stored
        ##the following is applied if no stored inversed matrix exists
        data <- x$get() ##returns the matrix created with makeCacheMatrix
        inv <- solve(data, ...) ##creates inverted matrix
        x$setinv(inv) ##stores inverted matrix
        inv ## Return a matrix that is the inverse of 'x'
}
