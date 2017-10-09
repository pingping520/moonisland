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
<title>MOON ISLAND用户管理页面</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
	#user{margin:0px auto;width:100%;text-align:center;
		position:relative;}
	#user_header{width:100%;height:60px;line-height:60px;}
	#user_body{width:100%;height:500px;}
	#user_footer{width:100%;height:60px;line-height:60px;text-align:center;
		position: absolute;
		bottom:-300px;
	}
	.info table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>
	<div id="user">
		<!-- <div id="user_header">MOON ISLAND&nbsp;用户管理页</div> -->
		<div id="user_body">
			<table class="table table-hover">
				<tr>
					<td>用户编号</td>
					<td>用户名</td>
					<td>积分</td>
					<td>会员等级</td>
					<td>是否特权</td>
					<td>特权改价</td>
					<td>注册手机号</td>
					<td>头像</td>
					<td>性别</td>
					<td>出生年月</td>
					<td>邮编</td>
					<td>联系电话</td>
					<td>邮箱</td>
					<td>注册时间</td>
					<td>用户状态</td>
				</tr>
				<c:forEach items="${users}" var="user">
					<tr>
					<td>${user.userId}</td>
					<td>${user.nickName}</td>
					<td>${user.points}</td>
					<td>${user.userLevel}</td>
					<td>${user.isPrivilege}</td>
					<td>${user.privilegeNum}</td>
					<td>${user.phone}</td>
					<td><img src="images/${user.headerPic}" style="width:50px;height:50px;"></td>
					<td>${user.sex}</td>
					<td>${user.birthday}</td>
					<td>${user.zipcode}</td>
					<td>${user.mobile}</td>
					<td>${user.email}</td>
					<td>${user.userTime}</td>
					<td><input type="checkbox" id="${user.userId}" onchange="check(${user.userId})"  
					${(user.userStatus==1)?'checked':''} >选择</td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<div id="user_footer" class="container">
			<ul class="pagination" id="page">
				<li><a href="#">&laquo;</a></li>
				<c:forEach var="x" begin="1" end="${count}" step="1" varStatus="st">
					<c:if test="${param.page==x}">
						<li class="active"><a href="user/list?page=${(x-1)*10}">${x}</a></li>
					</c:if>
					<c:if test="${param.page!=x}">
						<li><a href="user/list?page=${(x-1)*10}">${x}</a></li>	
					</c:if>					
				</c:forEach>
				<li><a href="#">&raquo;</a></li>
				<li><span>共&nbsp;${count}&nbsp;页.</span></li>
			</ul>	
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
function check(uid){
	alert(uid)
	var status;
	var ck = document.getElementById(uid);
	if(ck.checked==false){
		status = "0";
	}else{
		status = "1";
	}
	alert(status)
	$.get('user/check?userId='+uid+'&userStatus='+status, function(data) {
		if(data==1){
			alert("编辑成功！")			
		}
	});
}
</script>
</html>