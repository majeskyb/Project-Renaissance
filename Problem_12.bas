 1 CLS
5 REM Highly Divisible Triangular Number
10 let NUM#=0 : let DIVISORS=0 : let LIMIT#=1 : let I#=1 : let TRIANGLE=0

100 do while DIVISORS<501
    120 let DIVISORS=0
    130 let TRIANGLE=TRIANGLE+1
    150 let NUM#=NUM#+TRIANGLE
    170 let LIMIT#=INT(SQR(NUM#))
    180 for I#=1 to LIMIT#
        190 IF NUM# MOD I#=0 then
            200 if I#*I#=NUM# then
                210 Let DIVISORS=DIVISORS+1
                220 Else let DIVISORS=DIVISORS+2
            230 end if
        240 end if
    260 next I#
    265 Print TRIANGLE,NUM#,DIVISORS
270 loop

400 Print
410 print "Triangle Number: ",TRIANGLE
420 Print "Number of Divisors: ",DIVISORS
430 Print "Value of ";TRIANGLE;" SUM: ", NUM#
500 end