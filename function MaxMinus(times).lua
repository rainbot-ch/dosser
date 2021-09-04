--balance=1.23456789  --simulation
function MaxMinus(times)
    rep=0;amount=balance
    repeat
        rep=rep+1
        amount=amount*0.5
    until (rep==times)
    print("divider "..balance/amount.."\nbasebet "..string.format("%.8f",amount))
    return math.floor(amount*1e8)/1e8;
end;

--e.g usage
basebet = MaxMinus(13)
nextbet = basebet

function dobet()
  if (win) then
    nextbet = basebet       -- static
    nextbet = MaxMinus(13)  -- dynamic
  end
