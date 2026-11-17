
10 Let NUM&& = 0: Let NUM1&& = 0: Let REV&& = 0: Let R1&& = 0: Rem NUM=original number | NUM1=Retained number | REV=reversed number | R1=remainder (from MOD)
15 Let X = 0: Let Y = 0: Let PALCHECK&& = 0
20 Rem HEAVY looping!
30 For I = 999 To 100 Step -1
    40 For J = I To 100 Step -1
        50 Let NUM&& = I * J
        55 Let NUM1&& = NUM&&
        60 GoSub 200
        70 If NUM1&& = REV&& Then GoSub 300
    80 Next J
90 Next I
100 If PALCHECK&& = O Then Print "Error: None found": End
150 Print X; "X"; Y; "="; PALCHECK&&; " which is the largest Palindrome found."
160 End

199 Rem Reversing subroutine
200 Let R1&& = 0: Let REV&& = 0
210 Do While NUM&& > 0
    220 Let REV&& = REV&& * 10
    230 Let R1&& = NUM&& Mod 10
    240 Let NUM&& = (NUM&& - R1&&) / 10
    250 Let REV&& = REV&& + R1&&
260 Loop
270 Return

300 Rem Check that Palindrome!
310 If PALCHECK&& > NUM1&& Then GoTo 350
320 Let PALCHECK&& = NUM1&&: Let X = I: Let Y = J
350 Return