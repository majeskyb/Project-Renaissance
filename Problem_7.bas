1 Cls
5 Rem 10001st Prime
10 Let COUNT = 1: Let PRIME = 0: Let TESTNUM# = 1: Let REAL# = 1
30 Rem Need to figure out way to switch from brute force- remove numbers that are multiples of values already checked?

49 Rem Start your Loop!
50 Do While COUNT < 10001
    60 Let TESTNUM# = TESTNUM# + 2
    65 Let PRIME = 1
    66 Let I# = 3
    70 Do While (I# * I#) <= TESTNUM#: Rem only testing until it isn't a prime
        80 If TESTNUM# / I# = Int(TESTNUM# / I#) Then Let PRIME = 0: Let I# = TESTNUM#
        100 If PRIME = 1 Then Let I# = I# + 2
    105 Loop
    110 If PRIME = 1 Then
        120 Let COUNT = COUNT + 1
        130 Let REAL# = TESTNUM#
        140 Print COUNT, REAL#
    150 End If
160 Loop

199 Rem Print the results
200 Print "Prime Count", "Prime Value"
210 Print "-----------", "-----------"
220 Print COUNT, REAL#
230 End
