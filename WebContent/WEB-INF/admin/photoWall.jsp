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
<title>MOON ISLAND照片墙管理页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
#photo_body{widtth:100%;height:500px;}
#photo_body table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>

<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>商品列表</legend>
			<div class="layui-field-box">

			<div style="margin:0px; background-color: white; margin:0 10px;">
	        	<blockquote class="layui-elem-quote">
	            <button type="button" class="layui-btn layui-btn-small" id="getAll"><i class="fa fa-plus" aria-hidden="true"></i> 添加</button>
		            <form class="layui-form" style="float:right;">
		                <div class="layui-form-item" style="margin:0;">
		                    <label class="layui-form-label">名称</label>
		                    <div class="layui-input-inline">
		                        <input type="text" name="name" placeholder="支持模糊查询.." autocomplete="off" class="layui-input">
		                    </div>
		                    <div class="layui-form-mid layui-word-aux" style="padding:0;">
		                        <button lay-filter="search" class="layui-btn" lay-submit><i class="fa fa-search" aria-hidden="true"></i> 查询</button>
		                    </div>
		                </div>
		            </form>
	        	</blockquote>
    		</div>

			
				<table class="site-table table-hover" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
					<thead>
						<tr>	
							<td>图片编号</td>
							<td>图片地址</td>
							<td>图片描述</td>
							<td>添加时间</td>
							<td>图片状态</td>
							<td>编辑图片</td>
							<td>操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${photoList}" var="photo">
					<tr>
					<td>${photo.photoId}</td>
					<td><img src="images/${photo.photoUrl}" style="width:50px;height:50px;"/></td>
					<td>${photo.photoWord}</td>
					<td>${photo.photoTime}</td>
					<td>${photo.photoStatus}</td>
					<td><input type="checkbox" id="${photo.photoId}" onchange="check(${photo.photoId})"  
					${(photo.photoStatus==1)?'checked':''} >选择</td>
					<td><a href="photoWall/toUpdate?photoId=${photo.photoId}"><button class="layui-btn layui-btn-mini">更新</button></a>
					<a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a></td>
				</tr>
				</c:forEach>
				    
			                
			            
       			
					</tbody>
				</table>
		</div>			
	
	</fieldset>
	</div>
	<%-- <div id="photo">
		<div id="photo_body">
			<table class="table table-hover">
				<tr>
					<td>图片编号</td>
					<td>图片地址</td>
					<td>图片描述</td>
					<td>添加时间</td>
					<td>图片状态</td>
					<td>编辑图片</td>
					<td>更新图片</td>
				</tr>
				<c:forEach items="${photoList}" var="photo">
					<tr>
					<td>${photo.photoId}</td>
					<td><img src="images/${photo.photoUrl}" style="width:50px;height:50px;"/></td>
					<td>${photo.photoWord}</td>
					<td>${photo.photoTime}</td>
					<td>${photo.photoStatus}</td>
					<td><input type="checkbox" id="${photo.photoId}" onchange="check(${photo.photoId})"  
					${(photo.photoStatus==1)?'checked':''} >选择</td>
					<td><a href="photoWall/toUpdate?photoId=${photo.photoId}"><button class="btn btn-sm btn-primary">更新</button></a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		
	</div> --%>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
function check(pid){
	var status;
	var ck = document.getElementById(pid);
	if(ck.checked==false){
		status = "0";
	}else{
		status = "1";
	}
	$.get('photoWall/check?photoId='+pid+'&photoStatus='+status, function(data) {
		if(data==1){
			alert("编辑成功！")			
		}
	});
}
//添加
$('#getAll').on('click',function(){
	alert("跳到哪里");
	location.href="";
});
</script>
</html>