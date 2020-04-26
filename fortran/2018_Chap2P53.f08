program example
    implicit none
    
    integer :: ix
    real :: theta
    logical :: test
    ix = 1
    test = .true.
    theta = 3.141593
    write (*,*) 'ix = ', ix
    write (*,*) 'theta = ', theta
    write (*,*) 'cos(theta) = ', cos(theta)
    write (*,*) real(ix), nint(theta)

end program example