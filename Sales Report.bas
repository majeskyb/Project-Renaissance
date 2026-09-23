1 Rem Bubble sort Sales data in 5 parallel ARRAYs
2 Rem PRINT 3-column report: remaining batches & inclome generated
5 DIM ITEM$(10),MONDAY(10),SOLD(10),COST(10),PRICE(10)
10 LET TITEM$="" : LET TMONDAY=0 : LET TSOLD=0 : LET TCOST=0 : LET TPRICE=0 : LET TCOUNT=0

19 REM L=Read data into ARRAYs, TCOUNT tracks amount loaded
20 FOR I=1 to 20
    30 READ TITEM$,TMONDAY,TSOLD,TCOST,TPRICE
    40 IF TITEM$="END" THEN GOTO 120
    50 LET ITEM$(I)=TITEM$
    60 LET MONDAY(I)=TMONDAY
    70 LET SOLD(I)=TSOLD
    80 LET COST(I)=TCOST
    90 LET PRICE(I)=TPRICE
    100 LET TCOUNT=TCOUNT+1
110 NEXT I
120 IF TCOUNT=0 THEN GOTO 999

129 REM Calculate remaining batches LEFT(MONDAY-SOLD) and INCOME generated ((Price-Cost)*Sold))
130 DIM LEFT(10),INCOME(10)
140 FOR I=1 to TCOUNT
    150 LET LEFT(I)=MONDAY(I)-SOLD(I)
    160 LET INCOME(I)=((PRICE(I)-COST(I))*SOLD(I))
170 NEXT I

179 REM Bubble sort Arrays Based on INCOME in descending order (Swaps all 7 ARRAYs)
180 For J = 1 To TCOUNT - 1
    190 For I = 1 To (TCOUNT - J)
        200 If INCOME(I) >= INCOME(I + 1) Then GoTo 350: Rem Larger # already 1st
        210 Rem ---SWAPS INCOME ARRAY---
        220 Let T = INCOME(I): Let INCOME(I) = INCOME(I + 1): Let INCOME(I + 1) = T
        230 Rem ---SWAPS ITEM$ ARRAY---
        240 Let Z$ = ITEM$(I): Let ITEM$(I) = ITEM$(I + 1): Let ITEM$(I + 1) = Z$
        250 Rem ---SWAPS MONDAY ARRAY---
        260 Let T = MONDAY(I): Let MONDAY(I) = MONDAY(I + 1): Let MONDAY(I + 1) = T
        270 Rem ---SWAPS SOLD ARRAY---
        280 Let T = SOLD(I): Let SOLD(I) = SOLD(I + 1): Let SOLD(I + 1) = T
        290 Rem ---SWAPS COST ARRAY---
        300 Let T = COST(I): Let COST(I) = COST(I + 1): Let COST(I + 1) = T
        310 Rem ---SWAPS PRICE ARRAY---
        320 Let T = PRICE(I): Let PRICE(I) = PRICE(I + 1): Let PRICE(I + 1) = T
        330 Rem ---SWAPS LEFT ARRAY---
        340 Let T = LEFT(I): Let LEFT(I) = LEFT(I + 1): Let LEFT(I + 1) = T
    350 NEXT I
360 NEXT J

369 REM Print results in 3-column Format (ITEM$-LEFT-INCOME)
370 Print "ITEM", "REMAINING BATCHES", "INCOME EARNED"
380 Print "----", "-----------------", "-------------"
390 Rem Use TCOUNT to drive Print loop
410 For I = 1 To TCOUNT
    420 Rem PRINT USING for cleaner output (Really only need for INCOME)
    430 Let OUTPUTL$ = "#####": Let OUTPUTE$ = "$$####.##"
    440 Print ITEM$(I);
    450 Print ,
    460 Print Using OUTPUTL$; LEFT(I),
    470 Print ,,
    480 Print Using OUTPUTE$; INCOME(I),
    490 Print
500 NEXT I 
600 END


800 DATA "Bobbins",220,105,8.20,10.98
810 DATA "Buttons",550,320,5.50,6.95
820 DATA "Needles-1",450,295,2.74,3.55
830 DATA "Needles-2",200,102,7.25,9.49
840 DATA "Pins",720,375,4.29,5.89
850 DATA "Thimbles",178,82,6.22,7.59
860 DATA "Thread-A",980,525,4.71,5.99
870 DATA "Thread-B",1424,718,7.42,9.89
880 DATA "END",0,0,0,0

999 Print "NO DATA": End