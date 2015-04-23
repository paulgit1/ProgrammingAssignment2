## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 mInv <- NULL
  set <- function(y){
    x <<- y
    mInv <<- NULL
  }

  get <- function() x
  setMatInv <- function(mInverse) mInv <<-mInverse
  getMatInv <- function() mInv
  list(set = set,get = get,setMatInv = setMatInv,getMatInv = getMatInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	mInv <- x$getMatInv()
	  if(!is.null(mInv)){
	    message("getting cached matrix")
	    return(mat)
	  }
	  data <- x$get()
	  mInv <- solve(data)
	  x$setMatInv(mInv)
  	mInv
}
