## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
    #cache defined
    set<- function(y){
        x <<- y ## the matrix Y is assigned to x
        m <<- NULL ## m is assigned as NULL in the parent environment
    }
      get<- function() x 
      setinverse <- function(inverse) m <<- inverse #let m be euqal to 
      ## the inverse of the matrix x
      getinverse <- function() m #this returns the cached inverse of x
      list(set=set, get = get,
           setinverse = setinverse,
           getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getinverse()
          ##if there is a cached value return it
      if(!is.null(m)){
          message("getting cached data")
          return(m)
          ##other solve the matrix and store it to the cache
          
      }
      data <- x$get()
      m<- solve(data, ...)
      x$setinverse(m)
      m
}
##Matrix has to be square for solve function to invert it other wise error will occur
