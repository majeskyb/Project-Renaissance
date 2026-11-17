1 cls
2 rem Smallest multiple 1-20
3 let A&&=0 : let N&&=0 : let F=0
10 do while F=0
                20 let A&&=A&&+1
                30 let N&&=A&&*20
                40 if (N&&/19)<>INT(N&&/19) then goto 200
                50 if (N&&/18)<>INT(N&&/18) then goto 200
                60 if (N&&/17)<>INT(N&&/17) then goto 200
                70 if (N&&/16)<>INT(N&&/16) then goto 200
                80 if (N&&/15)<>INT(N&&/15) then goto 200
                90 if (N&&/14)<>INT(N&&/14) then goto 200
                100 if (N&&/13)<>INT(N&&/13) then goto 200
                110 if (N&&/12)<>INT(N&&/12) then goto 200
                120 if (N&&/11)<>INT(N&&/11) then goto 200
                130 let F=1
200 loop
210 print N&&
220 end