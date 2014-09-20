## Put comments here that give an overall description of what your
## functions do

## Function used to work with matrix inverse
## The function can set or return a matrix, also can set or return its inverse

makeCacheMatrix <- function(x = matrix()) {
  
        inv <- NULL
        set <- function(y) {
          x <<- y
          inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Function which sees if a matrix has calculated its inverse
## If it has, it returns its inverse immediatly with the getInverse function from above,
## otherwise, it calculates the inverse and sets it with the help of the setInverse function
 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(m)) {
          message("getting cached data")
          return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}
