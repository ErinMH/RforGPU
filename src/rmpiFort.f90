subroutine finit(ierror)
	  !DEC$ ATTRIBUTES DLLEXPORT :: finit
  implicit none
 include 'mpif.h'
  
  integer :: ierror

  call MPI_INIT(ierror)

end subroutine finit


subroutine fmpifin(ierror)
	  !DEC$ ATTRIBUTES DLLEXPORT :: fmpifin
  implicit none
  include 'mpif.h'

  integer, intent(in) :: ierror
  call MPI_FINALIZE(ierror)
end subroutine fmpifin

subroutine fmpia(comm,size)
	  !DEC$ ATTRIBUTES DLLEXPORT :: fmpia
  implicit none

  include 'mpif.h'



  integer rank,size,ierror,tag,status(MPI_STATUS_SIZE),i,np
  integer comm

  ierror = 0
  
  call MPI_COMM_SIZE(MPI_COMM_WORLD,size,ierror)

  
    
end subroutine fmpia


subroutine fmpib(comm,rank)
	  !DEC$ ATTRIBUTES DLLEXPORT :: fmpib
  implicit none

  include 'mpif.h'



  integer rank,size,ierror,tag,status(MPI_STATUS_SIZE),i,np
  integer comm

  ierror = 0
  
  call MPI_COMM_RANK(MPI_COMM_WORLD,rank,ierror)
  
    
end subroutine fmpib



  subroutine freda(x,rank,y,irank)
	  !DEC$ ATTRIBUTES DLLEXPORT :: freda
  implicit none
  include 'mpif.h'



  integer rank,size,ierror,tag,status(MPI_STATUS_SIZE),i,np
  real :: x,aout(2),ain(2)
  real, intent(inout) :: y
  integer, intent(inout) :: irank

  ain(1) = x
  ain(2) = rank

       call MPI_REDUCE(x,y,1,MPI_2DOUBLE_PRECISION,MPI_MINLOC,0,MPI_COMM_WORLD,ierror)

      if(rank.eq.0) then
         y=aout(1)
         irank=aout(2)
         end if



end subroutine freda



  
  



  
  

 
