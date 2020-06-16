## Put comments here that give an overall description of what your
## functions do

## This function will create a matrix object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  setMatrix <- function(matrix = matrix()){
    x <<- matrix
  }
  
  getMatrix <- function() x
  
  setInverse <- function(inverseMatrix = matrix()){ 
    inverse <<- inverseMatrix
  } 
  getInverse <- function() inverse
  list(get = getMatrix, set = setMatrix, getI = getInverse, setI = setInverse)
}

## This function will test that the matrix has already its inverse calculate, and if not, it will calculate it and chache it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x' 
  
  if(is.null(x$getI())){
    print("Not cached. Recomputing...") 
    x$setI(solve(x$get()))
  }else {print("Found in cache")}
  
  x$getI()
}

