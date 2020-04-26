program name
    implicit none
    
    real :: x, y, fun
    write (*,*) "Enter the coefficients x and y"
    read (*,*) x,y
    write (*,*) "x and y are", x, y

teste:    if((x>=0.) .and. (y>=0.)) then
        fun = x + y
    else if ((x>=0.) .and. (y<0.)) then
        fun = x+y**2
    else if ((x < 0.) .and. (y >= 0.)) then
        fun = x**2 + y
    else
        fun = x**2 + y**2
    end if teste

    write (*,*) "fun is", fun

end program name