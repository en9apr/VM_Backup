!$ANDREW/lecture7/fortran/ifelse1.f90

program ifelse1

	implicit none

	integer :: i

	i = 3

	if(i <= 2) then
		print *, "i is less than 2: i = ", i
	else if (i /= 5) then
		print *, "i is more than 2 but not equal to 5: i = ", i
	else
		print *, "i is equal to 5: i = ", i 
	endif

end program ifelse1

