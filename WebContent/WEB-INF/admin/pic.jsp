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
	#tblnum{width:100px; height:100px;line-height:20px; margin:0 auto;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;品牌管理页</div>
		<div id="brand_body">
			<table class="table table-hover">
				<tr class="info">
					<td>图片编号</td>
					<td>商品编号</td>
                    <td>图片一</td>
                    <td>图片二</td>
                    <td>图片三</td>
                    <td>图片四</td>
                    <td>缩略图一</td>
                    <td>缩略图二</td>
                    <td>缩略图三</td>
                    <td>缩略图四</td>
                    <td>添加</td>
                    <td>更新</td>
				</tr>
				<c:forEach items="${picList}" var="pic">
					 <tr class="success">
					 <td>${pic.picId}</td>
                    <td>${pic.goodsId}</td>
                    <td>${pic.pic1}</td>
                    <td>${pic.pic2}</td>
                    <td>${pic.pic3}</td>
                    <td>${pic.pic4}</td>
                    <td>${pic.pic1Thumb}</td>
                    <td>${pic.pic2Thumb}</td>
                    <td>${pic.pic3Thumb}</td>
                    <td>${pic.pic4Thumb}</td>
                    <td><a href="pic/topic?picId=${pic.picId}">添加</a></td>
					<td><a href="pic/toupdatepic?id=${pic.picId}">更新</a></td>
                </tr>
				</c:forEach>
			</table>
			<table id="tblnum"><tr id="shuzi"></tr></table>
		</div>
		<div id="brand_footer">
			© YLDSHOP ALL RIGHTS RESERVED. DESIGNED BY .&nbsp;&nbsp;粤ICP备16037632号		
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$.get('pic/pagecount', function(data) {
			var tblhtml="";
			 for(var i=1;i<=data;i++){
				 tblhtml+="<td><a href='javascript:tonext("+i+")'>"+i+"</a></td>"
			 }
			 $('#shuzi').append(tblhtml);
		});
	})
	function tonext(id){
		location.href="pic/findlimit?num1="+id+"&num2=5";
	}

</script>
</html>