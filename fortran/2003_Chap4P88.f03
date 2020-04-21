module proc_component_example
    type t
    real :: a
    procedure(print_me), pointer, nopass :: proc
    end type t

    contains
    
    subroutine print_me(arg, lun)
        type(t), intent(in) :: arg
        integer, intent(in) :: lun
        write (lun,*) arg%a
    end subroutine print_me

    subroutine print_my_square (arg, lun)
        type(t), intent(in) :: arg
        integer, intent(in) :: lun
        write (lun,*) arg%a**2
    end subroutine print_my_square
end module proc_component_example

    program main
        use proc_component_example
        use iso_fortran_env, only :: output_unit
        type(t) :: x
        x%a = 2.71828
        x%proc => print_me
        call x%proc(x,output_unit)
        x%proc => print_my_square
        call x%proc(x, output_unit)

    end program main