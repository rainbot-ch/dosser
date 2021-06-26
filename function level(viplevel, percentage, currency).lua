--[[                                             ▂▃▄▅▆▇█▓▒░░▒▓█▄▀▄▀▄▀  ҉ [░[□ function level(viplevel, percentage, currency) □]░]  ҉  ▄▀▄▀▄▀█▓▒░░▒▓█▇▆▅▄▃▂                                                    
    ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄
--  VIP Wager Calc v5.2               Bronze      Silber      Gold        Platin I    Platin II   Platin III  Platin IV   Platin V    Diamond I       Diamond II      Diamond III     Diamond IV      Diamond V
--  LevelUP-Bonus (RAW)               $25         $50         $100        $200        $400        $800        $1'600      $3'200      $12'800         $25'600         $51'200         $102'400        $204'800            
--  Overall Wager                     $10'000     $50'000     $100'000    $250'000    $500'000    $1'000'000  $2'500'000  $5'000'000  $25'000'000     $50'000'000     $100'000'000    $250'000'000    $500'000'000            
--  increament to next Level          $10'000     $40'000     $50'000     $150'000    $250'000    $500'000    $1'500'000  $2'500'000  $15'000'000     $25'000'000     $50'000'000     $150'000'000    $250'000'000 
--  ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄]]

--currency="ltc"
done=0;value=0;bronze=10000;silver=40000;gold=50000;
plat1=150000;plat2=250000;plat3=500000;plat4=1500000;plat5=2500000;plat6=5000000;
diamond1=15000000;diamond2=25000000;diamond3=50000000;diamond4=150000000;diamond5=250000000;
function level(val, decimal, currency, progress)
    if (currency == "eth")  then value = 3429.35
        elseif (currency == "ltc")  then value = 157.37
            elseif (currency == "doge") then value = 0.326260
                elseif (currency == "btc")  then value = 37330.78
                    elseif (currency == "xrp")  then value = 0.855734
                elseif (currency == "trx")  then value = 0.070470 
            elseif (currency == "eos")  then value = 5.07
        elseif (currency == "bch")  then value = 981.90
    end
        done=(done+nextbet)
    if (progress) then
        print("have: " .. (decimal) .."% ==\t" .. string.format("%.0f$ ", (val/100)*decimal) .. " ==\t" .. string.format("%.8f", ((val/100)*decimal)/value) .. " " .. string.upper(currency).. "\nleft: " .. (100-decimal) .. "% ==\t" .. string.format("%.0f$ ", ((val/100)*(100-decimal))) .. " == \t" .. string.format("%.8f", ((val/100)*(100-decimal))/value) .. " " .. string.upper(currency)) --(1 + (decimal / 100))))
    end
        return string.format("%.8f", ((val/100)*(100-decimal))/value)
end;

level(bronze, 10.01, currency, true)

--function dobet()

vip = level(bronze, 10.01, currency, false) - done
print("wager remaining: "..vip.." "..string.upper(currency).." ("..math.floor(vip/(balance-profit)*10^4)/10^4 .."x)")
--end


--[[¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"--
--"////////////////////////////////////////////////////////////////////////////"--
--"                                                                            "--
--"  ｡● ✧｡★ﾟ (/¯◡ ‿ ◡)/¯﻿☂ made with ♥ in Switzerland ☂ ~(˘▾˘~)  ﾟ｡✩ ✧ ●      "--
--"                                                                            "--
--"                            --  rainbot.ch  --                              "--
--"                                                                            "--
--"////////////////////////////////////////////////////////////////////////////"--
--"¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶"--
