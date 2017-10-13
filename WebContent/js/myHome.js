 $(function(){

        $('#head_mess>div').click(function(){
            var index=$(this).index();

            $('#head_mess>div').children().removeClass("color");
            $('#head_mess>div').eq(index).children('i').addClass("color");
            $('#head_mess>div').eq(index).children('p').addClass("color");
        })
        $('#activity>div').click(function(){
            var index=$(this).index();

            $('#activity>div').children('p').removeClass("color");
            $('#activity>div').eq(index).children('p').eq(1).addClass("color");
        })
        $('#bottom>div').click(function(){
            var index=$(this).index();
            $('#bottom>div').children().removeClass("color");
            $('#bottom>div').eq(index).children('p').addClass("color");
            $('#bottom>div').eq(index).children('i').addClass("color");
        });

    })