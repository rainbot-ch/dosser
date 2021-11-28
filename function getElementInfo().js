function getElementInfo(){
  document.addEventListener("mousedown",function(event){
    //leftClick===0|rightClick===2
      if (event.button===0) {
        console.log(event);
          var id=(event.target||event.srcElement);
            var idmap=[];
              idmap.push(id);
              var tree=[];
              tree.push(event);
            console.log(tree[0].path);
          console.log(idmap);
        console.log(event.target);
    }
  },{once:true});
}getElementInfo();
