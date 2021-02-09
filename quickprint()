resetseed();resetstats();value=0;avehit=0;totalloss=0;total=0;high=0;low=0;counter=0;losecount=0;wager=0;wagerpercbal=0;largebalance=0;loseamount=0;largestloss=0;losspercent=0;hibet=0;initialbalance=balance
swapseed = 9898
coinvalue = 168







if bets % swapseed == 0 then resetseed() end if balance>=largebalance then largebalance=balance;loseamount=0 else loseamount=largebalance-balance end;if loseamount>=largestloss then largestloss=loseamount end;if nextbet>=hibet then hibet=nextbet end;losspercent=largestloss/initialbalance*100;profitpercentage=profit/(balance-profit)*100;payout=99/chance;wager=wager+nextbet;wagerpercbal=wager/initialbalance;wager=wager+nextbet;value=wager*coinvalue if (bethigh == true) then direction = "high" if (bethigh == false) then direction = "low" if lastBet.roll <= chance then low = low + 1 end if lastBet.roll >= (100 - chance) then high = high + 1 end if win then total = total + 1 totalloss = totalloss + losecount avehit = totalloss / total losecount = 0 else losecount = losecount + 1 end i=1;for i=1,25 do print("\n")print(" ")end 
print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□")
print("low :" ..low.. " | " .."high :" ..high)
print("average losses : "..string.format("%.2f",avehit))
print("payout: "..string.format("%.2f",payout).."x".." @ "..string.format("%.2f",chance).."% chance |" .. tostring(direction)) 
print("profit: "..string.format("%.8f",profit) .. " | " ..string.format("%.4f",profitpercentage).."%")
print("largest loss: "..string.format("%.8f",largestloss).." | "..string.format("%.4f",losspercent).."%") 
print("wager : "..string.format("%.8f",wager).." | "..string.format("%2.4f",wagerpercbal) .."x | " .. string.format("%.2f", value) .. "$")
print("\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")
