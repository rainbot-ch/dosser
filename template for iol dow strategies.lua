---------------------------------------------------------------------------[[↓setup↓]]
chance      = 49.5               -- chance to play
iol         = 1.0                -- action on loss in muliplier "x"
dow         = 1.0                -- action on win in muliplier "x"
roundprofit = 0.00000001         -- round profit to reset the cycle
siteminbet  = 0.00000001         -- sites minimumbet 
divider     = 527034             -- divide your balance / x for basebet
bethigh     = true               -- bet over(true) or under(false)
---------------------------------------------------------------------------[[↑setup↑]]

basebet=(balance/divider);nextbet=basebet;if (basebet<=siteminbet) then basebet=siteminbet nextbet=basebet end;initialbalance=balance;wager,wagerpercbal,largebalance,loseamount,largestloss,prof=0,0,0,0,0,0;resetseed();resetstats()

function reset()
  nextbet = basebet
  prof    = 0
end

function dobet()

    if (win) then
        nextbet = (previousbet * dow)
    else
        nextbet = (previousbet * iol)
    end

losspercent      = largestloss / initialbalance * 100
profitpercentage = profit / (balance - profit) * 100
wager            = (wager + nextbet)
wagerpercbal     = (wager / initialbalance)
prof             = (prof + currentprofit)

if prof         >= roundprofit then reset() end
if nextbet      <= siteminbet then nextbet = siteminbet end
if balance      >= largebalance then largebalance = balance loseamount = 0 else loseamount = (largebalance - balance) end
if loseamount   >= largestloss then largestloss = loseamount end

--if (bets % 9999 == 0) then resetseed() end

i=1;for i=1,25 do print("\n")print("")end
print("\n\nx>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<x\n\n")
print("payout: " .. string.format("%.2f", (99 / chance)) .. "x" .. " @ " .. string.format("%.2f", chance) .. "% chance")
print("profit: " .. string.format("%.8f", profit) .. " | " .. string.format("%.4f", profitpercentage) .. "%")
print("largest loss: " .. string.format("%.8f", largestloss) .. " | " .. string.format("%.4f", losspercent) .. "%")
print("wager: " .. string.format("%.8f", wager) .. " | " .. string.format("%2.4f", wagerpercbal) .. "x")
print("\n\nx>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<x\n\n") end
