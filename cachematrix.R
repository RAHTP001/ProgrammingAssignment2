
makeCachematrix<- function(x = matrix()) { ## initiate inverse 
                  i <- NULL       
        set <- function(matrix) { ## defining matrix
       
        x <<- matrix
        i <<- NULL 
        
        }
   get<- function(){
     
     x ## return matrix
     
   }
   ## setting inverse of matrix
   setInverse<- function(inverse) {
     i <<- inverse
     
   }
   ## to get inverse of matrix
   getInverse<- function() {
       
     i ## return inverse
     
   }
   
   list ( set = set, get = get, setInverse = setInverse, getInverse = getInverse )
   
}
   
cacheSolve <- function(x,...){## cachesolve function
m<- x$getInverse()
## return inverse if already calculated
     if(!is.null(x)){
       messege(" Getting cache data")
       return (x)
     }
data<- x$get()
  x <- solve(data)%*%data ## calculating inverse by matrix multiplication

    x$setInverse(x)
    ##return matrix
    x
}
                  
  
  
  
  
