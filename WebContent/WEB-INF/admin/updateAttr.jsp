<%@ page language="java" pageEncoding="UTF-8"%>
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
<title>MOON ISLAND商品属性更新页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#attr{width:100%;margin:0px auto;}
	#attr_update{margin:50px auto;height:300px;line-height:auto;font-size:16px;font-weight:bold;}	
</style>
</head>
<body>
	<div id="attr">
		<table id="attr_update">
			<tr>
				<td>商品编号:</td>
				<td><input type="text" id="aid" value=""/></td>
			</tr>
			<tr>
				<td>属性材质:</td>
				<td><input type="text" id="amaterial"/></td>
			</tr>
			<tr>
				<td>属性边框:</td>
				<td><input type="text" id="aborder"/></td>
			</tr>
			<tr>
				<td>属性尺寸:</td>
				<td><input type="text" id="asize"/></td>
			</tr>
			<tr>
				<td>属性功能:</td>
				<td><input type="text" id="afunction"/></td>
			</tr>
			<tr>
				<td>属性颜色:</td>
				<td><input type="text" id="acolor"/></td>
			</tr>
			<tr>
				<td><button id="addAttr" class="btn btn-success">添加属性</button></td>
			</tr>
		</table>
		
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#addAttr').click(function() {
	var gid = $('#aid').val();
	var amaterial = $('#amaterial').val();
	var aborder = $('#aborder').val();
	var asize = $('#asize').val();
	var afunction = $('#afunction').val();
	var acolor = $('#acolor').val();
	$.post('goodsAttr/add',{"goods.goodsId":gid,"material":amaterial,"border":aborder,"size":asize,"function":afunction,"color":acolor}, function(data) {
		alert(data)
		if(data==1){				
			alert("添加成功！点击确定跳到商品属性详情页！")
			var timer = setTimeout(function(){
				location.href = "goodsAttr/findAll";
			}, 1000)
		}
	});
});

</script>
</html>