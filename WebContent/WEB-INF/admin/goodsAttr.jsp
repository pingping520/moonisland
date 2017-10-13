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
#goodsAttr{margin:0px auto;width:100%;text-align:center;position:relative;}
#goodsAttr_body{widtth:100%;height:500px;}
#goodsAttr_body table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>
<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>商品属性</legend>
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
				<table class="site-table table-hover" id="" style="vertical-align: middle!important;margin:0px;padding:0px;text-align:center;">
					<thead>
						<tr>	
							<td>属性编号</td>
							<td>商品名称</td>
							<td>材质</td>
							<td>边框</td>
							<td>大小</td>
							<td>功能</td>
							<td>颜色</td>
					        <td style="width:117px;">操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${attrs}" var="attr">
					<tr>
					<td>${attr.attrId}</td>
					<td>${attr.goods.goodsName}</td>
					<td>${attr.material}</td>
					<td>${attr.border}</td>
					<td>${attr.size}</td>
					<td>${attr.function}</td>
					<td>${attr.color}</td>
<<<<<<< HEAD
					<td><a href="brand/toUpdate?brandId=${brand.brandId}"><button class="layui-btn layui-btn-mini">更新</button></a></td>
=======
					<td><a href="goodsAttr/toUpdate?attrId=${attr.attrId}"><button class="btn btn-sm btn-primary">更新</button></a></td>
>>>>>>> 678847a907b4e6c9e66bdf8d04a83595f347326b
				</tr>
       			</c:forEach>
					</tbody>
				</table>
		</div>			
	
	</fieldset>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
//添加
$('#getAll').on('click',function(){
	alert("跳到哪里");
	location.href="";
});
</script>
</html>