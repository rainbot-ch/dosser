function streak()
    --[[~~~~~~~~~~~~~start of configuration~~~~~~~~~~~~~]]
    
    balance = 10000             -- testbalance used for calculation
    chance = 3.1415926535898    -- % winchance
    streak = 0                  -- consecutive losing streak
    resistance = 0              -- increase/decrease 'reistance' baseed on payout
    iol = 0                     -- % increase on loss

    --[[~~~~~~~~~~~~~end of configuration~~~~~~~~~~~~~~~]]
    
                                inc = string.format("%.6f", (99 / (99 - chance))) --(1+(iol/100)
                            if (iol > 0) then inc = (1 + (iol / 100)) else inc = inc end
                        if (streak == 0) and (resistance > 0) then streak = string.format("%.0f", ((99 / chance) * (10 + resistance)))
                    elseif (streak == 0) and (resistance == 0) then  streak = string.format("%.0f", ((99 / chance) * 13)) elseif
                 (streak > 0) and (resistance == 0) then streak = streak end --((99/chance)*13))
            divider = string.format("%.0f", (inc ^ streak) * (streak / (streak * (inc - 1))))
        basebet = string.format("%.8f", (balance / divider))
    return print("inc:\t\t", inc, "\npercent:\t", ((inc * 100) - 100), "\nstreak:\t\t", streak, "\ndivider:\t", divider, "\nbasebet:\t", basebet)
end;streak();
