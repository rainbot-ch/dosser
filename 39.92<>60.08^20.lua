------------------------------
--[[¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
--///////////////////////////
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
--░░░░░░░░░░░░░░░░░░░░░░░░░--
--░ ▄▄▄▄▄▄▄   ▄ ▄ ▄▄▄▄▄▄▄ ░--
--░ █ ▄▄▄ █ ▄ ▄ ▀ █ ▄▄▄ █ ░--
--░ █ ███ █  ▄ ▄█ █ ███ █ ░--
--░ █▄▄▄▄▄█ ▄▀█▀▄ █▄▄▄▄▄█ ░--
--░ ▄▄▄ ▄▄▄▄█ █ ▄▄▄   ▄   ░--
--░  ▀ █▄ ▄▀ ▄██  ▀▀██▄██ ░--
--░ ▀▄▄▀ ▄▄█▄ ▄█▀  █▄  ▀█ ░--
--░ ▄▄▄▄▄▄▄ █▀█ ▄█ ▄███▄█ ░--
--░ █ ▄▄▄ █ █ ▀ ▄  ▄▀  ▀▀ ░--
--░ █ ███ █ ▄▄▀█ ▀███ ▀▀▄ ░--
--░ █▄▄▄▄▄█ █▄▀█▀▀▄▀█  █▄ ░--
--░ _ _ _ _ _ _ _ _ _ _ _ ░--
--░░░░░░░░░░░░░░░░░░░░░░░░░--
--▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄--
      --  rainbot.ch  --
--///////////////////////////
¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶-]]
------------------------------
resetseed();resetstats();print("░▒▓█â–‘â–’â–“â–ˆ % Initializing % â–ˆâ–“â–’â–‘█▓▒░");
value=0;avehit=0;totalloss=0;total=0;high=0;low=0;counter=0;losecount=0;wager=0;wagerpercbal=0;largebalance=0;loseamount=0;largestloss=0;losspercent=0;hibet=0;initialbalance=balance;bets=0;profittotal=0;gametime=os.clock();bets=bets+1;

-------------------[[]]
--      SETUP       --
swapseed     = 5273
currency     = "ltc"
coinvalue    = 190
setup        = "39.92"
--      SETUP       --
-------------------[[]]
if (setup == "39.92") then
chance       = 39.92
basebet      = (balance / 3992)  --balance * (((balance / (99 / chance)) / chance) * 1 --[[intensity]] )
end
if (setup == "84.84") then
oneoneseven  = false
spendmode    = false
chance       = 84.84
basebet      = (balance / 8484)  --117  --848
end
bethigh      = false
nextbet      = basebet
startbalance = balance
target       = (startbalance + 0.00000001)
local clock  = os.clock 
starttime    = clock()
spend        = 0

function sleep(n)
    local t0 = clock()
    while clock() - t0 <= n do
    end
end
 
function dobet()
    if (setup == "39.92") then
        nextbet = previousbet * (1.001 ^ 20)
        if (chance == 39.92) then chance = 60.08 else chance = 39.92  end
        if (bethigh == true) then bethigh = false else bethigh = true end
    end
    if (setup == "84.84") then
        if (lastBet.profit >= 0) then
        nextbet = basebet else 
        nextbet = previousbet * 1.0011 ^ 24
        end
    end
    if (setup == "84.84") and (oneoneseven) then
        if (lastBet.profit >= 0) then
        nextbet = basebet else
        nextbet = (previousbet * 1.117)
        end          
    end      
    if (setup == "84.84") and (spendmode) then
        if win then
            spend = (spend - lastBet.profit)
            if (spend <= 0) then spend = 0 end
        else
            spend = (spend + previousbet)
        end
        nextbet = (basebet + spend)
    --nextbet = (spend / ((100 - 1) / chance))
    end

    if (balance >= target) then
        startbalance = balance
        nextbet = basebet
        spend = 0
    end
      
curtime   = clock()
times     = math.floor(curtime - starttime)
hours     = math.floor(times / 3600)
minutes   = math.floor((times - (hours * 3600)) / 60)
seconds   = math.floor((times - (hours * 3600) - (minutes * 60)))            
if (bethigh == true) then direction = "high" else direction = "low" end
profittotal=profittotal+currentprofit;if balance>=largebalance then largebalance=balance;loseamount=0 else loseamount=largebalance-balance end;if loseamount>=largestloss then largestloss=loseamount end;if nextbet>=hibet then hibet=nextbet end;losspercent=largestloss/initialbalance*100;profitpercentage=profit/(balance-profit)*100;payout=99/chance;wager=wager+nextbet;wagerpercbal=wager/initialbalance;value=wager*coinvalue if lastBet.roll <= chance then low = low + 1 end if lastBet.roll >= (100 - chance) then high = high + 1 end if win then total = total + 1 totalloss = totalloss + losecount avehit = totalloss / total losecount = 0 else losecount = losecount + 1 end if bets % swapseed == 0 then resetseed() end
i = 1;for i=1,25 do print("\n")print(" ")end 
print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□")
if (spendmode) then print("spend: " .. string.format("%9.8f", spend)) end 
print("runtime: " .. hours .. 'h :' .. minutes .. 'm : ' .. seconds .. 's | N°' .. bets)
print("bets per hour:\t" .. string.format("%.0f", (bets / (os.clock() - gametime) * 3600)) .. " | per day: " .. string.format("%.0f", (bets / (os.clock() - gametime) * 3600 * 24)))
print("profit per hour:\t" .. string.format("%.8f", (profittotal / (os.clock() - gametime) * 3600)) .. " | " .. string.format("%.2f", (profittotal / (os.clock() - gametime) * 3600) / balance * 100) .. "%")
print("profit per day:\t" .. string.format("%.8f", (profittotal / (os.clock() - gametime) * 3600 * 24)) .. " | " .. string.format("%.2f", (profittotal / (os.clock() - gametime) * 3600 * 24) / balance * 100) .. "%")
print("low: " .. low .. " | " .."high: " .. high)
print("average losses: "..string.format("%.2f",avehit))
print("payout: "..string.format("%.2f",payout).."x".." @ "..string.format("%.2f",chance).."% chance | " .. tostring(direction)) 
print("profit: " .. string.format("%.8f",profit) .. " | " .. string.format("%.4f",profitpercentage) .. "% \nlastBet.profit: " .. string.format("%.8f",lastBet.profit))
print("largest loss: " .. string.format("%.8f",largestloss) .. " | " .. string.format("%.4f",losspercent) .. "%") 
print("wager: " .. string.format("%.8f",wager) .. " | " .. string.format("%2.4f",wagerpercbal) .. "x | " .. string.format("%.2f", value) .. "$")
print("wager per hour:\t" .. string.format("%.8f", (wager / (os.clock() - gametime) * 3600)) .. " | " .. string.format("%.2f", (wagerpercbal / (os.clock() - gametime) * 3600)) .. "x")
print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")
end
first=1;function rain3t()m1="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"m2="////////////////////////////////////////////////////////////////////////////"m3="                                                                            "m4="  ｡● ✧｡★ﾟ (/¯◡ ‿ ◡)/¯﻿☂ made with ♥ in Switzerland ☂ ~(˘▾˘~)  ﾟ｡✩ ✧ ●    "m5="                                                                            "m6="                            --  rainbot.ch  --                              "m7="                                                                            "m8="////////////////////////////////////////////////////////////////////////////"m9="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"M0="                                         "M1="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M2="     ░                           ░       "M3="     ░   ▄▄▄▄▄▄▄   ▄ ▄ ▄▄▄▄▄▄▄   ░       "M4="     ░   █ ▄▄▄ █ ▄ ▄ ▀ █ ▄▄▄ █   ░       "M5="     ░   █ ███ █  ▄ ▄█ █ ███ █   ░       "M6="     ░   █▄▄▄▄▄█ ▄▀█▀▄ █▄▄▄▄▄█   ░       "M7="     ░   ▄▄▄ ▄▄▄▄█ █ ▄▄▄   ▄     ░       "M8="     ░    ▀ █▄ ▄▀ ▄██  ▀▀██▄██   ░       "M9="     ░   ▀▄▄▀ ▄▄█▄ ▄█▀  █▄  ▀█   ░       "M10="     ░   ▄▄▄▄▄▄▄ █▀█ ▄█ ▄███▄█   ░       "M11="     ░   █ ▄▄▄ █ █ ▀ ▄  ▄▀  ▀▀   ░       "M12="     ░   █ ███ █ ▄▄▀█ ▀███ ▀▀▄   ░       "M13="     ░   █▄▄▄▄▄█ █▄▀█▀▀▄▀█  █▄   ░       "M14="     ░                           ░       "M15="     ░   --   rainbot.ch   --    ░       "M16="     ░                           ░       "M17="     ░                           ░       "M18="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M19="                                         "print(m1)print(m2)print(m3)print(m4)print(m5)print(m6)print(m7)print(m8)print(m9)print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n")print(M0)print(M1)print(M2)print(M3)print(M4)print(M5)print(M6)print(M7)print(M8)print(M9)print(M10)print(M11)print(M12)print(M13)print(M14)print(M15)print(M16)print(M17)print(M18)print(M19)print("fate, it seems, is not without a sense of irony")print("\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")end;if first==1 then rain3t()sleep(3)first=0 end
--[[¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
--///////////////////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////////////////
¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶-]]
