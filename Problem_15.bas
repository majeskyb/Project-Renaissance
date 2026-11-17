1 Cls
5 Rem Lattice Paths using Pascal's Triangle
10 Dim ROW As Long
20 Dim COL As Long
30 Dim ANS As Double
40 Dim GRID(21, 21) As Double
50 Dim FILL As Integer

99 Rem Prepopulate 1st row and column
100 For FILL = 1 To 21
    110 Let GRID(FILL, 1) = 1
    120 Let GRID(1, FILL) = 1
130 Next FILL

199 Rem Calculate the remaining cells
200 For ROW = 2 To 21
    210 For COL = 2 To 21
        220 Let GRID(ROW, COL) = GRID(ROW - 1, COL) + GRID(ROW, COL - 1)
    230 Next COL
240 Next ROW

300 Let ANS = GRID(21, 21)
310 Print "Paths found: "; ANS
320 End
