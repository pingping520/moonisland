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
<title>照片墙管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/photoWall.css" />
</head>
<body>
	<div id="photo">
		<div id="photo_header">MOON ISLAND&nbsp;照片墙管理页</div>
		<div id="photo_body">
			<table class="table table-hover">
				<tr class="info">
					<td>图片编号</td>
					<td>图片地址</td>
					<td>图片描述</td>
					<td>添加时间</td>
					<td>图片状态</td>
					<td>编辑图片</td>
					<td>更新图片</td>
				</tr>
				<c:forEach items="${photoList}" var="photo">
					<tr class="success">
					<td>${photo.photoId}</td>
					<td>${photo.photoUrl}</td>
					<td>${photo.photoWord}</td>
					<td>${photo.photoTime}</td>
					<td>${photo.photoStatus}</td>
					<td><input type="checkbox" id="${photo.photoId}" onchange="check(${photo.photoId})"  
					${(photo.photoStatus==1)?'checked':''} >选择</td>
					<td><a href="photoWall/toUpdate?photoId=${photo.photoId}">更新图片</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div id="brand_footer">
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/photoWall.js"></script>
<script type="text/javascript">
function check(pid){
	var status;
	var ck = document.getElementById(pid);
	if(ck.checked==false){
		status = "0";
	}else{
		status = "1";
	}
	$.get('photoWall/check?photoId='+pid+'&photoStatus='+status, function(data) {
		if(data==1){
			alert("编辑成功！")			
		}
	});
}
</script>
</html>