! Created by EverLookNeverSee@GitHub on 6/3/20
! For more information see FCS/img/Exercise_08_b.png

function fact(n) result(factorial)
    integer :: n, i
    real :: factorial, temp
    if (n < 0) then
        factorial = -1.0    ! error
        else if(n == 0) then
        factorial = 1.0     ! factorial of zero
        else
        temp = 1.0
        do i = 2, n
            temp = temp * i
        end do
        factorial = temp
    end if
end function fact
