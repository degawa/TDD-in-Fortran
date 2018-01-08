module MoneyTest
    implicit none
    private
    public :: testMultiplication

    contains
    
    subroutine testMultiplication()
        use class_Dollar,only:Dollar,assertEquals
        implicit none
        type(Dollar) :: five
        
        !call five%construct(5)
        five = Dollar(5)
        call five%times(2)
        call assertEquals(10, five%amount)
    end subroutine testMultiplication
    
end module MoneyTest