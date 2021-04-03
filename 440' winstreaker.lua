-- 440' winstreaker --

basebet  = (balance * 0.00000112) --112sat/1.0coin
nextbet  = basebet
bethigh  = true
wincount = 0
chance   = 96.12

function dobet()
    if (win) then
        wincount = (wincount + 1)
        nextbet  = (previousbet * 5.4)
    else
        wincount = 0
        nextbet  = previousbet
    end
    if (wincount == 3) then
        wincount = 0
        nextbet  = basebet
        bethigh  = (not bethigh)
    end
end
