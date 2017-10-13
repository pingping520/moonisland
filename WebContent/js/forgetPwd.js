$(document).ready(function(){
    var txt1 = $('#div').children('input').val();
    var txt2 = $('#div2').children('input').val();
    var checkcode = $('#div2').children('span').txt();
    if(txt2==checkcode){
        $('.btn').click(function(event) {
            location.href="";
        });        
    }else{
        alert("验证码错误！请从新输入！")
    }
});