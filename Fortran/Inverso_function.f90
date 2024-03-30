program main
    implicit none
    
    character(len=:), allocatable :: palavra
    integer :: n
    
    write(*,'(A)', advance = 'no') 'Insira quantos caracteres poderão ser inseridos na string: '
    read(*,*) n
    
    allocate(character(n) :: palavra)
    
    write(*,'(A)', advance = 'no') 'Insira a frase: '
    read(*,'(A)') palavra(1:n)
    
    palavra = trim(palavra)
    n = len(palavra)
    
    write(*,'(A)', advance='no') 'Frase inserida: '
    write(*,'(A)') palavra
    write(*,'(A)', advance='no') 'Frase ao contrario: '
    write(*,'(A)') reverse(palavra,n)

    contains
        function reverse(string, n) result(reverse_string)
            implicit none
    
            integer, intent(in) :: n
            character(len=n), intent(in) :: string
            character(len=n) :: reverse_string
    
            integer :: i
    
            do i = 1, n
                reverse_string(i:i) = string(n-i+1:n-i+1)
            end do
        end function reverse
    
end program main
