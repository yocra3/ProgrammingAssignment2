## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This first functions creates a list of functions very simmilar to that of the
##example. It contains the set function that just take the input value and stores it.
# The get function that returns the value of the matrix. The setinverse function
# that stores the value of the inverse matrix and the getinverse function that
# recovers the value of the inverse.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function (y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) i <<- solve
        getinverse <- function () i
        list ( set=set, get=get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
# This function tries to recover the inverse matrix. If it is available, prints
# a message and returns it. If not, calculates it with solve, adds it to the
# special "matrix" and returns the function. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}


