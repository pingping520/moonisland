$(function(){
    $('#main .row ul li a').click(function() {
        $(this).css('color','#f23030');
        $(this).parent('li').css('backgroundColor','#f4f5f9');
        $(this).parent('li').siblings().css('backgroundColor','#ffffff');
        $(this).parent('li').siblings().children('a').css('color','#484b50');
    });
    $('#main a').click(function() {
        var index = $(this).parents('li').index();
        $('.bottom').length;
        $('.bottom').eq(index).css('display','block').siblings('.bottom').css('display','none');
    });
    $('#bottom>div').click(function(){
        var index=$(this).index();
        $('#bottom>div').children().removeClass("color");
        $('#bottom>div').eq(index).children('p').addClass("color");
        $('#bottom>div').eq(index).children('i').addClass("color");
    })

    $('#mh-index').click(function(){

        location.href="index.html";
    });
});