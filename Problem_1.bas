5 Let I = 0: Let A = 0
10 For I = 1 To 999
    20 If (I / 3) = Int(I / 3) Then Let A = A + I: GoTo 40
    30 If (I / 5) = Int(I / 5) Then Let A = A + I
40 Next I
50 Print A
60 End