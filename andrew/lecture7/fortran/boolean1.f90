!$ANDREW/lecture7/fortran

program boolean1

	implicit none

	integer :: i,k
	logical :: ever_zero
	
	ever_zero = .false.

	do i = 1,10
		k = (3 * i) - 1
		ever_zero = (ever_zero .or. (k == 0))
		enddo
	
	if(ever_zero) then
		print *, "3i - 1 is zero for some i"
	else
		print *, "3i - 1 is never zero for all i tested"
	endif

end program boolean1
