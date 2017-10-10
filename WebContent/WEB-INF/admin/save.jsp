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
<title>Insert title here</title>
</head>
<body>
			<c:forEach items="${save}" var="s">
				<tr class="success">
					<td>${s.saveId }</td>
					<td>${s.goods.goodsId}</td>
					<td>${s.user.userId}</td>
					<td>${s.saveTime}</td>
					<td><a href="save/delete/${s.saveId }">删除</a></td>
				</tr>
			</c:forEach>
</body>
</html>