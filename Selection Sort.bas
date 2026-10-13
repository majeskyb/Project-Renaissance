10 Rem gen data for array
15 Input "How many numbers", N
20 Dim A(N)
25 Let SPOT = 0: Let TEMP = 0
30 For I = 1 To N
    40 Let A(I) = Int(Rnd * 100 + .5)
50 Next I

75 GoSub 500

120 Rem Selection sort?
130 For I = 1 To N - 1
    140 Let SPOT = I
    150 For J = I + 1 To N
        160 If A(J) >= A(SPOT) Then GoTo 180
        170 Let SPOT = J
    180 Next J
    200 If SPOT <> I Then Let TEMP = A(SPOT): Let A(SPOT) = A(I): Let A(I) = TEMP
210 Next I

220 Rem print results
230 GoSub 500
300 End

500 Rem print numbers subroutine
510 For P = 1 To N
    520 Print A(P);
    530 If (P / 10) <> Int(P / 10) Then GoTo 550
    540 Print
550 Next P
560 Print
570 Return
