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
<title>商品评论页</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#brand{margin:0px auto;width:100%;text-align:center;}
	#brnd_header{width:100%;height:60px;line-height:60px;}
	#brand_body{widtth:100%;height:500px;}
	#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
	#addpage{text-align:center;}
	#tblpagenum{margin:0 auto;}
	.num{width:60px;}
</style>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
</head>
<body>
	<div id="brand">
		<div id="brnd_header">MOON ISLAND&nbsp;商品评论页</div>
		<div id="brand_body">
			<table>
				<tr>
				<td>查询用户评价</td>
				<td><input type="text" id="findbyuserid" value='${userid}'></td>
				<td><input type="button" id="btnbyuserid" value="查询" onclick="findbyuserid()"></td>
				</tr>
			</table>
			<table class="table table-hover">
				<tr class="info">
					<td>评论编号</td>
					<td>用户编号</td>
					<td>用户昵称</td>
					<td>商品编号</td>
					<td>订单编号</td>
					<td>商品评论文字</td>
					<td>商品评论图片</td>
					<td>商品质量星级</td>
					<td>服务态度星级</td>
					<td>物流态度星级</td>
					<td>是否显示该评论</td>
					<td>评论时间</td>
					<td>更新</td>
				</tr>
				<c:forEach items="${commentList}" var="comment">
					<tr class="success">
					<td>${comment.commentId}</td>
					<td>${comment.user.userId}</td>
					<td>${comment.user.nickName}</td>
					<td>${comment.goodsId}</td>
					<td>${comment.orderId}</td>
					<td>${comment.commentContentword}</td>
					<td>${comment.commentContentimg}</td>
					<td>${comment.guarantee}</td>
					<td>${comment.server}</td>
					<td>${comment.logistics}</td>
					<td><input type="checkbox" id="${comment.commentId}" onchange="check(${comment.commentId})"  
					${(comment.commentStatus==1)?'checked':''} >选择</td>
					<td>${comment.commentTime}</td>
					<td><input type="button" value="更新" onclick="update(${comment.commentId})"/></td>
					</tr>
				</c:forEach>
			</table>
			<table id="tblpagenum"><tr id="pageNum" class="info"></tr></table>
		</div>
	</div>
	
	<script type="text/javascript">
		
		function check(bid){
			var status;
			var ck = document.getElementById(bid);
			if(ck.checked==false){
				status = "0";
			}else{
				status = "1";
			}
			$.post('comment/statusComment',{'commentStatus':status,'commentId':bid}, function(data) {
				alert("编辑成功！")
			});
		}
		function update(id){
			$.get('comment/selectbyidComment?commentId='+id, function(data) {
				  location.href='comment/toupdComment';
			});
			$.get('comment/selectbyuseridComment?userid='+userid+'&&page=1', function(data) {
			});
		}
		$(function(){
			var userid=$('#findbyuserid').val();
			if(userid!=null && userid!=""){
				$.get('comment/pagecountComment2?userid='+userid, function(data, textStatus, xhr)   {
					var pageNum="";
					 for(var i=1;i<=data;i++){
						 pageNum+="<td class='num'><a href='javascript:skip("+i+")'>"+i+"</a></td>";
					 }
					 $("#pageNum").append(pageNum);
				});
			}else{
				$.get('comment/pagecountComment', function(data, textStatus, xhr){
					var pageNum="";
					 for(var i=1;i<=data;i++){
						 pageNum+="<td class='num'><a href='javascript:skip("+i+")'>"+i+"</a></td>";
					 }
					 $("#pageNum").append(pageNum);
				});
			}
		}) 
		function findbyuserid(){		
			var userid=$('#findbyuserid').val();
			location.href='comment/selectbyuseridComment?userid='+userid+'&&page=1';
		}
		function skip(num){
			var userid=$('#findbyuserid').val();
			location.href='comment/selectbyuseridComment?userid='+userid+'&page='+num;
		}
	</script>
</body>
</html>