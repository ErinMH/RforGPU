mpitest <- function(ierror=0,comm=1,size=1,rank=0) {
	a <- c("I am a worker R")
	b <- c("I am a boss R!")
	zz <- init1(ierror=ierror)
	sz1 <- univ1(comm=comm,size=size)[[2]]
	print("universe")
	print(sz1)
	print(is.loaded("fmpib"))
	rk1 <- unlist(rank1(comm=comm,rank=rank)[[2]])
	print("rank")
	print(rk1)
	if(rk1==0)cat(rk1,    b,"\n")
	if(rk1!=0)cat(rk1,    a,"\n")
	za <- fin1(ierror=ierror)
}
