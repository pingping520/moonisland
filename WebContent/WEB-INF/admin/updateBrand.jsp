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
<title>MOON ISLAND品牌添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#brand{width:100%;margin:0px auto;}
	#brand_update #brand_tbl{margin:50px auto;height:300px;line-height:auto;font-size:16px;font-weight:bold;}	
</style>
</head>
<body>
	<div id="brand">		
		<div id="brand_update">
			<table id="brand_tbl">
				<input type="hidden" value="${brand.brandId}" id="bid">
				<tr>
					<td>品牌名称:</td>
					<td><input type="text" id="bname" value="${brand.brandName}"/></td>
				</tr>
				<tr>
					<td>品牌图片(旧):</td>
					<td><img alt="本图片之前只用的图片" src="images/${brand.brandLogo}" style="width:150px;height:80px;"></td>
				</tr>
				<tr>
					<td>品牌图片:</td>
					<td><input type="file" id="file" name="file" title="${brand.brandLogo}"/></td>
				</tr>
				<tr>
					<td>品牌内容:</td>
					<td><input type="text" id="bcontent" value="${brand.brandContent}"/></td>
				</tr>
				<tr>
					<td><button id="addBrand" class="btn btn-success">更新品牌</button></td>
	
				</tr>
			</table>
				
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#updateBrand').click(function() {
	var bid = $('#bid').val();
	var bname = $('#bname').val();
	var bcontent = $('#bcontent').val();
	var blogo = $('#file').attr('title');
	$.post('brand/update',{"brandId":bid,"brandName":bname,"brandLogo":blogo,"brandContent":bcontent}, function(data) {
		if(data==1){				
			alert("更新成功！点击确定跳到品牌详情页！")
			var timer = setTimeout(function(){
				location.href = "brand/findAll";
			}, 1000)
		}
	});
});

//上传图片
$('#file').change(function() {
	$.ajaxFileUpload({
		url : 'brand/upload',//用于文件上传的服务器端请求地址
		secureuri : false,//一般设置为false
		fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
		dataType : 'text',//返回值类型 test
		success : function(data, status) //服务器成功响应处理函数
		{
			alert(data.info)
			if (data != null && data != "") {
				$("#file").attr("title", data.info);
			}
		},
		error : function(data, status, e)//服务器响应失败处理函数
		{
			alert(e);
		}
	});
});
</script>
</html>