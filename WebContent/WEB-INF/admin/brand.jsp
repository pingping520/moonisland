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
<title>MOON ISLAND品牌管理页面</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="plugins/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="css/global.css" media="all">
<link rel="stylesheet" href="css/btable.css" />
<link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
<style type="text/css">
#brand{margin:0px auto;width:100%;text-align:center;position:relative;}
#brand_body{widtth:100%;height:500px;}
#brand_footer{width:100%;height:60px;line-height:60px;text-align:center;}
#brand_body table,tr,td{vertical-align: middle!important;margin:0px;padding:0px;}
</style>
</head>
<body>


	<div style="margin: 15px;">
		<blockquote class="layui-elem-quote">
			<h1>moonisland后台管理系统</h1>
		</blockquote>

		<fieldset class="layui-elem-field">
			<legend>品牌列表</legend>
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
							<td>品牌编号</td>
							<td>品牌名称</td>
							<td>品牌图标</td>
							<td>品牌内容</td>
							<td>添加时间</td>
							<td>品牌状态</td>
							
					        <td>操作</td>   
						</tr>
					</thead>
					<!--内容容器-->
					<tbody id="con">
					 <c:forEach items="${brandList}" var="brand">
					<tr>
					<td>${brand.brandId}</td>
					<td>${brand.brandName}</td>
					<td><img class="img" src="images/${brand.brandLogo}" style="width:50px;height:50px;"/></td>
					<td>${brand.brandContent}</td>
					<td>${brand.brandAddtime}</td>
					<td><input type="checkbox" id="${brand.brandId}" onchange="check(${brand.brandId})"  
					${(brand.brandStatus==1)?'checked':''} >选择</td>
					<td><a href="brand/toUpdate?brandId=${brand.brandId}"><button class="layui-btn layui-btn-mini">更新</button></a>
					 <a href="javascript:;" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a></p></td>
				</tr>
				</c:forEach>
					</tbody>
				</table>		
		</div>			
	</fieldset>
	</div>
	
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/brand.js"></script>
<script>
//添加
$('#getAll').on('click',function(){
	alert("跳到哪里");
	location.href="brand/toAdd";
});
</script>
</html>