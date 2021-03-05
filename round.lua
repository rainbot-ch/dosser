-------------------------------------------------[[wolf.bet]] 
  chance = math.floor((chance * 100) + 0.5) / 100
--chance = math.floor(chance * 5 ^ 4) / 5 ^ 4

-------------------------------------------------[[round bet to 10^-8]]
function roundBal(num)
    return (10 ^ math.floor((math.log(num)) / (math.log(10))))
end

function round(val, decimal)
    if (decimal) then
        return math.floor((val * 10 ^ decimal) + 0.5) / (10 ^ decimal)
    else
        return math.floor(val + 0.5)
    end
end

print("nextbet: " .. round( nextbet, 8 )) 
print("nextbet : " ..string.format("%.8f", nextbet)) 
nextbet = round( nextbet, 8 )

  nextbet = math.floor(nextbet * 10 ^ 8) * 0.00000001  
  nextbet = math.floor(nextbet * 1e8) / 1e8
  nextbet = math.floor(nextbet * 10 ^ 8) / 10 ^ 8
  nextbet = math.floor(100000000 * nextbet)/100000000

  --nextbet = math.floor(100000000 * ((100 / lastBet.Chance) * math.abs(currentprofit))) / 100000000
