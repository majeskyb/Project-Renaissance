5 home: Rem BASSIC BOOLEAN operators AND, OR and NOT demo

20 Input "Enter value of A: "; A
30 Input "Enter value of B: "; B

35 Rem The following is not true if A and B are greater than 5
40 If (A > 5 And B > 5) Then Print "Both A and B are greater than 5"

45 Rem The following is true if A or B is greater than 5
50 If (A > 5 Or B > 5) Then Print "A or B is greater than 5"

55 Rem The following is true if A is NOT greater than 5
60 If Not (A > 5) Then Print "A is not greater than 5"

65 Rem The following is true if B is NOT greater than 5
70 If Not (B > 5) Then Print "B is not greater than 5"

75 Rem The following is true if A or B is not greater than 5
80 If Not (A > 5 And B > 5) Then Print "Either A or B is not greater than 5"

85 Rem The following is true if A and B are not greater than 5
90 If Not (A > 5 Or B > 5) Then Print "Both A and B are less than or equal to 5"

95 Rem The following is identical to line 90
100 If (A <= 5 And B <= 5) Then Print "Both A and B are less than or equal to 5 #2"

105 Rem Negation of negation gives the original statement: TRUE
110 If Not (Not (A < 5)) Then Print "A is smaller than 5"

115 Rem The following is identical to line 40.
120 If (Not (A <= 5)) And (Not (B <= 5)) Then Print "Both A and B are greater than 5"

125 Rem The following is always true
130 If (A < B) Or (A >= B) Then Print "Always true"

135 Rem The following is always false
140 If (A < B) And (A >= B) Then Print "Always false"

145 Rem The following is also always true
150 If (A > B) Or Not (A > B) Then Print "Always true #2"

155 Rem The following is never true
160 If (A > B) And Not (A > B) Then Print "Always false #2"

200 End

