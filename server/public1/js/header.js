$(function(){
    $.ajax({
        url:"header/header.html",
        type:"get",
        success:function(result){
            $(result).replaceAll("#header");
            $(`<link rel="stylesheet" href="header/style.css">`).appendTo("head")
        }
    })
})