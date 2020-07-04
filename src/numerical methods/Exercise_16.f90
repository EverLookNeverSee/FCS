! Program    : Exercise_16
! Author     : FortranFan
! Reference  : https://en.wikipedia.org/wiki/Gauss%27s_continued_fraction#cite_note-8
!
! Description:
! An example implementation that illustrates how to employ a
! RECURIVE function in Fortran to compute the tangent of x using
! Lambert's continued fraction dating back to 1768 which gives
! tan(x) = x/(1-x**2/(3-x**2/(5-x**2/(7-x**2/..))))
!

module kinds_m
    ! Returns the kind value of a real data type with decimal precision of at least P digits
    integer, parameter :: WP = selected_real_kind( p=12 ) ! Select suitable precision
end module kinds_m
