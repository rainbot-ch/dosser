resetseed();resetstats();
chance      = 73
basebet     = 0.00000001
nextbet     = basebet
bets        = 0
local clock = os.clock
local t0    = clock()
time        = os.date("*t")
runtime     = time
starttime   = clock()
rain3t      = 0

function dobet()
    bets    = bets + 1
    rain3t  = rain3t + 1
    t1      = clock() - t0
    speed   = bets / t1
    time    = os.date("*t")
    curtime = clock()
    times   = math.floor(curtime - starttime)
    hours   = math.floor(times / 3600)
    minutes = math.floor((times - (hours * 3600)) / 60)
    seconds = math.floor((times - (hours * 3600) - (minutes * 60)))

print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")
i=1;for i=1,7 do print("\n")print(" ")end
    print("bets: "  ..bets)
    print("runtime: " .. hours .. " : " .. minutes .. " : " .. seconds)
    print("start time: " .. runtime.hour .. " : " .. runtime.min .. " : " .. runtime.sec)       --print(("start time: %02d:%02d:%02d"):format(runtime.hour, runtime.min, runtime.sec))
    print("current time: ".. time.hour .. " : " .. time.min .. " : " .. time.sec)               --print(("current time: %02d:%02d:%02d"):format(time.hour, time.min, time.sec))
    print("bets per second: " .. string.format("%2.3f", speed) .. " bp/s ")
j=1;for j=1,7 do print("\n")print(" ")end
print("\n\n░▒▓█▓▓▓▓▓▓▓▓▓▓▓▓░░░░░░░░░░░░░░░░▓▓▓▓▓▓▓▓▓▓▓▓█▓▒░\n\n")
if rain3t >= 52 then 
print(" ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  rainbot.ch  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็  ก็็็็็็็็็็็็็ ")end
if rain3t == 73 then rain3t = 0 end

    if win then
        nextbet = basebet
    else
        nextbet = basebet
    end
end
