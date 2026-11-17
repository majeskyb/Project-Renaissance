1 Cls
5 ' Number Letter Counts

9 ' Declare loop controls and running totals
10 Dim NINETYNINE(10, 10) As Integer
25 Dim HUNDREDS(10, 2) As Integer
20 Dim FILL As Integer
30 Dim X As Integer
40 Dim Y As Integer
50 Dim N As Integer
55 Dim DUBDIGIT As Integer: ' variable to hold under 100
60 Dim TotalLetters As Long
70 Dim CurrentCount As Long

99 ' Fill arrays for 1-99, Hundreds
100 GoSub 1000

200 Let TotalLetters = 11: ' Start with one thousand counted so we don't need the IF statement

210 For N = 1 To 999
    215 Let X = 0: Let Y = 0: Let CurrentCount = 0: ' Reset X-Y coordinates for new number and current Count
    220 If N > 99 Then
        230 Let X = N \ 100
        235 Let DUBDIGIT = N Mod 100
        240 IF DUBDIGIT <> 0 THEN LET Y = 1 ELSE LET Y = 0
        290 Let CurrentCount = HUNDREDS(X, Y)
    300 End If
    305 If N < 100 Then Let DUBDIGIT = N
    310 Let X = DUBDIGIT \ 10
    320 Let Y = DUBDIGIT Mod 10
    330 Let CurrentCount = CurrentCount + NINETYNINE(X, Y)
    340 Let TotalLetters = TotalLetters + CurrentCount
350 Next N

400 Print "Total letters used: "; TotalLetters
450 End


999 ' Sub to fill first 99 number count
1000 Let NINETYNINE(0, 1) = 3: ' Load the value for 1
1010 Let NINETYNINE(0, 2) = 3: ' Load the value for 2
1020 Let NINETYNINE(0, 3) = 5: ' Load the value for 3
1030 Let NINETYNINE(0, 4) = 4: ' Load the value for 4
1040 Let NINETYNINE(0, 5) = 4: ' Load the value for 5
1050 Let NINETYNINE(0, 6) = 3: ' Load the value for 6
1060 Let NINETYNINE(0, 7) = 5: ' Load the value for 7
1070 Let NINETYNINE(0, 8) = 5: ' Load the value for 8
1080 Let NINETYNINE(0, 9) = 4: ' Load the value for 9

1090 Let NINETYNINE(1, 0) = 3: ' Load the value for 10
1100 Let NINETYNINE(1, 1) = 6: ' Load the value for 11
1110 Let NINETYNINE(1, 2) = 6: ' Load the value for 12
1120 Let NINETYNINE(1, 3) = 8: ' Load the value for 13
1130 Let NINETYNINE(1, 4) = 8: ' Load the value for 14
1140 Let NINETYNINE(1, 5) = 7: ' Load the value for 15
1150 Let NINETYNINE(1, 6) = 7: ' Load the value for 16
1160 Let NINETYNINE(1, 7) = 9: ' Load the value for 17
1170 Let NINETYNINE(1, 8) = 8: ' Load the value for 18
1180 Let NINETYNINE(1, 9) = 8: ' Load the value for 19

1190 Let NINETYNINE(2, 0) = 6: ' Load the value for 20
1200 Let NINETYNINE(3, 0) = 6: ' Load the value for 30
1210 Let NINETYNINE(4, 0) = 5: ' Load the value for 40
1220 Let NINETYNINE(5, 0) = 5: ' Load the value for 50
1230 Let NINETYNINE(6, 0) = 5: ' Load the value for 60
1240 Let NINETYNINE(7, 0) = 7: ' Load the value for 70
1250 Let NINETYNINE(8, 0) = 6: ' Load the value for 80
1260 Let NINETYNINE(9, 0) = 6: ' Load the value for 90

1300 For FILL = 21 To 99
    1310 Let X = FILL \ 10
    1320 Let Y = FILL Mod 10
    1330 Let NINETYNINE(X, Y) = NINETYNINE(X, 0) + NINETYNINE(0, Y)
1340 Next FILL

1399 ' Fill the Hundreds counts
1400 Let HUNDREDS(1, 0) = 10: ' Load value for 100
1410 Let HUNDREDS(2, 0) = 10: ' Load value for 200
1420 Let HUNDREDS(3, 0) = 12: ' Load value for 300
1430 Let HUNDREDS(4, 0) = 11: ' Load value for 400
1440 Let HUNDREDS(5, 0) = 11: ' Load value for 500
1450 Let HUNDREDS(6, 0) = 10: ' Load value for 600
1460 Let HUNDREDS(7, 0) = 12: ' Load value for 700
1470 Let HUNDREDS(8, 0) = 12: ' Load value for 800
1480 Let HUNDREDS(9, 0) = 11: ' Load value for 900

1500 For FILL = 1 To 9
    1510 Let HUNDREDS(FILL, 1) = HUNDREDS(FILL, 0) + 3
1520 Next FILL
1550 Return
