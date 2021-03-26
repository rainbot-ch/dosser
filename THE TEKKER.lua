--------------------------
-- 		THE TEKKER 		--
--------------------------
chance        = 30
basebet       = balance / 10000
percentprofit = 1	--profit when to reset the cycle in %
iol           = 3	--action on loss in %
dow           = -5	--action on win in %
siteminbet 	  = 0.00000001
bethigh       = true
nextbet       = basebet
startbalance  = balance
targetprofit  = startbalance + (startbalance * (percentprofit / 100))

function reset()
    nextbet = basebet
    startbalance = balance
    targetprofit = startbalance + (startbalance * (percentprofit / 100))
end

function minbet()
    if (basebet <= siteminbet) then
        basebet = siteminbet
        nextbet = basebet
    end
    if (nextbet <= siteminbet) then
        nextbet = siteminbet
    end
end

function dobet()
    minbet()
    if (win) then
        nextbet = (previousbet * (1+(dow/100)))
    else
        nextbet = (previousbet * (1+(iol/100)))
    end
    if (balance >= targetprofit) then
        reset()
    end
end
