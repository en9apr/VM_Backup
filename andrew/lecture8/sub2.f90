!$ANDREW/lecture8/sub2.f90

program sub2

	implicit none
	real(kind=8), dimension(3) :: a
	real(kind=8), dimension(3) :: b
	integer :: m

	a = (/2., 3., 4./)
	m = size(a)
	call g(a,b,m)

	print *, "the value of b is: ", b

end program sub2

subroutine g(x,y,n)

	implicit none
	real(kind=8), dimension(n), intent(in) :: x
	real(kind=8), dimension(n), intent(out) :: y
	integer :: n

	y = x**2 

end subroutine g
