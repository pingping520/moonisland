//Tab切换功能
var con1 = document.getElementById('s001')
var con2 = document.getElementById('s002')
var con3 = document.getElementById('s003')
var hh1 = document.getElementById('header001')
var hh2 = document.getElementById('header002')
var hh3 = document.getElementById('header003')
var xiao1=document.getElementById("xiao");
function chaCon1() {
    con1.className = "show";
    con2.className = "hid";
    con3.className = "hid";
    hh1.className="col-xs-4 hshow";
    hh2.className="col-xs-4";
    hh3.className="col-xs-4";
    xiao1.className="col-xs-3 hid";
}
function chaCon2() {
    con1.className = "hid";
    con2.className = "show";
    con3.className = "hid";
    hh1.className="col-xs-4 ";
    hh2.className="col-xs-4 hshow";
    hh3.className="col-xs-4";
    xiao1.className="col-xs-3 show";

}
function chaCon3() {
    con1.className = "hid";
    con2.className = "hid";
    con3.className = "show";
    hh1.className="col-xs-4 ";
    hh2.className="col-xs-4";
    hh3.className="col-xs-4 hshow";
    xiao1.className="col-xs-3 hid";
}

var swiper = new Swiper('.swiper-container');

var windowHeight = $(window).height(),
    $body = $("body");
// console.log($(window).height());
// console.log($('body').height());
$body.css("height", windowHeight);

/*window.onload=function(){
    var imgh=$('.shop02').height();
    alert(imgh);
    var $imgright=$('#imgright');
    $imgright.css("height",imgh);
}*/


$(document).ready(function() {
	//获取商品信息
	var goodsid=UrlParm.parm("goodsId");
	var conXiang=$('#conXiang');
	
	 $.get("../goods/findonegood?id="+goodsid, function(data) { 
	     
	     var fontRec=$('#fontRec');
	     var pp="";
	     var conXchi="";
	     pp+='<p class="p01" href="#">'+data.goodsName+'</p>';
	     pp+=' <p class="p02" href="#">新镜时髦范，怎能少得了这些？</p>';
	     pp+='<p class="p03" >￥'+data.salesPrice+'</p><br/>';
	     conXchi='<img class="img-responsive" src="../images/'+data.goodsContent+'"/>'
	     fontRec.append(pp);
	     conXiang.append(conXchi);
	  });
	//获取商品的图片信息
	 $.get('../pic/findpicbygoodsid?id='+goodsid,function(data){
		 console.log(data);
		 var img1=$('#img1');
         var img2=$('#img2');
         var img3=$('#img3');
         var img4=$('#img4');
         var img5=$('#img5');
         var im1='<img src="../images/'+data.pic1Thumb+'" class="img-responsive"/>';
         var im2='<img src="../images/'+data.pic2Thumb+'" class="img-responsive"/>';
         var im3='<img src="../images/'+data.pic3Thumb+'" class="img-responsive"/>';
         var im4='<img src="../images/'+data.pic4Thumb+'" class="img-responsive"/>';
         img1.append(im1);
         img2.append(im2);
         img3.append(im3);
         img4.append(im4);
	 })
	
});





