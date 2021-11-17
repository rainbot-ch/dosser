/**
 *    PriceTicker for WebDiceBot.xyz
 *    'convert to fiat value'
 *    Rain_Bot | https://rainbot.ch
 *                          5.2rev7
 * 
 * **/
      /**                           **\
      *>>>>>>>▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄<<<<<<<*
      *███████▓▒░    MHQB   ░▒▓████████*
      *>>>>>>>▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀<<<<<<<*
      \**                           **/

function init() {
    function refresh() {
        stop();
        first = true;
        init();
        update = setInterval(priceTicker, 5e2-7*34);
    }
    function stop() {
        clearInterval(update);
        document.getElementById("clear").remove();
        document.querySelector("#convert").remove();
        document.querySelector("#profits").remove();
        document.querySelector("#wager").remove();
        document.querySelector("#max").remove();
    }
    var currency = document.querySelector("#jsBotCoin").value;
    var clear = document.createElement("button");
    clear.style.position = "absolute";
    clear.style.backgroundColor = "transparent"
    clear.style.width = "32px";
    clear.style.height = "32px";
    clear.style.fontSize = "32px";
    clear.style.backgroundImage = "url('https://github.com/spothq/cryptocurrency-icons/blob/master/32/icon/"+currency+".png?raw=true')"
    clear.id = "clear";
    var body = document.querySelector("body > div.wdb--container > div:nth-child(2) > table > thead > tr > th:nth-child(3)");
    body.appendChild(clear);
    clear.addEventListener("click", function() {
        stop();
    });
    document.querySelector("#jsBotCoin").addEventListener("click", function() {
        refresh();
    });
    var conv = document.querySelector("#convert");
    if (conv == null) {
        conv = document.createElement("span");
        conv.id = "convert";
        conv.innerText = "0.00$";
        document.querySelector("body > div.wdb--container > div:nth-child(2) > table > thead > tr > th:nth-child(5)").insertBefore(conv, null);
    }

    var prof = document.querySelector("#profits");
    if (prof == null) {
        prof = document.createElement("span");
        prof.id = "profits";
        prof.innerText = "0.00$";
        document.querySelector("body > div.wdb--container > div:nth-child(2) > table > thead > tr > th:nth-child(6)").insertBefore(prof, null);
    }

    var wag = document.querySelector("#wager");
    if (wag == null) {
        wag = document.createElement("span");
        wag.id = "wager";
        wag.innerText = "0.00$";
        document.querySelector("body > div.wdb--container > div:nth-child(2) > table > thead > tr > th:nth-child(4)").insertBefore(wag, null);
    }

    var max = document.querySelector("#max");
    if (max == null) {
        max = document.createElement("span");
        max.id = "max";
        max.innerText = "0.00$";
        document.querySelector("body > div.wdb--container > div:nth-child(2) > table > thead > tr > th:nth-child(7)").insertBefore(max, null);
    }
}
var first = true;
function priceTicker() {
    var currency = document.querySelector("#jsBotCoin").value;
    var balance = parseFloat(document.querySelector("#jsBotBalance").innerText);
    var profit = parseFloat(document.querySelector("#jsBotProfit").innerText);
    var wagered = parseFloat(document.querySelector("#jsBotWagered").innerText);
    var maxbet = parseFloat(document.querySelector("#jsBotMaxBetAmount").innerText);
    fetch(`https://api.cryptonator.com/api/ticker/${currency.toLowerCase()}-usd`).then((FieldOperation) => {
        return FieldOperation.json();
    }).then((data) => {
        if (first) {
            console.log("[" + currency.toUpperCase() + "]");
            console.log("price:\t\t " + data.ticker.price + " $");
            console.log("balance:\t " + (data.ticker.price * balance).toFixed(8) + " $ ");
            console.log("minbet:\t\t " + (0.0001 / data.ticker.price).toFixed(8) + " " + currency.toUpperCase());
            first = false;
        }
        document.querySelector("#convert").innerText = " " + (data.ticker.price * balance).toFixed(2) + "$";
        document.querySelector("#profits").innerText = " " + (data.ticker.price * profit).toFixed(2) + "$";
        document.querySelector("#wager").innerText = " " + (data.ticker.price * wagered).toFixed(2) + "$";
        document.querySelector("#max").innerText = " " + (data.ticker.price * maxbet).toFixed(2) + "$";
    });
}
init();
var update = setInterval(priceTicker, 5e2-7*34);


 //////////////////////////////////////////////////////////////
// --	☂\(._.\) made with ♥ in Switzerland ((/._.)/☂    -- //
////////////////////////////////////////////////////////////

                                                               /**
                                                              👻
                                                              ' ̥',
                                                              ' ̃',
                                                              ' ̞',
                                                              '̘',
                                                              */
