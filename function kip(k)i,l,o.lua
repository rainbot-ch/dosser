function kip(k)i,l,o=string.match(k,"^([^%d]*%d)(%d*)(.-)$")
    return print((i)..(l):reverse():gsub("(%d%d%d)","%1'"):reverse()..(o))
end;
--kip(math.floor(balance/basebet))
