! Exemplo de derived type
type color
    integer :: hue, shade, intensity
    character(len=30) :: name
end type color

! DE ESTA FORMA, TYPE COLOR TIENE 3 COMPONENTES.
! HUE, SHADE, INTENSITY AND NAME

! Para definir una variable de tipo color, se hace
type(color) :: background

! de esta forma, background es una variable de tipo color, luego
background = color(0, 0, 0, "black")
! hue, shade e intensity son 0 y nombre es black
! Y para ver los valroes de background se hace
background%hue
background%shade
background%intensity
background%name

# hasta pagina 96