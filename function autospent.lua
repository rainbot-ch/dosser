--------------------------------------------------------------
--   AUTOCALCULATE BET BASED ON PREVIOUS LOSSES WITH SPENT   --
--------------------------------------------------------------
spent = 0
payout = ((100 - 1) / chance)

function spend()  
  if (win) then
    spent = (spent - lastBet.profit)
    if (spent <= 0) then
      spent = 0
    end
    nextbet = basebet
  else
    spent = (spent + previousbet)
    nbet = (spent / payout)
    if (nbet <= basebet) then
      nextbet = basebet
    else
      nextbet = nbet
    end
end
--  nextbet = (previousbet * (99 / (99 - chance)))
--------------------------------------------------------------
