<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>  
<!DOCTYPE html>  
<html>  
<head>  
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!--默认情况，ui布局的宽度和移动设备的宽度一致，缩放大小为原始大小-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MOON ISLAND商品管理页</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="icon/iconfont.css" rel="stylesheet" type="text/css" />
<style type="text/css">
       body{
           height:100%;
       }
        #head{
            
            position: relative;
            overflow:hidden;
        }
        #main{
        height:500px;
        overflow:hidden;
        }
        #main .con{
            position: absolute;
            left:0;
            top:30px;
            width:100%;  
        }
        .show{
            display: block;
        }
        .hidd{
            display: none;
        }
        
         .hefont0{
            padding: 5px;
            font-weight: bold;
            /* background: #3c763d; */
        }
        #goods_footer{width:100%;height:60px;line-height:60px;text-align:center;
		position: relative;}
	  .info table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
	  #page{position: absolute;bottom:-260px;left:40%;}
	    .upA{width:50px;height:32px;line-height:32px;text-align:center;background:#337ab7;border-radius:3px;}
	   .upA a{color:#ffffff;}
		.td{width:10%;}
</style>
</head>
<body>
<div id="goods">
<input type="hidden" id="sta" value='1${status}'>
        <div id="goods_body">

 <div id="main">
    <div id="head">
       <div id="d01" class="pull-left hefont0" >
          	  在售商品
          	 
        </div>
        <div id="d02" class="pull-left hefont0">
           	 下架商品
        </div>
   </div>
   
	    <div class="con clearfix show" id="con01" >
	            <table class="table table-hover">
    	 <tr class="thead">
              <!--   <td>商品编号</td>
                <td>品牌编号</td> -->
                <td>商品名称</td>
                <td>商品分类</td>
                <td>原价</td>
                <td>现价</td>
                <td>商品颜色</td>
                <!-- <td>商品内容</td> -->
                <td>浏览记录数量</td>
                <td>收藏次数</td>
                <td>销售数量</td>
                <td>关键字</td>
                <!--<td>是否在售</td>-->
                <td>库存数量</td>
                <td>立减价格</td>
                <td>特权改价</td>
                <td>积分</td>
                <td>款式</td>
                <td>尺码A</td>
                <td>尺码B</td>
                <td>尺码C</td>
                <td>尺码D</td>
                <td>尺码E</td>
                <!-- <td>时间</td> -->
                <td>是否促销</td>
                <td>更新商品</td>   
                
            </tr>
        <c:forEach items="${goodslist}" var="good">
            <tr>
              <%--   <td>${good.goodsId}</td>
                <td>${good.brandId}</td> --%>
                <td>${good.goodsName}</td>
                <td>${good.category}</td>
                <td>${good.originalPrice}</td>
                <td>${good.salesPrice}</td>
                <td>${good.goodsColor}</td>
              <%--   <td>${good.goodsContent}</td> --%>
                <td>${good.browseNum}</td>
                <td>${good.saveNum}</td>
                <td>${good.salesNum}</td>
                <td>${good.goodsKeywords}</td>
               <!--<td>${good.isOnsale}</td>  --> 
                <td>${good.stockNum}</td>
                <td>${good.minusPrice}</td>
                <td>${good.privilege}</td>
                <td>${good.points}</td>
                <td>${good.style}</td>
                <td>${good.styleA}</td>
                <td>${good.styleB}</td>
                <td>${good.styleC}</td>
                <td>${good.styleD}</td>
                <td>${good.styleE}</td>
                <%-- <td>${good.addTime}</td> --%>
                <td>${good.isSale}</td>    
                <td><div class="upA"><a href="goods/toupdateGood?goodsId=${good.goodsId}">更新</a></div></td>
                
            </tr>
        </c:forEach>

    </table>
	    </div>
	    <div class="con clearfix hidd" id="con02">
              <table class="table table-striped table-hover">
    	 <tr class="thead">
                <td>商品编号</td>
                <td>品牌编号</td>
                <td>商品名称</td>
                <td>商品分类</td>
                <td>原价</td>
                <td>现价</td>
                <td>商品颜色</td>
               <!--  <td>商品内容</td> -->
                <td>浏览记录数量</td>
                <td>收藏次数</td>
                <td>销售数量</td>
                <td>商品关键字</td>
                <td>是否在售</td>
                <td>库存数量</td>
                <td>立减价格</td>
                <td>特权改价</td>
                <td>积分</td>
                <td>款式</td>
                <td>尺码A</td>
                <td>尺码B</td>
                <td>尺码C</td>
                <td>尺码D</td>
                <td>尺码E</td>
                <td>时间</td>
                <td>是否促销</td>
                <td>更新商品</td>   
                
            </tr>
        <c:forEach items="${goodslist}" var="good">
            <tr>
                <td>${good.goodsId}</td>
                <td>${good.brandId}</td>
                <td>${good.goodsName}</td>
                <td>${good.category}</td>
                <td>${good.originalPrice}</td>
                <td>${good.salesPrice}</td>
                <td>${good.goodsColor}</td>
                <%-- <td><img src="images/${good.goodsContent}"/></td> --%>
                <td>${good.browseNum}</td>
                <td>${good.saveNum}</td>
                <td>${good.salesNum}</td>
                <td>${good.goodsKeywords}</td>
                <td>${good.isOnsale}</td>
                <td>${good.stockNum}</td>
                <td>${good.minusPrice}</td>
                <td>${good.privilege}</td>
                <td>${good.points}</td>
                <td>${good.style}</td>
                <td>${good.styleA}</td>
                <td>${good.styleB}</td>
                <td>${good.styleC}</td>
                <td>${good.styleD}</td>
                <td>${good.styleE}</td>
                <td>${good.addTime}</td>
                <td>${good.isSale}</td>    
                <td><a href="goods/toupdateGood?goodsId=${good.goodsId}">更新</a></td>
                
            </tr>
        </c:forEach>

    </table>
	    </div>

 </div>
         
        <div id="goods_footer">
            <ul class="pagination" id="page">
                <li><a href="#">&laquo;</a></li>
               <c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
                    <c:if test="${param.page==x}">
                        <li class="active"><a href="goods/findAll?page=${(x-1)*10}"> ${x}</a></li>
                    </c:if>
                    <c:if test="${param.page!=x}">
                        <li><a href="goods/findAll?page=${(x-1)*10}">${x}</a></li>  
                    </c:if>                 
                </c:forEach>
                <li><a href="#">&raquo;</a></li>
                <li><span>共&nbsp;${count}&nbsp;页.</span></li>
            </ul> 


        	<!-- <c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
                                <a href="goods/findAll?page=${(x-1)*10}">${x}</a>&nbsp;&nbsp;&nbsp;&nbsp;
                            </c:forEach>
                            共&nbsp;${count}&nbsp;页. -->	
        </div>
    </div>
</div>


</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">


$('#d01').click(function(){

    $('#con01').attr("class","con clearfix show");
    $('#con02').attr("class","con clearfix hidd");
  
    location.href="goods/findbyselect?status=1&page=0";
    
})
$('#d02').click(function(){

    $('#con02').attr("class","con clearfix show");
    $('#con01').attr("class","con clearfix hidd");
  
    location.href="goods/findbyselect?status=0&page=0";
  
})
 var status=$('#sta').val(); 

	  if(status==11){
		  $('#d01').css("background","#1aa094");
	  }
	  else if(status==10){
		  $('#d02').css("background","#1aa094");
	  }
</script>
</html>