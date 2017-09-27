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
<title>品牌管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{widtth:100%;height:500px;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;品牌管理页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr class="info">
					<td>编号</td>
					<td>样式</td>
					<td>内容</td>
					<td>编号</td>
					<td>添加时间</td>
					<td>更新</td>
				</tr>
				<c:forEach items="${aboutList}" var="about">
					<tr class="success">
					<td>${about.aboutId}</td>
					<td>${about.aboutStyle}</td>
					<td>${about.aboutContent}</td>
					<td>${about.aboutTime}</td>
					<td><a href="about/toUpdate?aboutId=${about.aboutId}">更新</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div id="brand_footer">
			© YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY .&nbsp;&nbsp;粤ICP备16037632号		
		</div>
	</div>
</body>
</html>