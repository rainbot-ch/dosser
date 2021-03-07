/*
//░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░▄░▄░▄░░▄░▄░░▄░▄░░▄░▄░░▄░                 
//
//                      °º¤ø„¸°º¤ø„¸¸„ø¤º°¸„ø¤º°¨
//
//      ¨°º¤ø„¸ {('#(•÷[ Rain_Bot proudly presens: ]÷•)—>¸„ø¤º°¨
//                     ==Base_Bet_Calculator_v1.js==
//
//                      °º¤ø„¸¸„ø¤º°„ø¤º°¨   _`°º¤﻿˵̜١
//
//                 |        _   _         _   _        |                                 
//
|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__\|/__
*/
 
//━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
//=Press F12 to open Your Browser-Console=
//=Change Basebet and Multiplier=
//=Hit ENTER=
//=See the Console Log for your Calculation=
//━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
 
var basebet = 0.00000500           ; //=insert Your Base Bet here=//
var total = parseFloat(basebet);
var total1 = parseFloat(basebet);
var amount = parseFloat(basebet);
var betAmount = parseFloat(basebet);
var len = 1000                     ; //=Max Losses|only change for Multipliers <99x recommended=up to 10'000=//
for(var i = 2; i <= len; i++) {
    betAmount = amount * 1.0152    ; //=Multiplication per Bet 0.5-> -50% 1.00-> 0% 1.5-> 50% 2.0 -> 100%=//
    amount = betAmount;
    total += parseFloat(betAmount);
    if(i <= (len -1)) {
        total1 += parseFloat(betAmount);
    }
    console.log(i + ": " + amount.toFixed(8));
}
console.log('Max Loss Amount = '+total1.toFixed(8)); //=Max Loss Amount=//
console.log('Balance Required = '+total.toFixed(8)); //=Balance Required=//
 
/*
//made with ♥ in Switzerland ^•ﻌ•^ฅ
//https://rainbot.ch/
*/
