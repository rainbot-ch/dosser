                                                                                -- 61 73 79 6D 65 74 72 69 63 61 6C  6F 72 64 65 72 

      -- .'.                   ..'''' ``..     ..''       .'. .`.      
    -- .''```.              .''           ``.''         .'   `   `.     
  -- .'       `.         ..'                |         .'           `.  
-- .'           `. ....''                   |       .'               `.    
-- _|)  (/) (_/_  __<  (|)  ( '    )  --o  | |  _|)           (_)    )  (_)_ (|)    )                                                                                                                                                                                                                                           
-- *   *  ***    ** 
   -- *  *   * **  *                              
 -- **  *           
-- *        *       
 -- *               
     -- *  * *      
   -- *          *  
    -- *          * 
            -- *    
                 --   _________  _   _____      _____  _________  _________          _  _________  _______ _  _________  _________  _________    _________  _________  _________  _________  _________ 
                -- --(____  _  )( ) (  _  ) ___/  ___)(______   )(  _   _  ) _______| |(___   _  )(_______(_)(  _____  )(____  _  )(  _______)  (  _____  )(___   _  )(  _____  )(  _   _  )(___   _  )
                -- -- ___| |_| || |_| | | |(___  (___  _____(   )| | | | | |(_______  | _/   |_| |           | |     | | ___| |_| || |          | |_____| | _/   |_| | \ \___/ / | | | | | | _/   |_| |
                -- --(_________)(_____) (_)    \_____)(_________)(_) (_) (_)        |_|(__/(_____)           (_)     (_)(_________)(_)          (_________)(__/(_____)  (_____)  (_) (_) (_)(__/(_____)
  -- *              
      -- **     *  *                                   -- *            ** *   * 
               -- *  *  *  *
         -- *   **     * *  
  -- * *            *       
-- *            *    *      
   -- *          *       *  
       -- *            *    
          -- *     *    * * 
      -- *                  
     -- *  *                
   -- *               *     
 -- * 
 -- *   *        *
----------------------------------------------
-------------------------[[ setup start --]]--

------------------[[ houseedge in % --]]  
edge               = 1
------------------[[ safetynet: [0] = 'disabled' | [1] = 'enabled' --]] 
safety             = 1
------------------[[ volatility setup from 1 to '?' higher number = higher profit = higher risk --]] 
volatility         = 7  
------------------[[ basemode is 1, if safetynet triggered mode 2 activates to extend streak-resistance due to lower martingale increase until next win | can also be played as dedicated setup; change setup to 'dedicated' then --]] 
mode               = 1
------------------[[ mode-setup: [default] or [dedicated] --]]
setup              = default
------------------[[ emergency handbreak: [0] = 'disabled' | otherwise [12.34567890] set any desired number as minimum balance the script shall stop at --]] 
stoploss           = 0
------------------[[ basebet is fully automated! ONLY change the volatility setup: lower volatility = lower basebet = lower risk --]]
base               = (balance*(volatility*(volatility/10)))/ 1500 / 3500

-------------------------[[ setup end --]]--
--------------------------------------------

chance             = math.random(1500, 3500)/ 100
nextbet            = base
payout             = 0
multi              = 0
prof               = 0
highestbet         = 0
highestspent       = 0
highestprofit      = 0
lowestprofit       = 0
satpb              = 0
wagered            = 0
wageredpp          = 0
worststreak        = 0
worststreakcounter = 0
totalbets          = 0
profit             = 0
currentstreak      = 0
bets               = 0
local clock        = os.clock
largebalance       = 0
loseamount         = 0
largestloss        = 0
losspercent        = 0
hibet              = 0
startbalance       = balance
avehit             = 0
totalloss          = 0
total              = 0
high               = 0
low                = 0
losecount          = 0
first              = 1  
resetstats() resetseed()
d = delay
function sleep(n)
    local t0 = clock()
    while clock() - t0 <= n do end
end
    if base <= 0.00000001 then base = 0.00000001 nextbet = base end
function dobet()
totalbets = totalbets + 1
    if (math.random() < .1337) then
        bethigh = not bethigh
    end 
    if (mode == 1) then
        chance = math.random(1500, 3500) / 100 else
        chance = math.random(300, 900) / 100
    end
    if win then
        if (setup == default) then mode = 1 end 
        nextbet  = base
        prof     = 0
    end
    if not win then
        prof = prof - currentprofit
    end
    payout  = (100 - edge) / chance
    multi   = payout / (payout - 1)
    nextbet = prof / (payout / multi)
    if nextbet <= base then nextbet = base end
    nextbet = math.floor(nextbet * 10 ^ 8) / 10 ^ 8
  
    if ((balance - nextbet) <= stoploss) then stop() end
    if (safety == 1) then
        if nextbet >= balance / 1337 then 
            mode = 2 
            sleep(1)
         if bets % 12==0 then resetseed() end end end
if bets % 1337 == 0 then i=1;for i=1,25 do print("\n")print(" ") print ("resetting seed now   \n \n \n") end resetseed() end 
if worststreak > currentstreak then worststreak = currentstreak worststreakcounter = 0 elseif worststreak == currentstreak then worststreakcounter = worststreakcounter + 1 end
if win then total = total + 1 totalloss = totalloss + losecount avehit = totalloss / total losecount = 0 else losecount = losecount + 1 end 
if balance >= largebalance then largebalance = balance loseamount = 0 else loseamount = largebalance - balance end
if lastBet.roll <= chance then low = low + 1 end if lastBet.roll >= (100 - chance) then high = high + 1 end  
if loseamount >= largestloss then largestloss = loseamount end
if profit > highestprofit then highestprofit = profit end
if profit < lowestprofit then lowestprofit = profit end
if nextbet <= 0.00000001 then nextbet = 0.00000001 end
if highestbet < nextbet then highestbet = nextbet end
if nextbet >= hibet then hibet = nextbet end
profitpercentage = profit / (balance - profit) * 100
losspercent      = largestloss / startbalance * 100
wageredpp        = (profit / wagered) * 10
wagered          = wagered + previousbet
satpb            = profit / bets
payout           = ((100 - edge) / chance)
chance = math.floor((chance*100)+0.5)/100 
i = 1;for i=1,25 do print("\n")print(" ")end
print("\n\n==========================================")
print("math.random() " .. tostring(math.random()))
print("high: "..high.." / ".."low: "..low)
print("average streak: "..string.format("%.2f",avehit))
print("current streak: " .. string.format("%2d", currentstreak) .. " | worst streak: " .. string.format("%d", worststreak) .. " x " .. tostring(worststreakcounter))
print("-----------------------------------------------")
print("# bets: " .. totalbets)
print("payout: " .. string.format("%.2f", payout) .. "x" .. " @ " .. string.format("%.2f", chance) .. "% chance, increase " .. string.format("%.5f", multi) .. "x on loss")
print("nextbet: " .. string.format("%9.8f", nextbet) .. " | highest bet: " .. string.format("%9.8f", highestbet) .. " | maxbet safety: " .. string.format("%9.8f", (balance / 999)))
print("profit: " .. string.format("%.8f", profit) .. " | " .. string.format("%.4f", profitpercentage) .. "%" .. " | profit per bet: " .. string.format("%9.8f", satpb))
print("lowest profit-: " .. string.format("%9.8f", lowestprofit) .. " | highest profit+: " .. string.format("%9.8f", highestprofit))
print("largest loss: " .. string.format("%.8f", largestloss) .. " | " .. string.format("%.4f", losspercent) .. "%")
print("wagered: " .. string.format("%9.8f", wagered) .. " | profit per wagered: " .. string.format("%.2f", wageredpp) .. "%")
if (mode == 2) then print("\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n█▓█▓▒░░MODE: '2' ACTIVE░░▒▓█▓█\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")end
print("==========================================\n\n")
function rain3t()m1="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"m2="////////////////////////////////////////////////////////////////////////////"m3="                                                                            "m4="  ｡● ✧｡★ﾟ (/¯◡ ‿ ◡)/¯﻿☂ made with ♥ in Switzerland ☂ ~(˘▾˘~)  ﾟ｡✩ ✧ ●    "m5="                                                                            "m6="                            --  rainbot.ch  --                              "m7="                                                                            "m8="////////////////////////////////////////////////////////////////////////////"m9="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"M0="                                         "M1="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M2="     ░                           ░       "M3="     ░   ▄▄▄▄▄▄▄   ▄ ▄ ▄▄▄▄▄▄▄   ░       "M4="     ░   █ ▄▄▄ █ ▄ ▄ ▀ █ ▄▄▄ █   ░       "M5="     ░   █ ███ █  ▄ ▄█ █ ███ █   ░       "M6="     ░   █▄▄▄▄▄█ ▄▀█▀▄ █▄▄▄▄▄█   ░       "M7="     ░   ▄▄▄ ▄▄▄▄█ █ ▄▄▄   ▄     ░       "M8="     ░    ▀ █▄ ▄▀ ▄██  ▀▀██▄██   ░       "M9="     ░   ▀▄▄▀ ▄▄█▄ ▄█▀  █▄  ▀█   ░       "M10="     ░   ▄▄▄▄▄▄▄ █▀█ ▄█ ▄███▄█   ░       "M11="     ░   █ ▄▄▄ █ █ ▀ ▄  ▄▀  ▀▀   ░       "M12="     ░   █ ███ █ ▄▄▀█ ▀███ ▀▀▄   ░       "M13="     ░   █▄▄▄▄▄█ █▄▀█▀▀▄▀█  █▄   ░       "M14="     ░                           ░       "M15="     ░   --   rainbot.ch   --    ░       "M16="     ░                           ░       "M17="     ░                           ░       "M18="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M19="                                         "print(m1)print(m2)print(m3)print(m4)print(m5)print(m6)print(m7)print(m8)print(m9)print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n")print(M0)print(M1)print(M2)print(M3)print(M4)print(M5)print(M6)print(M7)print(M8)print(M9)print(M10)print(M11)print(M12)print(M13)print(M14)print(M15)print(M16)print(M17)print(M18)print(M19)print("fate, it seems, is not without a sense of irony")print("\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")end;if first==1 then rain3t()sleep(3)first=0 end
end
--[[     ___________________________________________________________________/\/\__________________/\/\____________________________/\/\______________________________________/\/\_________________________--
--    _/\/\/\________/\/\/\/\__/\/\__/\/\__/\/\/\__/\/\______/\/\/\____/\/\/\/\/\__/\/\__/\/\____________/\/\/\/\__/\/\/\______/\/\__________/\/\/\____/\/\__/\/\________/\/\____/\/\/\____/\/\__/\/\_   --
--   _____/\/\____/\/\/\/\____/\/\__/\/\__/\/\/\/\/\/\/\__/\/\/\/\/\____/\/\______/\/\/\/\____/\/\____/\/\____________/\/\____/\/\________/\/\__/\/\__/\/\/\/\______/\/\/\/\__/\/\/\/\/\__/\/\/\/\___    --
--  _/\/\/\/\__________/\/\____/\/\/\/\__/\/\__/\__/\/\__/\/\__________/\/\______/\/\________/\/\____/\/\________/\/\/\/\____/\/\________/\/\__/\/\__/\/\________/\/\__/\/\__/\/\________/\/\_______     --
-- _/\/\/\/\/\__/\/\/\/\__________/\/\__/\/\______/\/\____/\/\/\/\____/\/\/\____/\/\________/\/\/\____/\/\/\/\__/\/\/\/\/\__/\/\/\________/\/\/\____/\/\__________/\/\/\/\____/\/\/\/\__/\/\_______      --
-- /~~\__/~~\__/~~~~~~\_____/~~\____/~~\__/~~\_/~~~~~~~~\____/~~\____/~~\__/~~\_/~~~~\____97 115 121 109 101 116 114 105 99 97 108  111 114 100 101 114 \__/~~\__/~~\_/~~~~~~~\__/~~~~~~~~\_/~~\__       --
--_________________________/\/\/\/\_____________________________________________________________________________________________________________________________________________________________       --]]
