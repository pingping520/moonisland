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
<link rel="stylesheet" type="text/css" href="css/brand.css" />
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;品牌管理页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr class="info">
					<td>品牌编号</td>
					<td>品牌名称</td>
					<td>品牌图标</td>
					<td>品牌内容</td>
					<td>添加时间</td>
					<td>品牌状态</td>
					<td>更新品牌</td>
				</tr>
				<c:forEach items="${brandList}" var="brand">
					<tr class="success">
					<td>${brand.brandId}</td>
					<td>${brand.brandName}</td>
					<td>${brand.brandLogo}</td>
					<td>${brand.brandContent}</td>
					<td>${brand.brandAddtime}</td>
					<td><input type="checkbox" id="${brand.brandId}" onchange="check(${brand.brandId})"  
					${(brand.brandStatus==1)?'checked':''} >选择</td>
					<td><a href="brand/toUpdate?brandId=${brand.brandId}">更新品牌</a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div id="brand_footer">
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/brand.js"></script>
</html>