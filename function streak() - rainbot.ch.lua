--https://www.jdoodle.com/ia/f2O
function streak()
--[~~~~~~~~~~~~~start of configuration~~~~~~~~~~~~~]--
    playmode  = false   -- activate it when using the script in dicebot to play with the calculated estimations
    estimate  = true    -- estimate setup for given variables [disable and play with the calculated setup]
    suggested = true    -- use recommended settings for lower risk calculation [dosent mean safe, just lower probability of busting on the first red touch ^^]
    theory    = true    -- calculate with a theoretical balance [disable to use actual balance to estimate and play afterwards]
if (theory) then
    balance   = 10000   -- theoretial balance used for calculation
else balance  = balance end;
    payout    = 2       -- x payout  
    streak    = 0       -- consecutive losing streak of your desire to resist
    iol       = 0       -- % increase on loss (in decimal percentage)
--[~~~~~~~~~~~~~end of configuration~~~~~~~~~~~~~~~]--
    
                    if (iol > 0) then inc = (1 + (iol / 100)) else inc = string.format("%.8f", (99 / (99 - (99 / payout)))) end
                if (streak > 0) then streak = streak else if (suggested) then streak = math.floor(((99 / (99 / payout)) * (10 + math.pi))) else streak = math.floor(((99 / (99 / payout)) * (10))) end end
            divider = math.floor((inc ^ streak) * (streak / (streak * (inc - 1))))
        basebet = math.floor((balance / divider) * 10^8) * 1e-8
	--if (estimate) then for clear=1,25,1 do print("\n")print("") end end;
  return print("\n\n\n[~~~~~~~~~~~estimate~~~~~~~~~~~]", "\n\tchance:\t\t", (99 / payout), "\n\tpayout\t\t", (99 / (99 / payout)), "\n\tincrease:\t", inc, "\n\tpercent:\t", ((inc * 100) - 100), "\n\tstreak:\t\t", streak, "\n\tdivider:\t", divider, "\n\tbasebet:\t", basebet, "\n[~~~~~~~~~~~estimate~~~~~~~~~~~]\n\n\n")
end;streak();if(basebet<1e-8)then basebet=1e-8 end;


if (playmode) then--~~~~~~~~~~~~~example of using it in a actual script ~~~~~~~~~~~~~~~

chance  = 99 / payout
nextbet = basebet
bethigh = true
hiprofit,largeloss,hibet,wager=0,0,0,0;resetstats();

function dobet()
  	if (estimate) then stop() end
	if (win) then 
		nextbet = basebet
	else 
		nextbet = previousbet * inc
	end
	if (balance>((balance-profit)*2)) then stop() end
	if (profit>hiprofit) then hiprofit=profit end;if (largeloss<(hiprofit-profit)) then largeloss=(hiprofit-profit) end;if (nextbet>hibet) then hibet=nextbet end;wager=wager+nextbet;if (not estimate) then for clear=1,25,1 do print("\n")print("") end;
  	print("[~~~~~~~~~~~~~~~~~~~setup~~~~~~~~~~~~~~~~~~~]")
	print("\tpayout:\t\t\t "..string.format("%.4f",99/chance).."x".." @ "..string.format("%.2f",chance).."%".."\n\tincrease:\t\t "..string.format("%.4f",nextbet/previousbet).."x @ "..string.format("%.2f",nextbet/previousbet*100-100).."%".."\n\tdivider:\t\t\t\t "..math.floor((balance-profit)/basebet).."\n\tbets left:\t\t\t\t\t "..math.floor(math.log(balance/nextbet*(-1+inc)+1)/math.log(inc)-1))
  	print("[~~~~~~~~~~~~~~~~~~~stats~~~~~~~~~~~~~~~~~~~]")
	print("\tprofit:\t\t\t "..string.format("%.8f",profit).." ("..string.format("%.4f",profit/(balance-profit)*100).."%)")
	print("\thighest bet:\t ".. string.format("%.8f",hibet) .." (" .. string.format("%.4f",(hibet/(balance-profit))*100) .."%)")
	print("\tlargest loss:\t "..string.format("%.8f",largeloss).." ("..string.format("%.4f",largeloss/(balance-profit)*100).."%)")
	print("\twager:\t\t\t "..string.format("%.8f",wager).."  ("..string.format("%2.4f",(wager/(balance-profit))).."x)")
	print("\tprofit wagered:\t\t\t\t " .. string.format("%.3f",(wager/profit)) .."x")
    print("[~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~]") end;
end;

end;--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
