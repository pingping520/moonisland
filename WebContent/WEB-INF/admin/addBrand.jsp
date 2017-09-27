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
<title>品牌添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#brand{width:100%;margin:0px auto;}
	#brand_logo{width:100%;height:60px;line-height:60px;text-align:center;}
	#brand_add div{width:100%;height:100px;margin:0px auto;text-align:center;}
	#add_pic{padding-left:44%;}
</style>
</head>
<body>
	<div id="brand">
		<div id="brand_logo">
			MOON ISLAND&nbsp;&nbsp;品牌添加页
		</div>
		<div id="brand_add">
			<div>
				<p>品牌名称</p>
				<p><input type="text" id="bname"/></p>
			</div>
			<div>
				<p>品牌图片</p>
				<p id="add_pic"><input type="file" id="file" name="file" title=""/></p>
			</div>
			<div>
				<p>品牌内容</p>
				<p><input type="text" id="bcontent"/></p>
			</div>
			<div>
				<button  class="btn btn-success" id="addBrand">添加品牌</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#addBrand').click(function() {
	var bname = $('#bname').val();
	var bcontent = $('#bcontent').val();
	var blogo = $('#file').attr('title');
	$.post('brand/add',{"brandName":bname,"brandLogo":blogo,"brandContent":bcontent}, function(data) {
		alert(data)
		if(data==1){				
			alert("添加成功！点击确定跳到品牌详情页！")
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