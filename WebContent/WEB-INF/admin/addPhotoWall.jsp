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
<title>照片墙添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#photo{width:100%;margin:0px auto;}
	#photo_logo{width:100%;height:60px;line-height:60px;text-align:center;}
	#photo_add div{width:100%;height:100px;margin:0px auto;text-align:center;}
	#add_pic{padding-left:44%;}
</style>
</head>
<body>
	<div id="photo">
		<div id="photo_logo">
			MOON ISLAND&nbsp;&nbsp;照片墙添加页
		</div>
		<div id="photo_add">
			<div>
				<p>照片墙图片</p>
				<p id="add_pic"><input type="file" id="file" name="file" title=""/></p>
			</div>
			<div>
				<p>图片描述</p>
				<p><input type="text" id="pword"/></p>
			</div>
			<div>
				<button  class="btn btn-success" id="addPhotoWall">添加照片墙</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#addPhotoWall').click(function() {
	var pword = $('#pword').val();
	var photoUrl = $('#file').attr('title');
	$.post('photoWall/add',{"photoUrl":photoUrl,"photoWord":pword,}, function(data) {
		if(data==1){				
			alert("添加成功！点击确定跳到照片墙详情页！")
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