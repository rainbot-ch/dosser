-- sample sleep function 'betdelay' --
chance  = 49.5
bethigh = true
basebet = 0.00000001
nextbet = basebet

----------------------------------------------------------------------------------------
function sleep(n)
    t0 = os.clock()
    while os.clock() - t0 <= (n / 1000) do end
    print(" betdelay: " .. string.format("%.0f", (os.clock() - t0) * 1000) .. "ms")
end
sleepTimer = ((bets % 1000) + 1000) --*2
----------------------------------------------------------------------------------------
betfury = true
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end   
----------------------------------------------------------------------------------------

function dobet()
    
if (betfury) then
    wait(0.5)
end
-----------------------------------------  
    n = delay sleep(n)   --*1
-----------------------------------------
    sleep(167)           --static delay in milliseconds
    sleep((math.random(167*1000, 234*1000)/1000)) --random delay in milliseconds
    sleep(sleepTimer)    --*2
-----------------------------------------
  
    if (win) then
        delay   = 0      --*1
        --print(delay)
        nextbet = basebet
    else
        nextbet = previousbet
    end
    if (nextbet >= dangerousbetsize) then
        delay = 167      --*1
        --print(delay)
    end
end

--*1 add a delay on certain events e.g betamount reaches a specified limit
--*2 betdelay based on bets

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end
wait(0.5)

local clock = os.clock
function sleep(n)
  local t0 = clock()
  while clock() - t0 <= n do end
end
--------------------------------
reset_at = os.clock()
if (reset_at + 300) <= os.clock() then
    reset_at = os.clock()
    resetseed()
end
-------------------------------------------------
sleepTimer = ((bets % 1000) + 1000)
-- make sure you convert sleepTimer to secs.
sleep(sleepTimer)
-------------------------------------------------

local a=os.clock;function sleep(b)local c=a()while a()-c<=b do end end;
-------------------------------------- 


function SecondsToClock(seconds)
    local seconds = tonumber(seconds)
    hours = math.floor(seconds / 3600)
    mins = math.floor(seconds / 60 - (hours * 60))
    secs = math.floor(seconds - hours * 3600 - mins * 60)
end

print(os.clock() .. " Time: " .. hours .. " h " .. mins .. " min " .. secs .. " sec")
    gametime = os.clock()
function dobet()
    SecondsToClock(os.clock() - gametime)
    print("==============================")
    print("Time: " .. hours .. " h " .. mins .. " min " .. secs .. " sec")
    print("Total Bets: " .. bets)
    print("Bets per Hour: " .. string.format("%.0f", (bets / (os.clock() - gametime) * 3600)))
    print("Profit per Hour: " .. string.format("%.8f", (profit / (os.clock() - gametime) * 3600)))
    print("% per Day: " .. string.format("%.2f", (profit / (os.clock() - gametime) * 3600 * 24) / balance * 100))
    print("==============================")
      
    function gettime()
    time       = os.date("*t")
    timenow    = time.hour
    timenowm   = time.min
    timenows   = time.sec
    if (timenow == 0) then
        timenow = 24
    end
end
gettime()
print(" CURRENT TIME " .. timenow .. ":" .. timenowm .. ":" .. timenows)
print((12 - timenow) * 3600 + (60 - timenowm) * 60)
print((18 - timenow) * 3600 + (60 - timenowm) * 60)
print((24 - timenow) * 3600 + (60 - timenowm) * 60)
print(time)
