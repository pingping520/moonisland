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
<title>MOON ISLAND品牌管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
#brand{margin:0px auto;width:100%;text-align:center;position:relative;}
#brand_body{widtth:100%;height:500px;}
#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brand_body">
			<table class="table table-hover">
				<tr>
					<td>品牌编号</td>
					<td>品牌名称</td>
					<td>品牌图标</td>
					<td>品牌内容</td>
					<td>添加时间</td>
					<td>品牌状态</td>
					<td>更新品牌</td>
				</tr>
				<c:forEach items="${brandList}" var="brand">
					<tr>
					<td>${brand.brandId}</td>
					<td>${brand.brandName}</td>
					<td><img class="img" src="images/${brand.brandLogo}" style="width:50px;height:50px;"/></td>
					<td>${brand.brandContent}</td>
					<td>${brand.brandAddtime}</td>
					<td><input type="checkbox" id="${brand.brandId}" onchange="check(${brand.brandId})"  
					${(brand.brandStatus==1)?'checked':''} >选择</td>
					<td><a href="brand/toUpdate?brandId=${brand.brandId}"><button class="btn btn-sm btn-primary">更新</button></a></td>
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