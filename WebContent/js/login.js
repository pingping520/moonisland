$(function(){

    /*用户登录*/
    $('#btn').click(function(){
        var uphone = $('#text-input').val();
        var upwd = $('#text-input2').val();
        alert(1)
        $.post('../user/login', {"phone":uphone,"password":upwd}, function(data) {
            
        });
    });

    $('#text-input2').bind('input propertychange', function() {
        var con=$('#text-input2').val();
        if(con==""){
            $('#btn').attr('disabled','disabled');
            $('#btn').css('backgroundColor','#eee');
        }
        else{

            $('#btn').attr('disabled',false);
            $('#btn').css('backgroundColor','#dd443a');
        }
    });
    var img1=document.getElementById('img1');
    var img2=document.getElementById('img2');
    img1.onclick=function () {

        img1.className="input-group-addon span1 hid";

        img2.className="input-group-addon span1 show";
        $('#text-input2').attr('type','text');
    }
    img2.onclick=function () {
        img1.className="input-group-addon span1 show";
        img2.className="input-group-addon span1 hid";
        $('#text-input2').attr('type','password');
    }
});