## Put comments here that give an overall description of what your
## functions do
## Creating a matrix and inverse and saving to cache
## and computing of fetching the inverse of the matrix

## Write a short comment describing this function

## Creating of matrix, inverse matrix spot  
## and saving inverse to cache
makeCacheMatrix <- function(x = matrix()) {

  w <- NULL
  
  set <- function(matrix) {
    m <<- matrix
    w <<- NULL
  }
  
  get <- function() {
    m
  }
  
  setinverse <- function(solve) {
    w <<- solve
  }
  
  getinverse <- function() {
    w
  }
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function
## compute the inverse of the matrix or get
## the inverse from cache if available

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  w <- m$getinverse()
  
  if(!is.null(w)) {
    message("Getting cached data")
    return(w)
  }
  
  data <- m$get()
  
  w <- solve(data, ...)
  
  m$setinverse(w)
  
  ## Return a matrix that is the inverse of matrix'm'
  w
}
        
