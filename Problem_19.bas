' Counting Sundays

Option _Explicit

Dim MONTHS(12) As Integer
Dim MONTH As Integer
Dim YEAR As Integer
Dim CURRENTWEEKDAY As Integer
Dim SUNDAYFIRSTCOUNT As Integer
Dim DAYS As Long

Cls

' Set length of months
Let MONTHS(1) = 31
Let MONTHS(2) = 28
Let MONTHS(3) = 31
Let MONTHS(4) = 30
Let MONTHS(5) = 31
Let MONTHS(6) = 30
Let MONTHS(7) = 31
Let MONTHS(8) = 31
Let MONTHS(9) = 30
Let MONTHS(10) = 31
Let MONTHS(11) = 30
Let MONTHS(12) = 31

' Set starting point for 1 Jan 1901 (Tuesday=2)
Let CURRENTWEEKDAY = 2
Let SUNDAYFIRSTCOUNT = 0

For YEAR = 1901 To 2000
    For MONTH = 1 To 12
        If CURRENTWEEKDAY = 0 Then
            Let SUNDAYFIRSTCOUNT = SUNDAYFIRSTCOUNT + 1
        End If
        Let DAYS = MONTHS(MONTH)
        If MONTH = 2 Then
            If YEAR Mod 4 = 0 Then
                Let DAYS = DAYS + 1
            End If
        End If
        Let CURRENTWEEKDAY = (CURRENTWEEKDAY + DAYS) Mod 7
    Next MONTH
Next YEAR

Print
Print "Total months starting on Sunday: "; SUNDAYFIRSTCOUNT
End
