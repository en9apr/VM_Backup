! $ANDREW/lecture7/fortran/example1.f90

program example1

	real (kind=8) :: x,y,z

	x = 3.d0
	y = 1.d-1

	z = x + y

	print *, "z = ", z

end program example1
