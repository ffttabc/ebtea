$(function(){
    $.ajax({
        url:"footer/footer.html",
        type:"get",
        success:function(result){
            $(result).replaceAll("#footer");
            $(`<link rel="stylesheet" href="footer/style.css">`).appendTo("head")
        }
    })
})