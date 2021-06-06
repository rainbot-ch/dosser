-------------------------------------------------------------------[[ values ]]    --[[initialbalance=balance;value=0;avehit=0;totalloss=0;total=0;high=0;low=0;losecount=0;wager=0;largebalance=0;loseamount=0;largestloss=0;hibet=0]]
resetstats();initialbalance=balance;value,avehit,totalloss,total,high,low,losecount,wager,largebalance,loseamount,largestloss,hibet=0,0,0,0,0,0,0,0,0,0,0,0
swapseed=0
coinvalue=1


-------------------------------------------------------------------[[ print() ]]
function quickprint()
  wager=wager+nextbet;if swapseed>0 then if bets%swapseed==0 then resetseed()end end;if balance>=largebalance then largebalance=balance;loseamount=0 else loseamount=largebalance-balance end;if loseamount>=largestloss then largestloss=loseamount end;if nextbet>=hibet then hibet=nextbet end;if bethigh==true then direction="high"if bethigh==false then direction="low"end;if lastBet.roll<=chance then low=low+1 end;if lastBet.roll>=100-chance then high=high+1 end;if win then total=total+1 end;totalloss=totalloss+losecount;avehit=totalloss/total;losecount=0 else losecount=losecount+1 end
  i=1;for i=1,25 do print("\n")print(" ")end 
  print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□")
  print("low: "..low.." | ".."high: "..high)
  print("average losses: "..string.format("%.2f",avehit))
  print("divider: "..math.floor(balance/basebet))
  print("payout: "..string.format("%.2f",(99/chance)).."x".." @ "..string.format("%.2f",chance).."% chance | "..tostring(direction))
  print("profit: "..string.format("%.8f",profit) .. " | " ..string.format("%.4f",(profit/(balance-profit)*100)).."%")
  print("largest loss: "..string.format("%.8f",largestloss).." | "..string.format("%.4f",(largestloss/initialbalance*100)).."%")
  print("highest bet: "..string.format("%.8f",hibet).." | "..string.format("%.4f",(hibet/initialbalance*100)).."%")
  print("wager: "..string.format("%.8f",wager).." | "..string.format("%2.4f",(wager/initialbalance)).."x | "..string.format("%.2f",(wager*coinvalue)).."$")
  print("\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")
end;quickprint();
