!$ANDREW/lecture8/fcn1.f90

program fcn1

	implicit none
	real(kind=8) :: y,z
	real(kind=8), external :: f
	
	z = 3.
	y = f(z)
	print *, "The value of y is: ", y

end program fcn1

real(kind=8) function f(x)

	implicit none
	real(kind=8), intent(in) :: x

	f = x**2

end function f
