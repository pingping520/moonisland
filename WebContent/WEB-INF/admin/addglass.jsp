<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="UTF-8">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<title>镜片添加页</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
<style type="text/css">
#main {
	font-size: 16px;
}

table {
	margin: 0 auto;
}

table tr td {
	padding: 10px;
}

table tr td:first-child {
	text-align: right;
}

table tr td input {
	width: 150px;
}
#addGlass{
	margin:0 auto;
}
</style>
</head>
<body>
	<div id="main">


		<table>
			<tr>
				<td>镜片类型</td>
				<td><input type="text" id="gstyle" /></td>
				<td>镜片名称</td>
				<td><input type="text" id="gname" /></td>
				<td>球镜超出范围价格增幅</td>
				<td><input type="text" id="gsph" /></td>
				<td>柱镜超出范围价格增幅</td>
				<td><input type="text" id="gcyl" /></td>
			</tr>
			<tr>
				<td>镜片价格</td>
				<td><input type="text" id="gprice" /></td>
				<td>镜片图片</td>
				<td id="add_pic"><input type="file" id="file" name="file"
					title="" title2="" /></td>
				<td>镜片时间</td>
				<td><input type="text" id="gtime" /></td>
				<td>颜色一</td>
				<td><input type="text" id="gcolor1" /></td>
			</tr>
			<tr>
				<td>颜色二</td>
				<td><input type="text" id="gcolor2" /></td>
				<td>颜色三</td>
				<td><input type="text" id="gcolor3" /></td>
				<td>颜色四</td>
				<td><input type="text" id="gcolor4" /></td>
				<td>颜色五</td>
				<td><input type="text" id="gcolor5" /></td>
			</tr>
			<tr>
				<td>颜色六</td>
				<td><input type="text" id="gcolor6" /></td>
				<td>颜色七</td>
				<td><input type="text" id="gcolor7" /></td>
				<td>颜色八</td>
				<td><input type="text" id="gcolor8" /></td>
				<td>颜色九</td>
				<td><input type="text" id="gcolor9" /></td>
				<td>是否选中</td>
				<td><input type="text" id="isactive" /></td>
			</tr>
		</table>
	</div>
	<button class="btn btn-success" id="addGlass">添加品牌</button>
</body>
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/ajaxfileupload.js"></script>
<script type="text/javascript">
	$('#addGlass').click(function() {
		var gstyle = $('#gstyle').val();
		var gname = $('#gname').val();
		var gsph = $('#gsph').val();
		var gcyl = $('#gcyl').val();
		var gprice = $('#gprice').val();
		var blogo = $('#file').attr('title');
		var gimgthumb = $('#file').attr('title2');
		var gtime = $('#gtime').val();
		var gcolor1 = $('#gcolor1').val();
		var gcolor2 = $('#gcolor2').val();
		var gcolor3 = $('#gcolor3').val();
		var gcolor4 = $('#gcolor4').val();
		var gcolor5 = $('#gcolor5').val();
		var gcolor6 = $('#gcolor6').val();
		var gcolor7 = $('#gcolor7').val();
		var gcolor8 = $('#gcolor8').val();
		var gcolor9 = $('#gcolor9').val();
		var isactive = $('#isactive').val();
		$.post('glass/addglass', {
			"glassStyle" : gstyle,
			"glassName" : gname,
			"sphPrice" : gsph,
			"cylPrice" : gcyl,
			"glassPrice" : gprice,
			"glassImg" : blogo,
			"glassTime" : gtime,
			"glassImgthumb" : gimgthumb,
			"color1" : gcolor1,
			"color2" : gcolor2,
			"color3" : gcolor3,
			"color4" : gcolor4,
			"color5" : gcolor5,
			"color6" : gcolor6,
			"color7" : gcolor7,
			"color8" : gcolor8,
			"color9" : gcolor9,
			"isactive" : isactive
		}, function(data) {
			alert(data)
			if (data == 1) {
				alert("添加成功！点击确定跳到品牌详情页！")
				var timer = setTimeout(function() {
					location.href = "glass/findlimit?num1=1";
				}, 1000)
			}
		});
	});

	//上传图片
	$('#file').change(function() {
		$.ajaxFileUpload({
			url : 'glass/upload',//用于文件上传的服务器端请求地址
			secureuri : false,//一般设置为false
			fileElementId : 'file',//文件上传空间的id属性  <input type="file" id="file" name="file" />
			dataType : 'text',//返回值类型 test
			success : function(data, status) //服务器成功响应处理函数
			{
				console.log(data.info2)
				if (data != null && data != "") {
					$("#file").attr("title", data.info);
					$("#file").attr("title2", data.info2);
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