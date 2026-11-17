1 CLS
5 REM Power Digit Sum
10 dim PASS as LONG
20 dim MAXDIGITS as LONG
30 dim CARRY as LONG
40 dim TEMP as LONG
50 dim FINAL as LONG
55 dim DIGITINDEX as LONG
60 dim BIGNUM(350) as LONG

100 REM Load the first value (2^1=2) into position 1
110 let BIGNUM(1)=2
120 let MAXDIGITS=1

200 rem Loop 999 more times to find the answer to 2^1000
210 for PASS=2 to 1000
    220 let CARRY=0
    230 rem Run up to the current length of BIGNUM
    240 FOR DIGITINDEX=1 to MAXDIGITS
        245 if MAXDIGITS>=350 then 
            246 print "Array capacity exceeded"
            247 end
        248 end if
        250 let TEMP=(BIGNUM(DIGITINDEX)*2)+CARRY
        260 let BIGNUM(DIGITINDEX)=TEMP mod 10
        270 let CARRY=TEMP\10
    280 next DIGITINDEX
    290 if CARRY>0 then
        300 let MAXDIGITS=MAXDIGITS+1
        310 let BIGNUM(MAXDIGITS)=CARRY
    320 end if
330 next PASS

390 let FINAL=0
399 rem Add every digit based on MAXDIGITS
400 For PASS=1 to MAXDIGITS
    410 let FINAL=FINAL+BIGNUM(PASS)
420 next PASS

500 Print
510 print "Sum of all digits: ";FINAL
520 END