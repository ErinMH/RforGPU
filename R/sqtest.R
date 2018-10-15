sqtest <- function(n=1000) {
       y <- numeric(length=n)
       zz <- .Fortran("square",as.numeric(y),as.integer(n))[[1]]
       return(zz)
}
