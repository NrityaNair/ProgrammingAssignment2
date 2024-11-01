## Function to store the matrix and cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL #To initialize a variable to hold the cached inverse
  
  #Function to set a new matrix 
  set <- function(y) {
    x <<- y    #Assign the new matrix to x
    inv <<- NULL  #Reset the cached inverse
  }
  
  #Function to get the matrix 
  get <- function() x
  
  #Function to cache the inverse
  setInverse <- function(inverse) inv <<- inverse
  
  #Function to get the cached inverse
  getInverse <- function() inv
  
  # return a list of the above functions for external access
  list(set = set, get = get,
       setInverse = setInverse, getInverse = getInverse)
}

# Function to calculate or retrive the cached inverse of the matrix
cacheSolve <- function(x, ...) {
  
  inv <- x$getInverse() #Attempt to retrieve the cached inverse
  
  # Check if the inverse is already cached
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)  #Return the cached inverse
  }
  
  data <- x$get()  #Get the matrix using the function from make CacheMatrix
  
  # Calculate the inverse of the matrix
  inv <- solve(data, ...)
  
  x$setInverse(inv) #Cache the inverse
  
  inv # Return the inverse
}

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function
## cacheSolve retrieves the cached inverse of the matrix 'x' if available.
## If the inverse is not cached, it computes the inverse, caches it,
## and then returns the computed inverse.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
