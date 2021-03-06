! Created by EverLookNeverSee@GitHub on 5/27/20
! This Program computes mean and standrd deviation of n experimental sequence.

subroutine mean(n, seq, mean_value)
    implicit none
    ! declaring parameters
    integer :: i, n
    real, intent(in) :: seq(n)
    real, intent(out) :: mean_value
    real :: sum = 0.
    ! Calculating mean value and returning it
    do i = 1, n
        sum = sum + seq(i)
    end do
    mean_value = sum / n
    return
end subroutine mean

subroutine standrd_deviation(n, seq, x_bar, sd)
    implicit none
    ! declaring parameters
    integer :: i, n
    real, intent(in) :: seq(n)
    real, intent(in) :: x_bar
    real, intent(out) :: sd
    real :: sum = 0.
    ! calculating sum of elements minus mean value
    do i = 1, n
        sum = sum + (seq(i) - x_bar) ** 2
    end do
    ! calculating square root and returning result
    sd = sqrt(sum / (n - 1))
    return
end subroutine standrd_deviation


program main
    implicit none
    ! declaring variables
    real, allocatable, dimension(:) :: A
    real :: mean_value, sta_dev
    integer :: n, i
    ! specifying number of elements in sequence
    do
        print *,"Enter nubmer of elements in sequence:"
        read *, n
        if (n <= 0) then
            print *, "Please enter a positive integer!"
            cycle
        end if
        exit
    end do
    ! allocating memory space for array
    allocate(A(n))
    ! getting elements of the sequence
    do i = 1, n
        print *, "A(", i, "):"
        read *, A(i)
    end do
    ! calling subroutines and printing results
    call mean(n, A, mean_value)
    call standrd_deviation(n, A, mean_value, sta_dev)
    print *, "mean:", mean_value, "standrd deviation:", sta_dev
end program main