## Put comments here that give an overall description of what your
## functions do

## 
## this function creates a Matrix like object that can cache
## its inverse (when that inverse is computed by cacheSolve, below, 
## that knows how to calculate and store values in the cache
## or look them up in the cache, as appropriate)
## 

makeCacheMatrix <- function(x = matrix()) {

}


## cachesolve is a function that returns the inverse of a matrix in the 
## cacheMatrix representation returned by makeCacheMatrix
## 
## it will look up the inverse in the cache;  if the inverse is not there, 
## it will calculate the inverse and store it in the cache
## 


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
}
