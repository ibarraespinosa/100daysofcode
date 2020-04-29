program doy
    implicit none
! Calculando el dia del anho
! 365 y 366 for leap years
! Years evenly divisible by 400 are leap years
! Years evenly divisible by 100 but not 400 are not leap years
! All years divisible by 4 but not100 are leap years
! All other years are not leap years

    integer :: day
    integer :: day_of_year
    integer :: i
    integer :: leap_day
    integer :: month
    integer :: year

    write (*,*) "Calcula dia del ano con fecha"
    write (*,*) "ingresa mes (1-12), dia(1-31) y"
    write (*,*) " ano"
    read (*,*) month, day, year
    ! es leap year?
    if(mod(year,400) == 0) then
        leap_day = 1    !leap year
    else if (mod(year, 100) == 0 ) then
        leap_day = 0
    else if (mod(year, 4) == 0 ) then
        leap_day = 1
    else
        leap_day = 0
    end if
    
    ! calcula
    day_of_year = day
    do i = 1, month - 1
        select case (i)
        case (1,3,5,7,8,10, 12)
            day_of_year = day_of_year + 31
        case (4,6,9,11)
            day_of_year = day_of_year + 30
        case (2)
            day_of_year = day_of_year + 28 + leap_day
        end select
    end do

    write (*,*) "Day = ", day
    write (*,*) "Month = ", month
    write (*,*) "Year = ", year
    write (*,*) "day of the year = ", day_of_year
end program doy
