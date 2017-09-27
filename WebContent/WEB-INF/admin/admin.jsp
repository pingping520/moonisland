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
<title>MOON ISLAND 后台管理页面</title>
<style type="text/css">
    #wrap{width:100%;}
    #header{width:100%;height:100px;background:#ccc;}
</style>
</head>
<body>
    <div id="wrap">
       <div id="header"></div> 
       <div id="main"></div>
       <div id="footer"></div>
    </div>
</body>
</html>