$(function(){

    var txt1 = $('#div').children('input').val();
    var txt2 = $('#div2').children('input').val();
    var checkcode = $('#div2').children('span').txt();
    alert(txt1)

    if(txt2==checkcode){
        $('#next').click(function(event) {
            /*$.post('/', param1: 'value1', function(data) {

            });*/
        }); 

    }else{
        alert("验证码错误！请从新输入！")
    }

})