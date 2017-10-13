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
<title>MOONISLAND后台管理系统</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="icon/iconfont.css">
<style type="text/css">
.layui-layout-admin .layui-side {width: 216px;}
.layui-body {left: 217px;bottom: 0; border-left: solid 2px #1AA094;border-right:solid 2px #1AA094;z-index:0;}
.layui-nav-tree {padding-left: 8px;}
.layui-tab-content{padding:100px 50px 0px 50px;}
#admin-footer{height:50px;line-height:50px;background: #393d49;}
</style>
</head>
<body>
	<div class="layui-layout layui-layout-admin"
		style="border-bottom: solid 5px #1aa094;">
		<div class="layui-header header header-demo">
			<div class="layui-main">
				<div class="admin-login-box">
					<a class="logo" style="left: 0;" href="index.html"> <span
						style="margin-left: 20px;"> <img src="images/logo_two.jpg" />
					</span>

					</a>
					<div class="admin-side-toggle">
						<i class="fa fa-bars" aria-hidden="true"></i>
					</div>
					<div class="admin-side-full">
						<i class="fa fa-life-bouy" aria-hidden="true"></i>
					</div>
				</div>
				<ul class="layui-nav admin-header-item">
					<li class="layui-nav-item"><a href="javascript:;"><i>&#xe62d;</i>管理员名称:&nbsp;${admin.name}</a></li>
					<li class="layui-nav-item"><a href="javascript:TuiChu()">注销</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="layui-side layui-bg-black" id="admin-side">
			<div class="layui-side-scroll" id="admin-navbar-side"
				lay-filter="side"></div>
		</div>
		<div class="layui-body" id="admin-body">
			<div class="layui-tab admin-nav-card layui-tab-brief"
				lay-filter="admin-tab">
				<ul class="layui-tab-title">
					<li class="layui-this"><i class="fa fa-dashboard"
						aria-hidden="true"></i> <cite>控制面板 </cite></li>
				</ul>
				<div class="layui-tab-content"
					style="min-height: 150px;">
					<div class="layui-tab-item layui-show">
						<iframe src="main.html"></iframe>
					</div>
				</div>
			</div>
		</div>
		<div class="layui-footer footer footer-demo" id="admin-footer">
			<div class="layui-main">
				<p>&copy;YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY ELIER.
					粤ICP备16037632号</p>
			</div>
		</div>
		<div class="site-tree-mobile layui-hide">
			<i class="layui-icon">&#xe602;</i>
		</div>
		<div class="site-mobile-shade"></div>
		
		<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="plugins/layui/layui.js"></script>
		<script type="text/javascript" src="js/nav.js"></script>
		<script src="js/index.js"></script>
		<script>
				
				function TuiChu(){
					if(confirm("确定退出？")){
						$.post('admin/loginOut', function(data) {
							if(data=="success"){
								alert("退出成功、即将跳转到管理员登录页！");
								var timer = setTimeout(function(){
				                location.href = "admin/toLogin";
				                }, 1000)
							}
						});
					}
				}
		</script>
	</div>
</body>
</html>