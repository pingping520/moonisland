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
<title>关于我们更新页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
	#about{width:100%;margin:0px auto;}
	#about_logo{width:100%;height:60px;line-height:60px;text-align:center;}
	#about_update div{width:100%;height:100px;margin:0px auto;text-align:center;}
</style>
</head>
<body>
	<div id="about">
		<div id="about_logo">
			MOON ISLAND&nbsp;&nbsp;关于我们更新页
		</div>
		<div id="about_update">
			<input type="hidden" value="${about.aboutId}" id="aid">
			<div>
				<p>标题</p>
				<p><input type="text" id="astyle" value="${about.aboutStyle}"/></p>
			</div>
			<div>
				<p>内容</p>
				<p><input type="text" id="acontent" value="${about.aboutContent}"/></p>
			</div>
			<div>
				<button  class="btn btn-success" id="updateAbout">更新</button>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
$('#updateAbout').click(function() {
	var aid = $('#aid').val();
	var astyle = $('#astyle').val();
	var acontent = $('#acontent').val();
	alert(astyle)
	alert(acontent)
	$.post('about/update',{"aboutId":aid,"aboutStyle":astyle,"aboutContent":acontent}, function(data) {
		if(data==1){				
			alert("更新成功！点击确定跳到品牌详情页！")
			var timer = setTimeout(function(){
				location.href = "about/findAll";
			}, 1000)
		}
	});
});

</script>
</html>