init1 <- function(ierror=0) {
      return(.Fortran("finit",as.integer(ierror)))
}
