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
<title>商品列表管理页</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style>
	#d02,#d01{font-size:16px;padding:5px;}
</style>
<body>
<input type="hidden" id="sta" value='1${status}'>
	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>商品列表</legend>
			<div class="layui-field-box">

			<div style="margin:0px; background-color: white; margin:0 10px;">
	        	<blockquote class="layui-elem-quote">
	            <button type="button" class="layui-btn layui-btn-small" id="getAll"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
		            <form class="layui-form" style="float:right;">
		                <div class="layui-form-item" style="margin:0;">
		                   
		                    
		                </div>
		            </form>
	        	</blockquote>
    		</div>

			<div>
				 <div id="head">
      			 <div id="d01" class="pull-left hefont0" >
          	  		在售商品
          	 	</div>
        		<div id="d02" class="pull-left hefont0">
           			 下架商品
        		</div>
           </div>
				<table class="site-table table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
					<thead>
						<tr>
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
				                <td style="width:117px;">操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
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
			                <td><p><a href="goods/toupdateGood?goodsId=${good.goodsId}" class="layui-btn layui-btn-mini">更新</a>
			                </p></td>
			            </tr>
       				 </c:forEach>
					</tbody>
				</table>

				<!--分页容器-->
				<div id="paged">
					 <ul class="pagination" id="page">
               			 <li><a href="javascript:last()">&laquo;</a></li>
              			 <c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
                   			 <c:if test="${param.page==x}">
                       	 		<li class="active"><a href="goods/findAll?page=${(x-1)*10}"> ${x}</a></li>
                    		</c:if>
                   			 <c:if test="${param.page!=x}">
                        		<li><a href="goods/findAll?page=${(x-1)*10}">${x}</a></li>  
                    		</c:if>                 
               			 </c:forEach>
		                <li><a href="javascript:next()">&raquo;</a></li>
		                <li><span>共&nbsp;${count}&nbsp;页.</span></li>
            </ul> 
				</div>
				</div>			
			</div>
		</fieldset>
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
<script type="text/javascript" src="plugins/layui/layui.js"></script>
<script>
//添加
$('#getAll').on('click',function(){
	alert(1233);
	location.href="goods/toaddGood";
});
//搜索
$('#search').on('click', function() {
	var $this = $(this);
	var name = $this.prev('input[name=name]').val();
	if(name === '' || name.length === 0) {
		layer.msg('请输入关键字！');
		return;
	}
	
});
function last(){
	var a=$('.active').children().text();
	if(a>1){
		a=a-1;
		location.href="goods/findAll?page="+a;
	}
} 
function next(){
	var a=$('.active').children().text();
	var pagenum=$('#page').children('li').length;
	var b=parseInt(a);
	//alert( typeof(b))
	if(a<pagenum-3){
		b=b+1;
		location.href="goods/findAll?page="+b;
	}
}
</script>

</html>