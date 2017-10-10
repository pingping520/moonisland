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
#about{margin:0px auto;width:100%;text-align:center;}
#about_body{widtth:100%;height:500px;}
#about_body table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>
	<div id="about">
		<div id="about_body">
			<table class="table table-hover">
				<tr>
					<td>编号</td>
					<td>样式</td>
					<td>内容</td>
					<td>添加时间</td>
					<td>更新</td>
				</tr>
				<c:forEach items="${aboutList}" var="about">
					<tr>
					<td>${about.aboutId}</td>
					<td>${about.aboutStyle}</td>
					<td>${about.aboutContent}</td>
					<td>${about.aboutTime}</td>
					<td><a href="about/toUpdate?aboutId=${about.aboutId}"><button class="btn btn-sm btn-primary">更新</button></a></td>
				</tr>
				</c:forEach>
			</table>
		</div>

	</div>
</body>
</html>