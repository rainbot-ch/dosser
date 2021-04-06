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
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]

betfury = true
function wait(seconds)
    local start = os.time()
    repeat until os.time() > start + seconds
end   
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]


function dobet()
    
if (betfury) then
    wait(0.5)
end
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
  
    n = delay sleep(n)   --*1
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]

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

-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]

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
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
reset_at = os.clock()
if (reset_at + 300) <= os.clock() then
    reset_at = os.clock()
    resetseed()
end
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
sleepTimer = ((bets % 1000) + 1000)
-- make sure you convert sleepTimer to secs.
sleep(sleepTimer)
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]

local a=os.clock;function sleep(b)local c=a()while a()-c<=b do end end;
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]

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
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]      
function gettime()
	time = os.date("*t")
	hour = time.hour
	minute = time.min
	second = time.sec
	year    = time.year
	month    = time.month
	day    = time.day
	weekday = time.weekday
	--doty = time.yday
	--isdst = time.isdst --bootlean
	if hour == 0 then
		hour = 24
	end
end
gettime()
print(" CURRENT TIME " .. hour .. ":" .. minute .. ":" .. second .." " .. day .. "/" .. month .. "/" .. year)
print((12 - hour) * 3600 + (60 - minute) * 60)
print((18 - hour) * 3600 + (60 - minute) * 60)
print((24 - hour) * 3600 + (60 - minute) * 60)
print(time)
print(("Current time: %02d:%02d:%02d"):format(time.hour, time.min, time.sec))
    
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
time        = os.date("*t")
runtime     = time
local clock = os.clock
local t0    = clock()
t4          = math.floor((os.clock()*10^8)/10^8)
bets        = 0
    
--dobet()
    
function givemebets()
    bets  = (bets + 1)
    t1    = (clock() - t0)
    speed = (bets / t1)
    time  = os.date("*t")
end 
givemebets()
    
print(("START TIME: %02d:%02d:%02d"):format(runtime.hour, runtime.min, runtime.sec))
print(("CURRENT TIME: %02d:%02d:%02d"):format(time.hour, time.min, time.sec))
    
diff = os.difftime(time.min, runtime.min)
print(" diff: " ..string.format("%d", diff))    

t5 = math.floor((os.clock() * 10 ^ 8) / 10 ^ 8)
diff = os.difftime(t5, t4)
print(" running " .. string.format("%.0f", diff/3600) .. ":" .. string.format("%.0f", diff/60) .. ":" .. string.format("%2.0f", diff))

print(" running "..string.format("%.0f",(math.floor((os.clock()*10^8)/10^8)/3600))..":"..string.format("%.0f",(math.floor((os.clock()*10^8)/10^8)/60))..":"..string.format("%2.0f",(math.floor((os.clock()*10^8)/10^8))).." | "..string.format("%f",os.clock()))
-------------------------------------------------------------------[[↑ ↑ ↓ ↓ ← → ← → B A]]
    
    
