function dividerFromStreak(streak, iol)
    function kip(k)i,l,o=string.match(k,"^([^%d]*%d)(%d*)(.-)$");
        return (i)..(l):reverse():gsub("(%d%d%d)","%1'"):reverse()..(o);
    end;
	if (iol~=nil) then increase=iol	else increase=99/(99-chance);
		print('increase',(math.floor(increase*6.25e2)/5^4)..'x');
	end;
    if (streak==nil) then streak=math.floor((99/chance)*((math.pi*math.pi)+math.pi)) end;
	    divider=math.floor((increase^streak)*(streak/(streak*(increase-1))));print('divider\t',kip(divider));
	    basebet=balance/divider;print('basebet\t',string.format("%.8f",basebet));if(basebet<1e-8)then basebet=1e-8 nextbet=basebet print("divider higher as balance") end;
	    print('theoretical odds of '..streak..' consecutive losses at '..string.format('%.4f',chance)..'% chance are ~ '..string.format('%0.0f',1/((100-chance)/100)^streak)..' to 1 which equals a mathematical probability of '..string.format('%.8f',((1-chance/100)^streak))..' %');
	return balance/divider;
end;

basebet=dividerFromStreak();
