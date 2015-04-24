! $ANDREW/lecture8/segfault1.f90

program segfault1

	implicit none
	real(kind=8), dimension(3) :: x
	integer :: i

	do i = 1, 1000
		x(i) = 5.
		print *, "i = ", i
		enddo
	
	print *, "Finished"

end program segfault1


