1 Cls
5 Rem Find the largest Prime Factor for 600851475143
10 Let N# = 600851475143: Let FACTOR# = 2: Let ANSWER# = 0

49 Rem Factor out the Factors
50 If N# / FACTOR# = Int(N# / FACTOR#) Then
    60 Let N# = N# / FACTOR#
    65 Let ANSWER# = FACTOR#
    70 GoTo 50
80 End If

99 Rem Start incrementing through the Primes
100 If FACTOR# = 2 Then
    110 Let FACTOR# = 3
120 Else Let FACTOR# = FACTOR# + 2
130 End If

150 If (FACTOR# * FACTOR#) <= N# Then GoTo 50

200 If N# > 1 Then Let ANSWER# = N#
250 Print "Largest Prime Factor is: "; ANSWER#
300 End
