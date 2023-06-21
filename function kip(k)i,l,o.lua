function kip(k)i,l,o=string.match(k,"^([^%d]*%d)(%d*)(.-)$");
    return(i)..(l):reverse():gsub("(%d%d%d)","%1'"):reverse()..(tonumber(string.match(o,"%.(%d*)"))>0 and o or '')
end;

print( kip(188333523443) )

--kip(math.floor(balance/basebet))
