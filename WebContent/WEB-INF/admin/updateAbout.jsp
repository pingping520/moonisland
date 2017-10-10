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
<title>MOON ISLAND关于我们更新页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#about{margin:0px auto;}
	#about_tbl{height:300px;margin:0px auto;line-height:auto;font-size:16px;font-weight:bold;}
</style>
</head>
<body>
	<div id="about">
		<div id="about_update">
			<table id="about_tbl">
				<input type="hidden" value="${about.aboutId}" id="aid">
				<tr>
					<td>标题:</td>
					<td><input type="text" id="astyle" value="${about.aboutStyle}"/></td>
				</tr>
				<tr>
					<td>内容:</td>
					<td><input type="text" id="acontent" value="${about.aboutContent}"/></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn btn-success" id="updateAbout">更新关于我们</button></td>
				</tr>
			</table>			
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#updateAbout').click(function() {
	var aid = $('#aid').val();
	var astyle = $('#astyle').val();
	var acontent = $('#acontent').val();
	alert(astyle)
	alert(acontent)
	$.post('about/update',{"aboutId":aid,"aboutStyle":astyle,"aboutContent":acontent}, function(data) {
		if(data==1){				
			alert("更新成功！点击确定跳到品牌详情页！")
			var timer = setTimeout(function(){
				location.href = "about/findAll";
			}, 1000)
		}
	});
});

</script>
</html>