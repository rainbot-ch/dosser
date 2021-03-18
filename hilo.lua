pattern = {hi, lo, hi, lo, lo, hi, hi, lo, lo, hi, lo} -- *11 pattern steps
hilo = 1
hi = true
lo = false

function dobet()
-----------------------------------------------------------------
    --bethigh = pattern[hilo]
    --hilo = (hilo + 1)
    --if (bets % 11 == 0) then hilo = 1 end -- *11 pattern steps
-----------------------------------------------------------------
    if (win) then
        hilo = 1
    else
        bethigh = pattern[hilo]
        hilo = (hilo + 1)
    end
    if (bets % 11 == 0) then -- *11 pattern steps
        hilo = 1
    end
