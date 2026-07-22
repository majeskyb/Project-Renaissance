5 home: Rem This program demonstrates potential IF-THEN-ELSE bug
20 Input "Enter A:"; A
30 If A < 10 Then A = A + 10: Print "Line 30. A="; A: GoTo 50
35 Rem bug fixed: lines 30 & 40 never run together
40 If A >= 10 Then A = A - 10: Print "Line 40. A="; A
50 End

