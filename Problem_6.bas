1 CLS
5 REM SUM SQUARE difference
10 LET SUMSQUARE#=0 : let SQUARESUM#=0
29 REM Find the square of the first 100 natural numbers
30 For I=1 to 100
                40 Let SUMSQUARE#=SUMSQUARE#+I^2
50 next I

99 REM Find the square of the sum of the first 10 natural numbers
100 for I=1 to 100
                110 let SQUARESUM#=SQUARESUM#+I
120 next I
130 let SQUARESUM#=SQUARESUM#^2

149 REM Find the differnce
150 let DIFF#=SQUARESUM#-SUMSQUARE#
 
199 REM Print the results
200 PRINT "SUM OF SQUARES","SQUARE OF SUMS","DIFFERENCE"
210 PRINT "--------------","--------------","----------"
220 Print SUMSQUARE#,,SQUARESUM#,,DIFF#
250 END