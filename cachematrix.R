##   makeCacheMatrix() takes a matrix (as an argument) and inverts it
##   cacheSolve runs makeCacheMatrix() and then saves output to disk
##   If you run cacheMatrix() on an object that it has already run, it 
##   will return the inverted matrix for that object from the disk


##   makeCacheMatrix() takes a matrix (as an argument) and inverts it

makeCacheMatrix <- function(x = matrix()) {
  library(MASS)
  library(matlib)
  library(memoise)
  print("Inverting your matrix and saving it to the disk")
  if (nrow(x)==ncol(x)) {solve(x)} 
        else {ginv(x)}
}


##   cacheSolve runs makeCacheMatrix() and then saves output to disk

cacheSolve <- memoise(makeCacheMatrix)