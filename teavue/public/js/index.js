(function(){
    ajax({
        url:"http://localhost:5050/index",
        type:"get",
        dataType:"json"
    }).then(function(result){
        console.log(result)
    })
})()