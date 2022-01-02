! brew install gfortran
! gfortran -o morning morning.f90 && ./morning
!
! FIX IT
Program Morning
      CHARACTER(LEN=4) :: str1, str2*7, final
      str1 = 'Good'
      str2 = 'morning'
      final = str1 // str1
      Print  "(2A)", str1, str1, final
End Program
