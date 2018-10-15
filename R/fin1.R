fin1 <- function(ierror=0) {
     return(.Fortran("fmpifin",as.integer(ierror)))
}
