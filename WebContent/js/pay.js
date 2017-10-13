$(document).ready(function(){
    $('#choose1').click(function(e){
       $('#choose1').css("color","red");
        $('#choose2').css("color","#cccccc");
    });
    $('#choose2').click(function(e){
        $('#choose1').css("color","#cccccc");
        $('#choose2').css("color","red");

    });
});