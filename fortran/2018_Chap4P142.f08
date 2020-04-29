program st3
    implicit none

    integer :: i
    integer :: n = 0
    real :: std_dev
    real :: var
    real :: sum_x = 0.
    real :: sum_x2 = 0.
    real :: x = 0.
    real :: x_bar

    ! datos!
    write (*,*) "Ingresa numero de puntos"
    read (*,*) n

    ! Revisa si hay suficientes datos de entrada
    if (n < 2) then !Pocos datos
        write (*,*) "Por lo menos dos valores plis"
    else
        do i = 1, n
            ! lee valores
            write (*,*) "Entra numeros"
            read (*,*) x
            write (*,*) "Numero es ", x
            ! Acumula sumas
            sum_x = sum_x + x
            sum_x2 = sum_x2 + x**2
        end do
        ! calcula estadisticas
        x_bar = sum_x / real(n)
        ! interesante que simplemente con real
        ! se transforma en real
        std_dev = sqrt((real(n)*sum_x2 - sum_x**2) / real(n) * real(n-1))
        var = (real(n)*sum_x2 - sum_x**2) / real(n) * real(n-1)
    end if
    write (*,*) "La media es ", x_bar
    write (*,*) "La sd es", std_dev
    write (*,*) "var es ", var
    write (*,*) "var/media", var/x_bar
    write (*,*) "n es ", n



end program st3
