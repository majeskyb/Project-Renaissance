1 cls
5 REM Sieve of Eratosthenes
10 input "Find Primes up to what number: ";N#
20 dim PRIMES#(N#)

49 rem fill the Sieve
50 for I#=1 to N#
    60 let PRIMES#(I#)=I#
70 next I#

100 let P#=2
110 print P#;" "; : let SUM#=SUM#+P# : rem Prints prime, adds prime to running sum of Primes
115 let COUNT=COUNT+1 : REM Count # of Primes found

150 for I#=P# to N# step P#
160 let PRIMES#(I#)=0
170 next I#

199 REM Find the next available number
200 let P#=P#+1
210 if P#=N# then
    220 print
    230 print "Number of Primes: ";COUNT
    240 goto 330
250 end if

300 if PRIMES#(P#)<>0 then goto 110 else goto 200

330 print
340 print "Sum of Primes: ";SUM#

400 end