complex (kind=HIGH) x
integer (kind = SHORT) days_of_week
character (kind = ISO_10646, len=500) HAIKU
type MY_ARRAY (pick_kind, rows, cols)   ! Definicion de type
    integer, kind :: pick_kind
    integer, len :: rows, cols
    real (pick_kind) :: VALUES (rows, cols)
end type MY_ARRAY

type(MY_ARRAY) AA(HIGH, i, j)

! 