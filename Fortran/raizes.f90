!Código simples para verificar se uma equação de segundo grau possui raízes reais

subroutine avaliar(a,b,c)
    implicit none
    integer :: a,b,c,valor
    valor = (b*b - 4*a*c)
    if (valor > 0) then
        write(*,'(A)') 'A equação possui duas raízes reais.'
    
    else if (valor == 0) then
        write(*,'(A)') 'A equação possui uma raíz real.'
        
    else
        write(*,'(A)') 'A equação não possui raízes reais'
    
    end if
end subroutine avaliar

Program Hello
    implicit none

    integer :: a,b,c

    write(*,'(A)') "Insira os seguintes valores da equação de segundo grau:"
    write(*,'(A)',advance ='no') "a=" 
    read(*,*) a 
    write(*,'(A)',advance ='no') "b="
    read(*,*) b
    write(*,'(A)',advance ='no') "c="
    read(*,*) c
    call avaliar(a,b,c)

End Program Hello
