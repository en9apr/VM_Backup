! $ANDREW/lecture10/sub2mod.f90

module sub2mod

	contains

		subroutine fsub2(a,b)

			real(kind=8), dimension(:), intent(in) :: a
			real(kind=8), dimension(size(a)), intent(out) :: b
			
			b = a**2

		end subroutine fsub2

end module sub2mod


