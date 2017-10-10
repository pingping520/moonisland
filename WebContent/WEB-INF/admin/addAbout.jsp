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
<title>MOON ISLAND关于我们添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#about{margin:0px auto;}
	#about_tbl{height:300px;margin:0px auto;line-height:auto;font-size:16px;font-weight:bold;}
</style>
</head>
<body>
	<div id="about">
		<table id="about_tbl">
			<tr>
				<td>标题:</td>
				<td><input type="text" id="astyle"/></td>
			</tr>
			<tr>
				<td>内容:</td>
				<td><input type="text" id="acontent"/></td>
			</tr>
			<tr>
				<td colspan="2"><button  class="btn btn-success" id="addAbout">添加</button></td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#addAbout').click(function() {
	var astyle = $('#astyle').val();
	var acontent = $('#acontent').val();
	$.post('about/add',{"aboutStyle":astyle,"aboutContent":acontent}, function(data) {
		if(data==1){				
			alert("添加成功！点击确定跳到关于我们详情页！")
			var timer = setTimeout(function(){
				location.href = "about/findAll";
			}, 1000)
		}
	});
});
</script>
</html>