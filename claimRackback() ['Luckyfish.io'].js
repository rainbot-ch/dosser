function sleep(secs) {return new Promise((_nextEventFunc)=>{return setTimeout(_nextEventFunc,secs*1E3);});}
    async function claimRackback() {
        var i = 0;
        do {
            console.log("claim button visible:starting with claim sequence...");
await sleep(1);
            document.querySelector("body > div.el-select-dropdown.el-popper.mySelectCurrency > div.el-scrollbar > div.el-select-dropdown__wrap.el-scrollbar__wrap.el-scrollbar__wrap--hidden-default > ul").children[i].click();
await sleep(1);
            document.querySelector("body > section.commonAlert_page.vip_page > div > div > div > div.vip_main > div:nth-child(1) > div.vip_rakeback > div.rakeBack_input.clear > span").click();
await sleep(1);
            document.querySelector("body > section.commonAlert_page.vip_page > div > div > div > div.vip_main > div:nth-child(1) > div.vip_rakeback > div.button_primary").click();
await sleep(1);
            i++;
        }
        while (i < 30);
  if (i===30){console.log('status:\t'+'%c'+'[SUCCESS].toUpperCase()','color:green');}
  }//
claimRackback();
