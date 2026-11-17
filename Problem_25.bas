' 1000-digit Fibonacci Number

Option _Explicit

Dim SEQUENCE(2, 1500) As Integer
Dim MAXDIGITS As Integer
Dim DIGITINDEX As Integer
Dim CARRY As Integer
Dim TERM As Long
Dim FLIP As Integer
Dim SET As Integer
Dim FINAL As String
Dim TEMP As Integer

' load first value into Array
Let SEQUENCE(1, 1) = 1
Let SEQUENCE(2, 1) = 1
Let MAXDIGITS = 1
Let TERM = 2
Let FLIP = 1

' Calculating Fibonacci numbers
Do Until MAXDIGITS >= 1000
    Let CARRY = 0
    Let TERM = TERM + 1
    ' Pick a num, run up to the current length of SEQUENCE
    For DIGITINDEX = 1 To MAXDIGITS
        TEMP = SEQUENCE(1, DIGITINDEX) + SEQUENCE(2, DIGITINDEX) + CARRY
        SEQUENCE(FLIP, DIGITINDEX) = TEMP Mod 10
        CARRY = TEMP \ 10
    Next DIGITINDEX
    If CARRY > 0 Then
        Let MAXDIGITS = MAXDIGITS + 1
        Let SEQUENCE(FLIP, MAXDIGITS) = CARRY
    End If
    If FLIP = 1 Then Let FLIP = 2 Else Let FLIP = 1
Loop

' Pick the final sequence to print
If FLIP = 1 Then Let SET = 2 Else Let SET = 1

Let FINAL = ""
For DIGITINDEX = MAXDIGITS To 1 Step -1
    Let FINAL = FINAL + LTrim$(Str$(SEQUENCE(SET, DIGITINDEX)))
Next DIGITINDEX

Print
Print "Term Count: "; TERM
Print "Fibonacci Number: "; FINAL
End
