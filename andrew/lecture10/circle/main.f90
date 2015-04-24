! $ANDREW/lecture10/circle/main.f90

program main

	use circle_mod, only: pi, area
	implicit none
	real(kind=8) :: a
	
	call initialize()

	print *, "pi = ", pi

	a = area(2.d0)

	print *, "a = ", a

end program main
