resetstats()
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
---------------------------------------------------------------------------------------------
--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
-- ▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀  ҉ [░[□    function knox()     □]░]  ҉  ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
---------------------------------------------------------------------------------------------
--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--

----------------------------------------[[↓ initial settings]]



----------------------------------------[[↑ initial settings]]

---------------[[~~~~~~~~~~~~~start of setup variables~~~~~~~~~~~~~]]--
---------------[[↓ stop if set percentage of initial bankroll is won]] 
percentprofit   = 100   --%   
---------------[[↓ stop if set percentage of initial bankroll is lost]] 
percentloss     = 100   --%   
---------------[[↓ stop if wager is bigger then target]] 
wagertarget     = 100   --x
---------------[[↓ --% percent of initial bankroll to keep secure in the reserve-wallet]] 
reservepercent  = 33     --%  
---------------[[↓ --% percantage of each profitable (win) to be transferred into the virtual vault]]  
piggibank       = 33   --%
---------------[[↓ limit maxbet-amount in percent of your startingbalance]] 
maxbetpercent   = 0.001  --%
---------------[[~~~~~~~~~~~~~end of setup variables~~~~~~~~~~~~~~~]]--
initial      =  balance
limitmaxbet  = (initial*(maxbetpercent/100))
target       = (initial+(initial*(percentprofit/100)))
stoploss     = (initial-(percentloss/100))
reserve      = (initial*(reservepercent/100))
wagergoal    = (initial*wagertarget)
wagered      = 0
input        = {}
input[1]     = 0
genesis      = balance
loadbalancer = 0
wallet       = 0
if (reserve>0)then wallet=(reserve) validator=(balance-wallet) else validator=balance end
----------------------------------------[[↓ vault]]
function vault(decimal)
    wallet=wallet+(loadbalancer*(decimal/100))
        table.remove(input,1)
            input[1]=loadbalancer
        validator=balance
   loadbalancer=0
end;
----------------------------------------[[↓ safersex]]
function safersex(target,stoploss,wagergoal,limitmaxbet,reserve)
    wagered=(wagered+nextbet)
        if((balance-nextbet)<=stoploss)or(balance>=target)or(wagered>=wagergoal)or((balance-nextbet)<=reserve)then stop();ching();print("WE REACHED A SET TARGET CONDITION")end
            if(maxbetpercent~=100)then
        if(nextbet>limitmaxbet)then nextbet=limitmaxbet end
    end
end;

function dobet()------------------------[[ function dobet()]]
  
function banker()
    balance=(balance-wallet)
        loadbalancer=(loadbalancer+currentprofit)
            if((balance-validator)>0)and(loadbalancer>0)then vault(piggibank)end
        if(((balance+wallet)-nextbet)<wallet)then stop()end
    return balance
end;banker();

----------------------------------------[[↓ gamelogic]]



----------------------------------------[[↑ gamelogic]]

safersex(target,stoploss,wagergoal,limitmaxbet,reserve);
  
function printwallet()
    for clear = 1, 25, 1 do print("\n")print("")end
        print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
            print("▓\t bankroll in play:\t\t"..string.format("%.8f",balance).."\t|\tin reserve: \t\t\t "..string.format("%.8f",reserve).."\t  ▓")
                print("▓\t vault:\t\t\t"..string.format("%.8f",wallet).." "..string.format("%.3f",((wallet/genesis)*100)).."%\t|\tlast input was: \t\t "..string.format("%.8f",input[1]).."\t  ▓")
                        print("▓\t loadbalancer:\t\t\t"..string.format("%.8f",(1+(loadbalancer)-1)).."\t|\tvalidator difference: \t "..string.format("%.8f",(-(balance-validator))).."\t  ▓")
                            print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
                                if (percentloss~=100) then print("stoploss: "..string.format("%.8f",stoploss)) end
                                    if (maxbetpercent~=100) then print("limitmaxbet: "..string.format("%.8f",limitmaxbet).." nextbet: "..string.format("%.8f",nextbet)) end
                                if (percentloss~=100) then print("stoploss: "..string.format("%.8f",stoploss)) end
                            if (wagertarget~=100) then print("wagergoal: "..string.format("%.8f",wagergoal)) end
                        if (percentprofit~=100) then print("target: "..string.format("%.8f",target)) end 
                    if((balance+wallet)>=(genesis*2))then
                print("\n\n$$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$")
            print("GGWP initial deposit doubled -> withdraw time and play with profit")
        print("$$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$\n\n")end
end;printwallet();

end-------------------------------------[[ end of dobet ]]


--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
