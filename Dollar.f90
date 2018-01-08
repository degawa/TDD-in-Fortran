module class_Dollar
    implicit none
    private
    public :: assertEquals
    
    type,public :: Dollar
        integer,public :: amount
        contains
        procedure,public,pass :: construct
        procedure,public,pass :: times
    end type Dollar
    
    interface assertEquals
        procedure :: assertEqualsToInteger
    end interface

    contains
    
    subroutine construct(this, amount)
        implicit none
        class(Dollar),intent(inout) :: this
        integer,intent(in) :: amount

        this%amount = amount
    end subroutine construct

    subroutine times(this,multiplier)
        implicit none
        class(Dollar),intent(inout) :: this
        integer,intent(in) :: multiplier

        this%amount = this%amount*multiplier
    end subroutine times

    subroutine assertEqualsToInteger(value1,value2)
        implicit none
        integer,intent(in) :: value1
        integer,intent(in) :: value2

        if(value1 == value2)then
            print *,'test passed'
            return
        else
            stop 'test faild'
        end if
    end subroutine assertEqualsToInteger

end module class_Dollar