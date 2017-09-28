var i = 0;//选择颜色
var j = 0;//选择镜框或镜片 1.只选择镜框 
var k = 0;//2.选择镜框和镜片
var q = 0;
/*颜色选择样式*/
$("#ware-color li div").click(function(){
    $(this).css("border-color","#df7076");
    $(this).css("color","#df7076");
    $(this).parent().siblings().children().css("border-color","#c1c1c1");
    $(this).parent().siblings().children().css("color","#232323");
    i = 1;
});
/*选择镜框样式*/
$("#check-style li div").click(function(){
    $(this).css("border-color","#df7076");
    $(this).css("color","#df7076");
    $(this).parent().siblings().children().css("border-color","#c1c1c1");
    $(this).parent().siblings().children().css("color","#232323");
    j = 1;
});
$('#lens-style').click(function(){
	k = 2;
});

/*数量-*/
$("#btn-minus").click(function(){
    var index = $("#btn-input").val();
    $("#btn-input").val(parseInt(index)-1);
    if(index<=1){
        $("#btn-input").val(1);
    }
});
/*数量+*/
$("#btn-add").click(function(){
    var index = $("#btn-input").val();
    $("#btn-input").val(parseInt(index)+1);
});

$("#lens-style").click(function () {
    $("#check-style").css("display","none");
    $("#btn-kefu").css("display","none");
    $("#check-Lens").css("display","block");
    $("#btn-close").css("display","block");
});
$("#btn-close").click(function () {
    $("#check-Lens").css("display","none");
    $("#btn-close").css("display","none");
    $("#check-style").css("display","block");
    $("#btn-kefu").css("display","block");
});

$("#check-shuoming").click(function () {
    $("#footer3").css("display","block");
    $("#mengban").css("display","block");
});
$("#check-shuoming2").click(function () {
    $("#footer3").css("display","block");
    $("#mengban").css("display","block");
});
$("#mengban").click(function () {
    $("#footer3").css("display","none");
    $("#mengban").css("display","none");
});

function check(){ 
    if(i!=1){
    	alert("请选择镜框颜色");
        return false;  
    }
    if(j!=1){
    	alert("请选择镜框或镜片");
    	
    	return false;
    }
    if(k==2){
    	if($('#text01').text()!="左眼球镜"&&$('#text01').text()!="0"){
    		if($('#text02').text()!="右眼球镜"&&$('#text02').text()!="0"){
    			return true;
    		}
    		alert('请选择右眼度数');
			return false;
		}
		alert('请选择度数');
		return false;
	}
    
    else{  
        return true;  
    }              
}