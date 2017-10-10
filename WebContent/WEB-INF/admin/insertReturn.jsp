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
<title>商品评论页</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{width:600px;height:500px;margin:0 auto;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#addpage{text-align:center;}
	#file,#file2,#file3{margin-left:100px;}
</style>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;商品评论添加页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr>
					<td>退货编号</td>
					<td><input id="returnId" type="text" value=""/></td>
				</tr>
				<tr>
					<td>订单编号</td>
					<td><input id="orderId" type="text" value=""/></td>
				</tr>
				<tr>
					<td>用户编号</td>
					<td><input id="userId" type="text" value=""/></td>
				</tr>
				<tr>
					<td>商品编号</td>
					<td><input id="goodsId" type="text" value=""/></td>
				</tr>
				<tr>
					<td>退货原因</td>
					<td>
						<textarea rows="3" cols="20" id="reason">
							
						</textarea>
					</td>
				</tr>
				
				<tr><td colspan="2"><input type="button" value="添加" onclick="insert()"/></td></tr>
			</table>
		</div>
	</div>
	
	<script type="text/javascript">
		function insert(){
			var returnId=$('#returnId').val();
			var orderId=$('#orderId').val();
			var userId=$('#userId').val();
			var goodsId=$('#goodsId').val();
			var reason=$('#reason').val();
			$.post('returnOrder/addReturn',{'returnId':returnId,'orderId':orderId,'user.userId':userId,'goods.goodsId':goodsId,'reason':reason,'returnStatus':1}, function(data) {
				alert("编辑成功！")
			});
		}
		 
	</script>
</body>
</html>