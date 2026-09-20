
1 Rem Bubble sort and remove duplicates
2 Cls
5 Dim L(50), M(50)
6 Let LA = 0: Let LB = 0: Let MA = 0: Let V = 0: Rem Counters and temp variable

9 Rem Load data into ARRAY L, LA Counts
10 For I = 1 To 50
    15 Read V
    20 If V = 9999 Then GoTo 50
    30 Let L(I) = V: Let LA = LA + 1
40 Next I
50 If LA = 0 Then GoTo 999
59 Rem Sort Array L in Ascending order
60 For J = 1 To LA - 1
    70 For I = 1 To (LA - J)
        80 If L(I) <= L(I + 1) Then GoTo 100
        90 Let T = L(I): Let L(I) = L(I + 1): Let L(I + 1) = T
    100 Next I
110 Next J

120 Rem Copy Array L to M and remove duplicates, LB is used to check for duplicates
125 Let LB = L(1): Let M(1) = L(1): Let MA = MA + 1
130 For I = 2 To LA
    140 If L(I) = LB Then GoTo 170
    150 Let LB = L(I): Let MA = MA + 1
    160 Let M(MA) = L(I)
170 Next I

180 Rem Print results in column Format
190 Print "ORIGINAL DATA", "DEDUPLICATED"
200 Print "-------------", "------------"
210 Print
220 Rem Use largest Array to drive Print loop
230 Let MX = LA
240 If MA > LA Then Let MX = MA
250 For I = 1 To MX
    260 Rem Only print value if index is within ARRAY count
    270 If I <= LA Then Print L(I);
    280 Print Tab(15);
    290 If I <= MA Then Print M(I);
    300 Print
310 Next I
320 End

510 Data 80,70,40,90,95,38,85,42,60,70
520 Data 40,60,70,20,18,87,23,78,85,23
530 Data 9999

999 Print "No Data Found": End


