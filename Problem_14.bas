1 Cls
5 Rem Longest Collatz Sequence
10 Let N&& = 0: Let CYCLE&& = 0: Let CURRENT&& = 0: Let MAX&& = 0
20 Dim CACHE&&(1000000)

99 Rem Loops for Cycles
100 For N&& = 2 To 999999
    110 Let CURRENT&& = N&&: Let CYCLE&& = 0
    120 Do While CURRENT&& > 1
        130 If CURRENT&& > 1000000 GoTo 180
        135 If CACHE&&(CURRENT&&) > 0 Then
            140 Let CYCLE&& = CYCLE&& + CACHE&&(CURRENT&&)
            150 Let CURRENT&& = 1
            160 GoTo 260
        170 End If
        180 If CURRENT&& > 1 Then
            190 If CURRENT&& / 2 <> CURRENT&& \ 2 Then
                200 Let CURRENT&& = ((3 * CURRENT&&) + 1) / 2
                210 Let CYCLE&& = CYCLE&& + 2
            220 Else
                225 Let CURRENT&& = CURRENT&& / 2
                230 Let CYCLE&& = CYCLE&& + 1
            240 End If
        250 End If
    260 Loop
    270 Let CACHE&&(N&&) = CYCLE&&
    280 If CYCLE&& > MAXCYCLE&& Then
        290 Let MAX&& = N&&
        300 Let MAXCYCLE&& = CYCLE&&
    310 End If
320 Next N&&

400 Print
410 Print "Number with largest Cycle Count: ", MAX&&
420 Print "Largest Cycle Count: ", MAXCYCLE&&
