10 Rem Special Pythagorean Triplet, where A<B<C and A+B+C=1000
20 For A = 1 To 1000
    30 For B = A To (500 - (A / 2))
        40 Let C = 1000 - A - B
        50 If C ^ 2 = (A ^ 2 + B ^ 2) Then GoTo 200
    60 Next B
70 Next A
80 End
200 Let PROD&& = A * B * C
205 Print A; ","; B; ","; C; "="; PROD&&
210 End
