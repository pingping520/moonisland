<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
</head>
<body>
	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>
		<fieldset class="layui-elem-field">
			<legend>全部用户列表</legend>
			<div class="layui-field-box">

				<div style="margin: 0px; background-color: white; margin: 0 10px;">
					<blockquote class="layui-elem-quote">
						<button type="button" class="layui-btn layui-btn-small"
							id="addUser">
							<i class="fa fa-plus" aria-hidden="true"></i>
						</button>
						<form class="layui-form" style="float: right;">
							<div class="layui-form-item" style="margin: 0;">
								<label class="layui-form-label">名称</label>
								<div class="layui-input-inline">
									<input type="text" name="name" placeholder="支持模糊查询.."
										autocomplete="off" class="layui-input">
								</div>
								<div class="layui-form-mid layui-word-aux" style="padding: 0;">
									<button lay-filter="search" class="layui-btn" lay-submit>
										<i class="fa fa-search" aria-hidden="true"></i> 查询
									</button>
								</div>
							</div>
						</form>
					</blockquote>
				</div>
				<table class="site-table table-hover"
					style="vertical-align: middle !important; margin: 0px; padding: 0px; text-align: center;">
					<thead>
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
							<!-- <td style="width: 117px;">操作</td> -->
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
						<c:forEach items="${users}" var="user">
							<tr>
								<td>${user.userId}</td>
								<td>${user.nickName}</td>
								<td>${user.points}</td>
								<td>${user.userLevel}</td>
								<td>${user.isPrivilege}</td>
								<td>${user.privilegeNum}</td>
								<td>${user.phone}</td>
								<td><img src="images/${user.headerPic}"
									style="width: 50px; height: 50px;"></td>
								<td>${user.sex}</td>
								<td>${user.birthday}</td>
								<td>${user.zipcode}</td>
								<td>${user.mobile}</td>
								<td>${user.email}</td>
								<td>${user.userTime}</td>
								<td><input type="checkbox" id="${user.userId}"
									onchange="check(${user.userId})"
									${(user.userStatus==1)?'checked':''}>选择</td>
								<!--<td><p>
										 <a href="javascript:;" class="layui-btn layui-btn-mini">更新</a> 
										 <a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a> 
									</p></td>-->
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<!--分页容器-->
				<div id="paged">
					<ul class="pagination" id="page">
						<li><a href="#">&laquo;</a></li>
						<c:forEach var="x" begin="1" end="${count}" step="1"
							varStatus="st">
							<c:if test="${param.page==x}">
								<li class="active"><a href="user/list?page=${(x-1)*10}">
										${x}</a></li>
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

		</fieldset>
	</div>

</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
function check(uid){
	var status;
	var ck = document.getElementById(uid);
	if(ck.checked==false){
		status = "0";
	}else{
		status = "1";
	}
	$.get('user/check?userId='+uid+'&userStatus='+status, function(data) {
		if(data==1){
			alert("编辑成功！")			
		}
	});
}
</script>
</html>