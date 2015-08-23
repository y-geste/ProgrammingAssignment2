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



##
##
## makeVector creates a special "vector", which is really a list containing a function to
##
## set the value of the vector
## get the value of the vector
## set the value of the mean
## get the value of the mean
##
## makevector is provided code
## 

makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}


## The following function calculates the mean of the special "vector" created with the above function. 
##  it first checks to see if the mean has already been calculated. 
##  iff so, it gets the mean from the cache and skips the computation. 
## Otherwise, it calculates the mean of the data and sets the value of the mean in the cache 
##  via the setmean function.

cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
