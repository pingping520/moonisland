<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>品牌管理页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
#brand {
	margin: 0px auto;
	width: 100%;
	text-align: center;
}

#brnd_header {
	width: 100%;
	height: 60px;
	line-height: 60px;
}

#brand_body {
	width: 100%;
	height: 500px;
}

#brand_footer {
	width: 100%;
	height: 60px;
	line-height: 60px;
	text-align: center;
}

#tblnum {
	width: 100px;
	height: 100px;
	line-height: 20px;
	margin: 0 auto;
}
 #user_footer{width:100%;height:60px; position: relative; } 
</style>
</head>
<body>
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
				<table class="site-table table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
					<thead>
						<tr>
								 <td>图片编号</td>
								<td>商品编号</td>
								<td>图片一</td>
								<td>图片二</td>
								<td>图片三</td>
								<td>图片四</td>
								<td>缩略图一</td>
								<td>缩略图二</td>
								<td>缩略图三</td>
								<td>缩略图四</td>
				                <td>操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${picList}" var="pic">
					<tr class="success">
						<td>${pic.picId}</td>
						<td>${pic.goodsId}</td>
						<td><img alt="" src="images/${pic.pic1}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic2}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic3}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic4}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic1Thumb}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic2Thumb}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic3Thumb}" width="40"
							height="40"></td>
						<td><img alt="" src="images/${pic.pic4Thumb}" width="40"
							height="40"></td>

						<td><a href="pic/toupdatepic?id=${pic.picId}"  class="layui-btn layui-btn-mini">更新</a></td>
					</tr>
				</c:forEach>
		</tbody>
	</table>
	<div id="user_footer" class="container">
			<div id="paged">
				<ul class="pagination" id="page">
					<li><a href="javascript:last()">&laquo;</a></li>
					<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
						<c:if test="${param.num1==x}">
							<li class="active"><a href="pic/findlimit?num1=${x}">${x}</a></li>
						</c:if>
						<c:if test="${param.num1!=x}">
							<li><a href="pic/findlimit?num1=${x}">${x}</a></li>	
						</c:if>					
					</c:forEach>
					<li><a href="javascript:next()">&raquo;</a></li>
					<li><span>共&nbsp;${count}&nbsp;页.</span></li>
				</ul>	
			</div>
		</div>
	<!-- <table id="tblnum">
				<tr id="shuzi"></tr>
			</table>
	</div>			
</div> -->
		</fieldset>
	</div>


</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	/* $(function(){
		$.get('pic/pagecount', function(data) {
			var tblhtml="";
			 for(var i=1;i<=data;i++){
				 tblhtml+="<td><a href='javascript:tonext("+i+")'>"+i+"</a></td>"
			 }
			 $('#shuzi').append(tblhtml);
		});
	})
	function tonext(id){
		location.href="pic/findlimit?num1="+id+"&num2=5";
	}
	 */
	 function last(){
			var a=$('.active').children().text();
			if(a>1){
				a=a-1;
				location.href="pic/findlimit?num1="+a;
			}
		} 
		function next(){
			var a=$('.active').children().text();
			var pagenum=$('#page').children('li').length;
			var b=parseInt(a);
			if(a<pagenum-3){
				b=b+1;
				location.href="pic/findlimit?num1="+b;
			}
		} 
	//添加
	$('#getAll').on('click',function(){
		alert("tiaozhuan")
		location.href="#";
	});
</script>
</html>