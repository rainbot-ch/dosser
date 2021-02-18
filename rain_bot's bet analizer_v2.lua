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
 --  _____       _         ____        _   _       ____       _                    _                    
 -- |  __ \     (_)       |  _ \      | | ( )     |  _ \     | |                  | |                   
 -- | |__) |__ _ _ _ __   | |_) | ___ | |_|/ ___  | |_) | ___| |_ __ _ _ __   __ _| |_   _ _______ _ __ 
 -- |  _  // _` | | '_ \  |  _ < / _ \| __| / __| |  _ < / _ \ __/ _` | '_ \ / _` | | | | |_  / _ \ '__|
 -- | | \ \ (_| | | | | | | |_) | (_) | |_  \__ \ | |_) |  __/ || (_| | | | | (_| | | |_| |/ /  __/ |   
 -- |_|  \_\__,_|_|_| |_| |____/ \___/ \__| |___/ |____/ \___|\__\__,_|_| |_|\__,_|_|\__, /___\___|_|   
                   -- ______                                                          __/ |             
                   --|______|                                                        |___/              
------------------------
chance      = 49.5
bethigh     = true
siteminbet  = 0.00000001
------------------------
nextbet     = siteminbet
wins        = 0
losses      = 0
high        = 0
low         = 0
bet         = 0
avehit      = 0
highloss    = 0
highwins    = 0
difference  = 0
winstreak   = 0
losestreak  = 0
ratio       = 0
ratiohigh   = 0
ratiolow    = 0
avgratio    = 0
local clock = os.clock 
local t0    = clock()
local start = clock()
starttime   = clock()
time        = os.date("*t")
currenttime = time
speed       = 0
t1          = 0
runtime     = time

function sleep(n)
    local t0 = clock()
    while clock() - t0 <= n do end
end

resetseed();resetstats();print("░▒▓█â–‘â–’â–“â–ˆ % initializing % â–ˆâ–“â–’â–‘█▓▒░")sleep(1);

function dobet()
	bets = bets + 1
    if (win) then
        wins       = wins + 1
        winstreak  = winstreak + 1
        losestreak = 0
    else
        losses     = losses + 1
        losestreak = losestreak + 1
        winstreak  = 0
    end
    if (lastBet.roll <= chance) then
        low        = low + 1
        difference = difference - 1
    end
    if (lastBet.roll >= (99.99 - chance)) then
        high       = high + 1
        difference = difference + 1
    end
    
    t1         = clock() - t0
    speed      = bets / t1
    curtime    = clock()
    time       = os.date("*t")
    times      = math.floor(curtime - starttime)
    days       = math.floor(times / 86400)
    hours      = math.floor(times / 3600)
    minutes    = math.floor((times - (hours * 3600)) / 60)
    seconds    = math.floor((times - (hours * 3600) - (minutes * 60)))
    difference = (100 / (100 - difference))
    difflow    = (high - low)
    diffhigh   = (low - high)
    avehit     = (losses / bets)
    ratio      = (wins - losses)
    avgratio   = (ratiohigh / ratiolow)	
    if (losestreak >= highloss) then highloss = losestreak end
    if (winstreak >= highwins) then highwins = winstreak end
    if (ratio >= ratiohigh) then ratiohigh = ratio end
    if (ratio <= ratiolow) then ratiolow = ratio end 
    if (bethigh == true) then direction = "high" else direction = "low" end
	
    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□")
print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")
    print(" =========================================================")
    print(" time running: "..days..':'..hours ..':'..minutes..':'..seconds)
    print(" start time: " .. runtime.hour .. " : " .. runtime.min .. " : " .. runtime.sec)
    print(" current time: ".. time.hour .. " : " .. time.min .. " : " .. time.sec)  
    print(" betspeed: " .. string.format("%2.3f", speed).." bp/s | " ..math.floor(0.5+speed*60^2) .." ~bets/per hour | " .. math.floor(0.5+24*speed*60^2) .." ~bets/per day")
    print(" payout: "..string.format("%.2f",((100-1)/chance)).."x".." @ "..string.format("%.2f",chance).."% chance | " .. tostring(direction) .."\n increase: " .. string.format("%.4f",(99 / (99 - chance))) .. "x | " .. string.format("%.4f",(((99 / (99 - chance)) - 1) * 100)) .. "%")
    print(" total bets n°: " .. bets)
    print(" total low: " .. string.format("%d", low) .. " ∆ " .. tostring(difflow) .. " | total high: " .. string.format("%d", high) .. " ∆ " .. tostring(diffhigh) .. " | difference: " .. difference .. "∆")
    print(" average losses before win: " .. string.format("%.2f", avehit))
    print(" current ratio: " .. ratio .. " | max positive: " .. ratiohigh .. " | max negative: " .. ratiolow .. " | avg ratio: " .. avgratio)
    print(" highest loss streak: " .. highloss .. " | highest win streak: " .. highwins)
    print(" =========================================================")
print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")
    print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n\n\n") 
end
first=1;function rain3t()m1="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"m2="////////////////////////////////////////////////////////////////////////////"m3="                                                                            "m4="  ｡● ✧｡★ﾟ (/¯◡ ‿ ◡)/¯﻿☂ made with ♥ in Switzerland ☂ ~(˘▾˘~)  ﾟ｡✩ ✧ ●    "m5="                                                                            "m6="                            --  rainbot.ch  --                              "m7="                                                                            "m8="////////////////////////////////////////////////////////////////////////////"m9="¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"M0="                                         "M1="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M2="     ░                           ░       "M3="     ░   ▄▄▄▄▄▄▄   ▄ ▄ ▄▄▄▄▄▄▄   ░       "M4="     ░   █ ▄▄▄ █ ▄ ▄ ▀ █ ▄▄▄ █   ░       "M5="     ░   █ ███ █  ▄ ▄█ █ ███ █   ░       "M6="     ░   █▄▄▄▄▄█ ▄▀█▀▄ █▄▄▄▄▄█   ░       "M7="     ░   ▄▄▄ ▄▄▄▄█ █ ▄▄▄   ▄     ░       "M8="     ░    ▀ █▄ ▄▀ ▄██  ▀▀██▄██   ░       "M9="     ░   ▀▄▄▀ ▄▄█▄ ▄█▀  █▄  ▀█   ░       "M10="     ░   ▄▄▄▄▄▄▄ █▀█ ▄█ ▄███▄█   ░       "M11="     ░   █ ▄▄▄ █ █ ▀ ▄  ▄▀  ▀▀   ░       "M12="     ░   █ ███ █ ▄▄▀█ ▀███ ▀▀▄   ░       "M13="     ░   █▄▄▄▄▄█ █▄▀█▀▀▄▀█  █▄   ░       "M14="     ░                           ░       "M15="     ░   --   rainbot.ch   --    ░       "M16="     ░                           ░       "M17="     ░                           ░       "M18="     ░░░░░░░░░░░░░░░░░░░░░░░░░░░░░       "M19="                                         "print(m1)print(m2)print(m3)print(m4)print(m5)print(m6)print(m7)print(m8)print(m9)print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n")print(M0)print(M1)print(M2)print(M3)print(M4)print(M5)print(M6)print(M7)print(M8)print(M9)print(M10)print(M11)print(M12)print(M13)print(M14)print(M15)print(M16)print(M17)print(M18)print(M19)print("fate, it seems, is not without a sense of irony")print("\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")end;if first==1 then rain3t()sleep(3)first=0 end
--[[¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
--///////////////////////////////////////////////////////////////////////
--//////////////////////////////////////////////////////////////////////
¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶-]]
