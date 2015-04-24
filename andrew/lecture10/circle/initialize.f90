! $ANDREW/lecture10/circle/initialize.f90

subroutine initialize()

	use circle_mod, only: pi
	pi = acos(-1.d0)

end subroutine initialize
