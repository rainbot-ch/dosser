--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
-- ▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀  ҉ [░[□  function vault( '%' ) □]░]  ҉  ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂--
--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--[░[□> =================== <□]░]--¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
---------------------------------------------------------------------------------------------
--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--


----------------------------------------[[↓ initial settings]]



----------------------------------------[[↑ initial settings]]

--[[~~~~vault configuration~~~~~]]
        reserve   = 33 --% percent of initial bankroll to keep secure in the reserve-wallet
        piggibank = 33 --% percantage of each profitable (win) to be transferred into the virtual vault
--[[~~~~~~~~~~~~~~~~~~~~~~~~~~~]]   
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

function printwallet()
    for clear = 1, 25, 1 do print("\n")print("")end
        print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
            print("▓\t bankroll in play:\t\t"..string.format("%.8f",balance).."\t|\tin reserve: \t\t\t "..string.format("%.8f",genesis*(reserve/100)).."\t  ▓")
                print("▓\t vault:\t\t\t"..string.format("%.8f",wallet).." "..string.format("%.3f",((wallet/genesis)*100)).."%\t|\tlast input was: \t\t "..string.format("%.8f",input[1]).."\t  ▓")
                        print("▓\t loadbalancer:\t\t\t"..string.format("%.8f",(1+(loadbalancer)-1)).."\t|\tvalidator difference: \t "..string.format("%.8f",(-(balance-validator))).."\t  ▓")
                            print(" ▓▓□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□▓▓")
                    if((balance+wallet)>=(genesis*2))then
                print("\n\n$$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$")
            print("🐀 GG-WP initial deposit doubled -> withdraw time and play with profit 🐀")
        print("$$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$ [̲̅$̲̅(̲̅ιοο̲̅)̲̅$̲̅] $$$\n\n")end
end;printwallet();

end-------------------------------------[[ end of dobet ]]

--░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░--
