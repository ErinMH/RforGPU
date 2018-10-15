univ1 <- function(comm=1,size=1) {
      return(.Fortran("fmpia",as.integer(comm),as.integer(size)))
}
