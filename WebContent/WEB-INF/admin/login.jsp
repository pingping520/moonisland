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
<title>管理员登录</title>
<link rel="stylesheet" type="text/css" href="css/adminLogin.css" />	
</head>
<body>
<div id="wrap">
    <div id="header"><span><img src="logo_two.jpg"/></span>&nbsp;&nbsp;&nbsp;&nbsp;MOON ISLAND&nbsp;&nbsp;后台管理系统</div>
    <div id="ceng"></div>
    <div id="main">
        <div id="login">
            <div id="login_header">
                MOON ISLAND 管理员登录
            </div>
            <div id="login_main">
            <form action="admin/login" method="post">
                <p>管理员名称：<input type="text" name="name"/></p>
                <p>管理员密码：<input type="password" name="pwd"/></p>
                <p><input type="submit" value="登录" class="btn btn0 btn-success" />
                                <input type="reset" value="重置" class="btn btn1 btn-danger" />
                </p> 
            </form>
            </div>
        </div>
    </div>
    <div id="footer">     
        ©YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY ELIER.  粤ICP备16037632号
    </div>
</div>
</body>
</html>