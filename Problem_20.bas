' Factorial Digit Sum
CLS

OPTION _EXPLICIT

dim PASS as LONG
dim MAXDIGITS as LONG
dim CARRY as LONG
dim TEMP as LONG
dim FINAL as LONG
dim DIGITINDEX as LONG
CONST ARRAYCAPACITY=200
dim BIGNUM(ARRAYCAPACITY) as LONG

' Load the first value (1) into position 1
let BIGNUM(1)=1
let MAXDIGITS=1

' Loop 99 more times to find the answer to 100!
for PASS=2 to 100
    let CARRY=0
    ' Run up to the current length of BIGNUM
    FOR DIGITINDEX=1 to MAXDIGITS
        let TEMP=(BIGNUM(DIGITINDEX)*PASS)+CARRY
        let BIGNUM(DIGITINDEX)=TEMP mod 10
        let CARRY=TEMP\10
    next DIGITINDEX
    Do WHILE Carry > 0 : ' Catches CARRY values above single digit
        MaxDigits = MaxDigits + 1
        BigNum(MaxDigits) = Carry MOD 10
        Carry = Carry \ 10
    Loop
next PASS

' Add every digit based on MAXDIGITS
let FINAL=0
For PASS=1 to MAXDIGITS
    let FINAL=FINAL+BIGNUM(PASS)
next PASS

Print
print "Sum of all digits: ";FINAL
END