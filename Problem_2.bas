1 Cls
5 Let A&& = 1: Let B&& = 1: Let I&& = 0
10 Let A&& = A&& + B&&
20 If A&& > 4000000 Then GoTo 80
30 If (A&& / 2) = Int(A&& / 2) Then Let I&& = I&& + A&&
40 Let B&& = A&& + B&&
50 If B&& > 4000000 Then GoTo 80
60 If (B&& / 2) = Int(B&& / 2) Then Let I&& = I&& + B&&
70 GoTo 10
80 Print I&&
100 End
