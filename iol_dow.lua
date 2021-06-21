chance     = 		  --c'mon if you dont know what chance is stop gambling lol xD
basebet    = 		  --basebet or 'balance/divider'
iol        = 		  --action on loss in percent '%'
dow        = 		  --action on win in percent '%'
reset      =  		--reset cycle on profit
stoploss   = 		  --reset cylce on loss
bethigh    = true	--bet over/under target number
nextbet    = basebet
round      = 0
wager      = 0
hibet      = 0
largeloss  = 0
highprofit = 0
startbal   = balance
resetstats()
function dobet()
        wager=wager+nextbet
        round=round+currentprofit
    if (win) then
        nextbet=previousbet*(1+(dow/100))
    else
        nextbet=previousbet*(1+(iol/100))
    end
    if round>=reset or round<=-stoploss then
       round=0
       nextbet=basebet
    end
    if largeloss<highprofit-profit then largeloss=highprofit-profit end
    if profit>highprofit then highprofit=profit end 
    if nextbet>hibet then hibet=nextbet end
    for clear=1,25,1 do print("\n")print("")end
    print("profit: "..string.format("%.8f",profit).." ("..string.format("%.4f",profit/startbal*100).."%)")
    print("highest bet: "..string.format("%.8f",hibet).." ("..string.format("%.4f",hibet/startbal*100).."%)")
    print("largest loss: "..string.format("%.8f",largeloss).." (-"..string.format("%.4f",largeloss/startbal*100).."%)")
    print("wager: "..string.format("%.8f",wager).." ("..string.format("%2.4f",(wager/startbal)).."x)")
    print("profit wagered: "..string.format("%.3f",(wager/profit)*100).."%")	
end
