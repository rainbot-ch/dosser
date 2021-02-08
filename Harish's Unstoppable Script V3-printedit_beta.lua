resetseed();resetstats();value=0;avehit=0;totalloss=0;total=0;high=0;low=0;counter=0;losecount=0;wager=0;wagerpercbal=0;largebalance=0;loseamount=0;largestloss=0;losspercent=0;hibet=0;initialbalance=balance
swapseed = 9898
coinvalue = 3.546


--                                                                    00000010  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00  |................|
-- 
--                                                                                 |   |              _)        |      )        
--                                                                                 |   |   _` |   __|  |   __|  __ \  /   __|   
--                                                                                 ___ |  (   |  |     | \__ \  | | |   \__ \  
--                                                                                _|  _| \__,_| _|    _| ____/ _| |_|   ____/ 
--                                                                      
--                                                      #content > div > div > div > div > div > div > div > div > div > div > div░░░░░░░░░░░░░░░░░░
--                                                      
--          
      -- _____  __             _____                             ______ ______          ________            _____        _____     ___    _________
      -- __  / / /_______________  /____________________________ ___  /____  /____      __  ___/_______________(_)_________  /_    __ |  / /_|__  /
      -- _  / / /__  __ \_  ___/  __/  __ \__  __ \__  __ \  __ `/_  __ \_  /_  _ \     _____ \_  ___/_  ___/_  /___  __ \  __/    __ | / /___/_ < 
      -- / /_/ / _  / / /(__  )/ /_ / /_/ /_  /_/ /_  /_/ / /_/ /_  /_/ /  / /  __/     ____/ // /__ _  /   _  / __  /_/ / /_      __ |/ / ____/ / 
      -- \____/  /_/ /_//____/ \__/ \____/_  .___/_  .___/\__,_/ /_.___//_/  \___/      /____/ \___/ /_/    /_/  _  .___/\__/      _____/  /____/  
                                    -- -- /_/     /_/                                                            /_/                               
-- ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ ̾ 
--░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░



chance        = 98
chance1       = chance
base          = 0.00000001
minbetforsite = base
divider       = 10000
curbet        = base
nextbet       = base
prevbet       = base
bethigh       = true
resultNumber  = 0
res           = 0
loseAmount    = 0
maxBalance    = 0
n             = 1
nn            = 10
op            = 0
opt           = 0
i             = 0
round         = 0
bbet          = 0
balls0        = {}
balls1        = {}
balls2        = {}
balls3        = {}
option        = 0
inc           = 1
won           = 0
nn            = math.floor(math.random(1,48))
largestProfit = 0
sbalance      = balance
n             = math.random(1,48)
for i         = 0, 49 do
      balls0[i] = 0
    end

for i=0, 48 do
      balls1[i] = 0
    end
maxBet=nextbet

function dobet()

if nextbet>=maxBet then
maxbet=nextbet
end

    if balance>=maxBalance then
        maxBalance = balance
        loseAmount = 0
    else
       loseAmount = maxBalance-balance  
    end

    resultNumber=lastBet.roll
  
            nn=math.floor(math.random(1,48))
          if nn%3==0 then
          option=0
      
          end

            for i=0,49  do
                   if i>=resultNumber then
            balls0[i]=0
               else
               balls0[i]=balls0[i]+1
              end 
             end
          for i=50,98 do
                   if i<=resultNumber then
            balls1[i-50]=0
               else
               balls1[i-50]=balls1[i-50]+1
           end
          end
            
       if !win then 
            n=math.random(1,48)
            if option==0 then
              for i=28,nn,-1 do
                            chance1=i
                      if balls0[i]<=((99/chance1)*10+(99/chance1)+((99/chance1)/1.3))/18.5 then
              chance=i
              print(chance) 
               bethigh=false
                option=chance
                optionLose=balls0[i]
              break
              end
             end
            end

            if option==1 then
              for i=28,nn,-1 do
                            chance1=i
                      if balls1[i]<=((99/chance1)*10+(99/chance1)+((99/chance1)/1.3))/18.5 then
                chance=i
                print(chance)  
                bethigh=true
                option=chance
                optionLose=balls1[i]
              break
              end
               end
            end
    end

if loseAmount<=0 then
    base=balance/divider
    nextbet=base
   maxBet=nextbet
    prevbet=base
    n=1
   opt=0
   option=0
   nn=math.random(1,15)
   round=0
  chance=98
else  
bethigh=!bethigh
           if win then        
        won=won+1
                  if won==1 then nextbet=nextbet*(math.random(1001,1010)/1000)
      end
else

nextbet=nextbet*(math.random(1010,1050)/1000)
won=0
end
    --if chance<=10 then
          
    --nextbet=loseAmount/(99/chance-1)

  --else
          --nextbet=prevbet*1.02
        --  prevbet=nextbet
 
  --end

      if nextbet<maxBet*0.05 then
      nextbet=maxBet*0.10
      end
 chance=math.random(chance-10,chance+15)

    if chance<=5 and (nextbet>loseAmount/(99/chance-1)) then
    nextbet=loseAmount/(99/chance-1)
   end
     
  
end

if chance<=1 or chance>98 then
chance=5
end
if nextbet<minbetforsite then
  nextbet=minbetforsite
  end

  -- print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nx>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<x\n\n")
if bets % swapseed == 0 then resetseed() end
if balance>=largebalance then largebalance=balance;loseamount=0 else loseamount=largebalance-balance end;if loseamount>=largestloss then largestloss=loseamount end;if nextbet>=hibet then hibet=nextbet end;losspercent=largestloss/initialbalance*100;profitpercentage=profit/(balance-profit)*100;payout=99/chance;wager=wager+nextbet;wagerpercbal=wager/initialbalance;value=wager*coinvalue
if (bethigh == true) then bethigh = false direction = " low" else bethigh = true direction = " high" end if lastBet.roll <= chance then low = low + 1 end if lastBet.roll >= (100 - chance) then high = high + 1 end if win then total = total + 1 totalloss = totalloss + losecount avehit = totalloss / total losecount = 0 else losecount = losecount + 1 end 
i=1;for i=1,25 do print("\n")print(" ")end 
print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□")
print("□□□►   HARISH'S UNSTOPPABLE SCRIPT V3  ◄□□□□")
print("□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")
print("         low: " ..low.. " | " .."high: " ..high)
print("         average losses: "..string.format("%.2f",avehit))
print("         last bet number: " .. (resultNumber)) 
print("         payout: "..string.format("%.2f",payout).."x".." @ "..string.format("%.2f",chance).."% chance |" .. tostring(direction)) 
print("         profit: "..string.format("%.8f",profit) ..string.upper(currency).. " | " ..string.format("%.4f",profitpercentage).."%")
print("         largest loss: "..string.format("%.8f",largestloss).." " ..string.upper(currency).." | "..string.format("%.4f",losspercent).."%") 
print("         wager: "..string.format("%.8f",wager).." | "..string.format("%2.4f",wagerpercbal).. "x | " .. string.format("%.2f", value) .. "$")
print("\n□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□□\n")
end
