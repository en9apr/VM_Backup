!$ANDREW/lecture8/arraypassing1.f90

program arraypassing1

	implicit none
	real(kind=8), dimension(3) :: x
	real(kind=8) :: y
	integer :: i,j

	x = (/1., 1., 1./)
	y = 2.
	i = 1
	j = 2

	call setvals(x)

	print *, "x = ", x
	print *, "y = ", y
	print *, "i = ", i
	print *, "j = ", j

end program arraypassing1

subroutine setvals(a)

	implicit none
	real(kind=8), dimension(3), intent(inout) :: a
	integer :: m

	do m = 1, 3
		a(m) = 5.
		enddo
	
end subroutine setvals
