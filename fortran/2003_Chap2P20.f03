complex (kind=HIGH) x
integer (kind = SHORT) days_of_week
character (kind = ISO_10646, len=500) HAIKU
type MY_ARRAY (pick_kind, rows, cols)   ! Definicion de type
    integer, kind :: pick_kind
    integer, len :: rows, cols
    real (pick_kind) :: VALUES (rows, cols)
end type MY_ARRAY

type(MY_ARRAY) AA(HIGH, i, j)

! HIGH. SHORT, ISO_10646 named integer constants
! length of character string HAIKU is 500
! AA is of tupe MY_ARRAY, its single component
! VALUES is a real array of kind HIGH and dimension (i,j)
! Entonces, AA es como se designa al array 
! (internamente VALUES en type MY_ARRAY)
! Structure, donde se definen los types
! rank es el numero de dimensiones dle array
! maximo 7 dimensiones por array
! size numero total de elementos
! shape es dim en R, lisst of extents
! Si dos arrays  tiene la imsmo shape, son *comformable*

!!
! Dynamic data
! data objects may be dynamic in:
!- size
!- type
!- length
! NO EN REAN O KIND

! Dynamic data objects are:
!- polymorphic objects
!- pointers
!- allocatable objects
!- automatic objects
! The CLASS keyword us used to declare polymorphic entities
! An object declared with CLASS(*) is an unlimited polymorphic objects with
! not declared type

! Pointer
! Procedures and data objects may be declared to have a POINTER
! A procedure pointer must be a procedure entity
! Accomplished by allocation
! Se usa el simbolo => Esto dice que es un pointer

real, target :: VECTOR(100)
real, pointer :: ODDS(:)
ODDS => VECTOR(1:100:2)
! The pointer assignment statement associats
! ODDS with the odd element of VECTOR!

! If a pointer is declaredto be array, 
! its size and shape can change dynamically, but not rank

real, pointer :: lengths(:)
allocate (lengths (200))

! allocatable
real, allocatble :: lengths (:)
allocate (lengths (200))

! Pointers may be used to create dynamic data structures
! such as linked lists an

! Only pointers and allocatable objects may be allocated
! SELECT TYPE construct choose a block of code
! based on the dynamic type of polymorphic selector
