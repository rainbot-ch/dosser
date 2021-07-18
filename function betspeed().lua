playtime=os.clock();
function betspeed()
	print("\n\truntime: "..math.floor(math.floor(os.clock()-playtime)/86400)..' : '..math.floor(math.floor(os.clock()-playtime)/3600)..' : '..math.floor((math.floor(os.clock()-playtime)-math.floor(math.floor(os.clock()-playtime)/3600)*3600)/60)..' : '..math.floor(math.floor(os.clock()-playtime)-math.floor(math.floor(os.clock()-playtime)/3600)*3600-math.floor((math.floor(os.clock()-playtime)-math.floor(math.floor(os.clock()-playtime)/3600)*3600)/60)*60).." | bets n° "..bets)
	print("\t~bets: "..string.format("%2.3f",bets/(os.clock()-playtime)).." /second | "..math.floor(0.5+bets/(os.clock()-playtime)*60^2).." /hour | "..math.floor(0.5+24*bets/(os.clock()-playtime)*60^2).." /day\n")
end;

--function dobet()

  betspeed();
--end;
