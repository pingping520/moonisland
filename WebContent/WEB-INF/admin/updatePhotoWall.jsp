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
<title>照片墙更新页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#photo{margin:0px auto;}
	#photo_update #photo_tbl{height:300px;margin:0px auto;line-height:auto;font-size:16px;font-weight:bold;}
</style>
</head>
<body>
	<div id="photo">
		<div id="photo_update">
			<table id="photo_tbl">
				<input type="hidden" value="${photo.photoId}" id="pid">
				<tr>
					<td>照片墙图片(旧):</td>
					<td><img alt="本图片之前只用的图片" src="images/${photo.photoUrl}" style="width:150px;height:80px;"></td>
				</tr>
				<tr>
					<td>照片墙图片:</td>
					<td><input type="file" id="file" name="file" title="${photo.photoUrl}"/></td>
				</tr>
				<tr>
					<td>图片描述:</td>
					<td><input type="text" id="pword" value="${photo.photoWord}"/></td>
				</tr>
				<tr>
					<td colspan="2"><button class="btn btn-success" id="updatePhotoWall">更新照片墙</button></td>
				</tr>
			</table>
			
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#updatePhotoWall').click(function() {
	var pid = $('#pid').val();
	var pword = $('#pword').val();
	var purl = $('#file').attr('title');
	$.post('photoWall/update',{"photoId":pid,"photoUrl":purl,"photoWord":pword}, function(data) {
		if(data==1){				
			alert("更新成功！点击确定跳到照片详情页！")
			var timer = setTimeout(function(){
				location.href = "photoWall/findAll";
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