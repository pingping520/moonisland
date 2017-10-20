$(function(){
    $('.dropdown #xialabiao li').click(function () {
        var index = $(this).index();
        var txt = $(this).children('a').html();
        $(this).parents('ul').siblings('a').html(txt+'<span class="caret"></span>');
        $('#list div').eq(index+1).css('display','none').siblings().css('display','block');
    })
})
//ajax获取数据
$(function(){
   var list=$('#goodsList'); 
 //获取商品的图片信息

  $.get("../goods/findAllGoods", function(data){
	 var divlist=""; 
     for(var i=0;i<data.length;i++){
    	
    	console.log(data[i]);
        divlist+='<div class="row"><div class="col-xs-4"><img src="../images/'+data[i].goodsContent+'"/><a href="../html/detailPage.html?goodsId="'+data[i].goodsId+'></a></div>';
    	divlist+='<div class="col-xs-8"><div class="lb2"><a href="../html/detailPage.html?goodsId='+data[i].goodsId+'">'+data[i].goodsName+'</a></div>';
    	divlist+='<div class="lb3"><strong class="J_01" data-bone="1"><em>￥'+data[i].salesPrice+'</em><i>.00</i></strong>';
    	divlist+='<div class="pull-right">新品</div></div>';
    	divlist+='<div class="lb4"><span><a id="hp1" href="#">8349条评价</a><a id="hp2" href="#">96%好评</a></span></div></div></div>';	
    	
     }
      list.append(divlist);
     
  });
});
