$(function(){
       /* $('#inp').bind('input propertychange', function() {
            var con=$('#inp').val();
            if(con==""){
                $('#btn').attr('disabled','disabled');
                $('#btn').css('backgroundColor','#eee');
            }
            else{
                $('#btn').attr('disabled',false);
                $('#btn').css({'backgroundColor':'red','color':'#fff'});
                var menu=$('#inp').val();
                $('#tel').text(menu);
            }
        });*/
        $('#btn').click(function(){
            $('#cover').removeClass('none');
            $('#modal').fadeIn(200);
        })
        $('#cancel').click(function(){
            $('#cover').addClass('none');
            $('#modal').fadeOut(100);
        })
        $('#confirm').click(function(){
            location.href='inputVal.html';
        })
    $('#agree').click(function(){
        if($('#agree').attr('class')=='glyphicon glyphicon-ok-sign' && $('#inp').val()!="" ){
            $('#agree').addClass('color');
            $('#pro span').eq(1).css('color','red');
            $('#btn').attr('disabled',false);
            $('#btn').css({'backgroundColor':'red','color':'#fff'});
            var menu=$('#inp').val();
            $('#tel').text(menu);
        }else{
            $('#agree').removeClass('color');
            $('#pro span').eq(1).css('color','#9f9f9f');

            $('#btn').attr('disabled','disabled');
            $('#btn').css('backgroundColor','#eee');
        }
    })
})