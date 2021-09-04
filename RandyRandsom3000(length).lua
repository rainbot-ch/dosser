function RandyRandsom3000(length)
   math.randomseed(os.time() + math.random(os.time()))
    rng={"1","2","3","4","5","6","7","8","9","0"}
    random9000=""
    for i=1,length do
        random9000=random9000..""..rng[math.random(1,#rng)]
        if i==length then
            print(random9000)
        end
    end
    return math.randomseed(random9000)
end;RandyRandsom3000(32)
