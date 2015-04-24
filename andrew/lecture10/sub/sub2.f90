! $ANDREW/lecture10/sub2.f90

program sub2

	use sub2mod, only: fsub2
	implicit none
	real(kind=8), dimension(3) :: y,z
	y = (/2., 3., 4./)

	call fsub2(y,z)
	print *, "Z = " , z

end program sub2
