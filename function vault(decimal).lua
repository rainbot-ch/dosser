--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□ function vault( '%' ) □]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
---------------------------------------------------------------------------------------------
--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--


("|▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀ function safersex(target, stoploss, wagergoal, limitmaxbet, reserve) ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂|"

--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
---------------[[~~~~~~~~~~~~~start of setup variables~~~~~~~~~~~~~]]
-------------------------------------------------------------------[[↓ ]]
---------------[[↓ stop if set percentage of initial bankroll is won]] 
percentprofit   = 100	--%   
---------------[[↓ stop if set percentage of initial bankroll is lost]] 
percentloss     = 100 	--%   
---------------[[↓ stop if wager is bigger then target]] 
wagertarget     = 100 	--x
---------------[[↓ limit maxbet-amount in percent of your startingbalance]] 
maxbetpercent   = 100 	--%
---------------[[↓ limit maxbet based on chance ←| '0' = [disabled] | '1' = [enabled] |←]]  
automaxbetlimit = 0
---------------[[↓ of bankroll to keep secure in reserve]] 
reservepercent  = 0   	--%  
-------------------------------------------------------------------[[↑ ]]
---------------[[~~~~~~~~~~~~~end of setup variables~~~~~~~~~~~~~~~]]
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
initial         =balance
limitmaxbet     =(initial*(maxbetpercent/100))
target          =(initial+(initial*(percentprofit/100)))
stoploss        =(initial-(initial*(percentloss/100)))
reserve         =(initial*(reservepercent/100))
wagergoal       =(initial*wagertarget)
wagered         =0
function safersex(target,stoploss,wagergoal,limitmaxbet,reserve)
    wagered=(wagered+nextbet)
    if((balance-nextbet)<=stoploss)or(balance>=target)or(wagered>=wagergoal)or((balance-nextbet)<=reserve)then
        stop();ching();print("WE REACHED A SET TARGET CONDITION")
    end
    if(limitmaxbet<100)and(automaxbetlimit==0)then
        if(nextbet>limitmaxbet)then nextbet=limitmaxbet end
    end
    if(automaxbetlimit>0)and(limitmaxbet==100)then
        if(nextbet>=(chance*basebet))then nextbet=(chance*basebet)end
    end
end;safersex(target,stoploss,wagergoal,limitmaxbet,reserve);
  

"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░|")




("|▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀ function vault(decimal) ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂|"

reserve=50 --%
input={};input[1]=0
genesis=balance;loadbalancer,wallet=0,0
if(reserve>0)then wallet=(balance*(reserve/100))validator=(balance-wallet)else validator=balance end
function vault(decimal)
	wallet=wallet+(loadbalancer*(decimal/100))
		table.remove(input,1)
        	input[1]=loadbalancer
		validator=balance
   loadbalancer=0
end;

----------------------------------------[[↑ function dobet()]]

function banker()
	balance=(balance-wallet)
		loadbalancer=(loadbalancer+currentprofit)
			if((balance-validator)>0)and(loadbalancer>0)then vault(99)end
		if(((balance+wallet)-nextbet)<wallet)then stop()end
    return balance
end;banker();

----------------------------------------[[↓ gamelogic]]

function printwallet()
--for clear = 1, 25, 1 do print("\n")print("")end
print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
print("▓\tbankroll in play: "..string.format("%.8f",balance-reserve).." | in reserve: " .. string.format("%.8f",reserve).."\t\t ▓")
print("▓\tvault: " ..string.format("%.8f",wallet).." "..string.format("%.3f",((wallet/genesis)*100)).."% ".." |  last input was: "..string.format("%.8f",input[1]).."\t\t ▓")
if((balance+wallet)>=(genesis*2))then print("GGWP initial deposit doubled -> withdraw time and play with profit")end
print("▓\tloadbalancer: " .. string.format("%.8f",loadbalancer).." | validator difference: " .. string.format("%.8f",(balance-validator)).."\t\t ▓")
print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
end;printwallet();
  

"░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░|")
