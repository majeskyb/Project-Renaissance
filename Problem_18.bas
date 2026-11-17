' Dimension array and variables
Option _Explicit
Dim NUMBERS(1 To 15, 1 To 15) As Integer
Dim ROW As Integer
Dim COL As Integer

Cls

Call TriangleData(NUMBERS())

For ROW = 14 To 1 Step -1
    For COL = 1 To ROW
        If NUMBERS(ROW + 1, COL) >= NUMBERS(ROW + 1, COL + 1) Then
            Let NUMBERS(ROW, COL) = NUMBERS(ROW, COL) + NUMBERS(ROW + 1, COL)
        Else
            Let NUMBERS(ROW, COL) = NUMBERS(ROW, COL) + NUMBERS(ROW + 1, COL + 1)
        End If
    Next COL
Next ROW

Print NUMBERS(1, 1)
End

Sub TriangleData (NUMBERS() As Integer)
    Dim R As Integer
    Dim C As Integer
    Dim TEMP As Integer

    Restore TriangleValues

    For R = 1 To 15
        For C = 1 To R
            Read TEMP
            Let NUMBERS(R, C) = TEMP
        Next C
    Next R


    TriangleValues:
    Data 75
    Data 95,64
    Data 17,47,82
    Data 18,35,87,10
    Data 20,04,82,47,65
    Data 19,01,23,75,03,34
    Data 88,02,77,73,07,63,67
    Data 99,65,04,28,06,16,70,92
    Data 41,41,26,56,83,40,80,70,33
    Data 41,48,72,33,47,32,37,16,94,29
    Data 53,71,44,65,25,43,91,52,97,51,14
    Data 70,11,33,28,77,73,17,78,39,68,17,57
    Data 91,71,52,38,17,14,91,43,58,50,27,29,48
    Data 63,66,04,68,89,53,67,30,73,16,69,87,40,31
    Data 04,62,98,27,23,09,70,98,73,93,38,53,60,04,23

End Sub