function touch(name,delay,duration,times){//'string',seconds,seconds,amount//
	function stop(){t=0;return clearInterval(clicker);}var t=0;
		function click(){
				var btn=document.getElementsByTagName('button');
					for (var i=0;i<btn.length;i++){
					if (btn[i].innerText.indexOf(name)>-1){btn[i].click();
				t++;console.log('clicked '+t+' times "'+name+'" delayed '+delay+' s');}}}
			if (times>0) {for(e=0;e<times;e++)click();}else{
		var clicker=setInterval(()=>{click();},delay*1000);}
	setTimeout(()=>{stop();console.log("stopped")},duration*1000);}
touch('START',2,60,0);
