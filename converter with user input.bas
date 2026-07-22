1 home: Rem miles to kilometers converter
10 Print "*** Converter ***"
20 Print
30 Input "Choose 1 for miles to km, 2 for km to miles"; X
32 If (X <= 0 Or X >= 3 Or Int(X) <> X) Then GoTo 30: Rem error checking
33 Input "Enter your number to convert"; Y
35 If X = 1 Then GoTo 40
37 If X = 2 Then GoTo 45
40 Print Y; " miles is "; Y * 1.609344; "km.": GoTo 50
45 Print Y; "Kilometers is"; Y * 0.621371; "miles": GoTo 50
50 End



