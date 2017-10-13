$(function(){
    $.get('../photoWall/findAllUse', function(data) {
        for (var i = 0;i<data.length;i++) {
            var photo = data[i];
            $('#photoWall').append('<div class="item"><img src="../images/'+photo.photoUrl+'" class="img2"></div>')
            
        };
        $('#photoWall').children().first().addClass('active');
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