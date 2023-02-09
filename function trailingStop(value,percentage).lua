function trailingStop(value,percentage)
    if(bets<=1 or tset~=true)then trailhigh=0;tset=true end
    if(balance>trailhigh)then trailhigh=balance end
    if(percentage)then
        if((balance-nextbet)<=(trailhigh-((trailhigh*value)/100)))then
            return stop()
        end
    else
        if((balance-nextbet)<=(trailhigh-value))then
            return stop()
        end
    end
end
trailingStop(33,true)
