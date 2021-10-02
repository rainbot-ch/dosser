luck,tmp,lucktotal=0,0,0;resetstats();
function calculateluck()
    lucktotal=luck*((wins+losses)-1)
    if (win) then
        lucktotal=lucktotal+(100/chance)*100
        tmp=(lucktotal/(wins+losses))
        luck=tmp
    end;
    print("luck: "..string.format("%.4f",luck).." % in "..bets.." bets")
end;--calculateluck();
