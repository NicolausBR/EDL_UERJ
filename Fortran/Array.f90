Program Array
    implicit none

    integer :: i,n, maior, posi
    integer, allocatable :: valores(:)
    maior = -huge(0)
    
    write(*,'(A)') 'Quantos valores terão no array?'
    read(*,*) i
    allocate(valores(i))
    
    do n = 1, i
        write(*,'(A,I0,A)',advance='no') 'Qual valor vai ser inserido na posição ', n,': '
        read(*,*) valores(n)
        
        if (valores(n)>maior) then
            maior = valores(n)
            posi = n
        end if
    end do
    
    write(*,'(A,I0,A,I0)') 'O maior valor inserido é ', maior, ' inserido na posição ', posi
    
End Program Array
