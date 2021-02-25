playtime = os.clock() --goes before dobet()

print("~bets per: " .. string.format("%2.3f", bets/(os.clock()-playtime)) .. " /second | " .. math.floor(0.5+bets/(os.clock()-playtime)*60^2) .. " /hour | " .. math.floor(0.5+24*bets/(os.clock()-playtime)*60^2) .. " /day")
