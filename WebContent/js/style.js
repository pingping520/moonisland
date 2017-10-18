$(function(){
	/*添加轮播图片*/
    $.get('../photoWall/findAllUse', function(data) {
        for (var i = 0;i<data.length;i++) {
            var photo = data[i];
            $('#photoWall').append('<div class="item"><img src="../images/'+photo.photoUrl+'" class="img2"></div>');
            
        };
        $('#photoWall').children().first().addClass('active');
        
    /*新品特惠*/
    $.get('../goods/findSalesGoods', function(data) {
        for (var i = 0; i<data.length; i++) {
            var goods = data[i];
            console.log(goods)
            $('#maindiv').append('<div class="reg pull-left imgdiv"><a href="#"><img src="../images/'+goods.goodsContent+'" class="img5" alt=""></a></div>');
        };
    });
    
    
});
    

    /*底部js*/
    $('#bottom>div').click(function(){
        var index=$(this).index();
        $('#bottom>div').children().removeClass("color");
        $('#bottom>div').eq(index).children('p').addClass("color");
        $('#bottom>div').eq(index).children('i').addClass("color");
    })

    $('#myHome').click(function(){
        location.href="myHome.html";
    });
    
});