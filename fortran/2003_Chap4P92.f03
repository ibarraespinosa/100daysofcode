module shop
    type component
    character(len=20) name
    integer catalog_no
    real weight
    end type component

    contains
    
    subroutine get_part(part, name)
        type(component) part
        characteR(len=*) name
        do i=1,100
            if(name == parts(u)%name) then
                part = parts(i)
                return
            endif
        enddo
        print *, "Part not available"
        part%name = "none"
        part%catalog_no = 0
        part%weight = 0.0
        end subroutine get_part

        end module shop

    program build_machine
        use shop
        type(component) motor(20)
        total_weight = 0.0
        call get_part(motor(1), "valve")
        total_weight = total_weight + motor(1)%weight
    end program build_machine