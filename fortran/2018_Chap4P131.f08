program st1
    implicit none
    
    integer :: n = 0
    real :: std_dev = 0., sum_x = 0., sum_x2 = 0., x = 0., x_bar

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

    x_bar = sum_x / real(n)
    std_dev = sqrt(real(n) * sum_x2 - sum_x**2) / (real(n) * real(n - 1))

    write (*,*) "Mean is ", x_bar
    write (*,*) "SD is ", std_dev
    write (*,*) "n is ", n
end program st1
