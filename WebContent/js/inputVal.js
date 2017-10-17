  $(function(){

        $('#inp').bind('input propertychange', function() {
            var con=$('#inp').val();
            if(con==""){
                $('#btn').attr('disabled','disabled');
                $('#btn').css('backgroundColor','#eee');
            }
            else{
                $('#btn').attr('disabled',false);
                $('#btn').css('backgroundColor','red');
            }
        });
      $('#btn').click(function(){
          location.href="fastRegister.html"
      })
    })