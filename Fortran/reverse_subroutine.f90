subroutine reverse(string,n)
    implicit none
    
    integer :: i,n
    character(len=n), intent(in) :: string
    character(len=len(string)) :: reverse_string

    n = len(string)

    do i = 1, n
        reverse_string(i:i) = string(n-i+1:n-i+1)
    end do
    
    write(*,'(A)') reverse_string(1:n)

end subroutine reverse

program main
    implicit none
    
    character(:), allocatable :: palavra
    integer :: n
    
    write(*,'(A)', advance = 'no') 'Insira quantos caracteres poderão ser inseridos na string: '
    read(*,*) n
    
    allocate(character(n) :: palavra)
    
    write(*,'(A)', advance = 'no') 'Insira a frase: '
    read(*,'(A)') palavra(1:n)
    
    palavra = trim(palavra)
    n= len(palavra)
    call reverse(palavra,n)
    
end program main