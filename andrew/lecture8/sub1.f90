!$ANDREW/lecture8/sub1.f90

program sub1

	implicit none
	real(kind=8) :: a
	real(kind=8) :: b

	a = 5.	
	call f(a,b)
	print *, "The value of b is: ", b

end program sub1

subroutine f(x,y)

	implicit none
	real(kind=8), intent(in) :: x
	real(kind=8), intent(out) :: y

	y = x**2

end subroutine f
