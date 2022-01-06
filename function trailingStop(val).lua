ath=0;percent=true
function trailingStop(val)
    if (balance>ath) then
        ath=balance
    end
    if (precent) then
        if ((balance-nextbet)<=(ath-((ath*val)/100))) then
            return stop()
        end
    else
        if ((balance-nextbet)<=(ath-val)) then
            return stop()
        end
    end
end;trailingStop(33)
