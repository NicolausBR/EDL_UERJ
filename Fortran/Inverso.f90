function reverse(string) result(reverse_string)
    implicit none
    
    character(:), allocatable, intent(in):: string
    character(len = len(string)) :: reverse_string
    integer :: i
    
    do i = 1, len(string)
        reverse_string(i:i) = string(len(string)-i+1:len(string)-i+1)
    end do
    
    reverse_string = reverse_string
end function reverse

program main
    implicit none
    
    character(:), allocatable :: palavra
    integer :: n
    
    write(*,'(A)', advance = 'no') 'Insira quantos caracteres poderão ser inseridos na string: '
    read(*,*) n
    
    allocate(character(n) :: palavra)
    
    write(*,'(A)', advance = 'no') 'Insira a frase: '
    read(*,'(A)') palavra(1:n)
    
    write(*,'(A)', advance = 'no') reverse(palavra)
    
end program main
