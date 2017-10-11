<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<title>商品退货页</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
/* 	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{widtth:100%;height:500px;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#addpage{text-align:center;}
	#tblpagenum{margin:0 auto;}
	.num{width:60px;}
	#user_footer{width:100%;height:60px;line-height:60px;text-align:center;position: relative;}
	#page{position: absolute;bottom:-260px;left:40%;} */
</style>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
</head>
<body>
	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>退货订单</legend>
			<div class="layui-field-box">

			<div style="margin:0px; background-color: white; margin:0 10px;" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
	        	<blockquote class="layui-elem-quote">
	            <button type="button" class="layui-btn layui-btn-small" id="getAll"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
		            <form class="layui-form" style="float:right;">
		                <div class="layui-form-item" style="margin:0;">
		                    <label class="layui-form-label">名称</label>
		                    <div class="layui-input-inline">
		                        <input type="text" name="name" placeholder="支持模糊查询.." autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid layui-word-aux" style="padding:0;">
		                        <button lay-filter="search" class="layui-btn" lay-submit><i class="fa fa-search" aria-hidden="true"></i> 查询</button>
		                    </div>
		                </div>
		            </form>
	        	</blockquote>
    		</div>

			
				<table class="site-table table-hover">
					<thead>
						<tr>	
								<td>退货编号</td>
								<td>订单编号</td>
								<td>用户编号</td>
								<td>用户昵称</td>
								<td>商品编号</td>
								<td>退货原因</td>
								<td>退货状态</td>
								<td>退货时间</td>
					        <td style="width:117px;">操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${returngoodsList}" var="return1">
					<tr class="success">
					<td>${return1.returnId}</td>
					<td>${return1.orderId}</td>
					<td>${return1.user.userId}</td>
					<td>${return1.user.nickName}</td>
					<td>${return1.goods.goodsId}</td>
					<td>${return1.reason}</td>
					<td><input type="checkbox" id="${return1.returnId}" onchange="check(${return1.returnId})"  
					${(return1.returnStatus==1)?'checked':''} >选择</td>
					<td>${return1.returnTime}</td>
					 <td><p><a href="javascript:;" class="layui-btn layui-btn-mini">更新</a>
			                <a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a></p></td>
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
							<li class="active"><a href="returnOrder/findpageReturn?page=${x}">${x}</a></li>
						</c:if>
						<c:if test="${param.page!=x}">
							<li><a href="returnOrder/findpageReturn?page=${x}">${x}</a></li>	
						</c:if>					
					</c:forEach>
					<li><a href="javascript:next()">&raquo;</a></li>
					<li><span>共&nbsp;${count}&nbsp;页.</span></li>
				</ul>	
				</div>
		</div>			
	
	</fieldset>
	</div>
	
	<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
	<script type="text/javascript">
		function last(){
			var a=$('.active').children().text();
			if(a>1){
				a=a-1;
				location.href="returnOrder/findpageReturn?page="+a;
			}
		} 
		function next(){
			var a=$('.active').children().text();
			var pagenum=$('#page').children('li').length;
			var b=parseInt(a);
			//alert( typeof(b))
			if(a<pagenum-3){
				b=b+1;
				location.href="returnOrder/findpageReturn?page="+b;
			}
		} 
		function check(bid){
			var status;
			var ck = document.getElementById(bid);
			if(ck.checked==false){
				status = "0";
			}else{
				status = "1";
			}
			$.post('returnOrder/statusReturn',{'returnStatus':status,'returnId':bid}, function(data) {
				alert("编辑成功！")
			});
		} 
		
		//添加
		$('#getAll').on('click',function(){
			alert("跳到哪里");
			location.href="";
		});
	</script>
</body>
</html>