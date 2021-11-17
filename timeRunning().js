var initialized=new Date().getTime()+3.6e6//1000*60*60*1
var timeRunning=setInterval(()=>{
    console.log(new Date(new Date().getTime()-initialized).toLocaleTimeString());
    //runtime=new Date(new Date().getTime()-initialized).toLocaleTimeString();console.log(runtime);
    //runtime=runtime.toString();if (runtime.endsWith("10") || runtime.endsWith("30") || runtime.endsWith("0")) {console.log(runtime);console.log("xyz");}
},1e3);//setTimeout(()=>{clearInterval(timeRunning)},1000*60*60*12);
