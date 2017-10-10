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
		<div id="brnd_header">MOON ISLAND&nbsp;商品退货页</div>
		<div id="brand_body">
			<table>
				<tr>
				<td>按商品id查询</td>
				<td><input type="text" id="findbyuserid" value='${goodsid}'></td>
				<td><input type="button" id="btnbyuserid" value="查询" onclick="findbyuserid()"></td>
				</tr>
			</table>
			<table class="table table-hover">
				<tr class="info">
					<td>退货编号</td>
					<td>订单编号</td>
					<td>用户编号</td>
					<td>用户昵称</td>
					<td>商品编号</td>
					<td>退货原因</td>
					<td>退货状态</td>
					<td>退货时间</td>
				</tr>
				<c:forEach items="${returngoodsList}" var="return1">
					<tr class="success">
					<td>${return1.returnId}</td>
					<td>${return1.orderId}</td>
					<td>${return1.user.userId}</td>
					<td>${return1.user.nickName}</td>
					<td>${return1.goods.goodsId}</td>
					<td>${return1.reason}</td>
					<td><input type="checkbox" id="${return1.returnId}" onchange="check(${return1.returnId})"  
					${(return1.returnStatus==1)?'checked':''} >选择</td>
					<td>${return1.returnTime}</td>
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
			$.post('returnOrder/statusReturn',{'returnStatus':status,'returnId':bid}, function(data) {
				alert("编辑成功！")
			});
		}
		/* $(function(){
			var userid=$('#findbyuserid').val();
			if(userid!=null && userid!=""){
				$.get('returnOrder/pagecountReturn2?userid='+userid, function(data, textStatus, xhr) {
				
					var pageNum="";
					 for(var i=1;i<=data;i++){
						 pageNum+="<td class='num'><a href='javascript:skip("+i+")'>"+i+"</a></td>";
					 }
					 $("#pageNum").append(pageNum);
				});
			}else{
				$.get('returnOrder/pagecountReturn', function(data, textStatus, xhr) {
					
					var pageNum="";
					 for(var i=1;i<=data;i++){
						 pageNum+="<td class='num'><a href='javascript:skip("+i+")'>"+i+"</a></td>";
					 }
					 $("#pageNum").append(pageNum);
				});
			}
		})  */
		$(function(){
			var userid=$('#findbyuserid').val();
				$.get('returnOrder/goodspagecountReturn2?goodsid='+userid, function(data, textStatus, xhr) {
					var pageNum="";
					 for(var i=1;i<=data;i++){
						 pageNum+="<td class='num'><a href='javascript:skip("+i+")'>"+i+"</a></td>";
					 }
					 $("#pageNum").append(pageNum);
				});
		}) 
		function findbyuserid(){		
			var userid=$('#findbyuserid').val();
			//location.href='returnOrder/findbyuseridpageReturn?userid='+userid+'&page=1';
			location.href='returnOrder/findbygoodsidpageReturn?goodsid='+userid+'&page=1';
		}
		function skip(num){
			var userid=$('#findbyuserid').val();
			location.href='returnOrder/findbygoodsidpageReturn?goodsid='+userid+'&page='+num;
		}
	</script>
</body>
</html>