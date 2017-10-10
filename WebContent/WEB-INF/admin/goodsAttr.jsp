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
<title>MOON ISLAND照片墙管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/brand.css" />
</head>
<body>
	<div id="goodsAttr">
		<div id="goodsAttr_body">
			<table class="table table-hover">
				<tr>
					<td>属性编号</td>
					<td>商品名称</td>
					<td>材质</td>
					<td>边框</td>
					<td>大小</td>
					<td>功能</td>
					<td>颜色</td>
					<td>更新属性</td>
				</tr>
				<c:forEach items="${attrs}" var="attr">
					<tr>
					<td>${attr.attrId}</td>
					<td>${attr.goods}</td>
					<td>${attr.material}</td>
					<td>${attr.border}</td>
					<td>${attr.size}</td>
					<td>${attr.function}</td>
					<td>${attr.color}</td>
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