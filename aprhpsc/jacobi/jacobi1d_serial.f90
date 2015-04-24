! ---
! $APRHPSC/jacobi/jacobi1d_serial.f90
! ---
! Jacobi iteration for 1D Poisson Problem
! d2u/dx2 = f(x)
! ---
program jacobi1d_serial

    implicit none
    integer :: n, i, iter, maxiter 
    real(kind=8) :: uleft, uright, dx, tol, dumax, t1, t2
    real(kind=8), dimension(:), allocatable :: x, u, uold, f
    real(kind=8), intrinsic :: exp
! ---
! Outputs: x(i) (distance), u(i) (temperature) to file
! Example use: make test FNAME=jacobi_serial
! ---    
!    i:  0,  1,.. nx, nx+1 
!     (uleft)       (uright)
! ---
	n = 100
! ---
! Allocate storage (including boundary values):
! ---
    allocate(x(0:n+1), u(0:n+1), uold(0:n+1), f(0:n+1))
! ---
! Open a file to write to:
! ---
    open(unit=20, file="heatsoln.txt", status="unknown")
! ---
! Timer started:
! ---
    call cpu_time(t1)
! ---
! Grid spacing:
! ---
    dx = 1.d0 / (n+1.d0)
! ---
! Boundary conditions:
! ---
    uleft = 20.d0
    uright = 60.d0
! ---
! Initialisation:
! ---
    do i=0,n+1
	! ---
	! Grid points:
	! ---
        x(i) = i*dx
	! ---
	! Source term:
	! ---
        f(i) = 100.d0*exp(x(i))
	! ---
	! Initial guess:
	! ---
        u(i) = uleft + x(i)*(uright-uleft)
    enddo
! ---
! Tolerance:
! ---
    tol = 0.1d0 * dx**2.d0
    print *, "Convergence tolerance: tol = ",tol
! ---
! Maximum number of iterations:
! ---   
    maxiter = 100000
    print *, "Maximum number of iterations: maxiter = ",maxiter
! ---
! Initialise old values to be equal to initial guess:
! --- 
    uold = u
! ---
! Jacobi iterations:
! ---
    do iter=1,maxiter
	! ---
	! Value for comparing with maximum:
	! ---
        dumax = 0.d0
	! ---
	! Loop over points in the domain (excluding boundaries)
	! and compute the new values of u(i):
	! ---
        do i=1,n
            u(i) = 0.5d0*(uold(i-1) + uold(i+1) + dx**2.d0*f(i))
            dumax = max(dumax, abs(u(i)-uold(i)))
        enddo
	! ---
	! Check for convergence:
	! ---
        if (dumax .lt. tol) exit
	! ---
	! Old values are current values (for next iteration):
	! --- 
    	do i=1,n
        	uold(i) = u(i)
        enddo
    enddo
! ---
! Timer stopped:
! ---
    call cpu_time(t2)
! ---
! Print the CPU time and number of iterations:
! ---
    print '(" CPU time = ",f12.8, " seconds")',t2-t1
    print *, "Total number of iterations: ",iter
    print *, "Maximum error: ",dumax
! ---
! Write x and u to the file:
! ---
    write(20,*) "          x                  u"
    do i=0,n+1
        write(20,'(2e20.10)'), x(i), u(i)
    enddo
! ---
! Print where the solution is saved:
! ---
    print *, "Solution is in heatsoln.txt"
! ---
! Close the file:
! ---
    close(20)

end program jacobi1d_serial
