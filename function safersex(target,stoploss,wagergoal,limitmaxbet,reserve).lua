--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
-- ▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀  ҉ [░[□   function safersex()  □]░]  ҉  ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂--
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
---------------[[↓ limit maxbet-amount in percent of your startingbalance]] 
maxbetpercent   = 100   --%
---------------[[↓ limit maxbet based on chance ←| 'false' = [disabled] | 'true' = [enabled] |←]]  
automaxbetlimit = false
---------------[[↓ --% percent of initial bankroll to keep secure in the reserve-wallet]] 
reservepercent  = 33     --%  
---------------[[↓ --% percantage of each profitable (win) to be transferred into the virtual vault]]  
piggibank       = 33   --%
---------------[[~~~~~~~~~~~~~end of setup variables~~~~~~~~~~~~~~~]]--
initial      =  balance
limitmaxbet  = (initial*(maxbetpercent/100))
target       = (initial+(initial*(percentprofit/100)))
stoploss     = (initial-(initial*(percentloss/100)))
reserve      = (initial*(reservepercent/100))
wagergoal    = (initial*wagertarget)
wagered      = 0
function safersex(target,stoploss,wagergoal,limitmaxbet,reserve)
    wagered=(wagered+nextbet)
    if((balance-nextbet)<=stoploss)or(balance>=target)or(wagered>=wagergoal)or((balance-nextbet)<=reserve)then stop();ching();print("WE REACHED A SET TARGET CONDITION")end
        if(limitmaxbet<100)and(automaxbetlimit==0)then if(nextbet>limitmaxbet)then nextbet=limitmaxbet end end
            if(automaxbetlimit)and(limitmaxbet==100)then
        if(nextbet>(chance*basebet))then nextbet=(chance*basebet)end
    end
end;safersex(target,stoploss,wagergoal,limitmaxbet,reserve);

function dobet()------------------------[[ function dobet()]]
    
----------------------------------------[[↓ gamelogic]]



----------------------------------------[[↑ gamelogic]]

safersex(target,stoploss,wagergoal,limitmaxbet,reserve);

end-------------------------------------[[ end of dobet ]]

--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
