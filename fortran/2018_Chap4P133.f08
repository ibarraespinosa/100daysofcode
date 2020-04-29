program st2
    implicit none
    
    integer :: n = 0
    real :: std_dev = 0.
    real :: sum_x = 0.
    real :: sum_x2 = 0.
    real :: x = 0.
    real :: x_bar

    do
        write (*,*) "Enter number"
        read (*,*) x
        write (*,*) "Number ", x

        if (x < 0) exit
        ! Otherwise
        n = n +  1
        sum_x = sum_x + x
        sum_x2 = sum_x2 + x**2
    end do

    ! Check
    if (n < 2) then !por lo menos dos valores
        write(*,*) "Por lo menos dos valores please"
    else ! podemos continuar
    x_bar = sum_x / real(n)
    std_dev = sqrt(real(n) * sum_x2 - sum_x**2) / (real(n) * real(n - 1))

    write (*,*) "Mean is ", x_bar
    write (*,*) "SD is ", std_dev
    write (*,*) "n is ", n
    end if
end program st2
