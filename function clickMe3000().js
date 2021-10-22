document.onkeydown = listen

function listen(e) {
      var evtobj = window.event? event : e
      if (evtobj.ctrlKey && event.key === "k") clickMe3000();
}

function clickMe3000() {
    var posX;
    var posY;
    var clicking;
    var howmany = prompt("how many clicks per second?", 1)
    var times = 1000 / howmany
    document.addEventListener("click", coordinates);

    function coordinates() {
        posX = event.clientX;
        posY = event.clientY;
        document.removeEventListener("click", coordinates);
        document.addEventListener("keydown", stop);
        console.log("Autoclicker [ACTIV] document.elementFromPoint(" + posX + ", " + posY + ")");
        console.log("Press any Key to Stop")
        clicking = setInterval(clicker, times);
    }

    function stop() {
        document.removeEventListener("keydown", stop);
        clearInterval(clicking);
        console.log("stopped");
    }

    function clicker() {
        document.elementFromPoint(posX, posY).click();
    }
}
//clickMe3000();
