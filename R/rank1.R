rank1 <- function(comm=1,rank=0) {
      return(.Fortran("fmpib",comm=as.integer(comm),rank=as.integer(rank)))
}
