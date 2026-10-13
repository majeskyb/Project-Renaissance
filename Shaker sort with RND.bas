1 REM Generate N random integers into an array, print, shaker sort, print the sorted results
10 Let N=0
15 Input "How many numbers to generate and sort",N
16 INPUT "Print SORTed numbers first?(Y/N)", P$
17 IF P$="Y" or P$="y" then let P1=1 : goto 20
18 Let P1=0
20 DIM SORT(N)
30 FOR I=1 to N
    40 LET SORT(I)=INT(RND*1000+.5)
50 Next I

60 IF P1=0 then goto 110
70 For I=1 to N step 10
    80 Print SORT(I);",";SORT(I+1);",";SORT(I+2);",";SORT(I+3);",";SORT(I+4);",";SORT(I+5);",";SORT(I+6);",";SORT(I+7);",";SORT(I+8);",";SORT(I+9);
    90 Print
100 Next I

109 REM *** SHAKER SORT ***
110 L = 1: R = N - 1: REM SET INITIAL LEFT AND RIGHT BOUNDARIES
120 SWAPFLG = 0      : REM TRACK IF ANY SWAPS HAPPENED
130 REM --- PASS 1: FORWARD (LEFT TO RIGHT) ---
140 FOR I = L TO R
    150 IF SORT(I) <= SORT(I+1) THEN GOTO 180
    160 T = SORT(I): SORT(I) = SORT(I+1): SORT(I+1) = T
    170 SWAPFLG = 1
180 NEXT I
190 R = R - 1        : REM THE LARGEST ELEMENT IS NOW IN PLACE AT THE RIGHT
200 REM --- PASS 2: BACKWARD (RIGHT TO LEFT) ---
210 FOR I = R TO L STEP -1
    220 IF SORT(I) <= SORT(I+1) THEN GOTO 250
    230 T = SORT(I): SORT(I) = SORT(I+1): SORT(I+1) = T
    240 SWAPFLG = 1
250 NEXT I
260 L = L + 1        : REM THE SMALLEST ELEMENT IS NOW IN PLACE AT THE LEFT
270 REM --- CHECK IF WE NEED TO KEEP SHAKING ---
280 IF SWAPFLG = 1 AND L <= R THEN GOTO 120 : REM REPEAT IF SWAPS OCCURRED

290 For I=1 to N step 10
    300 Print SORT(I);",";SORT(I+1);",";SORT(I+2);",";SORT(I+3);",";SORT(I+4);",";SORT(I+5);",";SORT(I+6);",";SORT(I+7);",";SORT(I+8);",";SORT(I+9);
    310 Print
320 Next I
330 END