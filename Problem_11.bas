1 Cls
5 Rem Largest Product in a Grid
10 Let TEMP = 0: Let TOTAL# = 0: Let ANS# = 0
20 Dim CURRENT#(4), HIGH#(4)
100 Rem Load data into matrix
110 Dim GRID(20, 20)
120 For I = 1 To 20
    130 For J = 1 To 20
        140 Read TEMP
        150 Let GRID(I, J) = TEMP
    160 Next J
170 Next I

199 Rem Check Rows
200 For I = 1 To 20
    210 For J = 1 To 17
        220 Let TOTAL# = 0
        230 Let CURRENT#(1) = GRID(I, J)
        240 Let CURRENT#(2) = GRID(I, J + 1)
        250 Let CURRENT#(3) = GRID(I, J + 2)
        260 Let CURRENT#(4) = GRID(I, J + 3)
        270 Let TOTAL# = CURRENT#(1) * CURRENT#(2) * CURRENT#(3) * CURRENT#(4)
        280 If TOTAL# > ANS# Then GoSub 2000
    290 Next J
300 Next I

399 Rem Check Columns
400 For I = 1 To 17
    410 For J = 1 To 20
        420 Let TOTAL# = 0
        430 Let CURRENT#(1) = GRID(I, J)
        440 Let CURRENT#(2) = GRID(I + 1, J)
        450 Let CURRENT#(3) = GRID(I + 2, J)
        460 Let CURRENT#(4) = GRID(I + 3, J)
        470 Let TOTAL# = CURRENT#(1) * CURRENT#(2) * CURRENT#(3) * CURRENT#(4)
        480 If TOTAL# > ANS# Then GoSub 2000
    490 Next J
500 Next I

599 Rem Check Blackslash
600 For I = 1 To 17
    610 For J = 1 To 17
        620 Let TOTAL# = 0
        630 Let CURRENT#(1) = GRID(I, J)
        640 Let CURRENT#(2) = GRID(I + 1, J + 1)
        650 Let CURRENT#(3) = GRID(I + 2, J + 2)
        660 Let CURRENT#(4) = GRID(I + 3, J + 3)
        670 Let TOTAL# = CURRENT#(1) * CURRENT#(2) * CURRENT#(3) * CURRENT#(4)
        680 If TOTAL# > ANS# Then GoSub 2000
    690 Next J
700 Next I

799 Rem Check Forwardslash
800 For I = 1 To 17
    810 For J = 4 To 20
        820 Let TOTAL# = 0
        830 Let CURRENT#(1) = GRID(I, J)
        840 Let CURRENT#(2) = GRID(I + 1, J - 1)
        850 Let CURRENT#(3) = GRID(I + 2, J - 2)
        860 Let CURRENT#(4) = GRID(I + 3, J - 3)
        870 Let TOTAL# = CURRENT#(1) * CURRENT#(2) * CURRENT#(3) * CURRENT#(4)
        880 If TOTAL# > ANS# Then GoSub 2000
    890 Next J
900 Next I

1000 Print
1010 Print "Factors for largest answer: "; HIGH#(1); ","; HIGH#(2); ","; HIGH#(3); ","; HIGH#(4)
1020 Print "Largest Product is: "; ANS#
1100 End

2000 Let ANS# = TOTAL#
2010 Let HIGH#(1) = CURRENT#(1)
2020 Let HIGH#(2) = CURRENT#(2)
2030 Let HIGH#(3) = CURRENT#(3)
2040 Let HIGH#(4) = CURRENT#(4)
2050 Return

Data 08,02,22,97,38,15,00,40,00,75,04,05,07,78,52,12,50,77,91,08
Data 49,49,99,40,17,81,18,57,60,87,17,40,98,43,69,48,04,56,62,00
Data 81,49,31,73,55,79,14,29,93,71,40,67,53,88,30,03,49,13,36,65
Data 52,70,95,23,04,60,11,42,69,24,68,56,01,32,56,71,37,02,36,91
Data 22,31,16,71,51,67,63,89,41,92,36,54,22,40,40,28,66,33,13,80
Data 24,47,32,60,99,03,45,02,44,75,33,53,78,36,84,20,35,17,12,50
Data 32,98,81,28,64,23,67,10,26,38,40,67,59,54,70,66,18,38,64,70
Data 67,26,20,68,02,62,12,20,95,63,94,39,63,08,40,91,66,49,94,21
Data 24,55,58,05,66,73,99,26,97,17,78,78,96,83,14,88,34,89,63,72
Data 21,36,23,09,75,00,76,44,20,45,35,14,00,61,33,97,34,31,33,95
Data 78,17,53,28,22,75,31,67,15,94,03,80,04,62,16,14,09,53,56,92
Data 16,39,05,42,96,35,31,47,55,58,88,24,00,17,54,24,36,29,85,57
Data 86,56,00,48,35,71,89,07,05,44,44,37,44,60,21,58,51,54,17,58
Data 19,80,81,68,05,94,47,69,28,73,92,13,86,52,17,77,04,89,55,40
Data 04,52,08,83,97,35,99,16,07,97,57,32,16,26,26,79,33,27,98,66
Data 88,36,68,87,57,62,20,72,03,46,33,67,46,55,12,32,63,93,53,69
Data 04,42,16,73,38,25,39,11,24,94,72,18,08,46,29,32,40,62,76,36
Data 20,69,36,41,72,30,23,88,34,62,99,69,82,67,59,85,74,04,36,16
Data 20,73,35,29,78,31,90,01,74,31,49,71,48,86,81,16,23,57,05,54
Data 01,70,54,71,83,51,54,69,16,92,33,48,61,43,52,01,89,19,67,48
