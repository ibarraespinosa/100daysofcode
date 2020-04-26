program temp_conversion
    implicit none
    real :: temp_f
    real :: temp_k

    write (*,*) "Ingresa temperatura en Farenheit"
    read (*,*) temp_f
    
    ! Convertir en kelvin
    temp_k = (5. / 9.) * (temp_f - 32.) + 273.15

    write (*,*) temp_f, "T farenheit, T kelvin = ", temp_k
end program temp_conversion