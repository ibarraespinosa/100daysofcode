program build_machine
    type component
    sequence
    character(len=20) name
    integer catalog_no
    real weight
    end type component
    type(component) parts, motor(20)
    common /warehouse/ parts(100)
    total_weight=0.0
    total_weight = total_weight + motor(1)%weight
end program build_machine

subroutine get_part(part, name)
    type component
    sequence
    character(len=20) name
    integer catalog_no
    real weight
    end type component

    type(component) part, parts
    character(len=*) name
    common /warehouse/ parts(100)
    do i = 1, 100
        if(name .eq. parts(i)%name) then
            part = parts(i)
            return
        endif
    enddo

    part%name = "none"
    part%catalog_no = 0
    part%weight = 0.0
    print *, "Part not available"
    end subroutine get_part