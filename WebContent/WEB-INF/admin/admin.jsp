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
  <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/adminCenter.css">
    <link rel="stylesheet" href="iconfont/iconfont.css">
<style type="text/css">
 
</style>
</head>
<body>

    <div class="container-fluid" >
        <div class="main" >
            <!--头部-->
            <div class="top0" ><strong>MOON ISLAND 后台管理系统</strong><a class="pull-right">退出</a></div>
            <!--<div class="adminLogo" >
                <img src="images/logo.jpg" />
                <span class="adminFont">管理员中心</span>
            </div>-->
            <div style="overflow: hidden">
            <!--左侧管理员权限样式-->
            <div class="left pull-left"  >
                <div class="adminLimits">&nbsp;&nbsp;我的权限</div>
                <div>
                    <ul class="ul">
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-yonghuguanli"></span><a href="UserManger.html" target="tablediv">&nbsp;&nbsp;用户管理</a><a href="#" title="添加新用户">&nbsp;&nbsp;+</a></div>
                            <!--<div>

                            <a href="#">查找</a>

                            <a href="#">删除</a>
                        </div>-->
                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shangpinguanli"></span><a href="#">&nbsp;&nbsp;商品管理</a><a href="#" title="添加新用户">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shangpinfenlei"></span><a href="#">&nbsp;&nbsp;商品分类</a><a href="#" title="添加新分类">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-pinpaishangguanli"></span><a href="#">&nbsp;&nbsp;商品品牌</a><a href="#" title="添加新品牌">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shuxing2"></span><a href="#">&nbsp;&nbsp;商品属性</a><a href="#" title="添加新属性">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shangpintupian"></span><a href="#">&nbsp;&nbsp;商品图片</a><a href="#" title="添加新图片">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shangpinpinglun"></span><a href="#">&nbsp;&nbsp;商品评论&nbsp;&nbsp;&nbsp;</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-dingdanguanli"></span><a href="#">&nbsp;&nbsp;订单管理&nbsp;&nbsp;&nbsp;</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-shangpintupian"></span><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;照片墙</a><a href="#" title="添加新照片">&nbsp;&nbsp;+</a></div>

                        </li>
                        <li class="li">
                            <div class="leftfont"><span class="iconfont icon-tuihuodingdan"></span><a href="#">&nbsp;&nbsp;退货订单&nbsp;&nbsp;&nbsp;</a></div>

                        </li>
                    </ul>
                </div>
            </div>
                <!--表格数据-->
                <div class="right pull-left">
                    <iframe id="ifr" name="tablediv" height="800px" width="100%" border="0" frameborder="0"  scrolling="no" noresize></iframe>
                </div>
            </div>
            <!--版权 footers-->
            <div class="footer ">
                &copy;YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY ELIER.  粤ICP备16037632号
            </div>
        </div>
    </div>
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>

    </script>
</body>
</html>