program c14
    implicit none
    
    real, parameter :: lamda = 0.00012097
    real ::age
    real :: percent
    real :: ratio

    write (*,*) "Enter the percentage of C14 remaining:"
    read (*,*) percent

    ratio = percent/100.
    age = (-1.0 / lamda) * log(ratio)

    write (*,*) "The age is", age
end program c14