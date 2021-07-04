t1=string.format("%f",os.clock())
function timeseed(num)
    t2=string.format("%f",os.clock())
          print(round(t1+t2))
    return math.floor((num*100)+0.05)
end;if timeseed(t1+t2)%2==1 then resetseed()end;


if math.floor(lastBet.roll*100+0.5)%2==0 then resetseed()end;


if math.random(9999)%3==0 then resetseed()end;
