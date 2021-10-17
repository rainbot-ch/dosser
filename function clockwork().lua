time=os.date("*t");started=os.time();--print(tostring(os.time()))--print(os.date("%Y-%m-%d %H:%M:%S"))
initialized=("\t\tinitialized:             %02d:%02d:%02d"):format(time.hour, time.min, time.sec, period)
function clockwork()
  	print("\n □□□►------------------------------------------◄□□□")
    print("\t\tcurrent time: "..tostring(os.date("%c")))
    runtime=os.difftime(os.time(),started);--("initialized @ "..tostring(os.date("%c",started)));
  	print(tostring(initialized))
    print(("\t\tcurrent session:\t  %02d:%02d:%02d:%02d"):format(math.floor(runtime/86400%24),math.floor(runtime/3600%60),math.floor(runtime/60%60),math.floor(runtime%60)))
    print(" □□□►------------------------------------------◄□□□\n")
end;clockwork();

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

function getTime()
time    = os.date("*t")
hour    = time.hour
minute  = time.min
second  = time.sec
year    = time.year
month   = time.month
day     = time.day
weekday = time.weekday
--doty    = time.yday
--isdst   = time.isdst --bootlean
if (hour == 0) then hour = 24 end
end;getTime():

print(time)
print(time.hour, time.min, time.sec)
print((24 - hour) * 3600 + (60 - minute) * 60)
print(" CURRENT TIME " .. hour .. ":" .. minute .. ":" .. second .." " .. day .. "/" .. month .. "/" .. year)
print(("Current time: %02d:%02d:%02d"):format(time.hour, time.min, time.sec))
--string.format("%02d:%02d:%02d %s", hours, minutes, seconds, period)
--print(("offset"):format('%Y-%m-%d %H:%M:%S'))

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--CPU-Time 'os.clock ( )' Returns the amount of CPU time used by Lua in seconds. This value has high precision, about 1 microsecond, and is intended for use in benchmarking.
local x = os.clock()
local s = 0
for i = 1, 100000 do s = s + i end
print(string.format("elapsed time: %.2f\n", os.clock() - x))

-- record the initial time:
local startTime = os.clock()
-- do something you want to measure the performance of:
local a, b = 0, 1
for i = 1, 5000000 do a, b = b, a end

-- measure amount of time this took:
local deltaTime = os.clock() - startTime
print("elapsed time: " .. deltaTime)

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
