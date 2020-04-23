module procedure_binding_example
    type t
    real :: a

    contains

    procedure, pass(arg) :: print_me
    procedure, pass(Arg) :: print_my_square

    end type t

    subroutine print_me (arg, lun)
        type(t), intent(in) :: arg
        integer, intent(in) :: lun
        write (lun,*) arg%a
    end subroutine print_me

    subroutine print_my_square (arg, lun)
        type(t), intent(in) :: arg
        integer, intent(in) :: lun
        write(lun,*) arg%a**2
    end subroutine print_my_square

end module procedure_binding_example

program main
    use procedure_binding_example
    use iso_fortran_env, only :: output_unit
    type(t) :: xorx%a = 2.71828
    call x%print_me(output_unit)
    call x%print_my_square(output_unit)
end program main